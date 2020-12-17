.class public Lcom/meizu/common/renderer/effect/SynchronizedIntArray;
.super Ljava/lang/Object;
.source "SynchronizedIntArray.java"


# instance fields
.field private mData:[I

.field private mSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 6
    iput-object v0, p0, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->mData:[I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->mSize:I

    return-void
.end method


# virtual methods
.method public declared-synchronized add(I)V
    .registers 6

    monitor-enter p0

    .line 10
    :try_start_1
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->mData:[I

    array-length v0, v0

    iget v1, p0, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->mSize:I

    if-ne v0, v1, :cond_19

    .line 11
    iget v0, p0, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->mSize:I

    iget v1, p0, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->mSize:I

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 12
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->mData:[I

    iget v2, p0, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->mSize:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iput-object v0, p0, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->mData:[I

    .line 15
    :cond_19
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->mData:[I

    iget v1, p0, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->mSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->mSize:I

    aput p1, v0, v1
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 16
    monitor-exit p0

    return-void

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 35
    :try_start_2
    iput v0, p0, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->mSize:I

    .line 36
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->mData:[I

    array-length v0, v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_f

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->mData:[I
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_11

    .line 37
    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInternalArray()[I
    .registers 2

    monitor-enter p0

    .line 31
    :try_start_1
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->mData:[I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .registers 2

    monitor-enter p0

    .line 19
    :try_start_1
    iget v0, p0, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->mSize:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
