.class final Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;
.super Landroid/app/IStopUserCallback$Stub;
.source "ActivityManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StopUserCallback"
.end annotation


# instance fields
.field private mFinished:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1818
    invoke-direct {p0}, Landroid/app/IStopUserCallback$Stub;-><init>()V

    .line 1819
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;->mFinished:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized userStopAborted(I)V
    .registers 3
    .param p1, "userId"  # I

    monitor-enter p0

    .line 1837
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;->mFinished:Z

    .line 1838
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 1839
    monitor-exit p0

    return-void

    .line 1836
    .end local p0  # "this":Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;
    .end local p1  # "userId":I
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized userStopped(I)V
    .registers 3
    .param p1, "userId"  # I

    monitor-enter p0

    .line 1831
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;->mFinished:Z

    .line 1832
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 1833
    monitor-exit p0

    return-void

    .line 1830
    .end local p0  # "this":Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;
    .end local p1  # "userId":I
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized waitForFinish()V
    .registers 3

    monitor-enter p0

    .line 1823
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;->mFinished:Z

    if-nez v0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_8} :catch_e
    .catchall {:try_start_1 .. :try_end_8} :catchall_c

    goto :goto_1

    .line 1826
    .end local p0  # "this":Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;
    :cond_9
    nop

    .line 1827
    monitor-exit p0

    return-void

    .line 1822
    :catchall_c
    move-exception v0

    goto :goto_15

    .line 1824
    :catch_e
    move-exception v0

    .line 1825
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_f
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_c

    .line 1822
    .end local v0  # "e":Ljava/lang/InterruptedException;
    :goto_15
    monitor-exit p0

    throw v0
.end method
