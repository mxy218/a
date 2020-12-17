.class public Lcom/meizu/common/renderer/effect/FrameBufferPool;
.super Lcom/meizu/common/renderer/effect/Resource;
.source "FrameBufferPool.java"


# instance fields
.field private mCache:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/meizu/common/renderer/effect/FrameBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxSize:I

.field private mSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Lcom/meizu/common/renderer/effect/Resource;-><init>()V

    .line 12
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mCache:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mMaxSize:I

    .line 14
    iput v0, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mSize:I

    return-void
.end method

.method private addNew(Lcom/meizu/common/renderer/effect/FrameBuffer;)V
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mCache:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 65
    iget v0, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mSize:I

    invoke-virtual {p1}, Lcom/meizu/common/renderer/effect/FrameBuffer;->getSize()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mSize:I

    return-void
.end method

.method private removeLocation(I)V
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mCache:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/common/renderer/effect/FrameBuffer;

    .line 70
    iget v0, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mSize:I

    invoke-virtual {p1}, Lcom/meizu/common/renderer/effect/FrameBuffer;->getSize()I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mSize:I

    return-void
.end method

.method private removeOldest(Z)V
    .registers 5

    .line 74
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mCache:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/renderer/effect/FrameBuffer;

    .line 75
    iget v1, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mSize:I

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/FrameBuffer;->getSize()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mSize:I

    .line 76
    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/effect/Resource;->releaseResources(Z)V

    return-void
.end method


# virtual methods
.method public get(IIZ)Lcom/meizu/common/renderer/effect/FrameBuffer;
    .registers 5

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/meizu/common/renderer/effect/FrameBufferPool;->get(IIZZ)Lcom/meizu/common/renderer/effect/FrameBuffer;

    move-result-object p0

    return-object p0
.end method

.method public get(IIZZ)Lcom/meizu/common/renderer/effect/FrameBuffer;
    .registers 7

    .line 26
    monitor-enter p0

    .line 29
    :try_start_1
    iget-object p4, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mCache:Ljava/util/Vector;

    invoke-virtual {p4}, Ljava/util/Vector;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    :goto_9
    const/4 v0, -0x1

    if-ltz p4, :cond_3a

    .line 30
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mCache:Ljava/util/Vector;

    invoke-virtual {v1, p4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/renderer/effect/FrameBuffer;

    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/FrameBuffer;->getWidth()I

    move-result v1

    if-ne v1, p1, :cond_37

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mCache:Ljava/util/Vector;

    .line 31
    invoke-virtual {v1, p4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/renderer/effect/FrameBuffer;

    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/FrameBuffer;->getHeight()I

    move-result v1

    if-ne v1, p2, :cond_37

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mCache:Ljava/util/Vector;

    .line 32
    invoke-virtual {v1, p4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/renderer/effect/FrameBuffer;

    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/FrameBuffer;->getDepth()Z

    move-result v1

    if-ne v1, p3, :cond_37

    goto :goto_3b

    :cond_37
    add-int/lit8 p4, p4, -0x1

    goto :goto_9

    :cond_3a
    move p4, v0

    :goto_3b
    if-eq p4, v0, :cond_49

    .line 38
    iget-object p1, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mCache:Ljava/util/Vector;

    invoke-virtual {p1, p4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/common/renderer/effect/FrameBuffer;

    .line 39
    invoke-direct {p0, p4}, Lcom/meizu/common/renderer/effect/FrameBufferPool;->removeLocation(I)V

    goto :goto_4f

    .line 41
    :cond_49
    new-instance p4, Lcom/meizu/common/renderer/effect/FrameBuffer;

    invoke-direct {p4, p1, p2, p3}, Lcom/meizu/common/renderer/effect/FrameBuffer;-><init>(IIZ)V

    move-object p1, p4

    .line 43
    :goto_4f
    monitor-exit p0

    return-object p1

    :catchall_51
    move-exception p1

    .line 44
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_1 .. :try_end_53} :catchall_51

    throw p1
.end method

.method public put(Lcom/meizu/common/renderer/effect/FrameBuffer;Z)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 49
    :cond_3
    monitor-enter p0

    .line 50
    :try_start_4
    invoke-virtual {p1}, Lcom/meizu/common/renderer/effect/FrameBuffer;->resetTextureBounds()V

    .line 51
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mCache:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_f
    if-ltz v0, :cond_1e

    .line 52
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mCache:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1b

    .line 53
    monitor-exit p0

    return-void

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 56
    :cond_1e
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/FrameBufferPool;->addNew(Lcom/meizu/common/renderer/effect/FrameBuffer;)V

    .line 57
    :goto_21
    iget p1, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mSize:I

    iget v0, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mMaxSize:I

    if-le p1, v0, :cond_2b

    .line 58
    invoke-direct {p0, p2}, Lcom/meizu/common/renderer/effect/FrameBufferPool;->removeOldest(Z)V

    goto :goto_21

    .line 60
    :cond_2b
    monitor-exit p0

    return-void

    :catchall_2d
    move-exception p1

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public resize(I)V
    .registers 3

    const/16 v0, 0x80

    .line 17
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/16 v0, 0x20

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    mul-int/lit16 p1, p1, 0x400

    mul-int/lit16 p1, p1, 0x400

    .line 18
    iput p1, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mMaxSize:I

    return-void
.end method

.method public trimResources(IZ)V
    .registers 6

    .line 81
    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    .line 82
    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mCache:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 83
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mCache:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/renderer/effect/FrameBuffer;

    invoke-virtual {v2, p1, p2}, Lcom/meizu/common/renderer/effect/FrameBuffer;->trimResources(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 85
    :cond_19
    iget-object p1, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mCache:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    .line 86
    iput v0, p0, Lcom/meizu/common/renderer/effect/FrameBufferPool;->mSize:I

    .line 87
    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p1
.end method
