.class public Lcom/android/server/wm/ActivityServiceConnectionsHolder;
.super Ljava/lang/Object;
.source "ActivityServiceConnectionsHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/server/wm/ActivityRecord;

.field private mConnections:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "service"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "activity"  # Lcom/android/server/wm/ActivityRecord;

    .line 49
    .local p0, "this":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 51
    iput-object p2, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    .line 52
    return-void
.end method


# virtual methods
.method public addConnection(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<TT;>;"
    .local p1, "c":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 57
    iget-object v1, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mConnections:Ljava/util/HashSet;

    if-nez v1, :cond_13

    .line 58
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mConnections:Ljava/util/HashSet;

    .line 60
    :cond_13
    iget-object v1, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mConnections:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 62
    return-void

    .line 61
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method disconnectActivityFromServices()V
    .registers 4

    .line 101
    .local p0, "this":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<TT;>;"
    iget-object v0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mConnections:Ljava/util/HashSet;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1d

    .line 108
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mConnections:Ljava/util/HashSet;

    .line 109
    .local v0, "disc":Ljava/lang/Object;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mConnections:Ljava/util/HashSet;

    .line 110
    iget-object v1, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$ActivityServiceConnectionsHolder$3WnpJbbvyxcEr6D6eCp22ebnxPk;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/-$$Lambda$ActivityServiceConnectionsHolder$3WnpJbbvyxcEr6D6eCp22ebnxPk;-><init>(Lcom/android/server/wm/ActivityServiceConnectionsHolder;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 111
    return-void

    .line 102
    .end local v0  # "disc":Ljava/lang/Object;
    :cond_1d
    :goto_1d
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 114
    .local p0, "this":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<TT;>;"
    iget-object v0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 117
    return-void

    .line 116
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public forEachConnection(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 87
    .local p0, "this":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    iget-object v0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 88
    iget-object v1, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mConnections:Ljava/util/HashSet;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mConnections:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_2e

    .line 91
    :cond_15
    iget-object v1, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mConnections:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 92
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 93
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 94
    .local v2, "c":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 95
    .end local v2  # "c":Ljava/lang/Object;, "TT;"
    goto :goto_1b

    .line 96
    .end local v1  # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 97
    return-void

    .line 89
    :cond_2e
    :goto_2e
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 96
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getActivityPid()I
    .registers 3

    .line 81
    .local p0, "this":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<TT;>;"
    iget-object v0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 82
    iget-object v1, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v1

    goto :goto_1a

    :cond_19
    const/4 v1, -0x1

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 83
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isActivityVisible()Z
    .registers 5

    .line 75
    .local p0, "this":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<TT;>;"
    iget-object v0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 76
    iget-object v1, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mActivity:Lcom/android/server/wm/ActivityRecord;

    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v1, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v1, 0x1

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 77
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$disconnectActivityFromServices$0$ActivityServiceConnectionsHolder(Ljava/lang/Object;)V
    .registers 3
    .param p1, "disc"  # Ljava/lang/Object;

    .line 110
    .local p0, "this":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<TT;>;"
    iget-object v0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p0, p1}, Landroid/app/ActivityManagerInternal;->disconnectActivityFromServices(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public removeConnection(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lcom/android/server/wm/ActivityServiceConnectionsHolder;, "Lcom/android/server/wm/ActivityServiceConnectionsHolder<TT;>;"
    .local p1, "c":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 67
    iget-object v1, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mConnections:Ljava/util/HashSet;

    if-nez v1, :cond_11

    .line 68
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 70
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->mConnections:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 71
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 72
    return-void

    .line 71
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
