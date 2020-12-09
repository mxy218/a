.class public Lcom/android/server/backup/encryption/chunking/RawBackupWriter;
.super Ljava/lang/Object;
.source "RawBackupWriter.java"

# interfaces
.implements Lcom/android/server/backup/encryption/chunking/BackupWriter;


# instance fields
.field private bytesWritten:J

.field private final outputStream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/server/backup/encryption/chunking/RawBackupWriter;->outputStream:Ljava/io/OutputStream;

    .line 30
    return-void
.end method


# virtual methods
.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/android/server/backup/encryption/chunking/RawBackupWriter;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 51
    return-void
.end method

.method public getBytesWritten()J
    .registers 3

    .line 45
    iget-wide v0, p0, Lcom/android/server/backup/encryption/chunking/RawBackupWriter;->bytesWritten:J

    return-wide v0
.end method

.method public writeBytes([B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/android/server/backup/encryption/chunking/RawBackupWriter;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 35
    iget-wide v0, p0, Lcom/android/server/backup/encryption/chunking/RawBackupWriter;->bytesWritten:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/backup/encryption/chunking/RawBackupWriter;->bytesWritten:J

    .line 36
    return-void
.end method

.method public writeChunk(JI)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "RawBackupWriter cannot write existing chunks"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
