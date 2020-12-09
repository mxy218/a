.class Lcom/android/server/wm/RecentTasks$1;
.super Ljava/lang/Object;
.source "RecentTasks.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RecentTasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/RecentTasks;


# direct methods
.method constructor <init>(Lcom/android/server/wm/RecentTasks;)V
    .registers 2

    .line 196
    iput-object p1, p0, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onPointerEvent$0$RecentTasks$1(IIILjava/lang/Object;)V
    .registers 6

    .line 207
    iget-object p4, p0, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    invoke-static {p4}, Lcom/android/server/wm/RecentTasks;->access$100(Lcom/android/server/wm/RecentTasks;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p4

    iget-object p4, p4, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p4

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 209
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    invoke-static {v0}, Lcom/android/server/wm/RecentTasks;->access$100(Lcom/android/server/wm/RecentTasks;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 210
    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 211
    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->pointWithinAppWindow(II)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 212
    iget-object p1, p0, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    invoke-static {p1}, Lcom/android/server/wm/RecentTasks;->access$100(Lcom/android/server/wm/RecentTasks;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    .line 213
    if-eqz p1, :cond_31

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object p1

    goto :goto_32

    :cond_31
    const/4 p1, 0x0

    .line 214
    :goto_32
    iget-object p2, p0, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/RecentTasks;->resetFreezeTaskListReordering(Lcom/android/server/wm/TaskRecord;)V

    .line 216
    :cond_37
    monitor-exit p4
    :try_end_38
    .catchall {:try_start_9 .. :try_end_38} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 217
    return-void

    .line 216
    :catchall_3c
    move-exception p1

    :try_start_3d
    monitor-exit p4
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 6

    .line 199
    iget-object v0, p0, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    invoke-static {v0}, Lcom/android/server/wm/RecentTasks;->access$000(Lcom/android/server/wm/RecentTasks;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_37

    .line 203
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v0

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 205
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 206
    iget-object v2, p0, Lcom/android/server/wm/RecentTasks$1;->this$0:Lcom/android/server/wm/RecentTasks;

    invoke-static {v2}, Lcom/android/server/wm/RecentTasks;->access$100(Lcom/android/server/wm/RecentTasks;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$RecentTasks$1$yqVuu6fkQgjlTTs6kgJbxqq3Hng;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/android/server/wm/-$$Lambda$RecentTasks$1$yqVuu6fkQgjlTTs6kgJbxqq3Hng;-><init>(Lcom/android/server/wm/RecentTasks$1;III)V

    const/4 p1, 0x0

    invoke-static {v3, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 217
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 206
    invoke-virtual {v2, p1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 218
    return-void

    .line 201
    :cond_37
    :goto_37
    return-void
.end method
