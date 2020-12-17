.class public final Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
.source "ResolveFieldDeserializer.java"


# instance fields
.field private final collection:Ljava/util/Collection;

.field private final index:I

.field private final key:Ljava/lang/Object;

.field private final list:Ljava/util/List;

.field private final map:Ljava/util/Map;

.field private final parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/List;I)V
    .registers 5

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 27
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    .line 28
    iput p3, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->index:I

    .line 29
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->list:Ljava/util/List;

    .line 31
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->key:Ljava/lang/Object;

    .line 32
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->map:Ljava/util/Map;

    .line 34
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->collection:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 4

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 53
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    const/4 v1, -0x1

    .line 54
    iput v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->index:I

    .line 55
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->list:Ljava/util/List;

    .line 57
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->key:Ljava/lang/Object;

    .line 58
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->map:Ljava/util/Map;

    .line 60
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->collection:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, v0, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 40
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    const/4 v1, -0x1

    .line 41
    iput v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->index:I

    .line 42
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->list:Ljava/util/List;

    .line 44
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->key:Ljava/lang/Object;

    .line 45
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->map:Ljava/util/Map;

    .line 47
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->collection:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6

    .line 65
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->map:Ljava/util/Map;

    if-eqz p1, :cond_a

    .line 66
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->key:Ljava/lang/Object;

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 70
    :cond_a
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->collection:Ljava/util/Collection;

    if-eqz p1, :cond_12

    .line 71
    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    .line 75
    :cond_12
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->list:Ljava/util/List;

    iget v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->index:I

    invoke-interface {p1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->list:Ljava/util/List;

    instance-of v0, p1, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_48

    .line 78
    check-cast p1, Lcom/alibaba/fastjson/JSONArray;

    .line 79
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->getRelatedArray()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 82
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 84
    iget v2, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->index:I

    if-le v1, v2, :cond_48

    .line 86
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->getComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 87
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->getComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    invoke-static {p2, p1, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p2

    .line 91
    :cond_43
    iget p0, p0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;->index:I

    invoke-static {v0, p0, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_48
    return-void
.end method
