.class public Lcom/android/server/backup/encryption/chunking/LengthlessEncryptedChunkEncoder;
.super Ljava/lang/Object;
.source "LengthlessEncryptedChunkEncoder.java"

# interfaces
.implements Lcom/android/server/backup/encryption/chunking/EncryptedChunkEncoder;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChunkOrderingType()I
    .registers 2

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public getEncodedLengthOfChunk(Lcom/android/server/backup/encryption/chunking/EncryptedChunk;)I
    .registers 3

    .line 43
    invoke-virtual {p1}, Lcom/android/server/backup/encryption/chunking/EncryptedChunk;->nonce()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p1}, Lcom/android/server/backup/encryption/chunking/EncryptedChunk;->encryptedBytes()[B

    move-result-object p1

    array-length p1, p1

    add-int/2addr v0, p1

    return v0
.end method

.method public writeChunkToWriter(Lcom/android/server/backup/encryption/chunking/BackupWriter;Lcom/android/server/backup/encryption/chunking/EncryptedChunk;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-virtual {p2}, Lcom/android/server/backup/encryption/chunking/EncryptedChunk;->nonce()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/server/backup/encryption/chunking/BackupWriter;->writeBytes([B)V

    .line 38
    invoke-virtual {p2}, Lcom/android/server/backup/encryption/chunking/EncryptedChunk;->encryptedBytes()[B

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/server/backup/encryption/chunking/BackupWriter;->writeBytes([B)V

    .line 39
    return-void
.end method
