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

    .line 440
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 444
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    goto :goto_20

    .line 447
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/TaskSnapshotSurface;

    .line 448
    invoke-static {p1}, Lcom/android/server/wm/TaskSnapshotSurface;->access$000(Lcom/android/server/wm/TaskSnapshotSurface;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 449
    invoke-static {p1}, Lcom/android/server/wm/TaskSnapshotSurface;->access$100(Lcom/android/server/wm/TaskSnapshotSurface;)Z

    move-result v1

    .line 450
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 451
    if-eqz v1, :cond_20

    .line 452
    invoke-static {p1}, Lcom/android/server/wm/TaskSnapshotSurface;->access$200(Lcom/android/server/wm/TaskSnapshotSurface;)V

    .line 456
    :cond_20
    :goto_20
    return-void

    .line 450
    :catchall_21
    move-exception p1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method
