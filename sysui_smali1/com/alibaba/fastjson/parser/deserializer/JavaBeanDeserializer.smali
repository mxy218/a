.class public Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
.super Ljava/lang/Object;
.source "JavaBeanDeserializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# instance fields
.field public final beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

.field protected final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

.field protected final sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;)V
    .registers 8

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iget-object v0, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->clazz:Ljava/lang/Class;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    .line 45
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    .line 47
    iget-object v0, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v1, v0

    new-array v1, v1, [Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 48
    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_13
    if-ge v2, v0, :cond_24

    .line 49
    iget-object v3, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v3, v3, v2

    .line 50
    invoke-virtual {p1, p1, p2, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v3

    .line 52
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 55
    :cond_24
    iget-object p1, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v0, p1

    new-array v0, v0, [Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 56
    array-length p1, p1

    :goto_2c
    if-ge v1, p1, :cond_3f

    .line 57
    iget-object v0, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v0, v0, v1

    .line 58
    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v0

    .line 59
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aput-object v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_3f
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 40
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/ParserConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-static {p2, p3, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;)V

    return-void
.end method

.method protected static parseArray(Ljava/util/Collection;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .registers 11

    .line 859
    iget-object p4, p2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    check-cast p4, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    .line 860
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v0

    const/16 v1, 0x10

    const/16 v2, 0x8

    if-ne v0, v2, :cond_15

    .line 862
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 863
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    return-void

    :cond_15
    const/16 v2, 0xe

    if-eq v0, v2, :cond_1c

    .line 868
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->throwException(I)V

    .line 870
    :cond_1c
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v0

    const/16 v3, 0x5b

    if-ne v0, v3, :cond_2b

    .line 872
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 873
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->setToken(I)V

    goto :goto_2e

    .line 875
    :cond_2b
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 878
    :goto_2e
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v0

    const/16 v4, 0xf

    if-ne v0, v4, :cond_3a

    .line 879
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    return-void

    :cond_3a
    const/4 v0, 0x0

    .line 885
    :goto_3b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, p2, p3, v5}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 886
    invoke-interface {p0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    .line 888
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v5

    if-ne v5, v1, :cond_5f

    .line 889
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v5

    if-ne v5, v3, :cond_5b

    .line 891
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 892
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->setToken(I)V

    goto :goto_3b

    .line 894
    :cond_5b
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    goto :goto_3b

    .line 901
    :cond_5f
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result p0

    if-eq p0, v4, :cond_68

    .line 903
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->throwException(I)V

    .line 906
    :cond_68
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result p0

    const/16 p1, 0x2c

    if-ne p0, p1, :cond_77

    .line 908
    invoke-virtual {p4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 909
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->setToken(I)V

    goto :goto_7a

    .line 911
    :cond_77
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    :goto_7a
    return-void
.end method


# virtual methods
.method protected check(Lcom/alibaba/fastjson/parser/JSONLexer;I)V
    .registers 3

    .line 257
    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p0

    if-ne p0, p2, :cond_7

    return-void

    .line 258
    :cond_7
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo p1, "syntax error"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "create instance error, class "

    .line 91
    instance-of v4, v2, Ljava/lang/Class;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2f

    .line 92
    iget-object v4, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 93
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    .line 94
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 95
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    new-array v3, v6, [Ljava/lang/Class;

    aput-object v0, v3, v5

    .line 96
    invoke-static {v1, v3, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 101
    :cond_2f
    iget-object v4, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v7, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    if-nez v7, :cond_37

    const/4 v0, 0x0

    return-object v0

    .line 108
    :cond_37
    :try_start_37
    iget v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_39} :catch_174

    const-string v8, ""

    if-nez v4, :cond_45

    :try_start_3d
    new-array v2, v5, [Ljava/lang/Object;

    .line 109
    invoke-virtual {v7, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_134

    .line 111
    :cond_45
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v4

    .line 112
    iget-object v9, v4, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .line 115
    instance-of v10, v2, Ljava/lang/Class;

    if-eqz v10, :cond_5e

    .line 116
    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_5f

    :cond_5e
    move-object v2, v8

    .line 119
    :goto_5f
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x24

    invoke-virtual {v2, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    sub-int/2addr v12, v6

    if-eq v10, v12, :cond_12a

    .line 120
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    .line 121
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "$"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 124
    iget-object v4, v4, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    invoke-interface {v13, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v6

    :goto_8c
    invoke-virtual {v2, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    if-gt v4, v14, :cond_11d

    .line 126
    aget-char v14, v10, v4

    if-ne v14, v11, :cond_110

    .line 128
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 129
    invoke-interface {v13, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_9e} :catch_174

    .line 132
    :try_start_9e
    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v17

    if-eqz v16, :cond_c7

    .line 135
    invoke-static {v15}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    move-object/from16 v18, v2

    new-array v2, v6, [Ljava/lang/Class;

    aput-object v17, v2, v5

    .line 136
    invoke-virtual {v11, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 137
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v11

    if-nez v11, :cond_bb

    .line 138
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_bb
    new-array v11, v6, [Ljava/lang/Object;

    aput-object v16, v11, v5

    .line 140
    invoke-virtual {v2, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 141
    invoke-interface {v13, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9e .. :try_end_c6} :catch_f8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9e .. :try_end_c6} :catch_f1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9e .. :try_end_c6} :catch_da
    .catch Ljava/lang/IllegalAccessException; {:try_start_9e .. :try_end_c6} :catch_d3
    .catch Ljava/lang/InstantiationException; {:try_start_9e .. :try_end_c6} :catch_cc
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_c6} :catch_174

    goto :goto_ca

    :cond_c7
    move-object/from16 v18, v2

    move-object v15, v9

    :goto_ca
    move-object v9, v15

    goto :goto_112

    :catch_cc
    move-exception v0

    .line 153
    :try_start_cd
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_d3
    move-exception v0

    .line 151
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 149
    :catch_da
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not instantiate "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_f1
    move-exception v0

    .line 147
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 145
    :catch_f8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to find class "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_110
    move-object/from16 v18, v2

    .line 156
    :goto_112
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v18

    const/16 v11, 0x24

    goto/16 :goto_8c

    :cond_11d
    new-array v2, v6, [Ljava/lang/Object;

    .line 158
    invoke-interface {v13, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-virtual {v7, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_134

    :cond_12a
    new-array v2, v6, [Ljava/lang/Object;

    .line 160
    iget-object v4, v4, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    aput-object v4, v2, v5

    invoke-virtual {v7, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_134} :catch_174

    :goto_134
    if-eqz v0, :cond_173

    .line 168
    iget-object v0, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    .line 169
    invoke-interface {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_173

    .line 170
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v4, v0

    :goto_145
    if-ge v5, v4, :cond_173

    aget-object v6, v0, v5

    .line 171
    iget-object v7, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    if-ne v7, v9, :cond_170

    .line 173
    :try_start_14f
    invoke-virtual {v6, v2, v8}, Lcom/alibaba/fastjson/util/FieldInfo;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_152} :catch_153

    goto :goto_170

    :catch_153
    move-exception v0

    move-object v2, v0

    .line 175
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_170
    :goto_170
    add-int/lit8 v5, v5, 0x1

    goto :goto_145

    :cond_173
    return-object v2

    :catch_174
    move-exception v0

    .line 165
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public createInstance(Ljava/util/Map;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 763
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v1, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_61

    iget-object v1, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_61

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_61

    .line 764
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {p0, v3, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 766
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 767
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 768
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 770
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v3

    if-nez v3, :cond_3b

    goto :goto_1e

    .line 775
    :cond_3b
    iget-object v3, v3, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v3, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_54

    .line 777
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v3, v3, v2

    .line 778
    invoke-static {v1, v3, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    .line 779
    invoke-virtual {v4, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 781
    :cond_54
    iget-object v4, v3, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 782
    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 783
    invoke-static {v1, v3, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v1

    .line 784
    invoke-virtual {v4, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1e

    :cond_60
    return-object v0

    .line 791
    :cond_61
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p2, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 792
    array-length v0, p2

    .line 793
    new-array v1, v0, [Ljava/lang/Object;

    :goto_68
    if-ge v2, v0, :cond_77

    .line 795
    aget-object v4, p2, v2

    .line 796
    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_68

    .line 799
    :cond_77
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p2, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    if-eqz p2, :cond_a2

    .line 801
    :try_start_7d
    invoke-virtual {p2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_81} :catch_82

    goto :goto_cb

    :catch_82
    move-exception p1

    .line 803
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create instance error, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p0, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 804
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 806
    :cond_a2
    iget-object p1, p1, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_cb

    .line 808
    :try_start_a6
    invoke-virtual {p1, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_aa} :catch_ab

    goto :goto_cb

    :catch_ab
    move-exception p1

    .line 810
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create factory method error, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object p0, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_cb
    :goto_cb
    return-object v3
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
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

    const/4 v0, 0x0

    .line 185
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "I)TT;"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 189
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "I)TT;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    move-object/from16 v9, p3

    .line 272
    const-class v1, Lcom/alibaba/fastjson/JSON;

    if-eq v0, v1, :cond_546

    const-class v1, Lcom/alibaba/fastjson/JSONObject;

    if-ne v0, v1, :cond_12

    goto/16 :goto_546

    .line 276
    :cond_12
    iget-object v1, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    move-object v10, v1

    check-cast v10, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    .line 278
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v1

    const/16 v2, 0x8

    const/16 v11, 0x10

    const/4 v12, 0x0

    if-ne v1, v2, :cond_26

    .line 280
    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    return-object v12

    .line 284
    :cond_26
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getContext()Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v2

    if-eqz p4, :cond_30

    if-eqz v2, :cond_30

    .line 286
    iget-object v2, v2, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    :cond_30
    move-object v13, v2

    const/16 v14, 0xd

    if-ne v1, v14, :cond_4b

    .line 294
    :try_start_35
    invoke-virtual {v10, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    if-nez p4, :cond_3f

    .line 296
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_45

    goto :goto_41

    :cond_3f
    move-object/from16 v0, p4

    .line 667
    :goto_41
    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v0

    :catchall_45
    move-exception v0

    move-object/from16 v1, p4

    :goto_48
    move-object v2, v12

    goto/16 :goto_53e

    :cond_4b
    const/16 v2, 0xe

    const/4 v15, 0x0

    if-ne v1, v2, :cond_75

    .line 302
    :try_start_50
    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    iget v3, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 303
    iget-object v4, v7, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget v4, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    and-int/2addr v4, v3

    if-nez v4, :cond_6a

    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    .line 304
    invoke-virtual {v10, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v4

    if-nez v4, :cond_6a

    and-int v3, p5, v3

    if-eqz v3, :cond_68

    goto :goto_6a

    :cond_68
    move v3, v15

    goto :goto_6b

    :cond_6a
    :goto_6a
    const/4 v3, 0x1

    :goto_6b
    if-eqz v3, :cond_75

    .line 308
    invoke-virtual/range {p0 .. p4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_71
    .catchall {:try_start_50 .. :try_end_71} :catchall_45

    .line 667
    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v0

    :cond_75
    const/16 v3, 0xc

    const/4 v5, 0x4

    if-eq v1, v3, :cond_e1

    if-eq v1, v11, :cond_e1

    .line 313
    :try_start_7c
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isBlankInput()Z

    move-result v0
    :try_end_80
    .catchall {:try_start_7c .. :try_end_80} :catchall_45

    if-eqz v0, :cond_86

    .line 667
    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v12

    :cond_86
    if-ne v1, v5, :cond_99

    .line 318
    :try_start_88
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_99

    .line 320
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V
    :try_end_95
    .catchall {:try_start_88 .. :try_end_95} :catchall_45

    .line 667
    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v12

    :cond_99
    if-ne v1, v2, :cond_ad

    .line 325
    :try_start_9b
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v0

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_ad

    .line 326
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 327
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V
    :try_end_a9
    .catchall {:try_start_9b .. :try_end_a9} :catchall_45

    .line 667
    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v12

    .line 331
    :cond_ad
    :try_start_ad
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "syntax error, expect {, actual "

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 333
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->tokenName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", pos "

    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->pos()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 337
    instance-of v1, v9, Ljava/lang/String;

    if-eqz v1, :cond_d7

    const-string v1, ", fieldName "

    .line 339
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 340
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 343
    :cond_d7
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_e1
    .catchall {:try_start_ad .. :try_end_e1} :catchall_45

    .line 346
    :cond_e1
    :try_start_e1
    iget v1, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I
    :try_end_e3
    .catchall {:try_start_e1 .. :try_end_e3} :catchall_539

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e8

    .line 347
    :try_start_e6
    iput v15, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I
    :try_end_e8
    .catchall {:try_start_e6 .. :try_end_e8} :catchall_45

    :cond_e8
    move-object/from16 v1, p4

    move-object v2, v12

    move-object v3, v2

    move v4, v15

    .line 355
    :goto_ed
    :try_start_ed
    iget-object v12, v7, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v12, v12

    if-ge v4, v12, :cond_fb

    .line 356
    iget-object v12, v7, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v12, v12, v4

    .line 357
    iget-object v15, v12, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 358
    iget-object v6, v15, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    goto :goto_fe

    :cond_fb
    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_fe
    if-eqz v12, :cond_1dd

    .line 366
    iget-object v5, v15, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    .line 367
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v14, -0x2

    if-eq v6, v11, :cond_1c0

    const-class v11, Ljava/lang/Integer;

    if-ne v6, v11, :cond_10d

    goto/16 :goto_1c0

    .line 376
    :cond_10d
    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v6, v11, :cond_1ae

    const-class v11, Ljava/lang/Long;

    if-ne v6, v11, :cond_117

    goto/16 :goto_1ae

    .line 385
    :cond_117
    const-class v11, Ljava/lang/String;

    if-ne v6, v11, :cond_12b

    .line 386
    invoke-virtual {v10, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldString([C)Ljava/lang/String;

    move-result-object v5

    .line 388
    iget v11, v10, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v11, :cond_125

    goto/16 :goto_1cc

    .line 391
    :cond_125
    iget v11, v10, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-ne v11, v14, :cond_1d9

    goto/16 :goto_1d4

    .line 394
    :cond_12b
    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v6, v11, :cond_19c

    const-class v11, Ljava/lang/Boolean;

    if-ne v6, v11, :cond_135

    goto/16 :goto_19c

    .line 403
    :cond_135
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v6, v11, :cond_18a

    const-class v11, Ljava/lang/Float;

    if-ne v6, v11, :cond_13e

    goto :goto_18a

    .line 412
    :cond_13e
    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v6, v11, :cond_178

    const-class v11, Ljava/lang/Double;

    if-ne v6, v11, :cond_147

    goto :goto_178

    .line 421
    :cond_147
    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v11

    if-eqz v11, :cond_16f

    .line 422
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v11

    instance-of v11, v11, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    if-eqz v11, :cond_16f

    .line 424
    iget-object v11, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v10, v5, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldSymbol([CLcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v5

    .line 426
    iget v11, v10, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v11, :cond_169

    .line 430
    invoke-static {v6, v5}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v5

    goto/16 :goto_1cc

    .line 431
    :cond_169
    iget v5, v10, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-ne v5, v14, :cond_1dd

    goto/16 :goto_1d4

    .line 434
    :cond_16f
    invoke-virtual {v10, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchField([C)Z

    move-result v5

    if-eqz v5, :cond_1d4

    const/4 v5, 0x1

    goto/16 :goto_1de

    .line 413
    :cond_178
    :goto_178
    invoke-virtual {v10, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldDouble([C)D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 415
    iget v11, v10, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v11, :cond_185

    goto :goto_1cc

    .line 418
    :cond_185
    iget v11, v10, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-ne v11, v14, :cond_1d9

    goto :goto_1d4

    .line 404
    :cond_18a
    :goto_18a
    invoke-virtual {v10, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldFloat([C)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    .line 406
    iget v11, v10, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v11, :cond_197

    goto :goto_1cc

    .line 409
    :cond_197
    iget v11, v10, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-ne v11, v14, :cond_1d9

    goto :goto_1d4

    .line 395
    :cond_19c
    :goto_19c
    invoke-virtual {v10, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldBoolean([C)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 397
    iget v11, v10, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v11, :cond_1a9

    goto :goto_1cc

    .line 400
    :cond_1a9
    iget v11, v10, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-ne v11, v14, :cond_1d9

    goto :goto_1d4

    .line 377
    :cond_1ae
    :goto_1ae
    invoke-virtual {v10, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldLong([C)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 379
    iget v11, v10, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v11, :cond_1bb

    goto :goto_1cc

    .line 382
    :cond_1bb
    iget v11, v10, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-ne v11, v14, :cond_1d9

    goto :goto_1d4

    .line 368
    :cond_1c0
    :goto_1c0
    invoke-virtual {v10, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldInt([C)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 370
    iget v11, v10, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-lez v11, :cond_1d0

    :goto_1cc
    move-object v14, v5

    const/4 v5, 0x1

    const/4 v11, 0x1

    goto :goto_1e0

    .line 373
    :cond_1d0
    iget v11, v10, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    if-ne v11, v14, :cond_1d9

    :cond_1d4
    :goto_1d4
    move/from16 v17, v4

    :goto_1d6
    const/4 v6, 0x1

    goto/16 :goto_2e9

    :cond_1d9
    move-object v14, v5

    const/4 v5, 0x0

    const/4 v11, 0x0

    goto :goto_1e0

    :cond_1dd
    const/4 v5, 0x0

    :goto_1de
    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_1e0
    if-nez v5, :cond_343

    move/from16 v17, v4

    .line 442
    iget-object v4, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v10, v4}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_20c

    move-object/from16 v18, v6

    .line 445
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v6

    move-object/from16 p4, v14

    const/16 v14, 0xd

    if-ne v6, v14, :cond_1ff

    const/16 v14, 0x10

    .line 447
    invoke-virtual {v10, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    goto/16 :goto_2e4

    :cond_1ff
    const/16 v14, 0x10

    if-ne v6, v14, :cond_210

    .line 451
    sget-object v6, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v10, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v6

    if-eqz v6, :cond_210

    goto :goto_1d6

    :cond_20c
    move-object/from16 v18, v6

    move-object/from16 p4, v14

    :cond_210
    const-string v6, "$ref"

    if-ne v6, v4, :cond_2b7

    const/4 v6, 0x4

    .line 458
    invoke-virtual {v10, v6}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithColon(I)V

    .line 459
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v0

    if-ne v0, v6, :cond_29c

    .line 461
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v0

    const-string v3, "@"

    .line 462
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22e

    .line 463
    iget-object v0, v13, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object v1, v0

    goto :goto_279

    :cond_22e
    const-string v3, ".."

    .line 464
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24b

    .line 465
    iget-object v3, v13, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 466
    iget-object v4, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v4, :cond_23f

    .line 467
    iget-object v1, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_279

    .line 469
    :cond_23f
    new-instance v4, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v4, v3, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v0, 0x1

    .line 470
    iput v0, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto :goto_279

    :cond_24b
    const-string v3, "$"

    .line 472
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26e

    move-object v3, v13

    .line 474
    :goto_254
    iget-object v4, v3, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v4, :cond_25b

    .line 475
    iget-object v3, v3, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    goto :goto_254

    .line 478
    :cond_25b
    iget-object v4, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v4, :cond_262

    .line 479
    iget-object v1, v3, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    goto :goto_279

    .line 481
    :cond_262
    new-instance v4, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v4, v3, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v0, 0x1

    .line 482
    iput v0, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    goto :goto_279

    .line 485
    :cond_26e
    new-instance v3, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v3, v13, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    const/4 v6, 0x1

    .line 486
    iput v6, v8, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    :goto_279
    const/16 v0, 0xd

    .line 492
    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 493
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v3

    if-ne v3, v0, :cond_294

    const/16 v0, 0x10

    .line 496
    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 498
    invoke-virtual {v8, v13, v1, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_28c
    .catchall {:try_start_ed .. :try_end_28c} :catchall_537

    if-eqz v2, :cond_290

    .line 665
    iput-object v1, v2, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 667
    :cond_290
    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v1

    .line 494
    :cond_294
    :try_start_294
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "illegal ref"

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_29c
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal ref, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2b7
    const/4 v6, 0x1

    .line 503
    sget-object v14, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    if-ne v14, v4, :cond_34b

    const/4 v14, 0x4

    .line 504
    invoke-virtual {v10, v14}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextTokenWithColon(I)V

    .line 505
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    if-ne v4, v14, :cond_33a

    .line 506
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->stringVal()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    .line 507
    invoke-virtual {v10, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 509
    iget-object v5, v7, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f8

    .line 510
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_2e9

    .line 511
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    :goto_2e4
    move-object v14, v1

    move-object v12, v2

    move-object v11, v3

    goto/16 :goto_3ea

    :cond_2e9
    :goto_2e9
    move-object v14, v1

    move-object/from16 v16, v2

    move-object v11, v3

    move v12, v6

    move/from16 v15, v17

    const/4 v1, 0x0

    const/16 v2, 0x10

    :goto_2f3
    const/16 v3, 0xd

    :goto_2f5
    const/4 v4, 0x0

    goto/16 :goto_4fc

    .line 517
    :cond_2f8
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v3

    .line 518
    iget-object v5, v7, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    invoke-virtual {v7, v3, v5, v4}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v5

    if-nez v5, :cond_32d

    .line 521
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v12

    .line 523
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_324

    if-eqz v12, :cond_31b

    .line 525
    invoke-virtual {v0, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_31b

    goto :goto_324

    .line 528
    :cond_31b
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v3, "type not match"

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_324
    :goto_324
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v5

    goto :goto_32e

    :cond_32d
    const/4 v12, 0x0

    .line 532
    :goto_32e
    invoke-interface {v5, v8, v12, v9}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_332
    .catchall {:try_start_294 .. :try_end_332} :catchall_537

    if-eqz v2, :cond_336

    .line 665
    iput-object v1, v2, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 667
    :cond_336
    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v0

    .line 534
    :cond_33a
    :try_start_33a
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v3, "syntax error"

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_343
    move/from16 v17, v4

    move-object/from16 v18, v6

    move-object/from16 p4, v14

    const/4 v6, 0x1

    const/4 v4, 0x0

    :cond_34b
    if-nez v1, :cond_361

    if-nez v3, :cond_361

    .line 540
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_35d

    .line 542
    new-instance v3, Ljava/util/HashMap;

    iget-object v14, v7, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->fieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v14, v14

    invoke-direct {v3, v14}, Ljava/util/HashMap;-><init>(I)V

    .line 544
    :cond_35d
    invoke-virtual {v8, v13, v1, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v2
    :try_end_361
    .catchall {:try_start_33a .. :try_end_361} :catchall_537

    :cond_361
    move-object v14, v1

    move-object/from16 v16, v2

    if-eqz v5, :cond_3a3

    if-nez v11, :cond_371

    .line 549
    :try_start_368
    invoke-virtual {v12, v8, v14, v0, v3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    :cond_36b
    move-object v11, v3

    move v12, v6

    move/from16 v15, v17

    goto/16 :goto_3d2

    :cond_371
    if-nez v14, :cond_37b

    .line 552
    iget-object v1, v15, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v5, p4

    invoke-interface {v3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39c

    :cond_37b
    move-object/from16 v5, p4

    if-nez v5, :cond_399

    .line 554
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v2, v18

    if-eq v2, v1, :cond_39c

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v2, v1, :cond_39c

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v2, v1, :cond_39c

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v2, v1, :cond_39c

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v2, v1, :cond_39c

    .line 560
    invoke-virtual {v12, v14, v5}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_39c

    .line 563
    :cond_399
    invoke-virtual {v12, v14, v5}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 565
    :cond_39c
    :goto_39c
    iget v1, v10, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v5, 0x4

    if-ne v1, v5, :cond_36b

    move-object v11, v3

    goto :goto_3e8

    :cond_3a3
    const/4 v5, 0x4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v11, v3

    move-object v3, v4

    move/from16 v15, v17

    move-object v4, v14

    move v12, v5

    move-object/from16 v5, p2

    move v12, v6

    move-object v6, v11

    .line 570
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_3ca

    .line 572
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_3c4

    .line 573
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    goto :goto_3e8

    :cond_3c4
    move v3, v2

    const/4 v1, 0x0

    const/16 v2, 0x10

    goto/16 :goto_2f5

    .line 578
    :cond_3ca
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v1

    const/16 v2, 0x11

    if-eq v1, v2, :cond_529

    .line 583
    :goto_3d2
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3dd

    const/4 v1, 0x0

    goto/16 :goto_2f3

    .line 587
    :cond_3dd
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_4ec

    .line 588
    invoke-virtual {v10, v2}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V
    :try_end_3e8
    .catchall {:try_start_368 .. :try_end_3e8} :catchall_532

    :goto_3e8
    move-object/from16 v12, v16

    :goto_3ea
    if-nez v14, :cond_4c2

    if-nez v11, :cond_404

    .line 599
    :try_start_3ee
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1
    :try_end_3f2
    .catchall {:try_start_3ee .. :try_end_3f2} :catchall_4e8

    if-nez v12, :cond_3fc

    .line 601
    :try_start_3f4
    invoke-virtual {v8, v13, v1, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v12
    :try_end_3f8
    .catchall {:try_start_3f4 .. :try_end_3f8} :catchall_3f9

    goto :goto_3fc

    :catchall_3f9
    move-exception v0

    goto/16 :goto_48

    :cond_3fc
    :goto_3fc
    if-eqz v12, :cond_400

    .line 665
    iput-object v1, v12, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 667
    :cond_400
    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v1

    .line 606
    :cond_404
    :try_start_404
    iget-object v0, v7, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 607
    array-length v1, v0

    .line 608
    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_40c
    if-ge v3, v1, :cond_462

    .line 610
    aget-object v4, v0, v3

    .line 611
    iget-object v5, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_45d

    .line 613
    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 614
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v4, v6, :cond_424

    const/4 v6, 0x0

    .line 615
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    goto :goto_45d

    :cond_424
    const/4 v6, 0x0

    .line 616
    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v4, v9, :cond_42e

    .line 617
    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    goto :goto_45d

    .line 618
    :cond_42e
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v4, v9, :cond_437

    .line 619
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_45d

    .line 620
    :cond_437
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v4, v6, :cond_442

    const-wide/16 v4, 0x0

    .line 621
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_45d

    .line 622
    :cond_442
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v4, v6, :cond_44c

    const/4 v4, 0x0

    .line 623
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    goto :goto_45d

    .line 624
    :cond_44c
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v4, v6, :cond_457

    const-wide/16 v4, 0x0

    .line 625
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto :goto_45d

    .line 626
    :cond_457
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v6, :cond_45d

    .line 627
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 630
    :cond_45d
    :goto_45d
    aput-object v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_40c

    .line 633
    :cond_462
    iget-object v0, v7, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;
    :try_end_466
    .catchall {:try_start_404 .. :try_end_466} :catchall_4e8

    if-eqz v0, :cond_492

    .line 635
    :try_start_468
    iget-object v0, v7, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_470
    .catch Ljava/lang/Exception; {:try_start_468 .. :try_end_470} :catch_472
    .catchall {:try_start_468 .. :try_end_470} :catchall_4e8

    :goto_470
    move-object v14, v0

    goto :goto_4c2

    :catch_472
    move-exception v0

    .line 637
    :try_start_473
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create instance error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 638
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 640
    :cond_492
    iget-object v0, v7, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;
    :try_end_496
    .catchall {:try_start_473 .. :try_end_496} :catchall_4e8

    if-eqz v0, :cond_4c2

    .line 642
    :try_start_498
    iget-object v0, v7, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4a1
    .catch Ljava/lang/Exception; {:try_start_498 .. :try_end_4a1} :catch_4a2
    .catchall {:try_start_498 .. :try_end_4a1} :catchall_4e8

    goto :goto_470

    :catch_4a2
    move-exception v0

    .line 644
    :try_start_4a3
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create factory method error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 649
    :cond_4c2
    :goto_4c2
    iget-object v0, v7, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;
    :try_end_4c6
    .catchall {:try_start_4a3 .. :try_end_4c6} :catchall_4e8

    if-nez v0, :cond_4d0

    if-eqz v12, :cond_4cc

    .line 665
    iput-object v14, v12, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 667
    :cond_4cc
    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v14

    :cond_4d0
    const/4 v4, 0x0

    :try_start_4d1
    new-array v1, v4, [Ljava/lang/Object;

    .line 657
    invoke-virtual {v0, v14, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4d7
    .catch Ljava/lang/Exception; {:try_start_4d1 .. :try_end_4d7} :catch_4df
    .catchall {:try_start_4d1 .. :try_end_4d7} :catchall_4e8

    if-eqz v12, :cond_4db

    .line 665
    iput-object v14, v12, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 667
    :cond_4db
    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    return-object v0

    :catch_4df
    move-exception v0

    .line 659
    :try_start_4e0
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "build object error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4e8
    .catchall {:try_start_4e0 .. :try_end_4e8} :catchall_4e8

    :catchall_4e8
    move-exception v0

    move-object v2, v12

    move-object v1, v14

    goto :goto_53e

    :cond_4ec
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 592
    :try_start_4ee
    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v5

    const/16 v6, 0x12

    if-eq v5, v6, :cond_509

    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v5

    if-eq v5, v12, :cond_509

    :goto_4fc
    add-int/lit8 v5, v15, 0x1

    move v15, v4

    move v4, v5

    move-object v1, v14

    const/4 v5, 0x4

    move v14, v3

    move-object v3, v11

    move v11, v2

    move-object/from16 v2, v16

    goto/16 :goto_ed

    .line 593
    :cond_509
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syntax error, unexpect token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 579
    :cond_529
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error, unexpect token \':\'"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_532
    .catchall {:try_start_4ee .. :try_end_532} :catchall_532

    :catchall_532
    move-exception v0

    move-object v1, v14

    move-object/from16 v2, v16

    goto :goto_53e

    :catchall_537
    move-exception v0

    goto :goto_53e

    :catchall_539
    move-exception v0

    move-object v1, v12

    move-object v2, v1

    move-object/from16 v1, p4

    :goto_53e
    if-eqz v2, :cond_542

    .line 665
    iput-object v1, v2, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 667
    :cond_542
    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v0

    .line 273
    :cond_546
    :goto_546
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public deserialzeArrayMapping(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 194
    iget-object p3, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 195
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result p4

    const/16 v0, 0xe

    if-ne p4, v0, :cond_f3

    .line 199
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    const/4 p4, 0x0

    .line 201
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v1, v1

    :goto_12
    const/16 v2, 0x10

    if-ge p4, v1, :cond_ef

    add-int/lit8 v3, v1, -0x1

    const/16 v4, 0x5d

    if-ne p4, v3, :cond_1e

    move v3, v4

    goto :goto_20

    :cond_1e
    const/16 v3, 0x2c

    .line 203
    :goto_20
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v5, v5, p4

    .line 204
    iget-object v6, v5, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 205
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_35

    .line 206
    invoke-interface {p3, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanInt(C)I

    move-result v2

    .line 207
    invoke-virtual {v5, p2, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;I)V

    goto/16 :goto_eb

    .line 208
    :cond_35
    const-class v7, Ljava/lang/String;

    if-ne v6, v7, :cond_42

    .line 209
    invoke-interface {p3, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString(C)Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-virtual {v5, p2, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_eb

    .line 211
    :cond_42
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_4f

    .line 212
    invoke-interface {p3, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLong(C)J

    move-result-wide v2

    .line 213
    invoke-virtual {v5, p2, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;J)V

    goto/16 :goto_eb

    .line 214
    :cond_4f
    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v7

    if-eqz v7, :cond_91

    .line 215
    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v2

    const/16 v4, 0x22

    if-eq v2, v4, :cond_85

    const/16 v4, 0x6e

    if-ne v2, v4, :cond_62

    goto :goto_85

    :cond_62
    const/16 v4, 0x30

    if-lt v2, v4, :cond_80

    const/16 v4, 0x39

    if-gt v2, v4, :cond_80

    .line 221
    invoke-interface {p3, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanInt(C)I

    move-result v2

    .line 223
    move-object v3, v5

    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;->getFieldValueDeserilizer(Lcom/alibaba/fastjson/parser/ParserConfig;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    .line 224
    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;->valueOf(I)Ljava/lang/Enum;

    move-result-object v2

    goto :goto_8d

    .line 226
    :cond_80
    invoke-virtual {p0, p3, v3}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->scanEnum(Lcom/alibaba/fastjson/parser/JSONLexer;C)Ljava/lang/Enum;

    move-result-object v2

    goto :goto_8d

    .line 219
    :cond_85
    :goto_85
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v2

    invoke-interface {p3, v6, v2, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanEnum(Ljava/lang/Class;Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/Enum;

    move-result-object v2

    .line 229
    :goto_8d
    invoke-virtual {v5, p2, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_eb

    .line 230
    :cond_91
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_9d

    .line 231
    invoke-interface {p3, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanBoolean(C)Z

    move-result v2

    .line 232
    invoke-virtual {v5, p2, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Z)V

    goto :goto_eb

    .line 233
    :cond_9d
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_ad

    .line 234
    invoke-interface {p3, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanFloat(C)F

    move-result v2

    .line 235
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v5, p2, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_eb

    .line 236
    :cond_ad
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_bd

    .line 237
    invoke-interface {p3, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanDouble(C)D

    move-result-wide v2

    .line 238
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v5, p2, v2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_eb

    .line 239
    :cond_bd
    const-class v7, Ljava/util/Date;

    if-ne v6, v7, :cond_d6

    invoke-interface {p3}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v6

    const/16 v7, 0x31

    if-ne v6, v7, :cond_d6

    .line 240
    invoke-interface {p3, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanLong(C)J

    move-result-wide v2

    .line 241
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, p2, v4}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_eb

    .line 243
    :cond_d6
    invoke-interface {p3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 244
    iget-object v6, v5, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    .line 245
    invoke-virtual {v5, p2, v6}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    if-ne v3, v4, :cond_e8

    const/16 v2, 0xf

    .line 247
    :cond_e8
    invoke-virtual {p0, p3, v2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->check(Lcom/alibaba/fastjson/parser/JSONLexer;I)V

    :goto_eb
    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_12

    .line 251
    :cond_ef
    invoke-interface {p3, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    return-object p2

    .line 196
    :cond_f3
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    const-string p1, "error"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFastMatchToken()I
    .registers 1

    const/16 p0, 0xc

    return p0
.end method

.method public getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x0

    .line 69
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    :goto_a
    if-gt v1, v2, :cond_2d

    add-int v3, v1, v2

    ushr-int/lit8 v3, v3, 0x1

    .line 74
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 76
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

    .line 83
    :cond_28
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object p0, p0, v3

    return-object p0

    :cond_2d
    return-object v0
.end method

.method public getFieldType(I)Ljava/lang/reflect/Type;
    .registers 2

    .line 818
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object p0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    return-object p0
.end method

.method protected getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    .registers 10

    .line 828
    iget-object p2, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    const/4 v0, 0x0

    if-nez p2, :cond_6

    return-object v0

    .line 832
    :cond_6
    invoke-interface {p2}, Lcom/alibaba/fastjson/annotation/JSONType;->seeAlso()[Ljava/lang/Class;

    move-result-object p2

    array-length v1, p2

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_2f

    aget-object v3, p2, v2

    .line 833
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v3

    .line 834
    instance-of v4, v3, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v4, :cond_2c

    .line 835
    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 837
    iget-object v4, v3, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->beanInfo:Lcom/alibaba/fastjson/util/JavaBeanInfo;

    .line 838
    iget-object v5, v4, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    return-object v3

    .line 842
    :cond_25
    invoke-virtual {p0, p1, v4, p3}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getSeeAlso(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-result-object v3

    if-eqz v3, :cond_2c

    return-object v3

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_2f
    return-object v0
.end method

.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 673
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 675
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->smartMatch(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v1

    if-nez v1, :cond_3b

    .line 678
    sget-object p4, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, p4}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result p4

    if-eqz p4, :cond_15

    .line 682
    invoke-virtual {p1, p3, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseExtra(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 679
    :cond_15
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "setter not found, class "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->clazz:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", property "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 687
    :cond_3b
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->getFastMatchToken()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 689
    invoke-virtual {v1, p1, p3, p4, p5}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected parseRest(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 6

    .line 822
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected scanEnum(Lcom/alibaba/fastjson/parser/JSONLexer;C)Ljava/lang/Enum;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/JSONLexer;",
            "C)",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    .line 263
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "illegal enum. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public smartMatch(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .registers 13

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 699
    :cond_4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_40

    const-string v3, "is"

    .line 702
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 704
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length v5, v4

    move v6, v2

    :goto_15
    if-ge v6, v5, :cond_40

    aget-object v7, v4, v6

    .line 705
    iget-object v8, v7, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 706
    iget-object v9, v8, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 707
    iget-object v8, v8, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 709
    invoke-virtual {v8, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_26

    goto :goto_3b

    :cond_26
    if-eqz v3, :cond_3d

    .line 714
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v9, v10, :cond_30

    const-class v10, Ljava/lang/Boolean;

    if-ne v9, v10, :cond_3d

    :cond_30
    const/4 v9, 0x2

    .line 716
    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3d

    :goto_3b
    move-object v1, v7

    goto :goto_40

    :cond_3d
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    :cond_40
    :goto_40
    if-nez v1, :cond_88

    move v3, v2

    .line 726
    :goto_43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_69

    .line 727
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x5f

    const-string v7, ""

    if-ne v4, v6, :cond_5b

    const-string v0, "_"

    .line 730
    invoke-virtual {p1, v0, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6a

    :cond_5b
    const/16 v6, 0x2d

    if-ne v4, v6, :cond_66

    const-string v0, "-"

    .line 734
    invoke-virtual {p1, v0, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6a

    :cond_66
    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    :cond_69
    move v5, v2

    :goto_6a
    if-eqz v5, :cond_88

    .line 739
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v1

    if-nez v1, :cond_88

    .line 741
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->sortedFieldDeserializers:[Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    array-length p1, p0

    :goto_75
    if-ge v2, p1, :cond_88

    aget-object v3, p0, v2

    .line 742
    iget-object v4, v3, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_85

    move-object v1, v3

    goto :goto_88

    :cond_85
    add-int/lit8 v2, v2, 0x1

    goto :goto_75

    :cond_88
    :goto_88
    return-object v1
.end method
