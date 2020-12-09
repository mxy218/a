.class Lcom/android/server/wm/InputMonitor$1;
.super Ljava/lang/Object;
.source "InputMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InputMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/InputMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/wm/InputMonitor;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor$1;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$1;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v0}, Lcom/android/server/wm/InputMonitor;->access$000(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 118
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$1;->this$0:Lcom/android/server/wm/InputMonitor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wm/InputMonitor;->access$102(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 119
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$1;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1, v2}, Lcom/android/server/wm/InputMonitor;->access$202(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 121
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$1;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$300(Lcom/android/server/wm/InputMonitor;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 122
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_7b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 132
    :cond_24
    :try_start_24
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$1;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$000(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v1}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v1

    .line 133
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$1;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 134
    invoke-static {v2}, Lcom/android/server/wm/InputMonitor;->access$000(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskPositioningController;->isPositioningLocked()Z

    move-result v2

    .line 135
    if-eqz v2, :cond_56

    .line 139
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$1;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v2}, Lcom/android/server/wm/InputMonitor;->access$000(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$1;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v3}, Lcom/android/server/wm/InputMonitor;->access$400(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/InputMonitor$1;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 140
    invoke-static {v4}, Lcom/android/server/wm/InputMonitor;->access$500(Lcom/android/server/wm/InputMonitor;)I

    move-result v4

    .line 139
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/TaskPositioningController;->showInputSurface(Landroid/view/SurfaceControl$Transaction;I)V

    goto :goto_6d

    .line 142
    :cond_56
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$1;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v2}, Lcom/android/server/wm/InputMonitor;->access$000(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$1;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v3}, Lcom/android/server/wm/InputMonitor;->access$400(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/InputMonitor$1;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 143
    invoke-static {v4}, Lcom/android/server/wm/InputMonitor;->access$500(Lcom/android/server/wm/InputMonitor;)I

    move-result v4

    .line 142
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/TaskPositioningController;->hideInputSurface(Landroid/view/SurfaceControl$Transaction;I)V

    .line 147
    :goto_6d
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$1;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v2}, Lcom/android/server/wm/InputMonitor;->access$600(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->access$700(Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;Z)V

    .line 148
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_24 .. :try_end_77} :catchall_7b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 149
    return-void

    .line 148
    :catchall_7b
    move-exception v1

    :try_start_7c
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
