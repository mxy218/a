.class public Lcom/meizu/freeze/ItemCache;
.super Ljava/lang/Object;
.source "ItemCache.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ItemCache"

.field private static final THRESHOLD:I = 0xa


# instance fields
.field public mHistory:Lcom/meizu/freeze/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/meizu/freeze/Cache<",
            "Lcom/meizu/freeze/FreezeItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/meizu/freeze/Cache;

    const-class v1, Lcom/meizu/freeze/FreezeItem;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/meizu/freeze/Cache;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/meizu/freeze/ItemCache;->mHistory:Lcom/meizu/freeze/Cache;

    return-void
.end method


# virtual methods
.method public malloc()Lcom/meizu/freeze/FreezeItem;
    .registers 2

    .line 30
    monitor-enter p0

    .line 31
    :try_start_1
    iget-object v0, p0, Lcom/meizu/freeze/ItemCache;->mHistory:Lcom/meizu/freeze/Cache;

    invoke-virtual {v0}, Lcom/meizu/freeze/Cache;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/freeze/FreezeItem;

    monitor-exit p0

    return-object v0

    .line 32
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public store(Lcom/meizu/freeze/FreezeItem;)V
    .registers 3
    .param p1, "item"  # Lcom/meizu/freeze/FreezeItem;

    .line 24
    monitor-enter p0

    .line 25
    :try_start_1
    iget-object v0, p0, Lcom/meizu/freeze/ItemCache;->mHistory:Lcom/meizu/freeze/Cache;

    invoke-virtual {v0, p1}, Lcom/meizu/freeze/Cache;->put(Ljava/lang/Object;)V

    .line 26
    monitor-exit p0

    .line 27
    return-void

    .line 26
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method
