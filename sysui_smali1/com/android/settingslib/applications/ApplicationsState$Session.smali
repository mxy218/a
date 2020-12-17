.class public Lcom/android/settingslib/applications/ApplicationsState$Session;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Session"
.end annotation


# instance fields
.field final mCallbacks:Lcom/android/settingslib/applications/ApplicationsState$Callbacks;

.field private mFlags:I

.field private final mHasLifecycle:Z

.field mLastAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mRebuildAsync:Z

.field mRebuildComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mRebuildFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field mRebuildForeground:Z

.field mRebuildRequested:Z

.field mRebuildResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mRebuildSync:Ljava/lang/Object;

.field mResumed:Z

.field final synthetic this$0:Lcom/android/settingslib/applications/ApplicationsState;


# direct methods
.method static synthetic access$300(Lcom/android/settingslib/applications/ApplicationsState$Session;)I
    .registers 1

    .line 774
    iget p0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mFlags:I

    return p0
.end method


# virtual methods
.method handleRebuildList()V
    .registers 8

    .line 876
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v0

    .line 877
    :try_start_3
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildRequested:Z

    if-nez v1, :cond_9

    .line 878
    monitor-exit v0

    return-void

    .line 881
    :cond_9
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 882
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    const/4 v3, 0x0

    .line 883
    iput-boolean v3, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildRequested:Z

    const/4 v4, 0x0

    .line 884
    iput-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 885
    iput-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    .line 886
    iget-boolean v4, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildForeground:Z

    if-eqz v4, :cond_1f

    const/4 v4, -0x2

    .line 887
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 888
    iput-boolean v3, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildForeground:Z

    .line 890
    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_b8

    if-eqz v1, :cond_29

    .line 893
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-interface {v1, v0}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->init(Landroid/content/Context;)V

    .line 897
    :cond_29
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v3

    .line 898
    :try_start_2e
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 899
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_b5

    .line 901
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 905
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_41
    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v4, :cond_41

    if-eqz v1, :cond_57

    .line 906
    invoke-interface {v1, v4}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 907
    :cond_57
    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v5

    if-eqz v2, :cond_65

    .line 913
    :try_start_5e
    iget-object v6, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    .line 918
    :cond_65
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 922
    monitor-exit v5

    goto :goto_41

    :catchall_6a
    move-exception p0

    monitor-exit v5
    :try_end_6c
    .catchall {:try_start_5e .. :try_end_6c} :catchall_6a

    throw p0

    :cond_6d
    if-eqz v2, :cond_7c

    .line 927
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 930
    :try_start_74
    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 931
    monitor-exit v0

    goto :goto_7c

    :catchall_79
    move-exception p0

    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_79

    throw p0

    .line 934
    :cond_7c
    :goto_7c
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v0

    .line 935
    :try_start_7f
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildRequested:Z

    if-nez v1, :cond_ab

    .line 936
    iput-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mLastAppList:Ljava/util/ArrayList;

    .line 937
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildAsync:Z

    if-nez v1, :cond_91

    .line 938
    iput-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    .line 939
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_ab

    .line 941
    :cond_91
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ab

    .line 942
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 944
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 948
    :cond_ab
    :goto_ab
    monitor-exit v0
    :try_end_ac
    .catchall {:try_start_7f .. :try_end_ac} :catchall_b2

    const/16 p0, 0xa

    .line 950
    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V

    return-void

    :catchall_b2
    move-exception p0

    .line 948
    :try_start_b3
    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    throw p0

    :catchall_b5
    move-exception p0

    .line 899
    :try_start_b6
    monitor-exit v3
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw p0

    :catchall_b8
    move-exception p0

    .line 890
    :try_start_b9
    monitor-exit v0
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    throw p0
.end method

.method public onDestroy()V
    .registers 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 955
    iget-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mHasLifecycle:Z

    if-nez v0, :cond_7

    .line 957
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onPause()V

    .line 959
    :cond_7
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 960
    :try_start_c
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 961
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_15

    throw p0
.end method

.method public onPause()V
    .registers 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 829
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 830
    :try_start_5
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v1, :cond_1d

    const/4 v1, 0x0

    .line 831
    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mResumed:Z

    .line 832
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/settingslib/applications/ApplicationsState;->mSessionsChanged:Z

    .line 833
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 834
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->doPauseIfNeededLocked()V

    .line 837
    :cond_1d
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public onResume()V
    .registers 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 815
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 816
    :try_start_5
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mResumed:Z

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    .line 817
    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->mResumed:Z

    .line 818
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iput-boolean v1, v2, Lcom/android/settingslib/applications/ApplicationsState;->mSessionsChanged:Z

    .line 819
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v1}, Lcom/android/settingslib/applications/ApplicationsState;->doPauseLocked()V

    .line 820
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$Session;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->doResumeIfNeededLocked()V

    .line 822
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1c

    throw p0
.end method
