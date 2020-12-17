.class Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;
.super Ljava/lang/Thread;
.source "AdbDebuggingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/adb/AdbDebuggingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdbDebuggingThread"
.end annotation


# instance fields
.field private mInputStream:Ljava/io/InputStream;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mSocket:Landroid/net/LocalSocket;

.field private mStopped:Z

.field final synthetic this$0:Lcom/android/server/adb/AdbDebuggingManager;


# direct methods
.method constructor <init>(Lcom/android/server/adb/AdbDebuggingManager;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/adb/AdbDebuggingManager;

    .line 134
    iput-object p1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    .line 135
    const-string v0, "AdbDebuggingManager"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method private closeSocketLocked()V
    .registers 6

    .line 231
    const-string v0, "AdbDebuggingManager"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v2, :cond_e

    .line 232
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 233
    iput-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_e} :catch_f

    .line 237
    :cond_e
    goto :goto_24

    .line 235
    :catch_f
    move-exception v2

    .line 236
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed closing output stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .end local v2  # "e":Ljava/io/IOException;
    :goto_24
    :try_start_24
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    if-eqz v2, :cond_2f

    .line 241
    iget-object v2, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V

    .line 242
    iput-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mSocket:Landroid/net/LocalSocket;
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2f} :catch_30

    .line 246
    :cond_2f
    goto :goto_45

    .line 244
    :catch_30
    move-exception v1

    .line 245
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed closing socket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .end local v1  # "ex":Ljava/io/IOException;
    :goto_45
    return-void
.end method

.method private listenToSocket()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    const/high16 v0, 0x10000

    :try_start_2
    new-array v0, v0, [B

    .line 186
    .local v0, "buffer":[B
    :goto_4
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 189
    .local v1, "count":I
    const/4 v2, 0x2

    if-ge v1, v2, :cond_25

    .line 190
    const-string v2, "AdbDebuggingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read failed with count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    goto/16 :goto_112

    .line 194
    :cond_25
    const/4 v3, 0x0

    aget-byte v4, v0, v3

    const/16 v5, 0x50

    const/16 v6, 0x4b

    const/4 v7, 0x1

    if-ne v4, v5, :cond_6c

    aget-byte v4, v0, v7

    if-ne v4, v6, :cond_6c

    .line 195
    new-instance v3, Ljava/lang/String;

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    move-object v2, v3

    .line 196
    .local v2, "key":Ljava/lang/String;
    const-string v3, "AdbDebuggingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received public key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v3}, Lcom/android/server/adb/AdbDebuggingManager;->access$000(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 199
    .local v3, "msg":Landroid/os/Message;
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 200
    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v4}, Lcom/android/server/adb/AdbDebuggingManager;->access$000(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 201
    nop

    .end local v2  # "key":Ljava/lang/String;
    .end local v3  # "msg":Landroid/os/Message;
    goto/16 :goto_f0

    :cond_6c
    aget-byte v4, v0, v3

    const/16 v5, 0x44

    const/16 v8, 0x43

    if-ne v4, v5, :cond_b0

    aget-byte v4, v0, v7

    if-ne v4, v8, :cond_b0

    .line 202
    new-instance v3, Ljava/lang/String;

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    move-object v2, v3

    .line 203
    .restart local v2  # "key":Ljava/lang/String;
    const-string v3, "AdbDebuggingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received disconnected message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v3}, Lcom/android/server/adb/AdbDebuggingManager;->access$000(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 206
    .restart local v3  # "msg":Landroid/os/Message;
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 207
    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v4}, Lcom/android/server/adb/AdbDebuggingManager;->access$000(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 208
    nop

    .end local v2  # "key":Ljava/lang/String;
    .end local v3  # "msg":Landroid/os/Message;
    goto :goto_f0

    :cond_b0
    aget-byte v4, v0, v3

    if-ne v4, v8, :cond_f2

    aget-byte v4, v0, v7

    if-ne v4, v6, :cond_f2

    .line 209
    new-instance v3, Ljava/lang/String;

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    move-object v2, v3

    .line 210
    .restart local v2  # "key":Ljava/lang/String;
    const-string v3, "AdbDebuggingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received connected key message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v3, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v3}, Lcom/android/server/adb/AdbDebuggingManager;->access$000(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 213
    .restart local v3  # "msg":Landroid/os/Message;
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 214
    iget-object v4, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->this$0:Lcom/android/server/adb/AdbDebuggingManager;

    invoke-static {v4}, Lcom/android/server/adb/AdbDebuggingManager;->access$000(Lcom/android/server/adb/AdbDebuggingManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 215
    nop

    .line 220
    .end local v1  # "count":I
    .end local v2  # "key":Ljava/lang/String;
    .end local v3  # "msg":Landroid/os/Message;
    :goto_f0
    goto/16 :goto_4

    .line 216
    .restart local v1  # "count":I
    :cond_f2
    const-string v4, "AdbDebuggingManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrong message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    .line 217
    invoke-static {v0, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_111
    .catchall {:try_start_2 .. :try_end_111} :catchall_11c

    .line 218
    nop

    .line 222
    .end local v0  # "buffer":[B
    .end local v1  # "count":I
    :goto_112
    monitor-enter p0

    .line 223
    :try_start_113
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->closeSocketLocked()V

    .line 224
    monitor-exit p0

    .line 225
    nop

    .line 226
    return-void

    .line 224
    :catchall_119
    move-exception v0

    monitor-exit p0
    :try_end_11b
    .catchall {:try_start_113 .. :try_end_11b} :catchall_119

    throw v0

    .line 222
    :catchall_11c
    move-exception v0

    monitor-enter p0

    .line 223
    :try_start_11e
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->closeSocketLocked()V

    .line 224
    monitor-exit p0
    :try_end_122
    .catchall {:try_start_11e .. :try_end_122} :catchall_123

    throw v0

    :catchall_123
    move-exception v0

    :try_start_124
    monitor-exit p0
    :try_end_125
    .catchall {:try_start_124 .. :try_end_125} :catchall_123

    throw v0
.end method

.method private openSocketLocked()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    :try_start_0
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v1, "adbd"

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 167
    .local v0, "address":Landroid/net/LocalSocketAddress;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mInputStream:Ljava/io/InputStream;

    .line 170
    new-instance v1, Landroid/net/LocalSocket;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/net/LocalSocket;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    .line 171
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 173
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;

    .line 174
    iget-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mInputStream:Ljava/io/InputStream;
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_29} :catch_2b

    .line 179
    .end local v0  # "address":Landroid/net/LocalSocketAddress;
    nop

    .line 180
    return-void

    .line 175
    :catch_2b
    move-exception v0

    .line 176
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught an exception opening the socket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdbDebuggingManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->closeSocketLocked()V

    .line 178
    throw v0
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 142
    :goto_0
    monitor-enter p0

    .line 143
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mStopped:Z

    if-eqz v0, :cond_7

    .line 145
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1b

    return-void

    .line 148
    :cond_7
    const-wide/16 v0, 0x3e8

    :try_start_9
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->openSocketLocked()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_d
    .catchall {:try_start_9 .. :try_end_c} :catchall_1b

    .line 152
    goto :goto_11

    .line 149
    :catch_d
    move-exception v2

    .line 151
    .local v2, "e":Ljava/lang/Exception;
    :try_start_e
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 153
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_1b

    .line 155
    :try_start_12
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->listenToSocket()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16

    .line 159
    :goto_15
    goto :goto_0

    .line 156
    :catch_16
    move-exception v2

    .line 158
    .restart local v2  # "e":Ljava/lang/Exception;
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .end local v2  # "e":Ljava/lang/Exception;
    goto :goto_15

    .line 153
    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method sendResponse(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"  # Ljava/lang/String;

    .line 258
    monitor-enter p0

    .line 259
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mStopped:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_1d

    if-eqz v0, :cond_1b

    .line 261
    :try_start_9
    iget-object v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_12} :catch_13
    .catchall {:try_start_9 .. :try_end_12} :catchall_1d

    .line 264
    goto :goto_1b

    .line 262
    :catch_13
    move-exception v0

    .line 263
    .local v0, "ex":Ljava/io/IOException;
    :try_start_14
    const-string v1, "AdbDebuggingManager"

    const-string v2, "Failed to write response:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    .end local v0  # "ex":Ljava/io/IOException;
    :cond_1b
    :goto_1b
    monitor-exit p0

    .line 267
    return-void

    .line 266
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method stopListening()V
    .registers 2

    .line 251
    monitor-enter p0

    .line 252
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->mStopped:Z

    .line 253
    invoke-direct {p0}, Lcom/android/server/adb/AdbDebuggingManager$AdbDebuggingThread;->closeSocketLocked()V

    .line 254
    monitor-exit p0

    .line 255
    return-void

    .line 254
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9

    throw v0
.end method
