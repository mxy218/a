.class public Lcom/android/server/pm/ShortcutDumpFiles;
.super Ljava/lang/Object;
.source "ShortcutDumpFiles.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ShortcutService"


# instance fields
.field private final mService:Lcom/android/server/pm/ShortcutService;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "x0"  # Ljava/lang/Throwable;
    .param p1, "x1"  # Ljava/lang/AutoCloseable;

    .line 63
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

.method public constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .registers 2
    .param p1, "service"  # Lcom/android/server/pm/ShortcutService;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/pm/ShortcutDumpFiles;->mService:Lcom/android/server/pm/ShortcutService;

    .line 43
    return-void
.end method

.method static synthetic lambda$dumpAll$1(Ljava/io/File;)Z
    .registers 2
    .param p0, "f"  # Ljava/io/File;

    .line 79
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$dumpAll$2(Ljava/io/File;)Ljava/lang/String;
    .registers 2
    .param p0, "f"  # Ljava/io/File;

    .line 84
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$save$0([BLjava/io/PrintWriter;)V
    .registers 4
    .param p0, "utf8bytes"  # [B
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 72
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 73
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dumpAll(Ljava/io/PrintWriter;)V
    .registers 11
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutDumpFiles;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->getDumpPath()Ljava/io/File;

    move-result-object v0

    .line 79
    .local v0, "directory":Ljava/io/File;
    sget-object v1, Lcom/android/server/pm/-$$Lambda$ShortcutDumpFiles$v6wMz6MRa9pgSnEDM_9bjvrLaKY;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutDumpFiles$v6wMz6MRa9pgSnEDM_9bjvrLaKY;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 80
    .local v1, "files":[Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_6f

    .line 84
    :cond_19
    sget-object v2, Lcom/android/server/pm/-$$Lambda$ShortcutDumpFiles$stGgHzhh-NVWPgDSwmH2ybAWRE8;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutDumpFiles$stGgHzhh-NVWPgDSwmH2ybAWRE8;

    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 86
    array-length v2, v1

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_6e

    aget-object v4, v1, v3

    .line 87
    .local v4, "path":Ljava/io/File;
    const-string v5, "*** Dumping: "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    const-string/jumbo v5, "mtime: "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_54
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_54} :catch_75
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_54} :catch_75

    .line 95
    .local v5, "reader":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    move-object v7, v6

    .line 96
    .local v7, "line":Ljava/lang/String;
    :goto_56
    :try_start_56
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    if-eqz v8, :cond_61

    .line 97
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_56 .. :try_end_60} :catchall_67

    goto :goto_56

    .line 99
    .end local v7  # "line":Ljava/lang/String;
    :cond_61
    :try_start_61
    invoke-static {v6, v5}, Lcom/android/server/pm/ShortcutDumpFiles;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_64
    .catch Ljava/lang/RuntimeException; {:try_start_61 .. :try_end_64} :catch_75
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_75

    .line 86
    .end local v4  # "path":Ljava/io/File;
    .end local v5  # "reader":Ljava/io/BufferedReader;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 93
    .restart local v4  # "path":Ljava/io/File;
    .restart local v5  # "reader":Ljava/io/BufferedReader;
    :catchall_67
    move-exception v2

    .end local v0  # "directory":Ljava/io/File;
    .end local v1  # "files":[Ljava/io/File;
    .end local v4  # "path":Ljava/io/File;
    .end local v5  # "reader":Ljava/io/BufferedReader;
    .end local p0  # "this":Lcom/android/server/pm/ShortcutDumpFiles;
    .end local p1  # "pw":Ljava/io/PrintWriter;
    :try_start_68
    throw v2
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_69

    .line 99
    .restart local v0  # "directory":Ljava/io/File;
    .restart local v1  # "files":[Ljava/io/File;
    .restart local v4  # "path":Ljava/io/File;
    .restart local v5  # "reader":Ljava/io/BufferedReader;
    .restart local p0  # "this":Lcom/android/server/pm/ShortcutDumpFiles;
    .restart local p1  # "pw":Ljava/io/PrintWriter;
    :catchall_69
    move-exception v3

    :try_start_6a
    invoke-static {v2, v5}, Lcom/android/server/pm/ShortcutDumpFiles;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local p0  # "this":Lcom/android/server/pm/ShortcutDumpFiles;
    .end local p1  # "pw":Ljava/io/PrintWriter;
    throw v3

    .line 103
    .end local v0  # "directory":Ljava/io/File;
    .end local v1  # "files":[Ljava/io/File;
    .end local v4  # "path":Ljava/io/File;
    .end local v5  # "reader":Ljava/io/BufferedReader;
    .restart local p0  # "this":Lcom/android/server/pm/ShortcutDumpFiles;
    .restart local p1  # "pw":Ljava/io/PrintWriter;
    :cond_6e
    goto :goto_7d

    .line 81
    .restart local v0  # "directory":Ljava/io/File;
    .restart local v1  # "files":[Ljava/io/File;
    :cond_6f
    :goto_6f
    const-string v2, "  No dump files found."

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_74
    .catch Ljava/lang/RuntimeException; {:try_start_6a .. :try_end_74} :catch_75
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_74} :catch_75

    .line 82
    return-void

    .line 101
    .end local v0  # "directory":Ljava/io/File;
    .end local v1  # "files":[Ljava/io/File;
    :catch_75
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ShortcutService"

    const-string v2, "Failed to print dump files"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_7d
    return-void
.end method

.method public save(Ljava/lang/String;Ljava/util/function/Consumer;)Z
    .registers 10
    .param p1, "filename"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Ljava/io/PrintWriter;",
            ">;)Z"
        }
    .end annotation

    .line 47
    .local p2, "dumper":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/io/PrintWriter;>;"
    const-string v0, "ShortcutService"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/android/server/pm/ShortcutDumpFiles;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutService;->getDumpPath()Ljava/io/File;

    move-result-object v2

    .line 48
    .local v2, "directory":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 49
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_27

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return v1

    .line 54
    :cond_27
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    .local v3, "path":Ljava/io/File;
    new-instance v4, Ljava/io/PrintWriter;

    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_3b
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3b} :catch_4b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3b} :catch_4b

    .local v4, "pw":Ljava/io/PrintWriter;
    const/4 v5, 0x0

    .line 62
    :try_start_3c
    invoke-interface {p2, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_44

    .line 63
    :try_start_3f
    invoke-static {v5, v4}, Lcom/android/server/pm/ShortcutDumpFiles;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_42
    .catch Ljava/lang/RuntimeException; {:try_start_3f .. :try_end_42} :catch_4b
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_4b

    .line 64
    .end local v4  # "pw":Ljava/io/PrintWriter;
    const/4 v0, 0x1

    return v0

    .line 60
    .restart local v4  # "pw":Ljava/io/PrintWriter;
    :catchall_44
    move-exception v5

    .end local v2  # "directory":Ljava/io/File;
    .end local v3  # "path":Ljava/io/File;
    .end local v4  # "pw":Ljava/io/PrintWriter;
    .end local p0  # "this":Lcom/android/server/pm/ShortcutDumpFiles;
    .end local p1  # "filename":Ljava/lang/String;
    .end local p2  # "dumper":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/io/PrintWriter;>;"
    :try_start_45
    throw v5
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_46

    .line 63
    .restart local v2  # "directory":Ljava/io/File;
    .restart local v3  # "path":Ljava/io/File;
    .restart local v4  # "pw":Ljava/io/PrintWriter;
    .restart local p0  # "this":Lcom/android/server/pm/ShortcutDumpFiles;
    .restart local p1  # "filename":Ljava/lang/String;
    .restart local p2  # "dumper":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/io/PrintWriter;>;"
    :catchall_46
    move-exception v6

    :try_start_47
    invoke-static {v5, v4}, Lcom/android/server/pm/ShortcutDumpFiles;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local p0  # "this":Lcom/android/server/pm/ShortcutDumpFiles;
    .end local p1  # "filename":Ljava/lang/String;
    .end local p2  # "dumper":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/io/PrintWriter;>;"
    throw v6
    :try_end_4b
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_4b} :catch_4b
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4b} :catch_4b

    .line 65
    .end local v2  # "directory":Ljava/io/File;
    .end local v3  # "path":Ljava/io/File;
    .end local v4  # "pw":Ljava/io/PrintWriter;
    .restart local p0  # "this":Lcom/android/server/pm/ShortcutDumpFiles;
    .restart local p1  # "filename":Ljava/lang/String;
    .restart local p2  # "dumper":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/io/PrintWriter;>;"
    :catch_4b
    move-exception v2

    .line 66
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create dump file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    return v1
.end method

.method public save(Ljava/lang/String;[B)Z
    .registers 4
    .param p1, "filename"  # Ljava/lang/String;
    .param p2, "utf8bytes"  # [B

    .line 72
    new-instance v0, Lcom/android/server/pm/-$$Lambda$ShortcutDumpFiles$rwmVVp6PnQCcurF7D6VzrdNqEdk;

    invoke-direct {v0, p2}, Lcom/android/server/pm/-$$Lambda$ShortcutDumpFiles$rwmVVp6PnQCcurF7D6VzrdNqEdk;-><init>([B)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method
