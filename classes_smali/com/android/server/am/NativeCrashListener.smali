.class final Lcom/android/server/am/NativeCrashListener;
.super Ljava/lang/Thread;
.source "NativeCrashListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEBUGGERD_SOCKET_PATH:Ljava/lang/String; = "/data/system/ndebugsocket"

.field static final MORE_DEBUG:Z = false

.field static final SOCKET_TIMEOUT_MILLIS:J = 0x2710L

.field static final TAG:Ljava/lang/String; = "NativeCrashListener"


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p1, "am"  # Lcom/android/server/am/ActivityManagerService;

    .line 96
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 98
    return-void
.end method

.method static readExactly(Ljava/io/FileDescriptor;[BII)I
    .registers 7
    .param p0, "fd"  # Ljava/io/FileDescriptor;
    .param p1, "buffer"  # [B
    .param p2, "offset"  # I
    .param p3, "numBytes"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "totalRead":I
    :goto_1
    if-lez p3, :cond_10

    .line 178
    add-int v1, p2, v0

    invoke-static {p0, p1, v1, p3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    .line 179
    .local v1, "n":I
    if-gtz v1, :cond_d

    .line 183
    const/4 v2, -0x1

    return v2

    .line 185
    :cond_d
    sub-int/2addr p3, v1

    .line 186
    add-int/2addr v0, v1

    .line 187
    .end local v1  # "n":I
    goto :goto_1

    .line 188
    :cond_10
    return v0
.end method

.method static unpackInt([BI)I
    .registers 8
    .param p0, "buf"  # [B
    .param p1, "offset"  # I

    .line 167
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 168
    .local v0, "b0":I
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 169
    .local v1, "b1":I
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 170
    .local v2, "b2":I
    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 171
    .local v3, "b3":I
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    return v4
.end method


# virtual methods
.method consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    .registers 13
    .param p1, "fd"  # Ljava/io/FileDescriptor;

    .line 194
    const/16 v0, 0x1000

    new-array v1, v0, [B

    .line 195
    .local v1, "buf":[B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v0, v2

    .line 198
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    const-wide/16 v2, 0x2710

    :try_start_c
    invoke-static {v2, v3}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v2

    .line 199
    .local v2, "timeout":Landroid/system/StructTimeval;
    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-static {p1, v3, v4, v2}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 200
    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    invoke-static {p1, v3, v4, v2}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 207
    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v3}, Lcom/android/server/am/NativeCrashListener;->readExactly(Ljava/io/FileDescriptor;[BII)I

    move-result v5

    .line 208
    .local v5, "headerBytes":I
    if-eq v5, v3, :cond_2f

    .line 210
    const-string v3, "NativeCrashListener"

    const-string v4, "Unable to read from debuggerd"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void

    .line 214
    :cond_2f
    invoke-static {v1, v4}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v3

    .line 215
    .local v3, "pid":I
    const/4 v6, 0x4

    invoke-static {v1, v6}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v6

    .line 221
    .local v6, "signal":I
    if-lez v3, :cond_ad

    .line 223
    iget-object v7, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v7
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3f} :catch_b5

    .line 224
    :try_start_3f
    iget-object v8, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v8, v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v8

    .line 225
    .local v8, "pr":Lcom/android/server/am/ProcessRecord;
    monitor-exit v7
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_aa

    .line 226
    if-eqz v8, :cond_93

    .line 228
    :try_start_4a
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v7

    if-eqz v7, :cond_51

    .line 232
    return-void

    .line 238
    :cond_51
    array-length v7, v1

    invoke-static {p1, v1, v4, v7}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v7

    .line 239
    .local v7, "bytes":I
    if-lez v7, :cond_67

    .line 245
    add-int/lit8 v9, v7, -0x1

    aget-byte v9, v1, v9

    if-nez v9, :cond_64

    .line 246
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v0, v1, v4, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 247
    goto :goto_69

    .line 250
    :cond_64
    invoke-virtual {v0, v1, v4, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 252
    :cond_67
    if-gtz v7, :cond_51

    .line 261
    :goto_69
    iget-object v4, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_6c} :catch_b5

    :try_start_6c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 262
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/am/ProcessRecord;->setCrashing(Z)V

    .line 263
    iput-boolean v9, v8, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    .line 264
    monitor-exit v4
    :try_end_76
    .catchall {:try_start_6c .. :try_end_76} :catchall_8d

    :try_start_76
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 269
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-direct {v4, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 270
    .local v4, "reportString":Ljava/lang/String;
    new-instance v9, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;

    invoke-direct {v9, p0, v8, v6, v4}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;-><init>(Lcom/android/server/am/NativeCrashListener;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;)V

    invoke-virtual {v9}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->start()V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_8c} :catch_b5

    .line 271
    .end local v4  # "reportString":Ljava/lang/String;
    .end local v7  # "bytes":I
    goto :goto_a9

    .line 264
    .restart local v7  # "bytes":I
    :catchall_8d
    move-exception v9

    :try_start_8e
    monitor-exit v4
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    :try_start_8f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "os":Ljava/io/ByteArrayOutputStream;
    .end local v1  # "buf":[B
    .end local p0  # "this":Lcom/android/server/am/NativeCrashListener;
    .end local p1  # "fd":Ljava/io/FileDescriptor;
    throw v9

    .line 272
    .end local v7  # "bytes":I
    .restart local v0  # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v1  # "buf":[B
    .restart local p0  # "this":Lcom/android/server/am/NativeCrashListener;
    .restart local p1  # "fd":Ljava/io/FileDescriptor;
    :cond_93
    const-string v4, "NativeCrashListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t find ProcessRecord for pid "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_a9} :catch_b5

    .line 274
    .end local v8  # "pr":Lcom/android/server/am/ProcessRecord;
    :goto_a9
    goto :goto_b4

    .line 225
    :catchall_aa
    move-exception v4

    :try_start_ab
    monitor-exit v7
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_aa

    .end local v0  # "os":Ljava/io/ByteArrayOutputStream;
    .end local v1  # "buf":[B
    .end local p0  # "this":Lcom/android/server/am/NativeCrashListener;
    .end local p1  # "fd":Ljava/io/FileDescriptor;
    :try_start_ac
    throw v4

    .line 275
    .restart local v0  # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v1  # "buf":[B
    .restart local p0  # "this":Lcom/android/server/am/NativeCrashListener;
    .restart local p1  # "fd":Ljava/io/FileDescriptor;
    :cond_ad
    const-string v4, "NativeCrashListener"

    const-string v7, "Bogus pid!"

    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_b4} :catch_b5

    .line 280
    .end local v2  # "timeout":Landroid/system/StructTimeval;
    .end local v3  # "pid":I
    .end local v5  # "headerBytes":I
    .end local v6  # "signal":I
    :goto_b4
    goto :goto_bd

    .line 277
    :catch_b5
    move-exception v2

    .line 278
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "NativeCrashListener"

    const-string v4, "Exception dealing with report"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_bd
    return-void
.end method

.method public run()V
    .registers 10

    .line 102
    const-string v0, "NativeCrashListener"

    const/4 v1, 0x1

    new-array v2, v1, [B

    .line 110
    .local v2, "ackSignal":[B
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/ndebugsocket"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .local v3, "socketFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 112
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 117
    .end local v3  # "socketFile":Ljava/io/File;
    :cond_15
    :try_start_15
    sget v3, Landroid/system/OsConstants;->AF_UNIX:I

    sget v5, Landroid/system/OsConstants;->SOCK_STREAM:I

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v3

    .line 118
    .local v3, "serverFd":Ljava/io/FileDescriptor;
    invoke-static {v4}, Landroid/system/UnixSocketAddress;->createFileSystem(Ljava/lang/String;)Landroid/system/UnixSocketAddress;

    move-result-object v5

    .line 120
    .local v5, "sockAddr":Landroid/system/UnixSocketAddress;
    invoke-static {v3, v5}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 121
    invoke-static {v3, v1}, Landroid/system/Os;->listen(Ljava/io/FileDescriptor;I)V

    .line 122
    const/16 v7, 0x1ff

    invoke-static {v4, v7}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2d} :catch_69

    .line 125
    :goto_2d
    const/4 v4, 0x0

    .line 128
    .local v4, "peerFd":Ljava/io/FileDescriptor;
    const/4 v7, 0x0

    :try_start_2f
    invoke-static {v3, v7}, Landroid/system/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;

    move-result-object v7

    move-object v4, v7

    .line 130
    if-eqz v4, :cond_39

    .line 133
    invoke-virtual {p0, v4}, Lcom/android/server/am/NativeCrashListener;->consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_39} :catch_48
    .catchall {:try_start_2f .. :try_end_39} :catchall_46

    .line 140
    :cond_39
    if-eqz v4, :cond_5a

    .line 142
    :try_start_3b
    invoke-static {v4, v2, v6, v1}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_3f

    .line 148
    goto :goto_40

    .line 143
    :catch_3f
    move-exception v7

    .line 150
    :goto_40
    :try_start_40
    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_43
    .catch Landroid/system/ErrnoException; {:try_start_40 .. :try_end_43} :catch_44
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_69

    .line 155
    :goto_43
    goto :goto_5a

    .line 151
    :catch_44
    move-exception v7

    goto :goto_43

    .line 140
    :catchall_46
    move-exception v7

    goto :goto_5b

    .line 135
    :catch_48
    move-exception v7

    .line 136
    .local v7, "e":Ljava/lang/Exception;
    :try_start_49
    const-string v8, "Error handling connection"

    invoke-static {v0, v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_46

    .line 140
    nop

    .end local v7  # "e":Ljava/lang/Exception;
    if-eqz v4, :cond_5a

    .line 142
    :try_start_51
    invoke-static {v4, v2, v6, v1}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_55

    .line 148
    goto :goto_56

    .line 143
    :catch_55
    move-exception v7

    .line 150
    :goto_56
    :try_start_56
    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_59
    .catch Landroid/system/ErrnoException; {:try_start_56 .. :try_end_59} :catch_44
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_69

    goto :goto_43

    .line 158
    .end local v4  # "peerFd":Ljava/io/FileDescriptor;
    :cond_5a
    :goto_5a
    goto :goto_2d

    .line 140
    .restart local v4  # "peerFd":Ljava/io/FileDescriptor;
    :goto_5b
    if-eqz v4, :cond_67

    .line 142
    :try_start_5d
    invoke-static {v4, v2, v6, v1}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_61

    .line 148
    goto :goto_62

    .line 143
    :catch_61
    move-exception v1

    .line 150
    :goto_62
    :try_start_62
    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_65
    .catch Landroid/system/ErrnoException; {:try_start_62 .. :try_end_65} :catch_66
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_69

    .line 155
    goto :goto_67

    .line 151
    :catch_66
    move-exception v1

    .line 155
    :cond_67
    :goto_67
    nop

    .end local v2  # "ackSignal":[B
    .end local p0  # "this":Lcom/android/server/am/NativeCrashListener;
    :try_start_68
    throw v7
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_69} :catch_69

    .line 159
    .end local v3  # "serverFd":Ljava/io/FileDescriptor;
    .end local v4  # "peerFd":Ljava/io/FileDescriptor;
    .end local v5  # "sockAddr":Landroid/system/UnixSocketAddress;
    .restart local v2  # "ackSignal":[B
    .restart local p0  # "this":Lcom/android/server/am/NativeCrashListener;
    :catch_69
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Unable to init native debug socket!"

    invoke-static {v0, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    .end local v1  # "e":Ljava/lang/Exception;
    return-void
.end method
