.class Lcom/android/server/wm/WindowTracing;
.super Ljava/lang/Object;
.source "WindowTracing.java"


# static fields
.field private static final BUFFER_CAPACITY_ALL:I = 0x400000

.field private static final BUFFER_CAPACITY_CRITICAL:I = 0x80000

.field private static final BUFFER_CAPACITY_TRIM:I = 0x200000

.field private static final TAG:Ljava/lang/String; = "WindowTracing"

.field private static final TRACE_FILENAME:Ljava/lang/String; = "/data/misc/wmtrace/wm_trace.pb"


# instance fields
.field private final mBuffer:Lcom/android/server/wm/WindowTraceBuffer;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mEnabled:Z

.field private final mEnabledLock:Ljava/lang/Object;

.field private volatile mEnabledLockFree:Z

.field private final mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private mLogLevel:I

.field private mLogOnFrame:Z

.field private mScheduled:Z

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTraceFile:Ljava/io/File;


# direct methods
.method private constructor <init>(Ljava/io/File;Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;I)V
    .registers 11
    .param p1, "file"  # Ljava/io/File;
    .param p2, "service"  # Lcom/android/server/wm/WindowManagerService;
    .param p3, "choreographer"  # Landroid/view/Choreographer;
    .param p4, "bufferCapacity"  # I

    .line 78
    iget-object v4, p2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowTracing;-><init>(Ljava/io/File;Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;Lcom/android/server/wm/WindowManagerGlobalLock;I)V

    .line 79
    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;Lcom/android/server/wm/WindowManagerGlobalLock;I)V
    .registers 8
    .param p1, "file"  # Ljava/io/File;
    .param p2, "service"  # Lcom/android/server/wm/WindowManagerService;
    .param p3, "choreographer"  # Landroid/view/Choreographer;
    .param p4, "globalLock"  # Lcom/android/server/wm/WindowManagerGlobalLock;
    .param p5, "bufferCapacity"  # I

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Lcom/android/server/wm/-$$Lambda$WindowTracing$lz89IHzR4nKO_ZtXtwyNGkRleMY;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$WindowTracing$lz89IHzR4nKO_ZtXtwyNGkRleMY;-><init>(Lcom/android/server/wm/WindowTracing;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowTracing;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowTracing;->mLogLevel:I

    .line 65
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracing;->mLogOnFrame:Z

    .line 83
    iput-object p3, p0, Lcom/android/server/wm/WindowTracing;->mChoreographer:Landroid/view/Choreographer;

    .line 84
    iput-object p2, p0, Lcom/android/server/wm/WindowTracing;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 85
    iput-object p4, p0, Lcom/android/server/wm/WindowTracing;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 86
    iput-object p1, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    .line 87
    new-instance v1, Lcom/android/server/wm/WindowTraceBuffer;

    invoke-direct {v1, p5}, Lcom/android/server/wm/WindowTraceBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/server/wm/WindowTraceBuffer;

    .line 88
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/WindowTracing;->setLogLevel(ILjava/io/PrintWriter;)V

    .line 89
    return-void
.end method

.method static createDefaultAndStartLooper(Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;)Lcom/android/server/wm/WindowTracing;
    .registers 5
    .param p0, "service"  # Lcom/android/server/wm/WindowManagerService;
    .param p1, "choreographer"  # Landroid/view/Choreographer;

    .line 72
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wmtrace/wm_trace.pb"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "file":Ljava/io/File;
    new-instance v1, Lcom/android/server/wm/WindowTracing;

    const/high16 v2, 0x200000

    invoke-direct {v1, v0, p0, p1, v2}, Lcom/android/server/wm/WindowTracing;-><init>(Ljava/io/File;Lcom/android/server/wm/WindowManagerService;Landroid/view/Choreographer;I)V

    return-object v1
.end method

.method private log(Ljava/lang/String;)V
    .registers 12
    .param p1, "where"  # Ljava/lang/String;

    .line 283
    const-wide/16 v0, 0x20

    const-string v2, "traceStateLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 285
    :try_start_7
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 286
    .local v2, "os":Landroid/util/proto/ProtoOutputStream;
    const-wide v3, 0x20b00000002L

    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 287
    .local v3, "tokenOuter":J
    const-wide v5, 0x10600000001L

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v7

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 288
    const-wide v5, 0x10900000002L

    invoke-virtual {v2, v5, v6, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 290
    const-wide v5, 0x10b00000003L

    invoke-virtual {v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 291
    .local v5, "tokenInner":J
    iget-object v7, p0, Lcom/android/server/wm/WindowTracing;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v7
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_35} :catch_68
    .catchall {:try_start_7 .. :try_end_35} :catchall_66

    :try_start_35
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 292
    const-string v8, "writeToProtoLocked"

    invoke-static {v0, v1, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_35 .. :try_end_3d} :catchall_60

    .line 294
    :try_start_3d
    iget-object v8, p0, Lcom/android/server/wm/WindowTracing;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v9, p0, Lcom/android/server/wm/WindowTracing;->mLogLevel:I

    invoke-virtual {v8, v2, v9}, Lcom/android/server/wm/WindowManagerService;->writeToProtoLocked(Landroid/util/proto/ProtoOutputStream;I)V
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_5b

    .line 296
    :try_start_44
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 297
    nop

    .line 298
    monitor-exit v7
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_60

    :try_start_49
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 299
    invoke-virtual {v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 300
    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 301
    iget-object v7, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/server/wm/WindowTraceBuffer;

    invoke-virtual {v7, v2}, Lcom/android/server/wm/WindowTraceBuffer;->add(Landroid/util/proto/ProtoOutputStream;)V

    .line 302
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/wm/WindowTracing;->mScheduled:Z
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_5a} :catch_68
    .catchall {:try_start_49 .. :try_end_5a} :catchall_66

    .line 306
    .end local v2  # "os":Landroid/util/proto/ProtoOutputStream;
    .end local v3  # "tokenOuter":J
    .end local v5  # "tokenInner":J
    goto :goto_71

    .line 296
    .restart local v2  # "os":Landroid/util/proto/ProtoOutputStream;
    .restart local v3  # "tokenOuter":J
    .restart local v5  # "tokenInner":J
    :catchall_5b
    move-exception v8

    :try_start_5c
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .end local v2  # "os":Landroid/util/proto/ProtoOutputStream;
    .end local v3  # "tokenOuter":J
    .end local v5  # "tokenInner":J
    .end local p0  # "this":Lcom/android/server/wm/WindowTracing;
    .end local p1  # "where":Ljava/lang/String;
    throw v8

    .line 298
    .restart local v2  # "os":Landroid/util/proto/ProtoOutputStream;
    .restart local v3  # "tokenOuter":J
    .restart local v5  # "tokenInner":J
    .restart local p0  # "this":Lcom/android/server/wm/WindowTracing;
    .restart local p1  # "where":Ljava/lang/String;
    :catchall_60
    move-exception v8

    monitor-exit v7
    :try_end_62
    .catchall {:try_start_5c .. :try_end_62} :catchall_60

    :try_start_62
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local p0  # "this":Lcom/android/server/wm/WindowTracing;
    .end local p1  # "where":Ljava/lang/String;
    throw v8
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_66} :catch_68
    .catchall {:try_start_62 .. :try_end_66} :catchall_66

    .line 306
    .end local v2  # "os":Landroid/util/proto/ProtoOutputStream;
    .end local v3  # "tokenOuter":J
    .end local v5  # "tokenInner":J
    .restart local p0  # "this":Lcom/android/server/wm/WindowTracing;
    .restart local p1  # "where":Ljava/lang/String;
    :catchall_66
    move-exception v2

    goto :goto_76

    .line 303
    :catch_68
    move-exception v2

    .line 304
    .local v2, "e":Ljava/lang/Exception;
    :try_start_69
    const-string v3, "WindowTracing"

    const-string v4, "Exception while tracing state"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_70
    .catchall {:try_start_69 .. :try_end_70} :catchall_66

    .line 306
    nop

    .end local v2  # "e":Ljava/lang/Exception;
    :goto_71
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 307
    nop

    .line 308
    return-void

    .line 306
    :goto_76
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "msg"  # Ljava/lang/String;

    .line 323
    const-string v0, "WindowTracing"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    if-eqz p1, :cond_d

    .line 325
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 328
    :cond_d
    return-void
.end method

.method private schedule()V
    .registers 3

    .line 269
    iget-boolean v0, p0, Lcom/android/server/wm/WindowTracing;->mScheduled:Z

    if-eqz v0, :cond_5

    .line 270
    return-void

    .line 273
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowTracing;->mScheduled:Z

    .line 274
    iget-object v0, p0, Lcom/android/server/wm/WindowTracing;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/wm/WindowTracing;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 275
    return-void
.end method

.method private setBufferCapacity(ILjava/io/PrintWriter;)V
    .registers 5
    .param p1, "capacity"  # I
    .param p2, "pw"  # Ljava/io/PrintWriter;

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting window tracing buffer capacity to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "bytes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/server/wm/WindowTraceBuffer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowTraceBuffer;->setCapacity(I)V

    .line 166
    return-void
.end method

.method private setLogFrequency(ZLjava/io/PrintWriter;)V
    .registers 5
    .param p1, "onFrame"  # Z
    .param p2, "pw"  # Ljava/io/PrintWriter;

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting window tracing log frequency to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    if-eqz p1, :cond_f

    const-string v1, "frame"

    goto :goto_11

    :cond_f
    const-string v1, "transaction"

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-direct {p0, p2, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 160
    iput-boolean p1, p0, Lcom/android/server/wm/WindowTracing;->mLogOnFrame:Z

    .line 161
    return-void
.end method

.method private setLogLevel(ILjava/io/PrintWriter;)V
    .registers 5
    .param p1, "logLevel"  # I
    .param p2, "pw"  # Ljava/io/PrintWriter;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting window tracing log level to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 139
    iput p1, p0, Lcom/android/server/wm/WindowTracing;->mLogLevel:I

    .line 141
    if-eqz p1, :cond_2b

    const/4 v0, 0x1

    if-eq p1, v0, :cond_25

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1f

    goto :goto_31

    .line 151
    :cond_1f
    const/high16 v0, 0x80000

    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/WindowTracing;->setBufferCapacity(ILjava/io/PrintWriter;)V

    goto :goto_31

    .line 147
    :cond_25
    const/high16 v0, 0x200000

    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/WindowTracing;->setBufferCapacity(ILjava/io/PrintWriter;)V

    .line 148
    goto :goto_31

    .line 143
    :cond_2b
    const/high16 v0, 0x400000

    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/WindowTracing;->setBufferCapacity(ILjava/io/PrintWriter;)V

    .line 144
    nop

    .line 155
    :goto_31
    return-void
.end method

.method private writeTraceToFileLocked()V
    .registers 6

    .line 336
    const-wide/16 v0, 0x20

    :try_start_2
    const-string v2, "writeTraceToFileLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 337
    iget-object v2, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/server/wm/WindowTraceBuffer;

    iget-object v3, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowTraceBuffer;->writeTraceToFile(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_11
    .catchall {:try_start_2 .. :try_end_e} :catchall_f

    .line 341
    goto :goto_1a

    :catchall_f
    move-exception v2

    goto :goto_1f

    .line 338
    :catch_11
    move-exception v2

    .line 339
    .local v2, "e":Ljava/io/IOException;
    :try_start_12
    const-string v3, "WindowTracing"

    const-string v4, "Unable to write buffer to file"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_f

    .line 341
    nop

    .end local v2  # "e":Ljava/io/IOException;
    :goto_1a
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 342
    nop

    .line 343
    return-void

    .line 341
    :goto_1f
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method


# virtual methods
.method getStatus()Ljava/lang/String;
    .registers 3

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracing;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "Enabled"

    goto :goto_15

    :cond_13
    const-string v1, "Disabled"

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nLog level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowTracing;->mLogLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/server/wm/WindowTraceBuffer;

    .line 244
    invoke-virtual {v1}, Lcom/android/server/wm/WindowTraceBuffer;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    return-object v0
.end method

.method isEnabled()Z
    .registers 2

    .line 169
    iget-boolean v0, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLockFree:Z

    return v0
.end method

.method public synthetic lambda$new$0$WindowTracing(J)V
    .registers 4
    .param p1, "frameTimeNanos"  # J

    .line 62
    const-string v0, "onFrame"

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowTracing;->log(Ljava/lang/String;)V

    return-void
.end method

.method logState(Ljava/lang/String;)V
    .registers 3
    .param p1, "where"  # Ljava/lang/String;

    .line 254
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracing;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 255
    return-void

    .line 258
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/WindowTracing;->mLogOnFrame:Z

    if-eqz v0, :cond_f

    .line 259
    invoke-direct {p0}, Lcom/android/server/wm/WindowTracing;->schedule()V

    goto :goto_12

    .line 261
    :cond_f
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowTracing;->log(Ljava/lang/String;)V

    .line 263
    :goto_12
    return-void
.end method

.method onShellCommand(Landroid/os/ShellCommand;)I
    .registers 11
    .param p1, "shell"  # Landroid/os/ShellCommand;

    .line 173
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 174
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "cmd":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v2, :sswitch_data_13a

    :cond_13
    goto :goto_5a

    :sswitch_14
    const-string v2, "transaction"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x4

    goto :goto_5b

    :sswitch_1e
    const-string v2, "start"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move v2, v6

    goto :goto_5b

    :sswitch_28
    const-string v2, "level"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x5

    goto :goto_5b

    :sswitch_32
    const-string v2, "frame"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x3

    goto :goto_5b

    :sswitch_3c
    const-string v2, "stop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move v2, v5

    goto :goto_5b

    :sswitch_46
    const-string v2, "size"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x6

    goto :goto_5b

    :sswitch_50
    const-string v2, "status"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    move v2, v4

    goto :goto_5b

    :goto_5a
    move v2, v3

    :goto_5b
    packed-switch v2, :pswitch_data_158

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown command: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    const-string v2, "Window manager trace options:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    const-string v2, "  start: Start logging"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 223
    const-string v2, "  stop: Stop logging"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 224
    const-string v2, "  frame: Log trace once per frame"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    const-string v2, "  transaction: Log each transaction"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    const-string v2, "  size: Set the maximum log size (in KB)"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    const-string v2, "  status: Print trace status"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 228
    const-string v2, "  level [lvl]: Set the log level between"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    const-string v2, "    lvl may be one of:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    const-string v2, "      critical: Only visible windows with reduced information"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    const-string v2, "      trim: All windows with reduced"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    const-string v2, "      all: All window and information"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    return v3

    .line 216
    :pswitch_af  #0x6
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x400

    invoke-direct {p0, v2, v0}, Lcom/android/server/wm/WindowTracing;->setBufferCapacity(ILjava/io/PrintWriter;)V

    .line 217
    iget-object v2, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/server/wm/WindowTraceBuffer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowTraceBuffer;->resetBuffer()V

    .line 218
    return v6

    .line 194
    :pswitch_c2  #0x5
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "logLevelStr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, 0x179a1

    if-eq v7, v8, :cond_f2

    const v8, 0x367422  # 5.000777E-39f

    if-eq v7, v8, :cond_e8

    const v8, 0x745b779f

    if-eq v7, v8, :cond_de

    :cond_dd
    goto :goto_fb

    :cond_de
    const-string v7, "critical"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_dd

    move v3, v4

    goto :goto_fb

    :cond_e8
    const-string v7, "trim"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_dd

    move v3, v5

    goto :goto_fb

    :cond_f2
    const-string v7, "all"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_dd

    move v3, v6

    :goto_fb
    if-eqz v3, :cond_10d

    if-eq v3, v5, :cond_109

    if-eq v3, v4, :cond_105

    .line 209
    invoke-direct {p0, v5, v0}, Lcom/android/server/wm/WindowTracing;->setLogLevel(ILjava/io/PrintWriter;)V

    goto :goto_111

    .line 205
    :cond_105
    invoke-direct {p0, v4, v0}, Lcom/android/server/wm/WindowTracing;->setLogLevel(ILjava/io/PrintWriter;)V

    .line 206
    goto :goto_111

    .line 201
    :cond_109
    invoke-direct {p0, v5, v0}, Lcom/android/server/wm/WindowTracing;->setLogLevel(ILjava/io/PrintWriter;)V

    .line 202
    goto :goto_111

    .line 197
    :cond_10d
    invoke-direct {p0, v6, v0}, Lcom/android/server/wm/WindowTracing;->setLogLevel(ILjava/io/PrintWriter;)V

    .line 198
    nop

    .line 213
    :goto_111
    iget-object v3, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/server/wm/WindowTraceBuffer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowTraceBuffer;->resetBuffer()V

    .line 214
    return v6

    .line 190
    .end local v2  # "logLevelStr":Ljava/lang/String;
    :pswitch_117  #0x4
    invoke-direct {p0, v6, v0}, Lcom/android/server/wm/WindowTracing;->setLogFrequency(ZLjava/io/PrintWriter;)V

    .line 191
    iget-object v2, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/server/wm/WindowTraceBuffer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowTraceBuffer;->resetBuffer()V

    .line 192
    return v6

    .line 186
    :pswitch_120  #0x3
    invoke-direct {p0, v5, v0}, Lcom/android/server/wm/WindowTracing;->setLogFrequency(ZLjava/io/PrintWriter;)V

    .line 187
    iget-object v2, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/server/wm/WindowTraceBuffer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowTraceBuffer;->resetBuffer()V

    .line 188
    return v6

    .line 183
    :pswitch_129  #0x2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTracing;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 184
    return v6

    .line 180
    :pswitch_131  #0x1
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowTracing;->stopTrace(Ljava/io/PrintWriter;)V

    .line 181
    return v6

    .line 177
    :pswitch_135  #0x0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowTracing;->startTrace(Ljava/io/PrintWriter;)V

    .line 178
    return v6

    nop

    :sswitch_data_13a
    .sparse-switch
        -0x3532300e -> :sswitch_50
        0x35e001 -> :sswitch_46
        0x360802 -> :sswitch_3c
        0x5d2a96d -> :sswitch_32
        0x6219b84 -> :sswitch_28
        0x68ac462 -> :sswitch_1e
        0x7fa0d2de -> :sswitch_14
    .end sparse-switch

    :pswitch_data_158
    .packed-switch 0x0
        :pswitch_135  #00000000
        :pswitch_131  #00000001
        :pswitch_129  #00000002
        :pswitch_120  #00000003
        :pswitch_117  #00000004
        :pswitch_c2  #00000005
        :pswitch_af  #00000006
    .end packed-switch
.end method

.method startTrace(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 92
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_a

    .line 93
    const-string v0, "Error: Tracing is not supported on user builds."

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 94
    return-void

    .line 96
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start tracing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/android/server/wm/WindowTracing;->mBuffer:Lcom/android/server/wm/WindowTraceBuffer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowTraceBuffer;->resetBuffer()V

    .line 99
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLockFree:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracing;->mEnabled:Z

    .line 100
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_39

    .line 101
    const-string v0, "trace.enable"

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowTracing;->log(Ljava/lang/String;)V

    .line 102
    return-void

    .line 100
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v1
.end method

.method stopTrace(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 109
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowTracing;->stopTrace(Ljava/io/PrintWriter;Z)V

    .line 110
    return-void
.end method

.method stopTrace(Ljava/io/PrintWriter;Z)V
    .registers 6
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "writeToFile"  # Z

    .line 118
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    if-eqz v0, :cond_a

    .line 119
    const-string v0, "Error: Tracing is not supported on user builds."

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 120
    return-void

    .line 122
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 123
    :try_start_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop tracing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Waiting for traces to flush."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 124
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLockFree:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowTracing;->mEnabled:Z

    .line 126
    iget-boolean v1, p0, Lcom/android/server/wm/WindowTracing;->mEnabled:Z

    if-nez v1, :cond_53

    .line 130
    if-eqz p2, :cond_51

    .line 131
    invoke-direct {p0}, Lcom/android/server/wm/WindowTracing;->writeTraceToFileLocked()V

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trace written to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowTracing;->mTraceFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 134
    :cond_51
    monitor-exit v0

    .line 135
    return-void

    .line 127
    :cond_53
    const-string v1, "ERROR: tracing was re-enabled while waiting for flush."

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowTracing;->logAndPrintln(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 128
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "tracing enabled while waiting for flush."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wm/WindowTracing;
    .end local p1  # "pw":Ljava/io/PrintWriter;
    .end local p2  # "writeToFile":Z
    throw v1

    .line 134
    .restart local p0  # "this":Lcom/android/server/wm/WindowTracing;
    .restart local p1  # "pw":Ljava/io/PrintWriter;
    .restart local p2  # "writeToFile":Z
    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_d .. :try_end_62} :catchall_60

    throw v1
.end method

.method writeTraceToFile()V
    .registers 3

    .line 317
    iget-object v0, p0, Lcom/android/server/wm/WindowTracing;->mEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 318
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/wm/WindowTracing;->writeTraceToFileLocked()V

    .line 319
    monitor-exit v0

    .line 320
    return-void

    .line 319
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method
