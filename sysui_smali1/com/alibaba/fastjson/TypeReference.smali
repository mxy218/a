.class public Lcom/alibaba/fastjson/TypeReference;
.super Ljava/lang/Object;
.source "TypeReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static classTypeCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected final type:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000  # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-class v0, Lcom/alibaba/fastjson/TypeReference;

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 43
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/alibaba/fastjson/TypeReference;->type:Ljava/lang/reflect/Type;

    return-void
.end method

.method protected varargs constructor <init>([Ljava/lang/reflect/Type;)V
    .registers 10

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-class v0, Lcom/alibaba/fastjson/TypeReference;

    .line 52
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 54
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 55
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 56
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    move v5, v2

    move v6, v5

    .line 59
    :goto_1e
    array-length v7, v4

    if-ge v5, v7, :cond_35

    .line 60
    aget-object v7, v4, v5

    instance-of v7, v7, Ljava/lang/reflect/TypeVariable;

    if-eqz v7, :cond_32

    add-int/lit8 v7, v6, 0x1

    .line 61
    aget-object v6, p1, v6

    aput-object v6, v4, v5

    .line 62
    array-length v6, p1

    if-lt v7, v6, :cond_31

    goto :goto_35

    :cond_31
    move v6, v7

    :cond_32
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 68
    :cond_35
    :goto_35
    array-length v5, p1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8a

    array-length v5, v4

    if-ne v5, v6, :cond_8a

    .line 69
    sget-object v3, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ConcurrentMap;

    const/high16 v4, 0x3f400000  # 0.75f

    const/16 v5, 0x10

    if-nez v3, :cond_5d

    .line 71
    sget-object v3, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7, v5, v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-interface {v3, v0, v7}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v3, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/ConcurrentMap;

    .line 75
    :cond_5d
    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    if-nez v0, :cond_73

    .line 77
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v5, v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-interface {v3, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    .line 81
    :cond_73
    aget-object p1, p1, v2

    .line 83
    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    if-nez v1, :cond_87

    .line 85
    invoke-interface {v0, p1, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/reflect/Type;

    .line 89
    :cond_87
    iput-object v1, p0, Lcom/alibaba/fastjson/TypeReference;->type:Ljava/lang/reflect/Type;

    goto :goto_91

    .line 91
    :cond_8a
    new-instance p1, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    invoke-direct {p1, v4, v0, v3}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lcom/alibaba/fastjson/TypeReference;->type:Ljava/lang/reflect/Type;

    :goto_91
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/reflect/Type;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/alibaba/fastjson/TypeReference;->type:Ljava/lang/reflect/Type;

    return-object p0
.end method
