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
    .param p2, "inputChannel"  # Landroid/view/InputChannel;
    .param p3, "looper"  # Landroid/os/Looper;
    .param p4, "choreographer"  # Landroid/view/Choreographer;

    .line 131
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    .line 132
    invoke-direct {p0, p2, p3, p4}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    .line 133
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 13
    .param p1, "event"  # Landroid/view/InputEvent;

    .line 137
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_1bf

    .line 138
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-nez v0, :cond_e

    goto/16 :goto_1bf

    .line 141
    :cond_e
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 142
    .local v0, "motionEvent":Landroid/view/MotionEvent;
    const/4 v2, 0x0

    .line 145
    .local v2, "handled":Z
    :try_start_12
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-boolean v3, v3, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_16} :catch_1ad
    .catchall {:try_start_12 .. :try_end_16} :catchall_1ab

    if-eqz v3, :cond_1d

    .line 149
    const/4 v1, 0x1

    .line 221
    .end local v2  # "handled":Z
    .local v1, "handled":Z
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 150
    return-void

    .line 153
    .end local v1  # "handled":Z
    .restart local v2  # "handled":Z
    :cond_1d
    :try_start_1d
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 154
    .local v3, "newX":F
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 156
    .local v4, "newY":F
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x3

    if-eqz v5, :cond_116

    const/4 v7, 0x1

    if-eq v5, v7, :cond_ea

    if-eq v5, v1, :cond_62

    if-eq v5, v6, :cond_35

    goto/16 :goto_13d

    .line 191
    :cond_35
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v1, :cond_5c

    .line 192
    const-string v1, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_CANCEL @ {"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "}"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_5c
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iput-boolean v7, v1, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    goto/16 :goto_13d

    .line 164
    :cond_62
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v1, :cond_89

    .line 165
    const-string v1, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_MOVE @ {"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "}"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_89
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v1}, Lcom/android/server/wm/TaskPositioner;->access$000(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_92} :catch_1ad
    .catchall {:try_start_1d .. :try_end_92} :catchall_1ab

    :try_start_92
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 168
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v8, v3, v4}, Lcom/android/server/wm/TaskPositioner;->access$100(Lcom/android/server/wm/TaskPositioner;FF)Z

    move-result v8

    iput-boolean v8, v5, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 169
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-object v5, v5, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v8}, Lcom/android/server/wm/TaskPositioner;->access$200(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 170
    monitor-exit v1
    :try_end_ad
    .catchall {:try_start_92 .. :try_end_ad} :catchall_e4

    :try_start_ad
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 171
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v1}, Lcom/android/server/wm/TaskPositioner;->access$200(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->access$300(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13d

    .line 172
    const-string v1, "wm.TaskPositioner.resizeTask"

    const-wide/16 v8, 0x20

    invoke-static {v8, v9, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_c9} :catch_1ad
    .catchall {:try_start_ad .. :try_end_c9} :catchall_1ab

    .line 175
    :try_start_c9
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v1}, Lcom/android/server/wm/TaskPositioner;->access$400(Lcom/android/server/wm/TaskPositioner;)Landroid/app/IActivityTaskManager;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-object v5, v5, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v5, v5, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    .line 176
    invoke-static {v10}, Lcom/android/server/wm/TaskPositioner;->access$300(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v10

    .line 175
    invoke-interface {v1, v5, v10, v7}, Landroid/app/IActivityTaskManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_de
    .catch Landroid/os/RemoteException; {:try_start_c9 .. :try_end_de} :catch_df
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_de} :catch_1ad
    .catchall {:try_start_c9 .. :try_end_de} :catchall_1ab

    .line 178
    goto :goto_e0

    .line 177
    :catch_df
    move-exception v1

    .line 179
    :goto_e0
    :try_start_e0
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_e3} :catch_1ad
    .catchall {:try_start_e0 .. :try_end_e3} :catchall_1ab

    goto :goto_13d

    .line 170
    :catchall_e4
    move-exception v5

    :try_start_e5
    monitor-exit v1
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_e4

    :try_start_e6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "motionEvent":Landroid/view/MotionEvent;
    .end local v2  # "handled":Z
    .end local p0  # "this":Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
    .end local p1  # "event":Landroid/view/InputEvent;
    throw v5

    .line 184
    .restart local v0  # "motionEvent":Landroid/view/MotionEvent;
    .restart local v2  # "handled":Z
    .restart local p0  # "this":Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
    .restart local p1  # "event":Landroid/view/InputEvent;
    :cond_ea
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v1, :cond_111

    .line 185
    const-string v1, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_UP @ {"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "}"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_111
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iput-boolean v7, v1, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 188
    goto :goto_13d

    .line 158
    :cond_116
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v1, :cond_13d

    .line 159
    const-string v1, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_DOWN @ {"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, "}"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_13d
    :goto_13d
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-boolean v1, v1, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    if-eqz v1, :cond_1a9

    .line 199
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v1}, Lcom/android/server/wm/TaskPositioner;->access$500(Lcom/android/server/wm/TaskPositioner;)Z

    move-result v1

    .line 200
    .local v1, "wasResizing":Z
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->access$000(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_152} :catch_1ad
    .catchall {:try_start_e6 .. :try_end_152} :catchall_1ab

    :try_start_152
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 201
    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v7}, Lcom/android/server/wm/TaskPositioner;->access$600(Lcom/android/server/wm/TaskPositioner;)V

    .line 202
    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-object v7, v7, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v8}, Lcom/android/server/wm/TaskPositioner;->access$200(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 203
    monitor-exit v5
    :try_end_168
    .catchall {:try_start_152 .. :try_end_168} :catchall_1a3

    :try_start_168
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_168 .. :try_end_16b} :catch_1ad
    .catchall {:try_start_168 .. :try_end_16b} :catchall_1ab

    .line 205
    if-eqz v1, :cond_196

    :try_start_16d
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->access$200(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v7}, Lcom/android/server/wm/TaskPositioner;->access$300(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_196

    .line 208
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->access$400(Lcom/android/server/wm/TaskPositioner;)Landroid/app/IActivityTaskManager;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    iget-object v7, v7, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v7, v7, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v8, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    .line 209
    invoke-static {v8}, Lcom/android/server/wm/TaskPositioner;->access$300(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;

    move-result-object v8

    .line 208
    invoke-interface {v5, v7, v8, v6}, Landroid/app/IActivityTaskManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_194
    .catch Landroid/os/RemoteException; {:try_start_16d .. :try_end_194} :catch_195
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_194} :catch_1ad
    .catchall {:try_start_16d .. :try_end_194} :catchall_1ab

    goto :goto_196

    .line 211
    :catch_195
    move-exception v5

    :cond_196
    :goto_196
    nop

    .line 215
    :try_start_197
    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->this$0:Lcom/android/server/wm/TaskPositioner;

    invoke-static {v5}, Lcom/android/server/wm/TaskPositioner;->access$000(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {v5}, Lcom/android/server/wm/TaskPositioningController;->finishTaskPositioning()V
    :try_end_1a2
    .catch Ljava/lang/Exception; {:try_start_197 .. :try_end_1a2} :catch_1ad
    .catchall {:try_start_197 .. :try_end_1a2} :catchall_1ab

    goto :goto_1a9

    .line 203
    :catchall_1a3
    move-exception v6

    :try_start_1a4
    monitor-exit v5
    :try_end_1a5
    .catchall {:try_start_1a4 .. :try_end_1a5} :catchall_1a3

    :try_start_1a5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "motionEvent":Landroid/view/MotionEvent;
    .end local v2  # "handled":Z
    .end local p0  # "this":Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
    .end local p1  # "event":Landroid/view/InputEvent;
    throw v6
    :try_end_1a9
    .catch Ljava/lang/Exception; {:try_start_1a5 .. :try_end_1a9} :catch_1ad
    .catchall {:try_start_1a5 .. :try_end_1a9} :catchall_1ab

    .line 217
    .end local v1  # "wasResizing":Z
    .restart local v0  # "motionEvent":Landroid/view/MotionEvent;
    .restart local v2  # "handled":Z
    .restart local p0  # "this":Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;
    .restart local p1  # "event":Landroid/view/InputEvent;
    :cond_1a9
    :goto_1a9
    const/4 v2, 0x1

    .line 221
    .end local v3  # "newX":F
    .end local v4  # "newY":F
    goto :goto_1b6

    :catchall_1ab
    move-exception v1

    goto :goto_1bb

    .line 218
    :catch_1ad
    move-exception v1

    .line 219
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1ae
    const-string v3, "WindowManager"

    const-string v4, "Exception caught by drag handleMotion"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1b5
    .catchall {:try_start_1ae .. :try_end_1b5} :catchall_1ab

    .line 221
    nop

    .end local v1  # "e":Ljava/lang/Exception;
    :goto_1b6
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 222
    nop

    .line 223
    return-void

    .line 221
    :goto_1bb
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v1

    .line 139
    .end local v0  # "motionEvent":Landroid/view/MotionEvent;
    .end local v2  # "handled":Z
    :cond_1bf
    :goto_1bf
    return-void
.end method
