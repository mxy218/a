.class public Lcom/alibaba/fastjson/support/config/FastJsonConfig;
.super Ljava/lang/Object;
.source "FastJsonConfig.java"


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field private classSerializeFilters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/serializer/SerializeFilter;",
            ">;"
        }
    .end annotation
.end field

.field private dateFormat:Ljava/lang/String;

.field private features:[Lcom/alibaba/fastjson/parser/Feature;

.field private parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

.field private serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

.field private serializeFilters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;

.field private serializerFeatures:[Lcom/alibaba/fastjson/serializer/SerializerFeature;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->charset:Ljava/nio/charset/Charset;

    .line 76
    invoke-static {}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    .line 77
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 79
    iput-object v1, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->serializerFeatures:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    new-array v1, v0, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    .line 80
    iput-object v1, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->serializeFilters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    new-array v0, v0, [Lcom/alibaba/fastjson/parser/Feature;

    .line 81
    iput-object v0, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->features:[Lcom/alibaba/fastjson/parser/Feature;

    return-void
.end method


# virtual methods
.method public getCharset()Ljava/nio/charset/Charset;
    .registers 1

    .line 195
    iget-object p0, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->charset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public getClassSerializeFilters()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/serializer/SerializeFilter;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object p0, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->classSerializeFilters:Ljava/util/Map;

    return-object p0
.end method

.method public getDateFormat()Ljava/lang/String;
    .registers 1

    .line 181
    iget-object p0, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->dateFormat:Ljava/lang/String;

    return-object p0
.end method

.method public getFeatures()[Lcom/alibaba/fastjson/parser/Feature;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->features:[Lcom/alibaba/fastjson/parser/Feature;

    return-object p0
.end method

.method public getParserConfig()Lcom/alibaba/fastjson/parser/ParserConfig;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    return-object p0
.end method

.method public getSerializeConfig()Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    return-object p0
.end method

.method public getSerializeFilters()[Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->serializeFilters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    return-object p0
.end method

.method public getSerializerFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->serializerFeatures:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    return-object p0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .registers 2

    .line 202
    iput-object p1, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public setClassSerializeFilters(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson/serializer/SerializeFilter;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 170
    :cond_3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 172
    iget-object v2, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/serializer/SerializeFilter;

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->addFilter(Ljava/lang/Class;Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    goto :goto_b

    .line 174
    :cond_29
    iput-object p1, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->classSerializeFilters:Ljava/util/Map;

    return-void
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .registers 2

    .line 188
    iput-object p1, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->dateFormat:Ljava/lang/String;

    return-void
.end method

.method public varargs setFeatures([Lcom/alibaba/fastjson/parser/Feature;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->features:[Lcom/alibaba/fastjson/parser/Feature;

    return-void
.end method

.method public setParserConfig(Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    return-void
.end method

.method public setSerializeConfig(Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    return-void
.end method

.method public varargs setSerializeFilters([Lcom/alibaba/fastjson/serializer/SerializeFilter;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->serializeFilters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    return-void
.end method

.method public varargs setSerializerFeatures([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/alibaba/fastjson/support/config/FastJsonConfig;->serializerFeatures:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    return-void
.end method
