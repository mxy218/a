.class public Lcom/meizu/common/renderer/effect/TexturePool;
.super Lcom/meizu/common/renderer/effect/Resource;
.source "TexturePool.java"


# instance fields
.field private mCache:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/meizu/common/renderer/effect/texture/Texture;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxSize:I

.field private mSize:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Lcom/meizu/common/renderer/effect/Resource;-><init>()V

    .line 18
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mCache:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mSize:I

    return-void
.end method

.method private addNew(Lcom/meizu/common/renderer/effect/texture/Texture;)V
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mCache:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 76
    iget v0, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mSize:I

    invoke-virtual {p1}, Lcom/meizu/common/renderer/effect/texture/Texture;->getBytes()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mSize:I

    return-void
.end method

.method private removeLocation(I)V
    .registers 3

    .line 80
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mCache:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/common/renderer/effect/texture/Texture;

    .line 81
    iget v0, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mSize:I

    invoke-virtual {p1}, Lcom/meizu/common/renderer/effect/texture/Texture;->getBytes()I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mSize:I

    return-void
.end method

.method private removeOldest(Z)V
    .registers 5

    .line 85
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mCache:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/renderer/effect/texture/Texture;

    .line 86
    iget v1, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mSize:I

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/texture/Texture;->getBytes()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mSize:I

    .line 87
    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/effect/Resource;->releaseResources(Z)V

    return-void
.end method


# virtual methods
.method public get(IIIZ)Lcom/meizu/common/renderer/effect/texture/Texture;
    .registers 7

    .line 28
    monitor-enter p0

    .line 31
    :try_start_1
    iget-object p4, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mCache:Ljava/util/Vector;

    invoke-virtual {p4}, Ljava/util/Vector;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    :goto_9
    const/4 v0, -0x1

    if-ltz p4, :cond_3a

    .line 32
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mCache:Ljava/util/Vector;

    invoke-virtual {v1, p4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/texture/Texture;->getWidth()I

    move-result v1

    if-ne v1, p1, :cond_37

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mCache:Ljava/util/Vector;

    .line 33
    invoke-virtual {v1, p4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/texture/Texture;->getHeight()I

    move-result v1

    if-ne v1, p2, :cond_37

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mCache:Ljava/util/Vector;

    .line 34
    invoke-virtual {v1, p4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/texture/Texture;->getFormat()I

    move-result v1

    if-ne v1, p3, :cond_37

    goto :goto_3b

    :cond_37
    add-int/lit8 p4, p4, -0x1

    goto :goto_9

    :cond_3a
    move p4, v0

    :goto_3b
    if-eq p4, v0, :cond_4a

    .line 41
    iget-object p1, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mCache:Ljava/util/Vector;

    invoke-virtual {p1, p4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/common/renderer/effect/texture/Texture;

    .line 42
    invoke-direct {p0, p4}, Lcom/meizu/common/renderer/effect/TexturePool;->removeLocation(I)V

    move-object p4, p1

    goto :goto_60

    :cond_4a
    const p4, 0x881a

    if-eq p3, p4, :cond_5b

    const p4, 0x8814

    if-ne p3, p4, :cond_55

    goto :goto_5b

    .line 47
    :cond_55
    new-instance p4, Lcom/meizu/common/renderer/effect/texture/RawTexture;

    invoke-direct {p4, p1, p2, p3}, Lcom/meizu/common/renderer/effect/texture/RawTexture;-><init>(III)V

    goto :goto_60

    .line 45
    :cond_5b
    :goto_5b
    new-instance p4, Lcom/meizu/common/renderer/effect/texture/StorageTexture;

    invoke-direct {p4, p1, p2, p3}, Lcom/meizu/common/renderer/effect/texture/StorageTexture;-><init>(III)V

    .line 50
    :goto_60
    monitor-exit p0

    return-object p4

    :catchall_62
    move-exception p1

    .line 51
    monitor-exit p0
    :try_end_64
    .catchall {:try_start_1 .. :try_end_64} :catchall_62

    throw p1
.end method

.method public put(Lcom/meizu/common/renderer/effect/texture/Texture;Z)V
    .registers 5

    .line 59
    monitor-enter p0

    if-nez p1, :cond_5

    .line 60
    :try_start_3
    monitor-exit p0

    return-void

    .line 61
    :cond_5
    invoke-virtual {p1}, Lcom/meizu/common/renderer/effect/texture/Texture;->resetBounds()V

    .line 62
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mCache:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_10
    if-ltz v0, :cond_1f

    .line 63
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mCache:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1c

    .line 64
    monitor-exit p0

    return-void

    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    .line 67
    :cond_1f
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/TexturePool;->addNew(Lcom/meizu/common/renderer/effect/texture/Texture;)V

    .line 68
    :goto_22
    iget p1, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mSize:I

    iget v0, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mMaxSize:I

    if-le p1, v0, :cond_2c

    .line 69
    invoke-direct {p0, p2}, Lcom/meizu/common/renderer/effect/TexturePool;->removeOldest(Z)V

    goto :goto_22

    .line 71
    :cond_2c
    monitor-exit p0

    return-void

    :catchall_2e
    move-exception p1

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw p1
.end method

.method public resize(I)V
    .registers 3

    const/16 v0, 0x80

    .line 23
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/16 v0, 0x20

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    mul-int/lit16 p1, p1, 0x400

    mul-int/lit16 p1, p1, 0x400

    .line 24
    iput p1, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mMaxSize:I

    return-void
.end method

.method public trimResources(IZ)V
    .registers 6

    .line 92
    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    .line 93
    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mCache:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 94
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mCache:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {v2, p1, p2}, Lcom/meizu/common/renderer/effect/texture/Texture;->trimResources(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 96
    :cond_19
    iget-object p1, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mCache:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    .line 97
    iput v0, p0, Lcom/meizu/common/renderer/effect/TexturePool;->mSize:I

    .line 98
    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p1
.end method
