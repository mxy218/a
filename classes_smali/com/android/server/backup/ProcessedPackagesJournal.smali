.class final Lcom/android/server/backup/ProcessedPackagesJournal;
.super Ljava/lang/Object;
.source "ProcessedPackagesJournal.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final JOURNAL_FILE_NAME:Ljava/lang/String; = "processed"

.field private static final TAG:Ljava/lang/String; = "ProcessedPackagesJournal"


# instance fields
.field private final mProcessedPackages:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProcessedPackages"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateDirectory:Ljava/io/File;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "x0"  # Ljava/lang/Throwable;
    .param p1, "x1"  # Ljava/lang/AutoCloseable;

    .line 99
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

.method constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "stateDirectory"  # Ljava/io/File;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mProcessedPackages:Ljava/util/Set;

    .line 66
    iput-object p1, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mStateDirectory:Ljava/io/File;

    .line 67
    return-void
.end method

.method private loadFromDisk()V
    .registers 7

    .line 129
    const-string v0, "ProcessedPackagesJournal"

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mStateDirectory:Ljava/io/File;

    const-string/jumbo v3, "processed"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 131
    .local v1, "journalFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_13

    .line 132
    return-void

    .line 135
    :cond_13
    :try_start_13
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_22
    .catch Ljava/io/EOFException; {:try_start_13 .. :try_end_22} :catch_4f
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_22} :catch_48

    .line 138
    .local v2, "oldJournal":Ljava/io/DataInputStream;
    :goto_22
    :try_start_22
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "packageName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v4, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mProcessedPackages:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3f
    .catchall {:try_start_22 .. :try_end_3f} :catchall_41

    .line 143
    nop

    .end local v3  # "packageName":Ljava/lang/String;
    goto :goto_22

    .line 135
    :catchall_41
    move-exception v3

    .end local v1  # "journalFile":Ljava/io/File;
    .end local v2  # "oldJournal":Ljava/io/DataInputStream;
    .end local p0  # "this":Lcom/android/server/backup/ProcessedPackagesJournal;
    :try_start_42
    throw v3
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_43

    .line 144
    .restart local v1  # "journalFile":Ljava/io/File;
    .restart local v2  # "oldJournal":Ljava/io/DataInputStream;
    .restart local p0  # "this":Lcom/android/server/backup/ProcessedPackagesJournal;
    :catchall_43
    move-exception v4

    :try_start_44
    invoke-static {v3, v2}, Lcom/android/server/backup/ProcessedPackagesJournal;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v1  # "journalFile":Ljava/io/File;
    .end local p0  # "this":Lcom/android/server/backup/ProcessedPackagesJournal;
    throw v4
    :try_end_48
    .catch Ljava/io/EOFException; {:try_start_44 .. :try_end_48} :catch_4f
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_48} :catch_48

    .line 146
    .end local v2  # "oldJournal":Ljava/io/DataInputStream;
    .restart local v1  # "journalFile":Ljava/io/File;
    .restart local p0  # "this":Lcom/android/server/backup/ProcessedPackagesJournal;
    :catch_48
    move-exception v2

    .line 147
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Error reading processed packages journal"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_51

    .line 144
    .end local v2  # "e":Ljava/io/IOException;
    :catch_4f
    move-exception v0

    .line 148
    nop

    .line 149
    :goto_51
    return-void
.end method


# virtual methods
.method addPackage(Ljava/lang/String;)V
    .registers 8
    .param p1, "packageName"  # Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mProcessedPackages:Ljava/util/Set;

    monitor-enter v0

    .line 89
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mProcessedPackages:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 91
    monitor-exit v0

    return-void

    .line 94
    :cond_d
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mStateDirectory:Ljava/io/File;

    const-string/jumbo v3, "processed"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_56

    .line 96
    .local v1, "journalFile":Ljava/io/File;
    :try_start_17
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "rws"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1f} :catch_35
    .catchall {:try_start_17 .. :try_end_1f} :catchall_56

    .local v2, "out":Ljava/io/RandomAccessFile;
    const/4 v3, 0x0

    .line 97
    :try_start_20
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 98
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_2e

    .line 99
    :try_start_2a
    invoke-static {v3, v2}, Lcom/android/server/backup/ProcessedPackagesJournal;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_35
    .catchall {:try_start_2a .. :try_end_2d} :catchall_56

    .line 101
    .end local v2  # "out":Ljava/io/RandomAccessFile;
    goto :goto_54

    .line 96
    .restart local v2  # "out":Ljava/io/RandomAccessFile;
    :catchall_2e
    move-exception v3

    .end local v1  # "journalFile":Ljava/io/File;
    .end local v2  # "out":Ljava/io/RandomAccessFile;
    .end local p0  # "this":Lcom/android/server/backup/ProcessedPackagesJournal;
    .end local p1  # "packageName":Ljava/lang/String;
    :try_start_2f
    throw v3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    .line 99
    .restart local v1  # "journalFile":Ljava/io/File;
    .restart local v2  # "out":Ljava/io/RandomAccessFile;
    .restart local p0  # "this":Lcom/android/server/backup/ProcessedPackagesJournal;
    .restart local p1  # "packageName":Ljava/lang/String;
    :catchall_30
    move-exception v4

    :try_start_31
    invoke-static {v3, v2}, Lcom/android/server/backup/ProcessedPackagesJournal;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local p0  # "this":Lcom/android/server/backup/ProcessedPackagesJournal;
    .end local p1  # "packageName":Ljava/lang/String;
    throw v4
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_35} :catch_35
    .catchall {:try_start_31 .. :try_end_35} :catchall_56

    .end local v2  # "out":Ljava/io/RandomAccessFile;
    .restart local p0  # "this":Lcom/android/server/backup/ProcessedPackagesJournal;
    .restart local p1  # "packageName":Ljava/lang/String;
    :catch_35
    move-exception v2

    .line 100
    .local v2, "e":Ljava/io/IOException;
    :try_start_36
    const-string v3, "ProcessedPackagesJournal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t log backup of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v1  # "journalFile":Ljava/io/File;
    .end local v2  # "e":Ljava/io/IOException;
    :goto_54
    monitor-exit v0

    .line 103
    return-void

    .line 102
    :catchall_56
    move-exception v1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_36 .. :try_end_58} :catchall_56

    throw v1
.end method

.method getPackagesCopy()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mProcessedPackages:Ljava/util/Set;

    monitor-enter v0

    .line 116
    :try_start_3
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mProcessedPackages:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 117
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method hasBeenProcessed(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mProcessedPackages:Ljava/util/Set;

    monitor-enter v0

    .line 83
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mProcessedPackages:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 84
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method init()V
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mProcessedPackages:Ljava/util/Set;

    monitor-enter v0

    .line 74
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/backup/ProcessedPackagesJournal;->loadFromDisk()V

    .line 75
    monitor-exit v0

    .line 76
    return-void

    .line 75
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method reset()V
    .registers 5

    .line 121
    iget-object v0, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mProcessedPackages:Ljava/util/Set;

    monitor-enter v0

    .line 122
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mProcessedPackages:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 123
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/ProcessedPackagesJournal;->mStateDirectory:Ljava/io/File;

    const-string/jumbo v3, "processed"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    .local v1, "journalFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 125
    nop

    .end local v1  # "journalFile":Ljava/io/File;
    monitor-exit v0

    .line 126
    return-void

    .line 125
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method
