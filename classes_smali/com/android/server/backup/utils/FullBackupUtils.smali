.class public Lcom/android/server/backup/utils/FullBackupUtils;
.super Ljava/lang/Object;
.source "FullBackupUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 45
    new-instance p0, Ljava/io/DataInputStream;

    invoke-direct {p0, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 47
    const v0, 0x8000

    new-array v0, v0, [B

    .line 49
    :cond_13
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    if-lez v1, :cond_3a

    .line 50
    :goto_19
    if-lez v1, :cond_13

    .line 51
    array-length v2, v0

    if-le v1, v2, :cond_20

    array-length v2, v0

    goto :goto_21

    :cond_20
    move v2, v1

    .line 52
    :goto_21
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v2}, Ljava/io/DataInputStream;->read([BII)I

    move-result v2

    .line 53
    if-ltz v2, :cond_2d

    .line 57
    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 58
    sub-int/2addr v1, v2

    .line 59
    goto :goto_19

    .line 54
    :cond_2d
    const-string p0, "BackupManagerService"

    const-string p1, "Unexpectedly reached end of file while reading data"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 61
    :cond_3a
    return-void
.end method
