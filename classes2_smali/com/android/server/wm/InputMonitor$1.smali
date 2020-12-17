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
    .param p1, "this$0"  # Lcom/android/server/wm/InputMonitor;

    .line 115
    iput-object p1, p0, Lcom/android/server/wm/InputMonitor$1;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 118
    iget-object v0, p0, Lcom/android/server/wm/InputMonitor$1;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v0}, Lcom/android/server/wm/InputMonitor;->access$000(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 119
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$1;->this$0:Lcom/android/server/wm/InputMonitor;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wm/InputMonitor;->access$102(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 120
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$1;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1, v2}, Lcom/android/server/wm/InputMonitor;->access$202(Lcom/android/server/wm/InputMonitor;Z)Z

    .line 122
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$1;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$300(Lcom/android/server/wm/InputMonitor;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 123
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_86

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 133
    :cond_24
    :try_start_24
    iget-object v1, p0, Lcom/android/server/wm/InputMonitor$1;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v1}, Lcom/android/server/wm/InputMonitor;->access$000(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v1}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v1

    .line 134
    .local v1, "inDrag":Z
    iget-object v2, p0, Lcom/android/server/wm/InputMonitor$1;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 135
    invoke-static {v2}, Lcom/android/server/wm/InputMonitor;->access$000(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskPositioningController;->isPositioningLocked()Z

    move-result v2

    .line 136
    .local v2, "inPositioning":Z
    if-eqz v2, :cond_61

    .line 137
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v3, :cond_49

    .line 138
    const-string v3, "WindowManager"

    const-string v4, "Inserting window handle for repositioning"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_49
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$1;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v3}, Lcom/android/server/wm/InputMonitor;->access$000(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    iget-object v4, p0, Lcom/android/server/wm/InputMonitor$1;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v4}, Lcom/android/server/wm/InputMonitor;->access$400(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/InputMonitor$1;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 141
    invoke-static {v5}, Lcom/android/server/wm/InputMonitor;->access$500(Lcom/android/server/wm/InputMonitor;)I

    move-result v5

    .line 140
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/TaskPositioningController;->showInputSurface(Landroid/view/SurfaceControl$Transaction;I)V

    goto :goto_78

    .line 143
    :cond_61
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$1;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v3}, Lcom/android/server/wm/InputMonitor;->access$000(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    iget-object v4, p0, Lcom/android/server/wm/InputMonitor$1;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v4}, Lcom/android/server/wm/InputMonitor;->access$400(Lcom/android/server/wm/InputMonitor;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/InputMonitor$1;->this$0:Lcom/android/server/wm/InputMonitor;

    .line 144
    invoke-static {v5}, Lcom/android/server/wm/InputMonitor;->access$500(Lcom/android/server/wm/InputMonitor;)I

    move-result v5

    .line 143
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/TaskPositioningController;->hideInputSurface(Landroid/view/SurfaceControl$Transaction;I)V

    .line 148
    :goto_78
    iget-object v3, p0, Lcom/android/server/wm/InputMonitor$1;->this$0:Lcom/android/server/wm/InputMonitor;

    invoke-static {v3}, Lcom/android/server/wm/InputMonitor;->access$600(Lcom/android/server/wm/InputMonitor;)Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;->access$700(Lcom/android/server/wm/InputMonitor$UpdateInputForAllWindowsConsumer;Z)V

    .line 149
    .end local v1  # "inDrag":Z
    .end local v2  # "inPositioning":Z
    monitor-exit v0
    :try_end_82
    .catchall {:try_start_24 .. :try_end_82} :catchall_86

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 150
    return-void

    .line 149
    :catchall_86
    move-exception v1

    :try_start_87
    monitor-exit v0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
