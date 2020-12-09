.class final Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
.super Landroid/view/BatchedInputEventReceiver;
.source "TaskPositioner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskPositioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WindowPositionerEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/TaskPositioner;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskPositioner;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V
    .registers 5

    .line 132
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    .line 133
    invoke-direct {p0, p2, p3, p4}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    .line 134
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 11

    .line 138
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_124

    .line 139
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-nez v0, :cond_e

    goto/16 :goto_124

    .line 142
    :cond_e
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 143
    const/4 v2, 0x0

    .line 146
    :try_start_12
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-boolean v3, v3, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_113
    .catchall {:try_start_12 .. :try_end_16} :catchall_111

    const/4 v4, 0x1

    if-eqz v3, :cond_1e

    .line 150
    nop

    .line 222
    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 151
    return-void

    .line 154
    :cond_1e
    :try_start_1e
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 155
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    .line 157
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v6, 0x3

    if-eqz v0, :cond_9f

    if-eq v0, v4, :cond_9a

    if-eq v0, v1, :cond_39

    if-eq v0, v6, :cond_34

    goto :goto_a0

    .line 195
    :cond_34
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iput-boolean v4, v0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    goto :goto_a0

    .line 168
    :cond_39
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$000(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_42} :catch_113
    .catchall {:try_start_1e .. :try_end_42} :catchall_111

    :try_start_42
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 169
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v7, v3, v5}, Lcom/android/server/wm/TaskPositioner;->access$100(Lcom/android/server/wm/TaskPositioner;FF)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 170
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-object v1, v1, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->access$200(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 171
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_42 .. :try_end_5d} :catchall_94

    :try_start_5d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 172
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$200(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v1}, Lcom/android/server/wm/TaskPositioner;->access$300(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a0

    .line 173
    const-string v0, "wm.TaskPositioner.resizeTask"

    const-wide/16 v7, 0x20

    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_79} :catch_113
    .catchall {:try_start_5d .. :try_end_79} :catchall_111

    .line 176
    :try_start_79
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$400(Lcom/android/server/wm/TaskPositioner;)Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-object v1, v1, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    .line 177
    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->access$300(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v3

    .line 176
    invoke-interface {v0, v1, v3, v4}, Landroid/app/IActivityTaskManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_8e} :catch_8f
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_8e} :catch_113
    .catchall {:try_start_79 .. :try_end_8e} :catchall_111

    .line 179
    goto :goto_90

    .line 178
    :catch_8f
    move-exception v0

    .line 180
    :goto_90
    :try_start_90
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_93} :catch_113
    .catchall {:try_start_90 .. :try_end_93} :catchall_111

    goto :goto_a0

    .line 171
    :catchall_94
    move-exception v1

    :try_start_95
    monitor-exit v0
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    :try_start_96
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 188
    :cond_9a
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iput-boolean v4, v0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 189
    goto :goto_a0

    .line 162
    :cond_9f
    nop

    .line 199
    :cond_a0
    :goto_a0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-boolean v0, v0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    if-eqz v0, :cond_10c

    .line 200
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$500(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v0

    .line 201
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v1}, Lcom/android/server/wm/TaskPositioner;->access$000(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_b5} :catch_113
    .catchall {:try_start_96 .. :try_end_b5} :catchall_111

    :try_start_b5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 202
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->access$600(Lcom/android/server/wm/TaskPositioner;)V

    .line 203
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-object v3, v3, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->access$200(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 204
    monitor-exit v1
    :try_end_cb
    .catchall {:try_start_b5 .. :try_end_cb} :catchall_106

    :try_start_cb
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_ce} :catch_113
    .catchall {:try_start_cb .. :try_end_ce} :catchall_111

    .line 206
    if-eqz v0, :cond_f9

    :try_start_d0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$200(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v1}, Lcom/android/server/wm/TaskPositioner;->access$300(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f9

    .line 209
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$400(Lcom/android/server/wm/TaskPositioner;)Landroid/app/IActivityTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-object v1, v1, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    .line 210
    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->access$300(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v3

    .line 209
    invoke-interface {v0, v1, v3, v6}, Landroid/app/IActivityTaskManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_f7
    .catch Landroid/os/RemoteException; {:try_start_d0 .. :try_end_f7} :catch_f8
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_f7} :catch_113
    .catchall {:try_start_d0 .. :try_end_f7} :catchall_111

    goto :goto_f9

    .line 212
    :catch_f8
    move-exception v0

    :cond_f9
    :goto_f9
    nop

    .line 216
    :try_start_fa
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->access$000(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskPositioningController;->finishTaskPositioning()V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_105} :catch_113
    .catchall {:try_start_fa .. :try_end_105} :catchall_111

    goto :goto_10c

    .line 204
    :catchall_106
    move-exception v0

    :try_start_107
    monitor-exit v1
    :try_end_108
    .catchall {:try_start_107 .. :try_end_108} :catchall_106

    :try_start_108
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_10c} :catch_113
    .catchall {:try_start_108 .. :try_end_10c} :catchall_111

    .line 218
    :cond_10c
    :goto_10c
    nop

    .line 222
    invoke-virtual {p0, p1, v4}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_11e

    :catchall_111
    move-exception v0

    goto :goto_120

    .line 219
    :catch_113
    move-exception v0

    .line 220
    :try_start_114
    const-string v1, "WindowManager"

    const-string v3, "Exception caught by drag handleMotion"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11b
    .catchall {:try_start_114 .. :try_end_11b} :catchall_111

    .line 222
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 223
    :goto_11e
    nop

    .line 224
    return-void

    .line 222
    :goto_120
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v0

    .line 140
    :cond_124
    :goto_124
    return-void
.end method
