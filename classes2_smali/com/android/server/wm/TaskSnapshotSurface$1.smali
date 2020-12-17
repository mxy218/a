.class Lcom/android/server/wm/TaskSnapshotSurface$1;
.super Landroid/os/Handler;
.source "TaskSnapshotSurface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskSnapshotSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2
    .param p1, "x0"  # Landroid/os/Looper;

    .line 441
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"  # Landroid/os/Message;

    .line 445
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    goto :goto_20

    .line 448
    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/TaskSnapshotSurface;

    .line 449
    .local v0, "surface":Lcom/android/server/wm/TaskSnapshotSurface;
    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotSurface;->access$000(Lcom/android/server/wm/TaskSnapshotSurface;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 450
    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotSurface;->access$100(Lcom/android/server/wm/TaskSnapshotSurface;)Z

    move-result v2

    .line 451
    .local v2, "hasDrawn":Z
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 452
    if-eqz v2, :cond_20

    .line 453
    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotSurface;->access$200(Lcom/android/server/wm/TaskSnapshotSurface;)V

    .line 457
    .end local v0  # "surface":Lcom/android/server/wm/TaskSnapshotSurface;
    .end local v2  # "hasDrawn":Z
    :cond_20
    :goto_20
    return-void

    .line 451
    .restart local v0  # "surface":Lcom/android/server/wm/TaskSnapshotSurface;
    :catchall_21
    move-exception v2

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method
