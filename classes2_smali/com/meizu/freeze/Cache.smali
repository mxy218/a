.class public Lcom/meizu/freeze/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


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
.field private static final TAG:Ljava/lang/String; = "AlphaMe"


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
    .param p2, "maxSize"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;I)V"
        }
    .end annotation

    .line 28
    .local p0, "this":Lcom/meizu/freeze/Cache;, "Lcom/meizu/freeze/Cache<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x5

    iput v0, p0, Lcom/meizu/freeze/Cache;->mMaxSize:I

    .line 26
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/meizu/freeze/Cache;->mCache:Ljava/util/Stack;

    .line 29
    iput-object p1, p0, Lcom/meizu/freeze/Cache;->mClass:Ljava/lang/Class;

    .line 30
    iput p2, p0, Lcom/meizu/freeze/Cache;->mMaxSize:I

    .line 31
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 74
    .local p0, "this":Lcom/meizu/freeze/Cache;, "Lcom/meizu/freeze/Cache<TT;>;"
    monitor-enter p0

    .line 75
    :try_start_1
    iget-object v0, p0, Lcom/meizu/freeze/Cache;->mCache:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 76
    monitor-exit p0

    .line 77
    return-void

    .line 76
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public pop()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 34
    .local p0, "this":Lcom/meizu/freeze/Cache;, "Lcom/meizu/freeze/Cache<TT;>;"
    monitor-enter p0

    .line 35
    :try_start_1
    iget-object v0, p0, Lcom/meizu/freeze/Cache;->mCache:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 36
    iget-object v0, p0, Lcom/meizu/freeze/Cache;->mCache:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_34

    return-object v0

    .line 39
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/meizu/freeze/Cache;->mClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_17} :catch_19
    .catchall {:try_start_11 .. :try_end_17} :catchall_34

    .line 40
    .local v0, "o":Ljava/lang/Object;, "TT;"
    :try_start_17
    monitor-exit p0

    return-object v0

    .line 41
    .end local v0  # "o":Ljava/lang/Object;, "TT;"
    :catch_19
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AlphaMe"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache instance : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    nop

    .end local v0  # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 45
    :catchall_34
    move-exception v0

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_17 .. :try_end_36} :catchall_34

    throw v0
.end method

.method public put(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/meizu/freeze/Cache;, "Lcom/meizu/freeze/Cache<TT;>;"
    .local p1, "cache":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 50
    if-nez p1, :cond_5

    :try_start_3
    monitor-exit p0

    return-void

    .line 51
    :cond_5
    iget-object v0, p0, Lcom/meizu/freeze/Cache;->mCache:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_d
    if-ltz v0, :cond_1c

    .line 52
    iget-object v1, p0, Lcom/meizu/freeze/Cache;->mCache:Ljava/util/Stack;

    invoke-virtual {v1, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_19

    .line 53
    monitor-exit p0

    return-void

    .line 51
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 56
    .end local v0  # "i":I
    :cond_1c
    iget-object v0, p0, Lcom/meizu/freeze/Cache;->mCache:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    iget v1, p0, Lcom/meizu/freeze/Cache;->mMaxSize:I

    if-ge v0, v1, :cond_2b

    .line 57
    iget-object v0, p0, Lcom/meizu/freeze/Cache;->mCache:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_2b
    monitor-exit p0

    .line 60
    return-void

    .line 59
    :catchall_2d
    move-exception v0

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public put(Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    .line 63
    .local p0, "this":Lcom/meizu/freeze/Cache;, "Lcom/meizu/freeze/Cache<TT;>;"
    .local p1, "caches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    monitor-enter p0

    .line 64
    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 65
    .local v1, "cache":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lcom/meizu/freeze/Cache;->mCache:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    iget v3, p0, Lcom/meizu/freeze/Cache;->mMaxSize:I

    if-lt v2, v3, :cond_1a

    .line 66
    goto :goto_1e

    .line 68
    :cond_1a
    invoke-virtual {p0, v1}, Lcom/meizu/freeze/Cache;->put(Ljava/lang/Object;)V

    .line 69
    .end local v1  # "cache":Ljava/lang/Object;, "TT;"
    goto :goto_5

    .line 70
    :cond_1e
    :goto_1e
    monitor-exit p0

    .line 71
    return-void

    .line 70
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw v0
.end method
