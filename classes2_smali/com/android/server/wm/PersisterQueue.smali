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
.field private static final DEBUG:Z = false

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

    .line 54
    sget-object v0, Lcom/android/server/wm/-$$Lambda$PersisterQueue$HOTPBvinkMOqT3zxV3gRm6Y9Wi4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$PersisterQueue$HOTPBvinkMOqT3zxV3gRm6Y9Wi4;

    sput-object v0, Lcom/android/server/wm/PersisterQueue;->EMPTY_ITEM:Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    return-void
.end method

.method constructor <init>()V
    .registers 5

    .line 73
    const-wide/16 v0, 0x1f4

    const-wide/16 v2, 0xbb8

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/wm/PersisterQueue;-><init>(JJ)V

    .line 74
    return-void
.end method

.method constructor <init>(JJ)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mListeners:Ljava/util/ArrayList;

    .line 70
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    .line 79
    cmp-long v2, p1, v0

    if-ltz v2, :cond_2c

    cmp-long v0, p3, v0

    if-ltz v0, :cond_2c

    .line 84
    iput-wide p1, p0, Lcom/android/server/wm/PersisterQueue;->mInterWriteDelayMs:J

    .line 85
    iput-wide p3, p0, Lcom/android/server/wm/PersisterQueue;->mPreTaskDelayMs:J

    .line 86
    new-instance p1, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    const/4 p2, 0x0

    const-string p3, "LazyTaskWriterThread"

    invoke-direct {p1, p0, p3, p2}, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;-><init>(Lcom/android/server/wm/PersisterQueue;Ljava/lang/String;Lcom/android/server/wm/PersisterQueue$1;)V

    iput-object p1, p0, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    .line 87
    return-void

    .line 80
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Both inter-write delay and pre-task delay need tobe non-negative. inter-write delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms pre-task delay: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/PersisterQueue;)Ljava/util/ArrayList;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/wm/PersisterQueue;)Ljava/util/ArrayList;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/android/server/wm/PersisterQueue;->mListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/wm/PersisterQueue;)V
    .registers 1
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

    .line 54
    return-void
.end method

.method private processNextItem()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 205
    monitor-enter p0

    .line 206
    :try_start_1
    iget-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    .line 208
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/PersisterQueue;->mInterWriteDelayMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    .line 215
    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 216
    iget-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_27

    .line 217
    iput-wide v2, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    .line 218
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 222
    :cond_27
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_35

    .line 226
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_12

    .line 223
    :cond_35
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 230
    :cond_3b
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    .line 232
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 237
    :goto_48
    iget-wide v3, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_59

    .line 241
    iget-wide v3, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    sub-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 242
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    goto :goto_48

    .line 246
    :cond_59
    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_1 .. :try_end_5a} :catchall_5e

    .line 248
    invoke-interface {v0}, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;->process()V

    .line 249
    return-void

    .line 246
    :catchall_5e
    move-exception v0

    :try_start_5f
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw v0
.end method


# virtual methods
.method declared-synchronized addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V
    .registers 5

    monitor-enter p0

    .line 109
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    if-nez p2, :cond_24

    iget-object p1, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x6

    if-le p1, p2, :cond_12

    goto :goto_24

    .line 113
    :cond_12
    iget-wide p1, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_28

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mPreTaskDelayMs:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    goto :goto_28

    .line 112
    :cond_24
    :goto_24
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    .line 116
    :cond_28
    :goto_28
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    .line 117
    monitor-exit p0

    return-void

    .line 108
    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method addListener(Lcom/android/server/wm/PersisterQueue$Listener;)V
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    return-void
.end method

.method declared-synchronized findLastItem(Ljava/util/function/Predicate;Ljava/lang/Class;)Lcom/android/server/wm/PersisterQueue$WriteQueueItem;
    .registers 6
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

    monitor-enter p0

    .line 120
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_2a

    .line 121
    iget-object v1, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    .line 122
    invoke-virtual {p2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 123
    invoke-virtual {p2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    .line 124
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_2d

    if-eqz v2, :cond_27

    .line 125
    monitor-exit p0

    return-object v1

    .line 120
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 130
    :cond_2a
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    .line 119
    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized flush()V
    .registers 5

    monitor-enter p0

    .line 166
    const-wide/16 v0, -0x1

    :try_start_3
    iput-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_15

    .line 170
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_b} :catch_c
    .catchall {:try_start_8 .. :try_end_b} :catchall_15

    .line 172
    goto :goto_d

    .line 171
    :catch_c
    move-exception v2

    .line 173
    :goto_d
    :try_start_d
    iget-wide v2, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_15

    cmp-long v2, v2, v0

    if-eqz v2, :cond_8

    .line 174
    monitor-exit p0

    return-void

    .line 165
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized removeItems(Ljava/util/function/Predicate;Ljava/lang/Class;)V
    .registers 6
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

    monitor-enter p0

    .line 153
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_2d

    .line 154
    iget-object v1, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    .line 155
    invoke-virtual {p2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 156
    invoke-virtual {p2, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    .line 157
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 159
    iget-object v1, p0, Lcom/android/server/wm/PersisterQueue;->mWriteQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2f

    .line 153
    :cond_2a
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 163
    :cond_2d
    monitor-exit p0

    return-void

    .line 152
    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method removeListener(Lcom/android/server/wm/PersisterQueue$Listener;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method declared-synchronized startPersisting()V
    .registers 2

    monitor-enter p0

    .line 90
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    invoke-virtual {v0}, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_e

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    invoke-virtual {v0}, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;->start()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 93
    :cond_e
    monitor-exit p0

    return-void

    .line 89
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

    .line 98
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    invoke-virtual {v0}, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_9

    .line 99
    return-void

    .line 102
    :cond_9
    monitor-enter p0

    .line 103
    :try_start_a
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    invoke-virtual {v0}, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;->interrupt()V

    .line 104
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_16

    .line 105
    iget-object v0, p0, Lcom/android/server/wm/PersisterQueue;->mLazyTaskWriterThread:Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;

    invoke-virtual {v0}, Lcom/android/server/wm/PersisterQueue$LazyTaskWriterThread;->join()V

    .line 106
    return-void

    .line 104
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/server/wm/PersisterQueue$WriteQueueItem;",
            ">(TT;Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 138
    :try_start_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/wm/-$$Lambda$pAuPvwUqsKCejIrAPrx0ARZSqeY;

    invoke-direct {v0, p1}, Lcom/android/server/wm/-$$Lambda$pAuPvwUqsKCejIrAPrx0ARZSqeY;-><init>(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/PersisterQueue;->findLastItem(Ljava/util/function/Predicate;Ljava/lang/Class;)Lcom/android/server/wm/PersisterQueue$WriteQueueItem;

    move-result-object v0

    .line 139
    if-nez v0, :cond_17

    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    goto :goto_1a

    .line 142
    :cond_17
    invoke-interface {v0, p1}, Lcom/android/server/wm/PersisterQueue$WriteQueueItem;->updateFrom(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)V

    .line 145
    :goto_1a
    invoke-virtual {p0}, Lcom/android/server/wm/PersisterQueue;->yieldIfQueueTooDeep()V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 146
    monitor-exit p0

    return-void

    .line 137
    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method yieldIfQueueTooDeep()V
    .registers 5

    .line 177
    nop

    .line 178
    monitor-enter p0

    .line 179
    :try_start_2
    iget-wide v0, p0, Lcom/android/server/wm/PersisterQueue;->mNextWriteTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    .line 180
    const/4 v0, 0x1

    goto :goto_d

    .line 179
    :cond_c
    const/4 v0, 0x0

    .line 182
    :goto_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_14

    .line 183
    if-eqz v0, :cond_13

    .line 184
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 186
    :cond_13
    return-void

    .line 182
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method
