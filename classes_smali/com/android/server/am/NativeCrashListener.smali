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

    .line 96
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 98
    return-void
.end method

.method static readExactly(Ljava/io/FileDescriptor;[BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 176
    const/4 v0, 0x0

    .line 177
    :goto_1
    if-lez p3, :cond_10

    .line 178
    add-int v1, p2, v0

    invoke-static {p0, p1, v1, p3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    .line 179
    if-gtz v1, :cond_d

    .line 183
    const/4 p0, -0x1

    return p0

    .line 185
    :cond_d
    sub-int/2addr p3, v1

    .line 186
    add-int/2addr v0, v1

    .line 187
    goto :goto_1

    .line 188
    :cond_10
    return v0
.end method

.method static unpackInt([BI)I
    .registers 5

    .line 167
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 168
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 169
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 170
    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    .line 171
    shl-int/lit8 p1, v0, 0x18

    shl-int/lit8 v0, v1, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 v0, v2, 0x8

    or-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    .registers 10

    .line 194
    const/16 v0, 0x1000

    new-array v1, v0, [B

    .line 195
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 198
    const-wide/16 v3, 0x2710

    :try_start_b
    invoke-static {v3, v4}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v0

    .line 199
    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-static {p1, v3, v4, v0}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 200
    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    invoke-static {p1, v3, v4, v0}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 207
    const/16 v0, 0x8

    const/4 v3, 0x0

    invoke-static {p1, v1, v3, v0}, Lcom/android/server/am/NativeCrashListener;->readExactly(Ljava/io/FileDescriptor;[BII)I

    move-result v4

    .line 208
    if-eq v4, v0, :cond_2e

    .line 210
    const-string p1, "NativeCrashListener"

    const-string v0, "Unable to read from debuggerd"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void

    .line 214
    :cond_2e
    invoke-static {v1, v3}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v0

    .line 215
    const/4 v4, 0x4

    invoke-static {v1, v4}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v4

    .line 221
    if-lez v0, :cond_aa

    .line 223
    iget-object v5, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v5
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_3e} :catch_b2

    .line 224
    :try_start_3e
    iget-object v6, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v6, v0}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v6

    .line 225
    monitor-exit v5
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_a7

    .line 226
    if-eqz v6, :cond_90

    .line 228
    :try_start_49
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 232
    return-void

    .line 238
    :cond_50
    array-length v0, v1

    invoke-static {p1, v1, v3, v0}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    .line 239
    if-lez v0, :cond_64

    .line 245
    add-int/lit8 v5, v0, -0x1

    aget-byte v7, v1, v5

    if-nez v7, :cond_61

    .line 246
    invoke-virtual {v2, v1, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 247
    goto :goto_66

    .line 250
    :cond_61
    invoke-virtual {v2, v1, v3, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 252
    :cond_64
    if-gtz v0, :cond_50

    .line 261
    :goto_66
    iget-object p1, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter p1
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_69} :catch_b2

    :try_start_69
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 262
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/android/server/am/ProcessRecord;->setCrashing(Z)V

    .line 263
    iput-boolean v0, v6, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    .line 264
    monitor-exit p1
    :try_end_73
    .catchall {:try_start_69 .. :try_end_73} :catchall_8a

    :try_start_73
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 269
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 270
    new-instance v0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;

    invoke-direct {v0, p0, v6, v4, p1}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;-><init>(Lcom/android/server/am/NativeCrashListener;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->start()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_89} :catch_b2

    .line 271
    goto :goto_a6

    .line 264
    :catchall_8a
    move-exception v0

    :try_start_8b
    monitor-exit p1
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    :try_start_8c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 272
    :cond_90
    const-string p1, "NativeCrashListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find ProcessRecord for pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_a6} :catch_b2

    .line 274
    :goto_a6
    goto :goto_b1

    .line 225
    :catchall_a7
    move-exception p1

    :try_start_a8
    monitor-exit v5
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    :try_start_a9
    throw p1

    .line 275
    :cond_aa
    const-string p1, "NativeCrashListener"

    const-string v0, "Bogus pid!"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_b1} :catch_b2

    .line 280
    :goto_b1
    goto :goto_ba

    .line 277
    :catch_b2
    move-exception p1

    .line 278
    const-string v0, "NativeCrashListener"

    const-string v1, "Exception dealing with report"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    :goto_ba
    return-void
.end method

.method public run()V
    .registers 9

    .line 102
    const-string v0, "NativeCrashListener"

    const/4 v1, 0x1

    new-array v2, v1, [B

    .line 110
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/ndebugsocket"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 112
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 117
    :cond_15
    :try_start_15
    sget v3, Landroid/system/OsConstants;->AF_UNIX:I

    sget v5, Landroid/system/OsConstants;->SOCK_STREAM:I

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v3

    .line 118
    invoke-static {v4}, Landroid/system/UnixSocketAddress;->createFileSystem(Ljava/lang/String;)Landroid/system/UnixSocketAddress;

    move-result-object v5

    .line 120
    invoke-static {v3, v5}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 121
    invoke-static {v3, v1}, Landroid/system/Os;->listen(Ljava/io/FileDescriptor;I)V

    .line 122
    const/16 v5, 0x1ff

    invoke-static {v4, v5}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2d} :catch_66

    .line 125
    :goto_2d
    nop

    .line 128
    const/4 v4, 0x0

    :try_start_2f
    invoke-static {v3, v4}, Landroid/system/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;

    move-result-object v4

    .line 130
    if-eqz v4, :cond_38

    .line 133
    invoke-virtual {p0, v4}, Lcom/android/server/am/NativeCrashListener;->consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_38} :catch_47
    .catchall {:try_start_2f .. :try_end_38} :catchall_45

    .line 140
    :cond_38
    if-eqz v4, :cond_58

    .line 142
    :try_start_3a
    invoke-static {v4, v2, v6, v1}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_3e

    .line 148
    goto :goto_3f

    .line 143
    :catch_3e
    move-exception v5

    .line 150
    :goto_3f
    :try_start_3f
    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_42
    .catch Landroid/system/ErrnoException; {:try_start_3f .. :try_end_42} :catch_43
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_66

    .line 155
    :goto_42
    goto :goto_58

    .line 151
    :catch_43
    move-exception v4

    goto :goto_42

    .line 140
    :catchall_45
    move-exception v3

    goto :goto_59

    .line 135
    :catch_47
    move-exception v5

    .line 136
    :try_start_48
    const-string v7, "Error handling connection"

    invoke-static {v0, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4d
    .catchall {:try_start_48 .. :try_end_4d} :catchall_45

    .line 140
    if-eqz v4, :cond_58

    .line 142
    :try_start_4f
    invoke-static {v4, v2, v6, v1}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_53

    .line 148
    goto :goto_54

    .line 143
    :catch_53
    move-exception v5

    .line 150
    :goto_54
    :try_start_54
    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_57
    .catch Landroid/system/ErrnoException; {:try_start_54 .. :try_end_57} :catch_43
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_66

    goto :goto_42

    .line 158
    :cond_58
    :goto_58
    goto :goto_2d

    .line 140
    :goto_59
    if-eqz v4, :cond_65

    .line 142
    :try_start_5b
    invoke-static {v4, v2, v6, v1}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_5f

    .line 148
    goto :goto_60

    .line 143
    :catch_5f
    move-exception v1

    .line 150
    :goto_60
    :try_start_60
    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_63
    .catch Landroid/system/ErrnoException; {:try_start_60 .. :try_end_63} :catch_64
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_66

    .line 155
    goto :goto_65

    .line 151
    :catch_64
    move-exception v1

    .line 155
    :cond_65
    :goto_65
    :try_start_65
    throw v3
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_66} :catch_66

    .line 159
    :catch_66
    move-exception v1

    .line 160
    const-string v2, "Unable to init native debug socket!"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    return-void
.end method
