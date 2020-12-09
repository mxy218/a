.class public Lcom/android/server/backup/DataChangedJournal;
.super Ljava/lang/Object;
.source "DataChangedJournal.java"


# static fields
.field private static final BUFFER_SIZE_BYTES:I = 0x2000

.field private static final FILE_NAME_PREFIX:Ljava/lang/String; = "journal"


# instance fields
.field private final mFile:Ljava/io/File;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 2

    .line 65
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method constructor <init>(Ljava/io/File;)V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    .line 53
    return-void
.end method

.method static listJournals(Ljava/io/File;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/backup/DataChangedJournal;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1a

    aget-object v3, p0, v2

    .line 143
    new-instance v4, Lcom/android/server/backup/DataChangedJournal;

    invoke-direct {v4, v3}, Lcom/android/server/backup/DataChangedJournal;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 145
    :cond_1a
    return-object v0
.end method

.method static newJournal(Ljava/io/File;)Lcom/android/server/backup/DataChangedJournal;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    new-instance v0, Lcom/android/server/backup/DataChangedJournal;

    .line 134
    const-string v1, "journal"

    const/4 v2, 0x0

    invoke-static {v1, v2, p0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/backup/DataChangedJournal;-><init>(Ljava/io/File;)V

    .line 133
    return-object v0
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    const-string/jumbo v2, "rws"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    :try_start_a
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 64
    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_19

    .line 65
    const/4 p1, 0x0

    invoke-static {p1, v0}, Lcom/android/server/backup/DataChangedJournal;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 66
    return-void

    .line 62
    :catchall_19
    move-exception p1

    :try_start_1a
    throw p1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1b

    .line 65
    :catchall_1b
    move-exception v1

    invoke-static {p1, v0}, Lcom/android/server/backup/DataChangedJournal;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method public delete()Z
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 109
    instance-of v0, p1, Lcom/android/server/backup/DataChangedJournal;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 110
    check-cast p1, Lcom/android/server/backup/DataChangedJournal;

    .line 112
    :try_start_7
    iget-object v0, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_17} :catch_18

    return p1

    .line 113
    :catch_18
    move-exception p1

    .line 114
    return v1

    .line 117
    :cond_1a
    return v1
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 75
    nop

    .line 78
    :try_start_f
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_32

    .line 75
    nop

    .line 80
    :goto_15
    :try_start_15
    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v2

    if-lez v2, :cond_23

    .line 81
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_2b

    .line 83
    goto :goto_15

    .line 84
    :cond_23
    const/4 p1, 0x0

    :try_start_24
    invoke-static {p1, v1}, Lcom/android/server/backup/DataChangedJournal;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_32

    invoke-static {p1, v0}, Lcom/android/server/backup/DataChangedJournal;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 85
    return-void

    .line 75
    :catchall_2b
    move-exception p1

    :try_start_2c
    throw p1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    .line 84
    :catchall_2d
    move-exception v2

    :try_start_2e
    invoke-static {p1, v1}, Lcom/android/server/backup/DataChangedJournal;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_32

    .line 75
    :catchall_32
    move-exception p1

    :try_start_33
    throw p1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_34

    .line 84
    :catchall_34
    move-exception v1

    invoke-static {p1, v0}, Lcom/android/server/backup/DataChangedJournal;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method public getPackages()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    new-instance v1, Lcom/android/server/backup/-$$Lambda$NsJlXDEZZRYyD6JsbnCsdcb4L4A;

    invoke-direct {v1, v0}, Lcom/android/server/backup/-$$Lambda$NsJlXDEZZRYyD6JsbnCsdcb4L4A;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/android/server/backup/DataChangedJournal;->forEach(Ljava/util/function/Consumer;)V

    .line 95
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/android/server/backup/DataChangedJournal;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
