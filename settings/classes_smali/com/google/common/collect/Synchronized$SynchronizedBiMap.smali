.class Lcom/google/common/collect/Synchronized$SynchronizedBiMap;
.super Lcom/google/common/collect/Synchronized$SynchronizedMap;
.source "Synchronized.java"

# interfaces
.implements Lcom/google/common/collect/BiMap;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Synchronized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedBiMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Synchronized$SynchronizedMap<",
        "TK;TV;>;",
        "Lcom/google/common/collect/BiMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient valueSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation
.end field


# virtual methods
.method delegate()Lcom/google/common/collect/BiMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/BiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1123
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedMap;->delegate()Ljava/util/Map;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/BiMap;

    return-object p0
.end method

.method bridge synthetic delegate()Ljava/util/Map;
    .registers 1

    .line 1111
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->delegate()Lcom/google/common/collect/BiMap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .registers 1

    .line 1111
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->values()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public values()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 1127
    iget-object v0, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 1128
    :try_start_3
    iget-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->valueSet:Ljava/util/Set;

    if-nez v1, :cond_17

    .line 1129
    invoke-virtual {p0}, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->delegate()Lcom/google/common/collect/BiMap;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/BiMap;->values()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/Synchronized$SynchronizedObject;->mutex:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/common/collect/Synchronized;->set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->valueSet:Ljava/util/Set;

    .line 1131
    :cond_17
    iget-object p0, p0, Lcom/google/common/collect/Synchronized$SynchronizedBiMap;->valueSet:Ljava/util/Set;

    monitor-exit v0

    return-object p0

    :catchall_1b
    move-exception p0

    .line 1132
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method
