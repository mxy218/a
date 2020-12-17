.class public Lcom/android/server/backup/encryption/chunk/EncryptedChunkOrdering;
.super Ljava/lang/Object;
.source "EncryptedChunkOrdering.java"


# instance fields
.field private final mEncryptedChunkOrdering:[B


# direct methods
.method private constructor <init>([B)V
    .registers 2
    .param p1, "encryptedChunkOrdering"  # [B

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/server/backup/encryption/chunk/EncryptedChunkOrdering;->mEncryptedChunkOrdering:[B

    .line 66
    return-void
.end method

.method public static create([B)Lcom/android/server/backup/encryption/chunk/EncryptedChunkOrdering;
    .registers 2
    .param p0, "encryptedChunkOrdering"  # [B

    .line 36
    new-instance v0, Lcom/android/server/backup/encryption/chunk/EncryptedChunkOrdering;

    invoke-direct {v0, p0}, Lcom/android/server/backup/encryption/chunk/EncryptedChunkOrdering;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public encryptedChunkOrdering()[B
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/android/server/backup/encryption/chunk/EncryptedChunkOrdering;->mEncryptedChunkOrdering:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"  # Ljava/lang/Object;

    .line 47
    if-ne p0, p1, :cond_4

    .line 48
    const/4 v0, 0x1

    return v0

    .line 50
    :cond_4
    instance-of v0, p1, Lcom/android/server/backup/encryption/chunk/EncryptedChunkOrdering;

    if-nez v0, :cond_a

    .line 51
    const/4 v0, 0x0

    return v0

    .line 54
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/server/backup/encryption/chunk/EncryptedChunkOrdering;

    .line 55
    .local v0, "encryptedChunkOrdering":Lcom/android/server/backup/encryption/chunk/EncryptedChunkOrdering;
    iget-object v1, p0, Lcom/android/server/backup/encryption/chunk/EncryptedChunkOrdering;->mEncryptedChunkOrdering:[B

    iget-object v2, v0, Lcom/android/server/backup/encryption/chunk/EncryptedChunkOrdering;->mEncryptedChunkOrdering:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/android/server/backup/encryption/chunk/EncryptedChunkOrdering;->mEncryptedChunkOrdering:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
