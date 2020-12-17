.class public Lcom/meizu/statsapp/v3/utils/reflect/SystemProperties;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# direct methods
.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 60
    :try_start_0
    invoke-static {}, Lcom/meizu/statsapp/v3/utils/reflect/ReflectionCache;->build()Lcom/meizu/statsapp/v3/utils/reflect/ReflectionCache;

    move-result-object v0

    const-string v1, "android.os.SystemProperties"

    invoke-virtual {v0, v1}, Lcom/meizu/statsapp/v3/utils/reflect/ReflectionCache;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    .line 65
    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 66
    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 68
    invoke-static {}, Lcom/meizu/statsapp/v3/utils/reflect/ReflectionCache;->build()Lcom/meizu/statsapp/v3/utils/reflect/ReflectionCache;

    move-result-object v3

    const-string v6, "get"

    invoke-virtual {v3, v0, v6, v2}, Lcom/meizu/statsapp/v3/utils/reflect/ReflectionCache;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    aput-object p1, v1, v5

    .line 75
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

    .line 78
    throw p0
.end method
