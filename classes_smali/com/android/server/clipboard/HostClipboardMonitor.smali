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
    .param p1, "cb"  # Lcom/android/server/clipboard/HostClipboardMonitor$HostClipboardCallback;

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
    .local v1, "b":[B
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
    .end local v1  # "b":[B
    goto :goto_40

    .line 98
    :catch_30
    move-exception v0

    .line 100
    .local v0, "e":Ljava/io/IOException;
    :try_start_31
    iget-object v1, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_3a} :catch_3b

    goto :goto_3c

    .line 101
    :catch_3b
    move-exception v1

    :cond_3c
    :goto_3c
    nop

    .line 102
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    .line 104
    .end local v0  # "e":Ljava/io/IOException;
    :goto_40
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 112
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_3f

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
    .local v0, "size":I
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    move v0, v1

    .line 123
    new-array v1, v0, [B

    .line 124
    .local v1, "receivedData":[B
    iget-object v2, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 125
    iget-object v2, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mHostClipboardCallback:Lcom/android/server/clipboard/HostClipboardMonitor$HostClipboardCallback;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v2, v3}, Lcom/android/server/clipboard/HostClipboardMonitor$HostClipboardCallback;->onHostClipboardUpdated(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_2f} :catch_32
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_2f} :catch_30

    .end local v0  # "size":I
    .end local v1  # "receivedData":[B
    goto :goto_31

    .line 132
    :catch_30
    move-exception v0

    :goto_31
    goto :goto_0

    .line 127
    :catch_32
    move-exception v0

    .line 129
    .local v0, "e":Ljava/io/IOException;
    :try_start_33
    iget-object v1, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_38} :catch_39

    goto :goto_3a

    .line 130
    :catch_39
    move-exception v1

    :goto_3a
    nop

    .line 131
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/clipboard/HostClipboardMonitor;->mPipe:Ljava/io/RandomAccessFile;

    .end local v0  # "e":Ljava/io/IOException;
    goto :goto_31

    .line 134
    :cond_3f
    return-void
.end method

.method public setHostClipboard(Ljava/lang/String;)V
    .registers 5
    .param p1, "content"  # Ljava/lang/String;

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

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 145
    :cond_1b
    goto :goto_37

    .line 142
    :catch_1c
    move-exception v0

    .line 143
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set host clipboard "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    const-string v2, "HostClipboardMonitor"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v0  # "e":Ljava/io/IOException;
    :goto_37
    return-void
.end method
