.class public Lcom/android/server/backup/encryption/chunk/ChunkListingMap;
.super Ljava/lang/Object;
.source "ChunkListingMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/encryption/chunk/ChunkListingMap$Entry;
    }
.end annotation


# instance fields
.field private final mChunksByHash:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/backup/encryption/chunk/ChunkHash;",
            "Lcom/android/server/backup/encryption/chunk/ChunkListingMap$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/android/server/backup/encryption/chunk/ChunkHash;",
            "Lcom/android/server/backup/encryption/chunk/ChunkListingMap$Entry;",
            ">;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/encryption/chunk/ChunkListingMap;->mChunksByHash:Ljava/util/Map;

    .line 65
    return-void
.end method

.method public static readFromProto(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/backup/encryption/chunk/ChunkListingMap;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    const-wide/16 v1, 0x0

    .line 48
    :cond_7
    :goto_7
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_42

    .line 49
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 50
    const-wide v3, 0x20b00000001L

    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v3

    .line 51
    invoke-static {p0}, Lcom/android/server/backup/encryption/chunk/Chunk;->readFromProto(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/backup/encryption/chunk/Chunk;

    move-result-object v5

    .line 52
    new-instance v6, Lcom/android/server/backup/encryption/chunk/ChunkHash;

    invoke-virtual {v5}, Lcom/android/server/backup/encryption/chunk/Chunk;->getHash()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/server/backup/encryption/chunk/ChunkHash;-><init>([B)V

    new-instance v7, Lcom/android/server/backup/encryption/chunk/ChunkListingMap$Entry;

    invoke-virtual {v5}, Lcom/android/server/backup/encryption/chunk/Chunk;->getLength()I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {v7, v1, v2, v8, v9}, Lcom/android/server/backup/encryption/chunk/ChunkListingMap$Entry;-><init>(JILcom/android/server/backup/encryption/chunk/ChunkListingMap$1;)V

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual {v5}, Lcom/android/server/backup/encryption/chunk/Chunk;->getLength()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v1, v5

    .line 54
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 55
    goto :goto_7

    .line 58
    :cond_42
    new-instance p0, Lcom/android/server/backup/encryption/chunk/ChunkListingMap;

    invoke-direct {p0, v0}, Lcom/android/server/backup/encryption/chunk/ChunkListingMap;-><init>(Ljava/util/Map;)V

    return-object p0
.end method


# virtual methods
.method public getChunkCount()I
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/android/server/backup/encryption/chunk/ChunkListingMap;->mChunksByHash:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getChunkEntry(Lcom/android/server/backup/encryption/chunk/ChunkHash;)Lcom/android/server/backup/encryption/chunk/ChunkListingMap$Entry;
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/android/server/backup/encryption/chunk/ChunkListingMap;->mChunksByHash:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/backup/encryption/chunk/ChunkListingMap$Entry;

    return-object p1
.end method

.method public hasChunk(Lcom/android/server/backup/encryption/chunk/ChunkHash;)Z
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/android/server/backup/encryption/chunk/ChunkListingMap;->mChunksByHash:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
