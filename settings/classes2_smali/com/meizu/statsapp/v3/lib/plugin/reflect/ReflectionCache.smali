.class public Lcom/meizu/statsapp/v3/lib/plugin/reflect/ReflectionCache;
.super Ljava/lang/Object;
.source "ReflectionCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/statsapp/v3/lib/plugin/reflect/ReflectionCache$SingletonHolder;
    }
.end annotation


# static fields
.field private static classInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/meizu/statsapp/v3/lib/plugin/reflect/ClassInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ReflectionCache"

    .line 11
    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ReflectionCache;->TAG:Ljava/lang/String;

    .line 15
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sput-object p0, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ReflectionCache;->classInfoMap:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/statsapp/v3/lib/plugin/reflect/ReflectionCache$1;)V
    .registers 2

    .line 10
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ReflectionCache;-><init>()V

    return-void
.end method

.method public static build()Lcom/meizu/statsapp/v3/lib/plugin/reflect/ReflectionCache;
    .registers 1

    .line 28
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ReflectionCache$SingletonHolder;->access$100()Lcom/meizu/statsapp/v3/lib/plugin/reflect/ReflectionCache;

    move-result-object v0

    return-object v0
.end method

.method private putClassInfoToCache(Ljava/lang/String;Lcom/meizu/statsapp/v3/lib/plugin/reflect/ClassInfo;)V
    .registers 3

    .line 23
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ReflectionCache;->classInfoMap:Ljava/util/HashMap;

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

    .line 32
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ReflectionCache;->forName(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public forName(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Class;
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

    .line 36
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_20

    .line 37
    sget-object p2, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ReflectionCache;->classInfoMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ClassInfo;

    if-eqz p2, :cond_13

    .line 40
    iget-object p0, p2, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ClassInfo;->mClass:Ljava/lang/Class;

    return-object p0

    .line 42
    :cond_13
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 43
    new-instance v0, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ClassInfo;

    invoke-direct {v0, p2, p1}, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ClassInfo;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ReflectionCache;->putClassInfoToCache(Ljava/lang/String;Lcom/meizu/statsapp/v3/lib/plugin/reflect/ClassInfo;)V

    return-object p2

    .line 48
    :cond_20
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public varargs getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 80
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ReflectionCache;->classInfoMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ClassInfo;

    if-nez v0, :cond_1f

    .line 83
    :try_start_e
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ReflectionCache;->forName(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Class;
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 88
    :cond_1f
    :goto_1f
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ReflectionCache;->classInfoMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ClassInfo;

    if-nez p0, :cond_2f

    const/4 p0, 0x0

    return-object p0

    .line 93
    :cond_2f
    array-length v0, p3

    const/4 v1, 0x0

    move-object v2, p2

    :goto_32
    if-ge v1, v0, :cond_4c

    aget-object v3, p3, v1

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 96
    :cond_4c
    invoke-virtual {p0, v2}, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ClassInfo;->getCachedMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_53

    return-object v0

    .line 100
    :cond_53
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 101
    invoke-virtual {p0, v2, p1}, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ClassInfo;->addCachedMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    return-object p1
.end method

.method public varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 53
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ReflectionCache;->classInfoMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ClassInfo;

    if-nez v0, :cond_1f

    .line 56
    :try_start_e
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ReflectionCache;->forName(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Class;
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 61
    :cond_1f
    :goto_1f
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ReflectionCache;->classInfoMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ClassInfo;

    if-nez p0, :cond_2f

    const/4 p0, 0x0

    return-object p0

    .line 66
    :cond_2f
    array-length v0, p3

    const/4 v1, 0x0

    move-object v2, p2

    :goto_32
    if-ge v1, v0, :cond_4c

    aget-object v3, p3, v1

    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 69
    :cond_4c
    invoke-virtual {p0, v2}, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ClassInfo;->getCachedMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_53

    return-object v0

    .line 73
    :cond_53
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 74
    invoke-virtual {p0, v2, p1}, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ClassInfo;->addCachedMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    return-object p1
.end method
