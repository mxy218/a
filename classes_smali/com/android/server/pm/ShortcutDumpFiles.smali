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
    .registers 2

    .line 63
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

.method public constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/pm/ShortcutDumpFiles;->mService:Lcom/android/server/pm/ShortcutService;

    .line 43
    return-void
.end method

.method static synthetic lambda$dumpAll$1(Ljava/io/File;)Z
    .registers 1

    .line 79
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$dumpAll$2(Ljava/io/File;)Ljava/lang/String;
    .registers 1

    .line 84
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$save$0([BLjava/io/PrintWriter;)V
    .registers 3

    .line 72
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 73
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 72
    invoke-virtual {v0, p0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p0

    .line 73
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 72
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dumpAll(Ljava/io/PrintWriter;)V
    .registers 9

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutDumpFiles;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutService;->getDumpPath()Ljava/io/File;

    move-result-object v0

    .line 79
    sget-object v1, Lcom/android/server/pm/-$$Lambda$ShortcutDumpFiles$v6wMz6MRa9pgSnEDM_9bjvrLaKY;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutDumpFiles$v6wMz6MRa9pgSnEDM_9bjvrLaKY;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_6e

    .line 84
    :cond_19
    sget-object v0, Lcom/android/server/pm/-$$Lambda$ShortcutDumpFiles$stGgHzhh-NVWPgDSwmH2ybAWRE8;->INSTANCE:Lcom/android/server/pm/-$$Lambda$ShortcutDumpFiles$stGgHzhh-NVWPgDSwmH2ybAWRE8;

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 86
    array-length v0, v1

    const/4 v2, 0x0

    :goto_24
    if-ge v2, v0, :cond_6d

    aget-object v3, v1, v2

    .line 87
    const-string v4, "*** Dumping: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    const-string/jumbo v4, "mtime: "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/server/pm/ShortcutService;->formatTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_54
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_54} :catch_74
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_54} :catch_74

    const/4 v3, 0x0

    .line 95
    nop

    .line 96
    :goto_56
    :try_start_56
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_60

    .line 97
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5f
    .catchall {:try_start_56 .. :try_end_5f} :catchall_66

    goto :goto_56

    .line 99
    :cond_60
    :try_start_60
    invoke-static {v3, v4}, Lcom/android/server/pm/ShortcutDumpFiles;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_63
    .catch Ljava/lang/RuntimeException; {:try_start_60 .. :try_end_63} :catch_74
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_74

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 93
    :catchall_66
    move-exception p1

    :try_start_67
    throw p1
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_68

    .line 99
    :catchall_68
    move-exception v0

    :try_start_69
    invoke-static {p1, v4}, Lcom/android/server/pm/ShortcutDumpFiles;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0

    .line 103
    :cond_6d
    goto :goto_7c

    .line 81
    :cond_6e
    :goto_6e
    const-string v0, "  No dump files found."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/RuntimeException; {:try_start_69 .. :try_end_73} :catch_74
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_73} :catch_74

    .line 82
    return-void

    .line 101
    :catch_74
    move-exception p1

    .line 102
    const-string v0, "ShortcutService"

    const-string v1, "Failed to print dump files"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    :goto_7c
    return-void
.end method

.method public save(Ljava/lang/String;Ljava/util/function/Consumer;)Z
    .registers 9
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
    const-string v0, "ShortcutService"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/android/server/pm/ShortcutDumpFiles;->mService:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutService;->getDumpPath()Ljava/io/File;

    move-result-object v2

    .line 48
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 49
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_27

    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create directory: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return v1

    .line 54
    :cond_27
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_3b
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3b} :catch_4b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3b} :catch_4b

    const/4 v3, 0x0

    .line 62
    :try_start_3c
    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_44

    .line 63
    :try_start_3f
    invoke-static {v3, v2}, Lcom/android/server/pm/ShortcutDumpFiles;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_42
    .catch Ljava/lang/RuntimeException; {:try_start_3f .. :try_end_42} :catch_4b
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_4b

    .line 64
    const/4 p1, 0x1

    return p1

    .line 60
    :catchall_44
    move-exception p2

    :try_start_45
    throw p2
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_46

    .line 63
    :catchall_46
    move-exception v3

    :try_start_47
    invoke-static {p2, v2}, Lcom/android/server/pm/ShortcutDumpFiles;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_4b
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_4b} :catch_4b
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4b} :catch_4b

    .line 65
    :catch_4b
    move-exception p2

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create dump file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    return v1
.end method

.method public save(Ljava/lang/String;[B)Z
    .registers 4

    .line 72
    new-instance v0, Lcom/android/server/pm/-$$Lambda$ShortcutDumpFiles$rwmVVp6PnQCcurF7D6VzrdNqEdk;

    invoke-direct {v0, p2}, Lcom/android/server/pm/-$$Lambda$ShortcutDumpFiles$rwmVVp6PnQCcurF7D6VzrdNqEdk;-><init>([B)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/ShortcutDumpFiles;->save(Ljava/lang/String;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method
