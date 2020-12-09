.class public Lcom/android/server/SystemServerInitThreadPool;
.super Ljava/lang/Object;
.source "SystemServerInitThreadPool.java"


# static fields
.field private static final IS_DEBUGGABLE:Z

.field private static final SHUTDOWN_TIMEOUT_MILLIS:I = 0x4e20

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/server/SystemServerInitThreadPool;


# instance fields
.field private mPendingTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    const-class v0, Lcom/android/server/SystemServerInitThreadPool;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/SystemServerInitThreadPool;->TAG:Ljava/lang/String;

    .line 44
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/SystemServerInitThreadPool;->IS_DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    nop

    .line 49
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 48
    const-string/jumbo v1, "system-server-init-thread"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/ConcurrentUtils;->newFixedThreadPool(ILjava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SystemServerInitThreadPool;->mService:Ljava/util/concurrent/ExecutorService;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServerInitThreadPool;->mPendingTasks:Ljava/util/List;

    return-void
.end method

.method private static dumpStackTraces()V
    .registers 3

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    nop

    .line 125
    invoke-static {}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v1

    .line 124
    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v1}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;)Ljava/io/File;

    .line 126
    return-void
.end method

.method public static declared-synchronized get()Lcom/android/server/SystemServerInitThreadPool;
    .registers 4

    const-class v0, Lcom/android/server/SystemServerInitThreadPool;

    monitor-enter v0

    .line 55
    :try_start_3
    sget-object v1, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    if-nez v1, :cond_e

    .line 56
    new-instance v1, Lcom/android/server/SystemServerInitThreadPool;

    invoke-direct {v1}, Lcom/android/server/SystemServerInitThreadPool;-><init>()V

    sput-object v1, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    .line 58
    :cond_e
    sget-object v1, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    iget-object v1, v1, Lcom/android/server/SystemServerInitThreadPool;->mService:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot get "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/SystemServerInitThreadPool;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - it has been shut down"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 60
    sget-object v1, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_36

    monitor-exit v0

    return-object v1

    .line 54
    :catchall_36
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized shutdown()V
    .registers 6

    const-class v0, Lcom/android/server/SystemServerInitThreadPool;

    monitor-enter v0

    .line 87
    :try_start_3
    sget-object v1, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    if-eqz v1, :cond_99

    sget-object v1, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    iget-object v1, v1, Lcom/android/server/SystemServerInitThreadPool;->mService:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_99

    .line 88
    sget-object v1, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    iget-object v1, v1, Lcom/android/server/SystemServerInitThreadPool;->mService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_9b

    .line 91
    :try_start_14
    sget-object v1, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    iget-object v1, v1, Lcom/android/server/SystemServerInitThreadPool;->mService:Ljava/util/concurrent/ExecutorService;

    const-wide/16 v2, 0x4e20

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_20} :catch_75
    .catchall {:try_start_14 .. :try_end_20} :catchall_9b

    .line 97
    nop

    .line 98
    if-nez v1, :cond_26

    .line 101
    :try_start_23
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->dumpStackTraces()V

    .line 103
    :cond_26
    sget-object v2, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    iget-object v2, v2, Lcom/android/server/SystemServerInitThreadPool;->mService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    move-result-object v2

    .line 104
    if-eqz v1, :cond_41

    .line 112
    sget-object v1, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/SystemServerInitThreadPool;->mService:Ljava/util/concurrent/ExecutorService;

    .line 113
    sget-object v1, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    iput-object v2, v1, Lcom/android/server/SystemServerInitThreadPool;->mPendingTasks:Ljava/util/List;

    .line 114
    sget-object v1, Lcom/android/server/SystemServerInitThreadPool;->TAG:Ljava/lang/String;

    const-string v2, "Shutdown successful"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99

    .line 105
    :cond_41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    sget-object v3, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    iget-object v3, v3, Lcom/android/server/SystemServerInitThreadPool;->mPendingTasks:Ljava/util/List;

    monitor-enter v3
    :try_end_4b
    .catchall {:try_start_23 .. :try_end_4b} :catchall_9b

    .line 107
    :try_start_4b
    sget-object v4, Lcom/android/server/SystemServerInitThreadPool;->sInstance:Lcom/android/server/SystemServerInitThreadPool;

    iget-object v4, v4, Lcom/android/server/SystemServerInitThreadPool;->mPendingTasks:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 108
    monitor-exit v3
    :try_end_53
    .catchall {:try_start_4b .. :try_end_53} :catchall_72

    .line 109
    :try_start_53
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot shutdown. Unstarted tasks "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " Unfinished tasks "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_72
    .catchall {:try_start_53 .. :try_end_72} :catchall_9b

    .line 108
    :catchall_72
    move-exception v1

    :try_start_73
    monitor-exit v3
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    :try_start_74
    throw v1

    .line 93
    :catch_75
    move-exception v1

    .line 94
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 95
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->dumpStackTraces()V

    .line 96
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/SystemServerInitThreadPool;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " init interrupted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_99
    .catchall {:try_start_74 .. :try_end_99} :catchall_9b

    .line 116
    :cond_99
    :goto_99
    monitor-exit v0

    return-void

    .line 86
    :catchall_9b
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public synthetic lambda$submit$0$SystemServerInitThreadPool(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 6

    .line 68
    sget-boolean v0, Lcom/android/server/SystemServerInitThreadPool;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1a

    .line 69
    sget-object v0, Lcom/android/server/SystemServerInitThreadPool;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Started executing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_1a
    :try_start_1a
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1d} :catch_45

    .line 76
    nop

    .line 77
    iget-object p2, p0, Lcom/android/server/SystemServerInitThreadPool;->mPendingTasks:Ljava/util/List;

    monitor-enter p2

    .line 78
    :try_start_21
    iget-object v0, p0, Lcom/android/server/SystemServerInitThreadPool;->mPendingTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 79
    monitor-exit p2
    :try_end_27
    .catchall {:try_start_21 .. :try_end_27} :catchall_42

    .line 80
    sget-boolean p2, Lcom/android/server/SystemServerInitThreadPool;->IS_DEBUGGABLE:Z

    if-eqz p2, :cond_41

    .line 81
    sget-object p2, Lcom/android/server/SystemServerInitThreadPool;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished executing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_41
    return-void

    .line 79
    :catchall_42
    move-exception p1

    :try_start_43
    monitor-exit p2
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p1

    .line 73
    :catch_45
    move-exception p2

    .line 74
    sget-object v0, Lcom/android/server/SystemServerInitThreadPool;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    throw p2
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/android/server/SystemServerInitThreadPool;->mPendingTasks:Ljava/util/List;

    monitor-enter v0

    .line 65
    :try_start_3
    iget-object v1, p0, Lcom/android/server/SystemServerInitThreadPool;->mPendingTasks:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_15

    .line 67
    iget-object v0, p0, Lcom/android/server/SystemServerInitThreadPool;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/server/-$$Lambda$SystemServerInitThreadPool$jLyL3DFmbjsFesU5SGktD3NoWSc;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/-$$Lambda$SystemServerInitThreadPool$jLyL3DFmbjsFesU5SGktD3NoWSc;-><init>(Lcom/android/server/SystemServerInitThreadPool;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1

    .line 66
    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p1
.end method
