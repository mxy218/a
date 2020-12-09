.class Lcom/android/server/RandomBlock;
.super Ljava/lang/Object;
.source "RandomBlock.java"


# static fields
.field private static final BLOCK_SIZE:I = 0x200

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "RandomBlock"


# instance fields
.field private block:[B


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/RandomBlock;->block:[B

    .line 39
    return-void
.end method

.method private static close(Ljava/io/Closeable;)V
    .registers 3

    .line 93
    if-nez p0, :cond_3

    .line 94
    return-void

    .line 96
    :cond_3
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_6} :catch_7

    .line 99
    goto :goto_f

    .line 97
    :catch_7
    move-exception p0

    .line 98
    const-string v0, "RandomBlock"

    const-string v1, "IOException thrown while closing Closeable"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    :goto_f
    return-void
.end method

.method static fromFile(Ljava/lang/String;)Lcom/android/server/RandomBlock;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    nop

    .line 45
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_12

    .line 46
    :try_start_7
    invoke-static {v1}, Lcom/android/server/RandomBlock;->fromStream(Ljava/io/InputStream;)Lcom/android/server/RandomBlock;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 48
    invoke-static {v1}, Lcom/android/server/RandomBlock;->close(Ljava/io/Closeable;)V

    .line 46
    return-object p0

    .line 48
    :catchall_f
    move-exception p0

    move-object v0, v1

    goto :goto_13

    :catchall_12
    move-exception p0

    :goto_13
    invoke-static {v0}, Lcom/android/server/RandomBlock;->close(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static fromStream(Ljava/io/InputStream;)Lcom/android/server/RandomBlock;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/android/server/RandomBlock;

    invoke-direct {v0}, Lcom/android/server/RandomBlock;-><init>()V

    .line 54
    const/4 v1, 0x0

    .line 55
    :goto_6
    const/16 v2, 0x200

    if-ge v1, v2, :cond_1c

    .line 56
    iget-object v3, v0, Lcom/android/server/RandomBlock;->block:[B

    sub-int/2addr v2, v1

    invoke-virtual {p0, v3, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 57
    const/4 v3, -0x1

    if-eq v2, v3, :cond_16

    .line 60
    add-int/2addr v1, v2

    .line 61
    goto :goto_6

    .line 58
    :cond_16
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 62
    :cond_1c
    return-object v0
.end method

.method private toDataOut(Ljava/io/DataOutput;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/android/server/RandomBlock;->block:[B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    .line 89
    return-void
.end method

.method private static truncateIfPossible(Ljava/io/RandomAccessFile;)V
    .registers 3

    .line 79
    const-wide/16 v0, 0x200

    :try_start_2
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 84
    goto :goto_7

    .line 80
    :catch_6
    move-exception p0

    .line 85
    :goto_7
    return-void
.end method


# virtual methods
.method toFile(Ljava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    nop

    .line 69
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/RandomAccessFile;

    if-eqz p2, :cond_a

    const-string/jumbo p2, "rws"

    goto :goto_d

    :cond_a
    const-string/jumbo p2, "rw"

    :goto_d
    invoke-direct {v1, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_1e

    .line 70
    :try_start_10
    invoke-direct {p0, v1}, Lcom/android/server/RandomBlock;->toDataOut(Ljava/io/DataOutput;)V

    .line 71
    invoke-static {v1}, Lcom/android/server/RandomBlock;->truncateIfPossible(Ljava/io/RandomAccessFile;)V
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_1b

    .line 73
    invoke-static {v1}, Lcom/android/server/RandomBlock;->close(Ljava/io/Closeable;)V

    .line 74
    nop

    .line 75
    return-void

    .line 73
    :catchall_1b
    move-exception p1

    move-object v0, v1

    goto :goto_1f

    :catchall_1e
    move-exception p1

    :goto_1f
    invoke-static {v0}, Lcom/android/server/RandomBlock;->close(Ljava/io/Closeable;)V

    throw p1
.end method
