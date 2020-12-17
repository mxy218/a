.class public Lcom/meizu/flyme/sdk/ReflectionCache;
.super Ljava/lang/Object;
.source "ReflectionCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/flyme/sdk/ReflectionCache$SingletonHolder;
    }
.end annotation


# static fields
.field public static classInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/meizu/flyme/sdk/ClassInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static noCacheClassFieldMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field public static noCacheClassMethodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ReflectionCache"

    .line 23
    iput-object v0, p0, Lcom/meizu/flyme/sdk/ReflectionCache;->TAG:Ljava/lang/String;

    .line 24
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sput-object p0, Lcom/meizu/flyme/sdk/ReflectionCache;->classInfoMap:Ljava/util/HashMap;

    .line 25
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sput-object p0, Lcom/meizu/flyme/sdk/ReflectionCache;->noCacheClassMethodMap:Ljava/util/HashMap;

    .line 26
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sput-object p0, Lcom/meizu/flyme/sdk/ReflectionCache;->noCacheClassFieldMap:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/flyme/sdk/ReflectionCache$1;)V
    .registers 2

    .line 11
    invoke-direct {p0}, Lcom/meizu/flyme/sdk/ReflectionCache;-><init>()V

    return-void
.end method

.method public static build()Lcom/meizu/flyme/sdk/ReflectionCache;
    .registers 1

    .line 30
    invoke-static {}, Lcom/meizu/flyme/sdk/ReflectionCache$SingletonHolder;->access$000()Lcom/meizu/flyme/sdk/ReflectionCache;

    move-result-object v0

    return-object v0
.end method

.method private getClassInfoFromCache(Ljava/lang/String;)Lcom/meizu/flyme/sdk/ClassInfo;
    .registers 2

    .line 38
    sget-object p0, Lcom/meizu/flyme/sdk/ReflectionCache;->classInfoMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/flyme/sdk/ClassInfo;

    return-object p0
.end method

.method private putClassInfoToCache(Ljava/lang/String;Lcom/meizu/flyme/sdk/ClassInfo;)V
    .registers 3

    .line 34
    sget-object p0, Lcom/meizu/flyme/sdk/ReflectionCache;->classInfoMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public forName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 42
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/meizu/flyme/sdk/ReflectionCache;->forName(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized forName(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 46
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 47
    invoke-direct {p0, p1}, Lcom/meizu/flyme/sdk/ReflectionCache;->getClassInfoFromCache(Ljava/lang/String;)Lcom/meizu/flyme/sdk/ClassInfo;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 49
    iget-object p1, p2, Lcom/meizu/flyme/sdk/ClassInfo;->mClass:Ljava/lang/Class;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_25

    monitor-exit p0

    return-object p1

    .line 51
    :cond_11
    :try_start_11
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 52
    new-instance v0, Lcom/meizu/flyme/sdk/ClassInfo;

    invoke-direct {v0, p2, p1}, Lcom/meizu/flyme/sdk/ClassInfo;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/meizu/flyme/sdk/ReflectionCache;->putClassInfoToCache(Ljava/lang/String;Lcom/meizu/flyme/sdk/ClassInfo;)V
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_25

    .line 54
    monitor-exit p0

    return-object p2

    .line 57
    :cond_1f
    :try_start_1f
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_25

    monitor-exit p0

    return-object p1

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public varargs declared-synchronized getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    monitor-enter p0

    .line 62
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/flyme/sdk/ReflectionCache;->getClassInfoFromCache(Ljava/lang/String;)Lcom/meizu/flyme/sdk/ClassInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    move v2, v1

    .line 63
    :goto_f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 66
    array-length v3, p3

    move-object v4, p2

    :goto_15
    if-ge v1, v3, :cond_2f

    .line 69
    aget-object v5, p3, v1

    .line 70
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 75
    :cond_2f
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 76
    invoke-virtual {v0, v4}, Lcom/meizu/flyme/sdk/ClassInfo;->getCachedMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_5d

    if-eqz v1, :cond_3d

    .line 78
    monitor-exit p0

    return-object v1

    .line 80
    :cond_3d
    :try_start_3d
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 81
    invoke-virtual {v0, v4, p1}, Lcom/meizu/flyme/sdk/ClassInfo;->addCachedMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_5d

    .line 82
    monitor-exit p0

    return-object p1

    .line 85
    :cond_46
    :try_start_46
    sget-object v0, Lcom/meizu/flyme/sdk/ReflectionCache;->noCacheClassMethodMap:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;
    :try_end_4e
    .catchall {:try_start_46 .. :try_end_4e} :catchall_5d

    if-eqz v0, :cond_52

    .line 87
    monitor-exit p0

    return-object v0

    .line 89
    :cond_52
    :try_start_52
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 90
    sget-object p2, Lcom/meizu/flyme/sdk/ReflectionCache;->noCacheClassMethodMap:Ljava/util/HashMap;

    invoke-virtual {p2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catchall {:try_start_52 .. :try_end_5b} :catchall_5d

    .line 91
    monitor-exit p0

    return-object p1

    :catchall_5d
    move-exception p1

    monitor-exit p0

    throw p1
.end method
