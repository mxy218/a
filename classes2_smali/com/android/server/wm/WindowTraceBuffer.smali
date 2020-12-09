.class Lcom/android/server/wm/WindowTraceBuffer;
.super Ljava/lang/Object;
.source "WindowTraceBuffer.java"


# static fields
.field private static final MAGIC_NUMBER_VALUE:J = 0x45434152544e4957L


# instance fields
.field private final mBuffer:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/util/proto/ProtoOutputStream;",
            ">;"
        }
    .end annotation
.end field

.field private mBufferCapacity:I

.field private final mBufferLock:Ljava/lang/Object;

.field private mBufferUsedSize:I


# direct methods
.method constructor <init>(I)V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferLock:Ljava/lang/Object;

    .line 43
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBuffer:Ljava/util/Queue;

    .line 48
    iput p1, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferCapacity:I

    .line 49
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTraceBuffer;->resetBuffer()V

    .line 50
    return-void
.end method

.method private discardOldest(I)V
    .registers 6

    .line 118
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTraceBuffer;->getAvailableSpace()I

    move-result v0

    int-to-long v0, v0

    .line 120
    :goto_5
    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-gez v0, :cond_2b

    .line 122
    iget-object v0, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBuffer:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/proto/ProtoOutputStream;

    .line 123
    if-eqz v0, :cond_23

    .line 126
    iget v1, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferUsedSize:I

    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getRawSize()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferUsedSize:I

    .line 127
    invoke-virtual {p0}, Lcom/android/server/wm/WindowTraceBuffer;->getAvailableSpace()I

    move-result v0

    int-to-long v0, v0

    .line 128
    goto :goto_5

    .line 124
    :cond_23
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No element to discard from buffer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 129
    :cond_2b
    return-void
.end method

.method static synthetic lambda$contains$0([BLandroid/util/proto/ProtoOutputStream;)Z
    .registers 2

    .line 87
    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p1

    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method add(Landroid/util/proto/ProtoOutputStream;)V
    .registers 5

    .line 72
    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->getRawSize()I

    move-result v0

    .line 73
    iget v1, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferCapacity:I

    if-gt v0, v1, :cond_22

    .line 77
    iget-object v1, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferLock:Ljava/lang/Object;

    monitor-enter v1

    .line 78
    :try_start_b
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowTraceBuffer;->discardOldest(I)V

    .line 79
    iget-object v2, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBuffer:Ljava/util/Queue;

    invoke-interface {v2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 80
    iget p1, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferUsedSize:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferUsedSize:I

    .line 81
    iget-object p1, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 82
    monitor-exit v1

    .line 83
    return-void

    .line 82
    :catchall_1f
    move-exception p1

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_1f

    throw p1

    .line 74
    :cond_22
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trace object too large for the buffer. Buffer size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferCapacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Object size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method contains([B)Z
    .registers 4

    .line 86
    iget-object v0, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBuffer:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/-$$Lambda$WindowTraceBuffer$N2ubPF2l5_1sFrDHIeldAcm7Q30;

    invoke-direct {v1, p1}, Lcom/android/server/wm/-$$Lambda$WindowTraceBuffer$N2ubPF2l5_1sFrDHIeldAcm7Q30;-><init>([B)V

    .line 87
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    .line 86
    return p1
.end method

.method getAvailableSpace()I
    .registers 3

    .line 53
    iget v0, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferCapacity:I

    iget v1, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferUsedSize:I

    sub-int/2addr v0, v1

    return v0
.end method

.method getBufferSize()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 143
    iget v0, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferUsedSize:I

    return v0
.end method

.method getStatus()Ljava/lang/String;
    .registers 4

    .line 147
    iget-object v0, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buffer size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferCapacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes\nBuffer usage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferUsedSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes\nElements in the buffer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBuffer:Ljava/util/Queue;

    .line 157
    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    .line 148
    return-object v1

    .line 158
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method resetBuffer()V
    .registers 3

    .line 135
    iget-object v0, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBuffer:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 137
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferUsedSize:I

    .line 138
    monitor-exit v0

    .line 139
    return-void

    .line 138
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method setCapacity(I)V
    .registers 2

    .line 61
    iput p1, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferCapacity:I

    .line 62
    return-void
.end method

.method size()I
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBuffer:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method writeTraceToFile(Ljava/io/File;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_3
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 96
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_58

    .line 97
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_d
    invoke-virtual {p1, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 98
    new-instance p1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p1}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 99
    const-wide v2, 0x10600000001L

    const-wide v4, 0x45434152544e4957L  # 4.655612620390422E25

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 100
    invoke-virtual {p1}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 101
    iget-object p1, p0, Lcom/android/server/wm/WindowTraceBuffer;->mBuffer:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/proto/ProtoOutputStream;

    .line 102
    nop

    .line 103
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v2

    .line 104
    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 105
    goto :goto_2f

    .line 106
    :cond_44
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_47
    .catchall {:try_start_d .. :try_end_47} :catchall_4c

    .line 107
    :try_start_47
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 108
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_58

    .line 109
    return-void

    .line 96
    :catchall_4c
    move-exception p1

    :try_start_4d
    throw p1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    .line 107
    :catchall_4e
    move-exception v2

    :try_start_4f
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_53

    goto :goto_57

    :catchall_53
    move-exception v1

    :try_start_54
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_57
    throw v2

    .line 108
    :catchall_58
    move-exception p1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_54 .. :try_end_5a} :catchall_58

    throw p1
.end method
