.class public final Lcom/android/server/backup/utils/RandomAccessFileUtils;
.super Ljava/lang/Object;
.source "RandomAccessFileUtils.java"


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "x0"  # Ljava/lang/Throwable;
    .param p1, "x1"  # Ljava/lang/AutoCloseable;

    .line 38
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getRandomAccessFile(Ljava/io/File;)Ljava/io/RandomAccessFile;
    .registers 3
    .param p0, "file"  # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v1, "rwd"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static readBoolean(Ljava/io/File;Z)Z
    .registers 5
    .param p0, "file"  # Ljava/io/File;
    .param p1, "def"  # Z

    .line 45
    :try_start_0
    invoke-static {p0}, Lcom/android/server/backup/utils/RandomAccessFileUtils;->getRandomAccessFile(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_16

    .local v0, "af":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    .line 46
    :try_start_5
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v2
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_d

    .line 47
    :try_start_9
    invoke-static {v1, v0}, Lcom/android/server/backup/utils/RandomAccessFileUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_16

    .line 46
    return v2

    .line 45
    :catchall_d
    move-exception v1

    .end local v0  # "af":Ljava/io/RandomAccessFile;
    .end local p0  # "file":Ljava/io/File;
    .end local p1  # "def":Z
    :try_start_e
    throw v1
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_f

    .line 47
    .restart local v0  # "af":Ljava/io/RandomAccessFile;
    .restart local p0  # "file":Ljava/io/File;
    .restart local p1  # "def":Z
    :catchall_f
    move-exception v2

    if-eqz v0, :cond_15

    :try_start_12
    invoke-static {v1, v0}, Lcom/android/server/backup/utils/RandomAccessFileUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local p0  # "file":Ljava/io/File;
    .end local p1  # "def":Z
    :cond_15
    throw v2
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_16} :catch_16

    .end local v0  # "af":Ljava/io/RandomAccessFile;
    .restart local p0  # "file":Ljava/io/File;
    .restart local p1  # "def":Z
    :catch_16
    move-exception v0

    .line 48
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error reading file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupManagerService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    .end local v0  # "e":Ljava/io/IOException;
    return p1
.end method

.method public static writeBoolean(Ljava/io/File;Z)V
    .registers 5
    .param p0, "file"  # Ljava/io/File;
    .param p1, "b"  # Z

    .line 36
    :try_start_0
    invoke-static {p0}, Lcom/android/server/backup/utils/RandomAccessFileUtils;->getRandomAccessFile(Ljava/io/File;)Ljava/io/RandomAccessFile;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_15

    .local v0, "af":Ljava/io/RandomAccessFile;
    const/4 v1, 0x0

    .line 37
    :try_start_5
    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_c

    .line 38
    :try_start_8
    invoke-static {v1, v0}, Lcom/android/server/backup/utils/RandomAccessFileUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_15

    .line 40
    .end local v0  # "af":Ljava/io/RandomAccessFile;
    goto :goto_30

    .line 36
    .restart local v0  # "af":Ljava/io/RandomAccessFile;
    :catchall_c
    move-exception v1

    .end local v0  # "af":Ljava/io/RandomAccessFile;
    .end local p0  # "file":Ljava/io/File;
    .end local p1  # "b":Z
    :try_start_d
    throw v1
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_e

    .line 38
    .restart local v0  # "af":Ljava/io/RandomAccessFile;
    .restart local p0  # "file":Ljava/io/File;
    .restart local p1  # "b":Z
    :catchall_e
    move-exception v2

    if-eqz v0, :cond_14

    :try_start_11
    invoke-static {v1, v0}, Lcom/android/server/backup/utils/RandomAccessFileUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local p0  # "file":Ljava/io/File;
    .end local p1  # "b":Z
    :cond_14
    throw v2
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_15} :catch_15

    .end local v0  # "af":Ljava/io/RandomAccessFile;
    .restart local p0  # "file":Ljava/io/File;
    .restart local p1  # "b":Z
    :catch_15
    move-exception v0

    .line 39
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error writing file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BackupManagerService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .end local v0  # "e":Ljava/io/IOException;
    :goto_30
    return-void
.end method
