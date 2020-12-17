.class Lcom/meizu/common/util/ReflectUtils$CacheReflect;
.super Ljava/lang/Object;
.source "ReflectUtils.java"

# interfaces
.implements Lcom/meizu/common/util/ReflectUtils$IReflect;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/util/ReflectUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheReflect"
.end annotation


# instance fields
.field private mCacheClass:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/meizu/common/util/ReflectUtils$IReflectClass;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/util/ReflectUtils$CacheReflect;->mCacheClass:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/util/ReflectUtils$1;)V
    .registers 2

    .line 41
    invoke-direct {p0}, Lcom/meizu/common/util/ReflectUtils$CacheReflect;-><init>()V

    return-void
.end method


# virtual methods
.method public from(Ljava/lang/Class;)Lcom/meizu/common/util/ReflectUtils$IReflectClass;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/meizu/common/util/ReflectUtils$IReflectClass;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 51
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/meizu/common/util/ReflectUtils$CacheReflect;->from(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/common/util/ReflectUtils$IReflectClass;

    move-result-object p0

    return-object p0
.end method

.method public from(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/common/util/ReflectUtils$IReflectClass;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/meizu/common/util/ReflectUtils$CacheReflect;->mCacheClass:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_14

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 60
    iget-object p0, p0, Lcom/meizu/common/util/ReflectUtils$CacheReflect;->mCacheClass:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_14
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/common/util/ReflectUtils$IReflectClass;

    if-nez p0, :cond_29

    .line 65
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 66
    new-instance p1, Lcom/meizu/common/util/ReflectUtils$DefaultReflectClass;

    invoke-direct {p1, p0}, Lcom/meizu/common/util/ReflectUtils$DefaultReflectClass;-><init>(Ljava/lang/Class;)V

    .line 67
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, p1

    :cond_29
    return-object p0
.end method

.method public from(Ljava/lang/Object;)Lcom/meizu/common/util/ReflectUtils$IReflectClass;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/meizu/common/util/ReflectUtils$CacheReflect;->from(Ljava/lang/Class;)Lcom/meizu/common/util/ReflectUtils$IReflectClass;

    move-result-object p0

    return-object p0
.end method

.method public from(Ljava/lang/String;)Lcom/meizu/common/util/ReflectUtils$IReflectClass;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 74
    const-class v0, Lcom/meizu/common/util/ReflectUtils$CacheReflect;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/meizu/common/util/ReflectUtils$CacheReflect;->from(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/meizu/common/util/ReflectUtils$IReflectClass;

    move-result-object p0

    return-object p0
.end method
