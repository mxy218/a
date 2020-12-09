.class public Lcom/android/server/backup/encryption/chunk/ChunkHash;
.super Ljava/lang/Object;
.source "ChunkHash.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/backup/encryption/chunk/ChunkHash;",
        ">;"
    }
.end annotation


# static fields
.field public static final HASH_LENGTH_BYTES:I = 0x20

.field private static final UNSIGNED_MASK:I = 0xff


# instance fields
.field private final mHash:[B


# direct methods
.method public constructor <init>([B)V
    .registers 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const-string v1, "Hash must have 256 bits"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 40
    iput-object p1, p0, Lcom/android/server/backup/encryption/chunk/ChunkHash;->mHash:[B

    .line 41
    return-void
.end method

.method private static lexicographicalCompareUnsignedBytes([B[B)I
    .registers 6

    .line 76
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 77
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1c

    .line 78
    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/android/server/backup/encryption/chunk/ChunkHash;->toInt(B)I

    move-result v2

    aget-byte v3, p1, v1

    invoke-static {v3}, Lcom/android/server/backup/encryption/chunk/ChunkHash;->toInt(B)I

    move-result v3

    sub-int/2addr v2, v3

    .line 79
    if-eqz v2, :cond_19

    .line 80
    return v2

    .line 77
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 83
    :cond_1c
    array-length p0, p0

    array-length p1, p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private static toInt(B)I
    .registers 1

    .line 87
    and-int/lit16 p0, p0, 0xff

    return p0
.end method


# virtual methods
.method public compareTo(Lcom/android/server/backup/encryption/chunk/ChunkHash;)I
    .registers 3

    .line 67
    invoke-virtual {p0}, Lcom/android/server/backup/encryption/chunk/ChunkHash;->getHash()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/backup/encryption/chunk/ChunkHash;->getHash()[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/backup/encryption/chunk/ChunkHash;->lexicographicalCompareUnsignedBytes([B[B)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 29
    check-cast p1, Lcom/android/server/backup/encryption/chunk/ChunkHash;

    invoke-virtual {p0, p1}, Lcom/android/server/backup/encryption/chunk/ChunkHash;->compareTo(Lcom/android/server/backup/encryption/chunk/ChunkHash;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 49
    if-ne p0, p1, :cond_4

    .line 50
    const/4 p1, 0x1

    return p1

    .line 52
    :cond_4
    instance-of v0, p1, Lcom/android/server/backup/encryption/chunk/ChunkHash;

    if-nez v0, :cond_a

    .line 53
    const/4 p1, 0x0

    return p1

    .line 56
    :cond_a
    check-cast p1, Lcom/android/server/backup/encryption/chunk/ChunkHash;

    .line 57
    iget-object v0, p0, Lcom/android/server/backup/encryption/chunk/ChunkHash;->mHash:[B

    iget-object p1, p1, Lcom/android/server/backup/encryption/chunk/ChunkHash;->mHash:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public getHash()[B
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/android/server/backup/encryption/chunk/ChunkHash;->mHash:[B

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/android/server/backup/encryption/chunk/ChunkHash;->mHash:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 72
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/encryption/chunk/ChunkHash;->mHash:[B

    invoke-virtual {v0, v1}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
