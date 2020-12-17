.class Lcom/android/server/wm/PersisterQueue;
.super Ljava/lang/Object;
.source "PersisterQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;,
        Lcom/android/server/wm/PersisterQueue$Listener;,
        Lcom/android/server/wm/PersisterQueue$WriteQueueItem;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field static final EMPTY_ITEM:Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

.field private static final FLUSH_QUEUE:J = -0x1L

.field private static final INTER_WRITE_DELAY_MS:J = 0x1f4L

.field private static final MAX_WRITE_QUEUE_LENGTH:I = 0x6

.field private static final PRE_TASK_DELAY_MS:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "PersisterQueue"


# instance fields
.field private final mInterWriteDelayMs:J

.field private final mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/PersisterQueue$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mNextWriteTime:J

.field private final mPreTaskDelayMs:J

.field private final mWriteQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/PersisterQueue$WriteQueueItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 57
    sget-object v0, Lcom/android/server/wm/-$$Lambda$PersisterQueue$HOTPBvinkMOqT3zxV3gRm6Y9Wi4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$PersisterQueue$HOTPBvinkMOqT3zxV3gRm6Y9Wi4;

    sput-object v0, Lcom/android/server/wm/PersisterQueue;->EMPTY_ITEM:Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    return-void
.end method

.method constructor <init>()V
    .registers 5

    .line 76
    const-wide/16 v0, 0x1f4

    const-wide/16 v2, 0xbb8

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/wm/PersisterQueue;-><init>(JJ)V

    .line 77
    return-void
.end method

.method constructor <init>(JJ)V
    .registers 8
    .param p1, "interWriteDelayMs"  # J
    .param p3, "preTaskDelayMs"  # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mListeners:Ljava/util/ArrayList;

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    .line 82
    cmp-long v2, p1, v0

    if-ltz v2, :cond_2c

    cmp-long v0, p3, v0

    if-ltz v0, :cond_2c

    .line 87
    iput-wide p1, p0, Lcom/android/server/wm/PersisterQueue;->mInterWriteDelayMs:J

    .line 88
    iput-wide p3, p0, Lcom/android/server/wm/PersisterQueue;->mPreTaskDelayMs:J

    .line 89
    new-instance v0, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    const/4 v1, 0x0

    const-string v2, "LazyTaskWriterThread"

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;-><init>(Lcom/android/server/wm/PersisterQueue;Ljava/lang/String;Lcom/android/server/wm/PersisterQueue$1;)V

    iput-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    .line 90
    return-void

    .line 83
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Both inter-write delay and pre-task delay need tobe non-negative. inter-write delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms pre-task delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/PersisterQueue;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/PersisterQueue;

    .line 33
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/PersisterQueue;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/PersisterQueue;

    .line 33
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/PersisterQueue;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/wm/PersisterQueue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lcom/android/server/wm/PersisterQueue;->processNextItem()V

    return-void
.end method

.method static synthetic lambda$static$0()V
    .registers 0

    .line 57
    return-void
.end method

.method private processNextItem()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 214
    monitor-enter p0

    .line 215
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_39

    .line 217
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/PersisterQueue;->mInterWriteDelayMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    .line 219
    const-string v0, "PersisterQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Next write time may be in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/wm/PersisterQueue;->mInterWriteDelayMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " msec. ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 225
    iget-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4e

    .line 226
    iput-wide v2, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    .line 227
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 231
    :cond_4e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_63

    .line 234
    const-string v0, "PersisterQueue"

    const-string v1, "LazyTaskWriter: waiting indefinitely."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_39

    .line 232
    :cond_63
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    .end local p0  # "this":Lcom/android/server/wm/PersisterQueue;
    throw v0

    .line 239
    .restart local p0  # "this":Lcom/android/server/wm/PersisterQueue;
    :cond_69
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    .line 241
    .local v0, "item":Lcom/android/server/wm/PersisterQueue$WriteQueueItem;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 243
    .local v1, "now":J
    const-string v3, "PersisterQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LazyTaskWriter: now="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " mNextWriteTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " mWriteQueue.size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    .line 244
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 243
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :goto_a4
    iget-wide v3, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_cf

    .line 248
    const-string v3, "PersisterQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LazyTaskWriter: waiting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-wide v3, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    sub-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 251
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move-wide v1, v3

    goto :goto_a4

    .line 255
    .end local v1  # "now":J
    :cond_cf
    monitor-exit p0
    :try_end_d0
    .catchall {:try_start_1 .. :try_end_d0} :catchall_d4

    .line 257
    invoke-interface {v0}, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;->process()V

    .line 258
    return-void

    .line 255
    .end local v0  # "item":Lcom/android/server/wm/PersisterQueue$WriteQueueItem;
    :catchall_d4
    move-exception v0

    :try_start_d5
    monitor-exit p0
    :try_end_d6
    .catchall {:try_start_d5 .. :try_end_d6} :catchall_d4

    throw v0
.end method


# virtual methods
.method declared-synchronized addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V
    .registers 7
    .param p1, "item"  # Lcom/android/server/wm/PersisterQueue$WriteQueueItem;
    .param p2, "flush"  # Z

    monitor-enter p0

    .line 112
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    const-string v0, "PersisterQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addItem item = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " flush = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " queue size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    .line 115
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mNextWriteTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    if-nez p2, :cond_5a

    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_48

    goto :goto_5a

    .line 119
    :cond_48
    iget-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5e

    .line 120
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/PersisterQueue;->mPreTaskDelayMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    goto :goto_5e

    .line 118
    .end local p0  # "this":Lcom/android/server/wm/PersisterQueue;
    :cond_5a
    :goto_5a
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    .line 122
    :cond_5e
    :goto_5e
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_61
    .catchall {:try_start_1 .. :try_end_61} :catchall_63

    .line 123
    monitor-exit p0

    return-void

    .line 111
    .end local p1  # "item":Lcom/android/server/wm/PersisterQueue$WriteQueueItem;
    .end local p2  # "flush":Z
    :catchall_63
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method addListener(Lcom/android/server/wm/PersisterQueue$Listener;)V
    .registers 3
    .param p1, "listener"  # Lcom/android/server/wm/PersisterQueue$Listener;

    .line 198
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    return-void
.end method

.method declared-synchronized findLastItem(Ljava/util/function/Predicate;Ljava/lang/Class;)Lcom/android/server/wm/PersisterQueue$WriteQueueItem;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/server/wm/PersisterQueue$WriteQueueItem;",
            ">(",
            "Ljava/util/function/Predicate<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    .line 126
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_2a

    .line 127
    iget-object v1, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    .line 128
    .local v1, "writeQueueItem":Lcom/android/server/wm/PersisterQueue$WriteQueueItem;
    invoke-virtual {p2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 129
    invoke-virtual {p2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    .line 130
    .local v2, "item":Lcom/android/server/wm/PersisterQueue$WriteQueueItem;, "TT;"
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_2d

    if-eqz v3, :cond_27

    .line 131
    monitor-exit p0

    return-object v2

    .line 126
    .end local v1  # "writeQueueItem":Lcom/android/server/wm/PersisterQueue$WriteQueueItem;
    .end local v2  # "item":Lcom/android/server/wm/PersisterQueue$WriteQueueItem;, "TT;"
    .end local p0  # "this":Lcom/android/server/wm/PersisterQueue;
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 136
    .end local v0  # "i":I
    :cond_2a
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 125
    .end local p1  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    .end local p2  # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized flush()V
    .registers 5

    monitor-enter p0

    .line 172
    const-wide/16 v0, -0x1

    :try_start_3
    iput-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    .line 173
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_15

    .line 176
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_b} :catch_c
    .catchall {:try_start_8 .. :try_end_b} :catchall_15

    .line 178
    goto :goto_d

    .line 177
    .end local p0  # "this":Lcom/android/server/wm/PersisterQueue;
    :catch_c
    move-exception v2

    .line 179
    :goto_d
    :try_start_d
    iget-wide v2, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_15

    cmp-long v2, v2, v0

    if-eqz v2, :cond_8

    .line 180
    monitor-exit p0

    return-void

    .line 171
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized removeItems(Ljava/util/function/Predicate;Ljava/lang/Class;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/server/wm/PersisterQueue$WriteQueueItem;",
            ">(",
            "Ljava/util/function/Predicate<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    monitor-enter p0

    .line 159
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_48

    .line 160
    iget-object v1, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    .line 161
    .local v1, "writeQueueItem":Lcom/android/server/wm/PersisterQueue$WriteQueueItem;
    invoke-virtual {p2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 162
    invoke-virtual {p2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    .line 163
    .local v2, "item":Lcom/android/server/wm/PersisterQueue$WriteQueueItem;, "TT;"
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 164
    const-string v3, "PersisterQueue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " from write queue."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v3, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_4a

    .line 159
    .end local v1  # "writeQueueItem":Lcom/android/server/wm/PersisterQueue$WriteQueueItem;
    .end local v2  # "item":Lcom/android/server/wm/PersisterQueue$WriteQueueItem;, "TT;"
    .end local p0  # "this":Lcom/android/server/wm/PersisterQueue;
    :cond_45
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 169
    .end local v0  # "i":I
    :cond_48
    monitor-exit p0

    return-void

    .line 158
    .end local p1  # "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TT;>;"
    .end local p2  # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catchall_4a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method removeListener(Lcom/android/server/wm/PersisterQueue$Listener;)Z
    .registers 3
    .param p1, "listener"  # Lcom/android/server/wm/PersisterQueue$Listener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method declared-synchronized startPersisting()V
    .registers 2

    monitor-enter p0

    .line 93
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    invoke-virtual {v0}, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_e

    .line 94
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    invoke-virtual {v0}, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;->start()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 96
    .end local p0  # "this":Lcom/android/server/wm/PersisterQueue;
    :cond_e
    monitor-exit p0

    return-void

    .line 92
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method stopPersisting()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    invoke-virtual {v0}, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_9

    .line 102
    return-void

    .line 105
    :cond_9
    monitor-enter p0

    .line 106
    :try_start_a
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    invoke-virtual {v0}, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;->interrupt()V

    .line 107
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_16

    .line 108
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    invoke-virtual {v0}, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;->join()V

    .line 109
    return-void

    .line 107
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method declared-synchronized updateLastOrAddItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V
    .registers 5
    .param p2, "flush"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/server/wm/PersisterQueue$WriteQueueItem;",
            ">(TT;Z)V"
        }
    .end annotation

    .local p1, "item":Lcom/android/server/wm/PersisterQueue$WriteQueueItem;, "TT;"
    monitor-enter p0

    .line 144
    :try_start_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/wm/-$$Lambda$pAuPvwUqsKCejIrAPrx0ARZSqeY;

    invoke-direct {v0, p1}, Lcom/android/server/wm/-$$Lambda$pAuPvwUqsKCejIrAPrx0ARZSqeY;-><init>(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/PersisterQueue;->findLastItem(Ljava/util/function/Predicate;Ljava/lang/Class;)Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    move-result-object v0

    .line 145
    .local v0, "itemToUpdate":Lcom/android/server/wm/PersisterQueue$WriteQueueItem;, "TT;"
    if-nez v0, :cond_17

    .line 146
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    goto :goto_1a

    .line 148
    .end local p0  # "this":Lcom/android/server/wm/PersisterQueue;
    :cond_17
    invoke-interface {v0, p1}, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;->updateFrom(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)V

    .line 151
    :goto_1a
    invoke-virtual {p0}, Lcom/android/server/wm/PersisterQueue;->yieldIfQueueTooDeep()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 152
    monitor-exit p0

    return-void

    .line 143
    .end local v0  # "itemToUpdate":Lcom/android/server/wm/PersisterQueue$WriteQueueItem;, "TT;"
    .end local p1  # "item":Lcom/android/server/wm/PersisterQueue$WriteQueueItem;, "TT;"
    .end local p2  # "flush":Z
    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method yieldIfQueueTooDeep()V
    .registers 6

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "stall":Z
    monitor-enter p0

    .line 185
    :try_start_2
    iget-wide v1, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_b

    .line 186
    const/4 v0, 0x1

    .line 188
    :cond_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_16

    .line 189
    if-eqz v0, :cond_15

    .line 192
    const-string v1, "PersisterQueue"

    const-string v2, "yieldIfQueueTooDeep igonre yield"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_15
    return-void

    .line 188
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method
