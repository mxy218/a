.class public Lcom/android/server/am/DumpHeapProvider;
.super Landroid/content/ContentProvider;
.source "DumpHeapProvider.java"


# static fields
.field static sHeapDumpJavaFile:Ljava/io/File;

.field static final sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/DumpHeapProvider;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static getJavaFile()Ljava/io/File;
    .registers 2

    .line 34
    sget-object v0, Lcom/android/server/am/DumpHeapProvider;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 35
    :try_start_3
    sget-object v1, Lcom/android/server/am/DumpHeapProvider;->sHeapDumpJavaFile:Ljava/io/File;

    monitor-exit v0

    return-object v1

    .line 36
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    .line 68
    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    .line 58
    const-string p1, "application/octet-stream"

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    .line 63
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .registers 5

    .line 41
    sget-object v0, Lcom/android/server/am/DumpHeapProvider;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 42
    :try_start_3
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 43
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "system"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    new-instance v1, Ljava/io/File;

    const-string v3, "heapdump"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 46
    new-instance v2, Ljava/io/File;

    const-string v3, "javaheap.bin"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v2, Lcom/android/server/am/DumpHeapProvider;->sHeapDumpJavaFile:Ljava/io/File;

    .line 47
    monitor-exit v0

    .line 48
    const/4 v0, 0x1

    return v0

    .line 47
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 78
    sget-object p2, Lcom/android/server/am/DumpHeapProvider;->sLock:Ljava/lang/Object;

    monitor-enter p2

    .line 79
    :try_start_3
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    const-string v1, "/java"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 82
    sget-object p1, Lcom/android/server/am/DumpHeapProvider;->sHeapDumpJavaFile:Ljava/io/File;

    const/high16 v0, 0x10000000

    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    monitor-exit p2

    return-object p1

    .line 85
    :cond_1d
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid path for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :catchall_34
    move-exception p1

    monitor-exit p2
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    .line 53
    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 73
    const/4 p1, 0x0

    return p1
.end method
