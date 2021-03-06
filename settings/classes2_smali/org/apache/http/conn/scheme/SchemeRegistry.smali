.class public final Lorg/apache/http/conn/scheme/SchemeRegistry;
.super Ljava/lang/Object;
.source "SchemeRegistry.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final registeredSchemes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/http/conn/scheme/Scheme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/http/conn/scheme/SchemeRegistry;->registeredSchemes:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final declared-synchronized get(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_f

    .line 125
    :try_start_3
    iget-object v0, p0, Lorg/apache/http/conn/scheme/SchemeRegistry;->registeredSchemes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/http/conn/scheme/Scheme;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 126
    monitor-exit p0

    return-object p1

    :catchall_d
    move-exception p1

    goto :goto_17

    .line 121
    :cond_f
    :try_start_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Name must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_d

    :goto_17
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;
    .registers 5

    monitor-enter p0

    .line 83
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->get(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_25

    if-eqz v0, :cond_9

    .line 88
    monitor-exit p0

    return-object v0

    .line 85
    :cond_9
    :try_start_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheme \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not registered."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getScheme(Lorg/apache/http/HttpHost;)Lorg/apache/http/conn/scheme/Scheme;
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_f

    .line 107
    :try_start_3
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object p1

    :catchall_d
    move-exception p1

    goto :goto_17

    .line 105
    :cond_f
    :try_start_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Host must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_d

    :goto_17
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_13

    .line 144
    :try_start_3
    iget-object v0, p0, Lorg/apache/http/conn/scheme/SchemeRegistry;->registeredSchemes:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/apache/http/conn/scheme/Scheme;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/http/conn/scheme/Scheme;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_11

    .line 145
    monitor-exit p0

    return-object p1

    :catchall_11
    move-exception p1

    goto :goto_1b

    .line 142
    :cond_13
    :try_start_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Scheme must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_11

    :goto_1b
    monitor-exit p0

    throw p1
.end method
