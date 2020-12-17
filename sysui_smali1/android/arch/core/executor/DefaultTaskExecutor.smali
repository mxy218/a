.class public Landroid/arch/core/executor/DefaultTaskExecutor;
.super Landroid/arch/core/executor/TaskExecutor;
.source "DefaultTaskExecutor.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mDiskIO:Ljava/util/concurrent/ExecutorService;

.field private final mLock:Ljava/lang/Object;

.field private volatile mMainHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/arch/core/executor/TaskExecutor;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/arch/core/executor/DefaultTaskExecutor;->mLock:Ljava/lang/Object;

    const/4 v0, 0x2

    .line 34
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroid/arch/core/executor/DefaultTaskExecutor;->mDiskIO:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public executeOnDiskIO(Ljava/lang/Runnable;)V
    .registers 2

    .line 41
    iget-object p0, p0, Landroid/arch/core/executor/DefaultTaskExecutor;->mDiskIO:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isMainThread()Z
    .registers 2

    .line 59
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p0, v0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public postToMainThread(Ljava/lang/Runnable;)V
    .registers 5

    .line 46
    iget-object v0, p0, Landroid/arch/core/executor/DefaultTaskExecutor;->mMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_1b

    .line 47
    iget-object v0, p0, Landroid/arch/core/executor/DefaultTaskExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_7
    iget-object v1, p0, Landroid/arch/core/executor/DefaultTaskExecutor;->mMainHandler:Landroid/os/Handler;

    if-nez v1, :cond_16

    .line 49
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/arch/core/executor/DefaultTaskExecutor;->mMainHandler:Landroid/os/Handler;

    .line 51
    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0

    .line 54
    :cond_1b
    :goto_1b
    iget-object p0, p0, Landroid/arch/core/executor/DefaultTaskExecutor;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
