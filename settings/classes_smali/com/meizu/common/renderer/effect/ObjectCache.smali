.class public Lcom/meizu/common/renderer/effect/ObjectCache;
.super Ljava/lang/Object;
.source "ObjectCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCache:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private mMaxSize:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;I)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    .line 13
    iput v0, p0, Lcom/meizu/common/renderer/effect/ObjectCache;->mMaxSize:I

    .line 14
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/ObjectCache;->mCache:Ljava/util/Stack;

    .line 18
    iput-object p1, p0, Lcom/meizu/common/renderer/effect/ObjectCache;->mClass:Ljava/lang/Class;

    .line 19
    iput p2, p0, Lcom/meizu/common/renderer/effect/ObjectCache;->mMaxSize:I

    return-void
.end method


# virtual methods
.method public pop()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 23
    monitor-enter p0

    .line 24
    :try_start_1
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/ObjectCache;->mCache:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 25
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/ObjectCache;->mCache:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_20

    return-object v0

    .line 28
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/ObjectCache;->mClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_17} :catch_19
    .catchall {:try_start_11 .. :try_end_17} :catchall_20

    .line 29
    :try_start_17
    monitor-exit p0

    return-object v0

    :catch_19
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 33
    monitor-exit p0

    return-object v0

    :catchall_20
    move-exception v0

    .line 34
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public put(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 38
    monitor-enter p0

    if-nez p1, :cond_5

    .line 39
    :try_start_3
    monitor-exit p0

    return-void

    .line 40
    :cond_5
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/ObjectCache;->mCache:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_1c

    .line 41
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/ObjectCache;->mCache:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_19

    .line 42
    monitor-exit p0

    return-void

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 45
    :cond_1c
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/ObjectCache;->mCache:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    iget v1, p0, Lcom/meizu/common/renderer/effect/ObjectCache;->mMaxSize:I

    if-ge v0, v1, :cond_2b

    .line 46
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/ObjectCache;->mCache:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_2b
    monitor-exit p0

    return-void

    :catchall_2d
    move-exception p1

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw p1
.end method
