.class public Lcom/meizu/statsapp/v3/lib/plugin/reflect/SystemProperties;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# direct methods
.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 20
    :try_start_0
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ReflectionCache;->build()Lcom/meizu/statsapp/v3/lib/plugin/reflect/ReflectionCache;

    move-result-object v0

    const-string v1, "android.os.SystemProperties"

    invoke-virtual {v0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ReflectionCache;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 25
    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 27
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ReflectionCache;->build()Lcom/meizu/statsapp/v3/lib/plugin/reflect/ReflectionCache;

    move-result-object v3

    const-string v5, "get"

    invoke-virtual {v3, v0, v5, v2}, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ReflectionCache;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    .line 33
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_26} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    goto :goto_29

    :catch_27
    const-string p0, ""

    :goto_29
    return-object p0

    :catch_2a
    move-exception p0

    .line 35
    throw p0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 54
    :try_start_0
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ReflectionCache;->build()Lcom/meizu/statsapp/v3/lib/plugin/reflect/ReflectionCache;

    move-result-object v0

    const-string v1, "android.os.SystemProperties"

    invoke-virtual {v0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ReflectionCache;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    .line 59
    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 60
    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 62
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ReflectionCache;->build()Lcom/meizu/statsapp/v3/lib/plugin/reflect/ReflectionCache;

    move-result-object v3

    const-string v6, "get"

    invoke-virtual {v3, v0, v6, v2}, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ReflectionCache;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    aput-object p1, v1, v5

    .line 69
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_2d} :catch_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    goto :goto_2f

    :catch_2e
    move-object p0, p1

    :goto_2f
    return-object p0

    :catch_30
    move-exception p0

    .line 71
    throw p0
.end method
