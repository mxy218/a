.class Lcom/android/server/clipboard/HostClipboardMonitor;
.super Ljava/lang/Object;
.source "ClipboardService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/clipboard/HostClipboardMonitor$HostClipboardCallback;
    }
.end annotation


# static fields
.field private static final PIPE_DEVICE:Ljava/lang/String; = "/dev/qemu_pipe"

.field private static final PIPE_NAME:Ljava/lang/String; = "pipe:clipboard"


# instance fields
.field private mHostClipboardCallback:Lcom/android/server/clipboard/HostClipboardMonitor$HostClipboardCallback;

.field private mPipe:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Lcom/android/server/clipboard/HostClipboardMonitor$HostClipboardCallback;)V
    .registers 3

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    .line 107
    iput-object p1, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mHostClipboardCallback:Lcom/android/server/clipboard/HostClipboardMonitor$HostClipboardCallback;

    .line 108
    return-void
.end method

.method private openPipe()V
    .registers 5

    .line 88
    const-string/jumbo v0, "pipe:clipboard"

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    .line 89
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    .line 90
    nop

    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 95
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 90
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "/dev/qemu_pipe"

    const-string/jumbo v3, "rw"

    invoke-direct {v0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    .line 97
    iget-object v0, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_2f} :catch_30

    .line 103
    goto :goto_40

    .line 98
    :catch_30
    move-exception v0

    .line 100
    :try_start_31
    iget-object v0, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_3a} :catch_3b

    goto :goto_3c

    .line 101
    :catch_3b
    move-exception v0

    :cond_3c
    :goto_3c
    nop

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    .line 104
    :goto_40
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 112
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 117
    :goto_6
    :try_start_6
    iget-object v0, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_13

    .line 118
    invoke-direct {p0}, Lcom/android/server/clipboard/HostClipboardMonitor;->openPipe()V

    .line 119
    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_6

    .line 121
    :cond_13
    iget-object v0, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    .line 122
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    .line 123
    new-array v0, v0, [B

    .line 124
    iget-object v1, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 125
    iget-object v1, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mHostClipboardCallback:Lcom/android/server/clipboard/HostClipboardMonitor$HostClipboardCallback;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v2}, Lcom/android/server/clipboard/HostClipboardMonitor$HostClipboardCallback;->onHostClipboardUpdated(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_2e} :catch_31
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_2e} :catch_2f

    goto :goto_30

    .line 132
    :catch_2f
    move-exception v0

    :goto_30
    goto :goto_0

    .line 127
    :catch_31
    move-exception v0

    .line 129
    :try_start_32
    iget-object v0, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_37} :catch_38

    goto :goto_39

    .line 130
    :catch_38
    move-exception v0

    :goto_39
    nop

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    goto :goto_30

    .line 134
    :cond_3e
    return-void
.end method

.method public setHostClipboard(Ljava/lang/String;)V
    .registers 4

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1b

    .line 139
    iget-object v0, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 140
    iget-object v0, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 145
    :cond_1b
    goto :goto_37

    .line 142
    :catch_1c
    move-exception p1

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set host clipboard "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 143
    const-string v0, "HostClipboardMonitor"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_37
    return-void
.end method
