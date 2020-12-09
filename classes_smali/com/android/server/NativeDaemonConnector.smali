.class final Lcom/android/server/NativeDaemonConnector;
.super Ljava/lang/Object;
.source "NativeDaemonConnector.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NativeDaemonConnector$ResponseQueue;,
        Lcom/android/server/NativeDaemonConnector$Command;,
        Lcom/android/server/NativeDaemonConnector$NativeDaemonFailureException;,
        Lcom/android/server/NativeDaemonConnector$NativeDaemonArgumentException;,
        Lcom/android/server/NativeDaemonConnector$SensitiveArg;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT:J = 0xea60L

.field private static final VDBG:Z = false

.field private static final WARN_EXECUTE_DELAY_MS:J = 0x1f4L


# instance fields
.field private final BUFFER_SIZE:I

.field private final TAG:Ljava/lang/String;

.field private mCallbackHandler:Landroid/os/Handler;

.field private mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

.field private final mDaemonLock:Ljava/lang/Object;

.field private volatile mDebug:Z

.field private mLocalLog:Landroid/util/LocalLog;

.field private final mLooper:Landroid/os/Looper;

.field private mOutputStream:Ljava/io/OutputStream;

.field private final mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

.field private mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSocket:Ljava/lang/String;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private volatile mWarnIfHeld:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V
    .registers 16

    .line 87
    nop

    .line 88
    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    .line 87
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;Landroid/os/Looper;)V

    .line 89
    return-void
.end method

.method constructor <init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;Landroid/os/Looper;)V
    .registers 10

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NativeDaemonConnector;->mDebug:Z

    .line 81
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    .line 83
    const/16 v1, 0x1000

    iput v1, p0, Lcom/android/server/NativeDaemonConnector;->BUFFER_SIZE:I

    .line 94
    iput-object p1, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    .line 95
    iput-object p2, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    .line 96
    new-instance p1, Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    invoke-direct {p1, p3}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    .line 97
    iput-object p6, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 98
    iget-object p1, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_26

    .line 99
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 101
    :cond_26
    iput-object p7, p0, Lcom/android/server/NativeDaemonConnector;->mLooper:Landroid/os/Looper;

    .line 102
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/NativeDaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 103
    if-eqz p4, :cond_32

    goto :goto_34

    :cond_32
    const-string p4, "NativeDaemonConnector"

    :goto_34
    iput-object p4, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    .line 104
    new-instance p1, Landroid/util/LocalLog;

    invoke-direct {p1, p5}, Landroid/util/LocalLog;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/NativeDaemonConnector;->mLocalLog:Landroid/util/LocalLog;

    .line 105
    return-void
.end method

.method static appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 527
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    move v0, v1

    .line 528
    :goto_c
    const/16 v2, 0x22

    if-eqz v0, :cond_13

    .line 529
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 532
    :cond_13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 533
    nop

    :goto_18
    if-ge v1, v3, :cond_36

    .line 534
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 536
    if-ne v4, v2, :cond_26

    .line 537
    const-string v4, "\\\""

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 538
    :cond_26
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_30

    .line 539
    const-string v4, "\\\\"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    .line 541
    :cond_30
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 533
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 545
    :cond_36
    if-eqz v0, :cond_3b

    .line 546
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 548
    :cond_3b
    return-void
.end method

.method private determineSocketAddress()Landroid/net/LocalSocketAddress;
    .registers 4

    .line 185
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    const-string v1, "__test__"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_16

    .line 186
    new-instance v0, Landroid/net/LocalSocketAddress;

    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 188
    :cond_16
    new-instance v0, Landroid/net/LocalSocketAddress;

    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    return-object v0
.end method

.method private static isShuttingDown()Z
    .registers 2

    .line 149
    const-string/jumbo v0, "sys.shutdown.requested"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method private listenToSocket()V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    nop

    .line 196
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_174
    .catchall {:try_start_2 .. :try_end_7} :catchall_171

    .line 197
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->determineSocketAddress()Landroid/net/LocalSocketAddress;

    move-result-object v2

    .line 199
    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 201
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 202
    iget-object v3, p0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_15} :catch_16f
    .catchall {:try_start_7 .. :try_end_15} :catchall_18b

    .line 203
    :try_start_15
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 204
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_16c

    .line 206
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    invoke-interface {v3}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onDaemonConnected()V

    .line 208
    nop

    .line 209
    const/16 v3, 0x1000

    new-array v4, v3, [B

    .line 210
    const/4 v5, 0x0

    move v6, v5

    .line 213
    :goto_28
    rsub-int v7, v6, 0x1000

    invoke-virtual {v2, v4, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 214
    if-gez v7, :cond_a7

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " reading with start = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_4c} :catch_16f
    .catchall {:try_start_1c .. :try_end_4c} :catchall_18b

    .line 216
    nop

    .line 283
    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v2

    .line 284
    :try_start_50
    iget-object v3, p0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_52
    .catchall {:try_start_50 .. :try_end_52} :catchall_a4

    if-eqz v3, :cond_87

    .line 286
    :try_start_54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closing stream for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 287
    iget-object v3, p0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_6f} :catch_70
    .catchall {:try_start_54 .. :try_end_6f} :catchall_a4

    .line 290
    goto :goto_85

    .line 288
    :catch_70
    move-exception v3

    .line 289
    :try_start_71
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed closing output stream: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 291
    :goto_85
    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 293
    :cond_87
    monitor-exit v2
    :try_end_88
    .catchall {:try_start_71 .. :try_end_88} :catchall_a4

    .line 296
    nop

    .line 297
    :try_start_89
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8d

    .line 301
    goto :goto_a3

    .line 299
    :catch_8d
    move-exception v0

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed closing socket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 302
    nop

    .line 303
    :goto_a3
    return-void

    .line 293
    :catchall_a4
    move-exception v0

    :try_start_a5
    monitor-exit v2
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a4

    throw v0

    .line 218
    :cond_a7
    :try_start_a7
    invoke-virtual {v1}, Landroid/net/LocalSocket;->getAncillaryFileDescriptors()[Ljava/io/FileDescriptor;

    move-result-object v8

    .line 221
    add-int/2addr v7, v6

    .line 222
    nop

    .line 224
    move v6, v5

    move v9, v6

    :goto_af
    if-ge v6, v7, :cond_159

    .line 225
    aget-byte v10, v4, v6

    if-nez v10, :cond_155

    .line 228
    new-instance v10, Ljava/lang/String;

    sub-int v11, v6, v9

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v10, v4, v9, v11, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_be} :catch_16f
    .catchall {:try_start_a7 .. :try_end_be} :catchall_18b

    .line 231
    nop

    .line 233
    nop

    .line 234
    :try_start_c0
    invoke-static {v10, v8}, Lcom/android/server/NativeDaemonEvent;->parseRawEvent(Ljava/lang/String;[Ljava/io/FileDescriptor;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v9

    .line 236
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RCV <- {"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "}"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v9}, Lcom/android/server/NativeDaemonEvent;->isClassUnsolicited()Z

    move-result v10

    if-eqz v10, :cond_11a

    .line 240
    iget-object v10, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    invoke-virtual {v9}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v11

    invoke-interface {v10, v11}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onCheckHoldWakeLock(I)Z

    move-result v10

    if-eqz v10, :cond_fb

    iget-object v10, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v10, :cond_fb

    .line 242
    iget-object v10, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_f9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c0 .. :try_end_f9} :catch_12b
    .catchall {:try_start_c0 .. :try_end_f9} :catchall_129

    .line 243
    const/4 v10, 0x1

    goto :goto_fc

    .line 245
    :cond_fb
    move v10, v5

    :goto_fc
    :try_start_fc
    iget-object v11, p0, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    .line 246
    invoke-virtual {v9}, Lcom/android/server/NativeDaemonEvent;->getCode()I

    move-result v12

    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->uptimeMillisInt()I

    move-result v13

    invoke-virtual {v9}, Lcom/android/server/NativeDaemonEvent;->getRawEvent()Ljava/lang/String;

    move-result-object v9

    .line 245
    invoke-virtual {v11, v12, v13, v5, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 247
    iget-object v11, p0, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v11, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v9
    :try_end_114
    .catch Ljava/lang/IllegalArgumentException; {:try_start_fc .. :try_end_114} :catch_118
    .catchall {:try_start_fc .. :try_end_114} :catchall_14b

    if-eqz v9, :cond_117

    .line 248
    move v10, v5

    .line 250
    :cond_117
    goto :goto_124

    .line 253
    :catch_118
    move-exception v9

    goto :goto_12d

    .line 251
    :cond_11a
    :try_start_11a
    iget-object v10, p0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    invoke-virtual {v9}, Lcom/android/server/NativeDaemonEvent;->getCmdNumber()I

    move-result v11

    invoke-virtual {v10, v11, v9}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->add(ILcom/android/server/NativeDaemonEvent;)V
    :try_end_123
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11a .. :try_end_123} :catch_12b
    .catchall {:try_start_11a .. :try_end_123} :catchall_129

    move v10, v5

    .line 256
    :goto_124
    if-eqz v10, :cond_148

    .line 257
    :try_start_126
    iget-object v9, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_126 .. :try_end_128} :catch_16f
    .catchall {:try_start_126 .. :try_end_128} :catchall_18b

    goto :goto_145

    .line 256
    :catchall_129
    move-exception v2

    goto :goto_14d

    .line 253
    :catch_12b
    move-exception v9

    move v10, v5

    .line 254
    :goto_12d
    :try_start_12d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Problem parsing message "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V
    :try_end_141
    .catchall {:try_start_12d .. :try_end_141} :catchall_14b

    .line 256
    if-eqz v10, :cond_148

    .line 257
    :try_start_143
    iget-object v9, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :goto_145
    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 261
    :cond_148
    add-int/lit8 v9, v6, 0x1

    goto :goto_155

    .line 256
    :catchall_14b
    move-exception v2

    move v5, v10

    :goto_14d
    if-eqz v5, :cond_154

    .line 257
    iget-object v3, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_154
    throw v2

    .line 224
    :cond_155
    :goto_155
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_af

    .line 265
    :cond_159
    if-nez v9, :cond_160

    .line 266
    const-string v6, "RCV incomplete"

    invoke-direct {p0, v6}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V

    .line 271
    :cond_160
    if-eq v9, v7, :cond_169

    .line 272
    rsub-int v6, v9, 0x1000

    .line 273
    invoke-static {v4, v9, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_167
    .catch Ljava/io/IOException; {:try_start_143 .. :try_end_167} :catch_16f
    .catchall {:try_start_143 .. :try_end_167} :catchall_18b

    .line 274
    nop

    .line 275
    goto :goto_16a

    .line 276
    :cond_169
    move v6, v5

    .line 278
    :goto_16a
    goto/16 :goto_28

    .line 204
    :catchall_16c
    move-exception v2

    :try_start_16d
    monitor-exit v3
    :try_end_16e
    .catchall {:try_start_16d .. :try_end_16e} :catchall_16c

    :try_start_16e
    throw v2
    :try_end_16f
    .catch Ljava/io/IOException; {:try_start_16e .. :try_end_16f} :catch_16f
    .catchall {:try_start_16e .. :try_end_16f} :catchall_18b

    .line 279
    :catch_16f
    move-exception v2

    goto :goto_176

    .line 283
    :catchall_171
    move-exception v2

    move-object v1, v0

    goto :goto_18c

    .line 279
    :catch_174
    move-exception v2

    move-object v1, v0

    .line 280
    :goto_176
    :try_start_176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Communications error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 281
    throw v2
    :try_end_18b
    .catchall {:try_start_176 .. :try_end_18b} :catchall_18b

    .line 283
    :catchall_18b
    move-exception v2

    :goto_18c
    iget-object v3, p0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v3

    .line 284
    :try_start_18f
    iget-object v4, p0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_191
    .catchall {:try_start_18f .. :try_end_191} :catchall_1e5

    if-eqz v4, :cond_1c6

    .line 286
    :try_start_193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "closing stream for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/NativeDaemonConnector;->mSocket:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 287
    iget-object v4, p0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_1ae
    .catch Ljava/io/IOException; {:try_start_193 .. :try_end_1ae} :catch_1af
    .catchall {:try_start_193 .. :try_end_1ae} :catchall_1e5

    .line 290
    goto :goto_1c4

    .line 288
    :catch_1af
    move-exception v4

    .line 289
    :try_start_1b0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed closing output stream: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 291
    :goto_1c4
    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    .line 293
    :cond_1c6
    monitor-exit v3
    :try_end_1c7
    .catchall {:try_start_1b0 .. :try_end_1c7} :catchall_1e5

    .line 296
    if-eqz v1, :cond_1e3

    .line 297
    :try_start_1c9
    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V
    :try_end_1cc
    .catch Ljava/io/IOException; {:try_start_1c9 .. :try_end_1cc} :catch_1cd

    goto :goto_1e3

    .line 299
    :catch_1cd
    move-exception v0

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed closing socket: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    goto :goto_1e4

    .line 301
    :cond_1e3
    :goto_1e3
    nop

    :goto_1e4
    throw v2

    .line 293
    :catchall_1e5
    move-exception v0

    :try_start_1e6
    monitor-exit v3
    :try_end_1e7
    .catchall {:try_start_1e6 .. :try_end_1e7} :catchall_1e5

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .registers 3

    .line 600
    iget-boolean v0, p0, Lcom/android/server/NativeDaemonConnector;->mDebug:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_9
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .registers 3

    .line 605
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 607
    return-void
.end method

.method static varargs makeCommand(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;ILjava/lang/String;[Ljava/lang/Object;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 328
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_6d

    .line 331
    const/16 v1, 0x20

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_65

    .line 335
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    array-length p2, p4

    move p3, v0

    :goto_23
    if-ge p3, p2, :cond_61

    aget-object v2, p4, p3

    .line 338
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 339
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_4a

    .line 343
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 346
    invoke-static {p0, v3}, Lcom/android/server/NativeDaemonConnector;->appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 347
    instance-of v2, v2, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    if-eqz v2, :cond_44

    .line 348
    const-string v2, "[scrubbed]"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_47

    .line 350
    :cond_44
    invoke-static {p1, v3}, Lcom/android/server/NativeDaemonConnector;->appendEscaped(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 337
    :goto_47
    add-int/lit8 p3, p3, 0x1

    goto :goto_23

    .line 340
    :cond_4a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected argument: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 354
    :cond_61
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 355
    return-void

    .line 332
    :cond_65
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Arguments must be separate from command"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 329
    :cond_6d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected command: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private uptimeMillisInt()I
    .registers 3

    .line 120
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 594
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 595
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 596
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 597
    return-void
.end method

.method public varargs execute(JLjava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .line 411
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/NativeDaemonConnector;->executeForList(JLjava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object p1

    .line 412
    array-length p2, p1

    const/4 p3, 0x1

    if-ne p2, p3, :cond_c

    .line 416
    const/4 p2, 0x0

    aget-object p1, p1, p2

    return-object p1

    .line 413
    :cond_c
    new-instance p2, Lcom/android/server/NativeDaemonConnectorException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Expected exactly one response, but received "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .line 391
    invoke-static {p1}, Lcom/android/server/NativeDaemonConnector$Command;->access$000(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/NativeDaemonConnector$Command;->access$100(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object p1

    return-object p1
.end method

.method public varargs execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .line 406
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/NativeDaemonConnector;->execute(JLjava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object p1

    return-object p1
.end method

.method public varargs executeForList(JLjava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mWarnIfHeld:Ljava/lang/Object;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mWarnIfHeld:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 464
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is holding 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/NativeDaemonConnector;->mWarnIfHeld:Ljava/lang/Object;

    .line 465
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 464
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 468
    :cond_41
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 470
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 472
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 473
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    iget-object v5, p0, Lcom/android/server/NativeDaemonConnector;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v5

    .line 476
    invoke-static {v3, v4, v5, p3, p4}, Lcom/android/server/NativeDaemonConnector;->makeCommand(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 478
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 479
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 481
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SND -> {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V

    .line 483
    iget-object v3, p0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v3

    .line 484
    :try_start_81
    iget-object v4, p0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;
    :try_end_83
    .catchall {:try_start_81 .. :try_end_83} :catchall_124

    if-eqz v4, :cond_11c

    .line 488
    :try_start_85
    iget-object v4, p0, Lcom/android/server/NativeDaemonConnector;->mOutputStream:Ljava/io/OutputStream;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p3

    invoke-virtual {v4, p3}, Ljava/io/OutputStream;->write([B)V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_90} :catch_112
    .catchall {:try_start_85 .. :try_end_90} :catchall_124

    .line 491
    nop

    .line 493
    :try_start_91
    monitor-exit v3
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_124

    .line 495
    nop

    .line 497
    :cond_93
    iget-object p3, p0, Lcom/android/server/NativeDaemonConnector;->mResponseQueue:Lcom/android/server/NativeDaemonConnector$ResponseQueue;

    invoke-virtual {p3, v5, p1, p2, p4}, Lcom/android/server/NativeDaemonConnector$ResponseQueue;->remove(IJLjava/lang/String;)Lcom/android/server/NativeDaemonEvent;

    move-result-object p3

    .line 498
    if-eqz p3, :cond_f7

    .line 503
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    invoke-virtual {p3}, Lcom/android/server/NativeDaemonEvent;->isClassContinue()Z

    move-result v3

    if-nez v3, :cond_93

    .line 506
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 507
    sub-long/2addr p1, v0

    const-wide/16 v0, 0x1f4

    cmp-long v0, p1, v0

    if-lez v0, :cond_d2

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NDC Command {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} took too long ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 511
    :cond_d2
    invoke-virtual {p3}, Lcom/android/server/NativeDaemonEvent;->isClassClientError()Z

    move-result p1

    if-nez p1, :cond_f1

    .line 514
    invoke-virtual {p3}, Lcom/android/server/NativeDaemonEvent;->isClassServerError()Z

    move-result p1

    if-nez p1, :cond_eb

    .line 518
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/android/server/NativeDaemonEvent;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/android/server/NativeDaemonEvent;

    return-object p1

    .line 515
    :cond_eb
    new-instance p1, Lcom/android/server/NativeDaemonConnector$NativeDaemonFailureException;

    invoke-direct {p1, p4, p3}, Lcom/android/server/NativeDaemonConnector$NativeDaemonFailureException;-><init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V

    throw p1

    .line 512
    :cond_f1
    new-instance p1, Lcom/android/server/NativeDaemonConnector$NativeDaemonArgumentException;

    invoke-direct {p1, p4, p3}, Lcom/android/server/NativeDaemonConnector$NativeDaemonArgumentException;-><init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V

    throw p1

    .line 499
    :cond_f7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "timed-out waiting for response to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 500
    new-instance p1, Lcom/android/server/NativeDaemonTimeoutException;

    invoke-direct {p1, p4, p3}, Lcom/android/server/NativeDaemonTimeoutException;-><init>(Ljava/lang/String;Lcom/android/server/NativeDaemonEvent;)V

    throw p1

    .line 489
    :catch_112
    move-exception p1

    .line 490
    :try_start_113
    new-instance p2, Lcom/android/server/NativeDaemonConnectorException;

    const-string/jumbo p3, "problem sending command"

    invoke-direct {p2, p3, p1}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 485
    :cond_11c
    new-instance p1, Lcom/android/server/NativeDaemonConnectorException;

    const-string p2, "missing output stream"

    invoke-direct {p1, p2}, Lcom/android/server/NativeDaemonConnectorException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 493
    :catchall_124
    move-exception p1

    monitor-exit v3
    :try_end_126
    .catchall {:try_start_113 .. :try_end_126} :catchall_124

    throw p1
.end method

.method public executeForList(Lcom/android/server/NativeDaemonConnector$Command;)[Lcom/android/server/NativeDaemonEvent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .line 430
    invoke-static {p1}, Lcom/android/server/NativeDaemonConnector$Command;->access$000(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/NativeDaemonConnector$Command;->access$100(Lcom/android/server/NativeDaemonConnector$Command;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object p1

    return-object p1
.end method

.method public varargs executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .line 446
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/NativeDaemonConnector;->executeForList(JLjava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object p1

    return-object p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 15

    .line 156
    const-string v0, "NDC event {%s} took too long: %dms"

    const-string v1, "NDC event {%s} processed too late: %dms"

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 157
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->uptimeMillisInt()I

    move-result v3

    .line 158
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 160
    const/4 v5, 0x2

    const-wide/16 v6, 0x1f4

    const/4 v8, 0x0

    const/4 v9, 0x1

    :try_start_13
    iget-object v10, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/android/server/NativeDaemonEvent;->unescapeArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v2, v12}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2e

    .line 161
    const-string v10, "Unhandled event \'%s\'"

    new-array v11, v9, [Ljava/lang/Object;

    aput-object v2, v11, v8

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/NativeDaemonConnector;->log(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2e} :catch_79
    .catchall {:try_start_13 .. :try_end_2e} :catchall_77

    .line 166
    :cond_2e
    iget-object v10, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-interface {v10, p1}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onCheckHoldWakeLock(I)Z

    move-result p1

    if-eqz p1, :cond_3f

    iget-object p1, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_3f

    .line 167
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 169
    :cond_3f
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->uptimeMillisInt()I

    move-result p1

    .line 170
    if-le v3, v4, :cond_5d

    sub-int v4, v3, v4

    int-to-long v10, v4

    cmp-long v10, v10, v6

    if-lez v10, :cond_5d

    .line 171
    new-array v10, v5, [Ljava/lang/Object;

    aput-object v2, v10, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v9

    invoke-static {v1, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 173
    :cond_5d
    if-le p1, v3, :cond_76

    sub-int/2addr p1, v3

    int-to-long v3, p1

    cmp-long v1, v3, v6

    if-lez v1, :cond_76

    .line 174
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v9

    :goto_6f
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 176
    :cond_76
    goto :goto_d8

    .line 166
    :catchall_77
    move-exception v10

    goto :goto_d9

    .line 163
    :catch_79
    move-exception v10

    .line 164
    :try_start_7a
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error handling \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\': "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V
    :try_end_96
    .catchall {:try_start_7a .. :try_end_96} :catchall_77

    .line 166
    iget-object v10, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-interface {v10, p1}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onCheckHoldWakeLock(I)Z

    move-result p1

    if-eqz p1, :cond_a7

    iget-object p1, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_a7

    .line 167
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 169
    :cond_a7
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->uptimeMillisInt()I

    move-result p1

    .line 170
    if-le v3, v4, :cond_c5

    sub-int v4, v3, v4

    int-to-long v10, v4

    cmp-long v10, v10, v6

    if-lez v10, :cond_c5

    .line 171
    new-array v10, v5, [Ljava/lang/Object;

    aput-object v2, v10, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v9

    invoke-static {v1, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 173
    :cond_c5
    if-le p1, v3, :cond_76

    sub-int/2addr p1, v3

    int-to-long v3, p1

    cmp-long v1, v3, v6

    if-lez v1, :cond_76

    .line 174
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v9

    goto :goto_6f

    .line 177
    :goto_d8
    return v9

    .line 166
    :goto_d9
    iget-object v11, p0, Lcom/android/server/NativeDaemonConnector;->mCallbacks:Lcom/android/server/INativeDaemonConnectorCallbacks;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-interface {v11, p1}, Lcom/android/server/INativeDaemonConnectorCallbacks;->onCheckHoldWakeLock(I)Z

    move-result p1

    if-eqz p1, :cond_ea

    iget-object p1, p0, Lcom/android/server/NativeDaemonConnector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_ea

    .line 167
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 169
    :cond_ea
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->uptimeMillisInt()I

    move-result p1

    .line 170
    if-le v3, v4, :cond_108

    sub-int v4, v3, v4

    int-to-long v11, v4

    cmp-long v11, v11, v6

    if-lez v11, :cond_108

    .line 171
    new-array v11, v5, [Ljava/lang/Object;

    aput-object v2, v11, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v11, v9

    invoke-static {v1, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 173
    :cond_108
    if-le p1, v3, :cond_121

    sub-int/2addr p1, v3

    int-to-long v3, p1

    cmp-long v1, v3, v6

    if-lez v1, :cond_121

    .line 174
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v2, v1, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 176
    :cond_121
    throw v10
.end method

.method public monitor()V
    .registers 3

    .line 590
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mDaemonLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    monitor-exit v0

    .line 591
    return-void

    .line 590
    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v1
.end method

.method public run()V
    .registers 4

    .line 134
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    .line 137
    :goto_9
    invoke-static {}, Lcom/android/server/NativeDaemonConnector;->isShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_2f

    .line 139
    :cond_10
    :try_start_10
    invoke-direct {p0}, Lcom/android/server/NativeDaemonConnector;->listenToSocket()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_14

    .line 144
    :goto_13
    goto :goto_9

    .line 140
    :catch_14
    move-exception v0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in NativeDaemonConnector: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/NativeDaemonConnector;->loge(Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/android/server/NativeDaemonConnector;->isShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 146
    :goto_2f
    return-void

    .line 143
    :cond_30
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_13
.end method

.method public setDebug(Z)V
    .registers 2

    .line 112
    iput-boolean p1, p0, Lcom/android/server/NativeDaemonConnector;->mDebug:Z

    .line 113
    return-void
.end method

.method public setWarnIfHeld(Ljava/lang/Object;)V
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/android/server/NativeDaemonConnector;->mWarnIfHeld:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 129
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/NativeDaemonConnector;->mWarnIfHeld:Ljava/lang/Object;

    .line 130
    return-void
.end method

.method public waitForCallbacks()V
    .registers 4

    .line 363
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_29

    .line 367
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 368
    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->mCallbackHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/NativeDaemonConnector$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/NativeDaemonConnector$1;-><init>(Lcom/android/server/NativeDaemonConnector;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 375
    :try_start_1c
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1f} :catch_20

    .line 378
    goto :goto_28

    .line 376
    :catch_20
    move-exception v0

    .line 377
    iget-object v1, p0, Lcom/android/server/NativeDaemonConnector;->TAG:Ljava/lang/String;

    const-string v2, "Interrupted while waiting for unsolicited response handling"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 379
    :goto_28
    return-void

    .line 364
    :cond_29
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must not call this method on callback thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
