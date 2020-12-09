.class Lcom/android/server/coverage/CoverageService$CoverageCommand;
.super Landroid/os/ShellCommand;
.source "CoverageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/coverage/CoverageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CoverageCommand"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 66
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/coverage/CoverageService$1;)V
    .registers 2

    .line 66
    invoke-direct {p0}, Lcom/android/server/coverage/CoverageService$CoverageCommand;-><init>()V

    return-void
.end method

.method private onDump()I
    .registers 8

    .line 104
    invoke-virtual {p0}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 105
    if-nez v0, :cond_9

    .line 106
    const-string v0, "/data/local/tmp/coverage.ec"

    goto :goto_1f

    .line 108
    :cond_9
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 110
    new-instance v0, Ljava/io/File;

    const-string v2, "coverage.ec"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 115
    :cond_1f
    :goto_1f
    const-string/jumbo v1, "w"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 116
    const/4 v2, -0x1

    if-nez v1, :cond_2a

    .line 117
    return v2

    .line 121
    :cond_2a
    :try_start_2a
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v4, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_34} :catch_66

    .line 123
    :try_start_34
    invoke-static {}, Lorg/jacoco/agent/rt/RT;->getAgent()Lorg/jacoco/agent/rt/IAgent;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lorg/jacoco/agent/rt/IAgent;->getExecutionData(Z)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 124
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 125
    invoke-virtual {p0}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v5, "Dumped coverage data to %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_34 .. :try_end_55} :catchall_5a

    .line 126
    :try_start_55
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_66

    .line 129
    nop

    .line 131
    return v4

    .line 121
    :catchall_5a
    move-exception v0

    :try_start_5b
    throw v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5c

    .line 126
    :catchall_5c
    move-exception v1

    :try_start_5d
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_61

    goto :goto_65

    :catchall_61
    move-exception v3

    :try_start_62
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_65
    throw v1
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_66} :catch_66

    :catch_66
    move-exception v0

    .line 127
    invoke-virtual {p0}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to dump coverage data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    return v2
.end method

.method private onReset()I
    .registers 3

    .line 140
    invoke-static {}, Lorg/jacoco/agent/rt/RT;->getAgent()Lorg/jacoco/agent/rt/IAgent;

    move-result-object v0

    invoke-interface {v0}, Lorg/jacoco/agent/rt/IAgent;->reset()V

    .line 141
    invoke-virtual {p0}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Reset coverage data"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 3

    .line 73
    const-string v0, "dump"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 74
    invoke-direct {p0}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->onDump()I

    move-result p1

    return p1

    .line 75
    :cond_d
    const-string/jumbo v0, "reset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 76
    invoke-direct {p0}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->onReset()I

    move-result p1

    return p1

    .line 78
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public onHelp()V
    .registers 3

    .line 87
    invoke-virtual {p0}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 88
    const-string v1, "Coverage commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    const-string v1, "  dump [FILE]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    const-string v1, "    Dump code coverage to FILE."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    const-string v1, "  reset"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    const-string v1, "    Reset coverage information."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    return-void
.end method
