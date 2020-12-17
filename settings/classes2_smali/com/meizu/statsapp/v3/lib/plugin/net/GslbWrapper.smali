.class public Lcom/meizu/statsapp/v3/lib/plugin/net/GslbWrapper;
.super Ljava/lang/Object;
.source "GslbWrapper.java"


# static fields
.field private static sInstance:Lcom/meizu/statsapp/v3/lib/plugin/net/GslbWrapper;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private manager:Ljava/lang/Object;

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "GslbWrapper"

    .line 17
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/GslbWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getsInstance(Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/net/GslbWrapper;
    .registers 3

    const-class v0, Lcom/meizu/statsapp/v3/lib/plugin/net/GslbWrapper;

    monitor-enter v0

    .line 25
    :try_start_3
    sget-object v1, Lcom/meizu/statsapp/v3/lib/plugin/net/GslbWrapper;->sInstance:Lcom/meizu/statsapp/v3/lib/plugin/net/GslbWrapper;

    if-nez v1, :cond_e

    .line 26
    new-instance v1, Lcom/meizu/statsapp/v3/lib/plugin/net/GslbWrapper;

    invoke-direct {v1, p0}, Lcom/meizu/statsapp/v3/lib/plugin/net/GslbWrapper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/meizu/statsapp/v3/lib/plugin/net/GslbWrapper;->sInstance:Lcom/meizu/statsapp/v3/lib/plugin/net/GslbWrapper;

    .line 28
    :cond_e
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/net/GslbWrapper;->sInstance:Lcom/meizu/statsapp/v3/lib/plugin/net/GslbWrapper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public convert(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 44
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/GslbWrapper;->manager:Ljava/lang/Object;

    const-string v1, "### gslb convert return: "

    const-string v2, "GslbWrapper"

    if-eqz v0, :cond_4c

    :try_start_8
    const-string v3, "convert"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    .line 46
    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-static {v0, v3, v5, v4}, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ReflectHelper;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_51

    const-string v3, "getAvailableIp"

    const/4 v4, 0x0

    .line 48
    invoke-static {v0, v3, v4}, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ReflectHelper;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 49
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_51

    .line 50
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/GslbWrapper;->map:Ljava/util/Map;

    invoke-interface {p0, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_42} :catch_43

    return-object v3

    :catch_43
    move-exception p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    :cond_4c
    const-string p0, "### gslb manager not found"

    .line 59
    invoke-static {v2, p0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_51
    :goto_51
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public onResponse(Ljava/lang/String;I)V
    .registers 9

    .line 66
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/GslbWrapper;->manager:Ljava/lang/Object;

    const-string v1, "GslbWrapper"

    if-eqz v0, :cond_50

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### gslb  onResponse, ip: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/GslbWrapper;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_55

    .line 71
    :try_start_2a
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/net/GslbWrapper;->manager:Ljava/lang/Object;

    const-string v0, "onResponseSuccess"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {p0, v0, v2, v1}, Lcom/meizu/statsapp/v3/lib/plugin/reflect/ReflectHelper;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_4a} :catch_4b

    goto :goto_55

    :catch_4b
    move-exception p0

    .line 73
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_55

    :cond_50
    const-string p0, "### gslb manager not found"

    .line 77
    invoke-static {v1, p0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    :goto_55
    return-void
.end method
