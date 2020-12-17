.class Lcom/android/server/wm/TaskPositioningController;
.super Ljava/lang/Object;
.source "TaskPositioningController.java"


# instance fields
.field private final mActivityManager:Landroid/app/IActivityTaskManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mInputManager:Lcom/android/server/input/InputManagerService;

.field private mInputSurface:Landroid/view/SurfaceControl;

.field private mPositioningDisplay:Lcom/android/server/wm/DisplayContent;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mTaskPositioner:Lcom/android/server/wm/TaskPositioner;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "WindowManagerSerivce.mWindowMap"
        }
    .end annotation
.end field

.field private final mTmpClipRect:Landroid/graphics/Rect;

.field private mTransferTouchFromToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;Landroid/app/IActivityTaskManager;Landroid/os/Looper;)V
    .registers 6
    .param p1, "service"  # Lcom/android/server/wm/WindowManagerService;
    .param p2, "inputManager"  # Lcom/android/server/input/InputManagerService;
    .param p3, "activityManager"  # Landroid/app/IActivityTaskManager;
    .param p4, "looper"  # Landroid/os/Looper;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mTmpClipRect:Landroid/graphics/Rect;

    .line 66
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 67
    iput-object p2, p0, Lcom/android/server/wm/TaskPositioningController;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 68
    iput-object p3, p0, Lcom/android/server/wm/TaskPositioningController;->mActivityManager:Landroid/app/IActivityTaskManager;

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mHandler:Landroid/os/Handler;

    .line 70
    return-void
.end method

.method private cleanUpTaskPositioner()V
    .registers 3

    .line 212
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    .line 213
    .local v0, "positioner":Lcom/android/server/wm/TaskPositioner;
    if-nez v0, :cond_5

    .line 214
    return-void

    .line 219
    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    .line 220
    invoke-virtual {v0}, Lcom/android/server/wm/TaskPositioner;->unregister()V

    .line 221
    return-void
.end method

.method private startPositioningLocked(Lcom/android/server/wm/WindowState;ZZFF)Z
    .registers 15
    .param p1, "win"  # Lcom/android/server/wm/WindowState;
    .param p2, "resize"  # Z
    .param p3, "preserveOrientation"  # Z
    .param p4, "startX"  # F
    .param p5, "startY"  # F

    .line 154
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_3f

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPositioningLocked: win="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", resize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", preserveOrientation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", {"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_3f
    const/4 v0, 0x0

    if-eqz p1, :cond_b9

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v2

    if-nez v2, :cond_4a

    goto/16 :goto_b9

    .line 163
    :cond_4a
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-nez v2, :cond_68

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPositioningLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has no input channel,  probably being removed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return v0

    .line 169
    :cond_68
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 170
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v2, :cond_83

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startPositioningLocked: Invalid display content "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return v0

    .line 174
    :cond_83
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioningController;->mPositioningDisplay:Lcom/android/server/wm/DisplayContent;

    .line 176
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/TaskPositioner;->create(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/TaskPositioner;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    .line 182
    move-object v0, p1

    .line 183
    .local v0, "transferFocusFromWin":Lcom/android/server/wm/WindowState;
    iget-object v1, v2, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_a0

    iget-object v1, v2, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq v1, p1, :cond_a0

    iget-object v1, v2, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v1, v3, :cond_a0

    .line 185
    iget-object v0, v2, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 187
    :cond_a0
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mTransferTouchFromToken:Landroid/os/IBinder;

    .line 188
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskPositioner;->register(Lcom/android/server/wm/DisplayContent;)V

    .line 190
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/TaskPositioner;->startDrag(Lcom/android/server/wm/WindowState;ZZFF)V

    .line 191
    const/4 v1, 0x1

    return v1

    .line 160
    .end local v0  # "transferFocusFromWin":Lcom/android/server/wm/WindowState;
    .end local v2  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_b9
    :goto_b9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPositioningLocked: Bad window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return v0
.end method


# virtual methods
.method finishTaskPositioning()V
    .registers 3

    .line 201
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskPositioningController$z3n1stJjOdhDbXXrvPlvlqmON6k;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$TaskPositioningController$z3n1stJjOdhDbXXrvPlvlqmON6k;-><init>(Lcom/android/server/wm/TaskPositioningController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 209
    return-void
.end method

.method public finishTaskPositioning(Landroid/view/IWindow;)V
    .registers 4
    .param p1, "window"  # Landroid/view/IWindow;

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner;->mClientCallback:Landroid/os/IBinder;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v0, v1, :cond_f

    .line 196
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioningController;->finishTaskPositioning()V

    .line 198
    :cond_f
    return-void
.end method

.method getDragWindowHandleLocked()Landroid/view/InputWindowHandle;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method handleTapOutsideTask(Lcom/android/server/wm/DisplayContent;II)V
    .registers 6
    .param p1, "displayContent"  # Lcom/android/server/wm/DisplayContent;
    .param p2, "x"  # I
    .param p3, "y"  # I

    .line 129
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskPositioningController$u0oAwi82C-bAGo2JAsAc_9ZLi70;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/wm/-$$Lambda$TaskPositioningController$u0oAwi82C-bAGo2JAsAc_9ZLi70;-><init>(Lcom/android/server/wm/TaskPositioningController;Lcom/android/server/wm/DisplayContent;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 150
    return-void
.end method

.method hideInputSurface(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 4
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "displayId"  # I

    .line 73
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mPositioningDisplay:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-ne v0, p2, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_11

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 77
    :cond_11
    return-void
.end method

.method isPositioningLocked()Z
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public synthetic lambda$finishTaskPositioning$1$TaskPositioningController()V
    .registers 3

    .line 202
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_b

    const-string v0, "WindowManager"

    const-string v1, "finishPositioning"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 205
    invoke-direct {p0}, Lcom/android/server/wm/TaskPositioningController;->cleanUpTaskPositioner()V

    .line 206
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mPositioningDisplay:Lcom/android/server/wm/DisplayContent;

    .line 207
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 208
    return-void

    .line 207
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$handleTapOutsideTask$0$TaskPositioningController(Lcom/android/server/wm/DisplayContent;II)V
    .registers 13
    .param p1, "displayContent"  # Lcom/android/server/wm/DisplayContent;
    .param p2, "x"  # I
    .param p3, "y"  # I

    .line 130
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 132
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getTopStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 133
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getTopStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isMzWindowMode()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 134
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_4e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 137
    :cond_1d
    :try_start_1d
    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->findTaskForResizePoint(II)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 138
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_49

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isMzWindowMode()Z

    move-result v2

    if-nez v2, :cond_49

    .line 139
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    const/4 v5, 0x1

    .line 140
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->preserveOrientationOnResize()Z

    move-result v6

    int-to-float v7, p2

    int-to-float v8, p3

    .line 139
    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/TaskPositioningController;->startPositioningLocked(Lcom/android/server/wm/WindowState;ZZFF)Z

    move-result v2

    if-nez v2, :cond_40

    .line 141
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_1d .. :try_end_3c} :catchall_4e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 144
    :cond_40
    :try_start_40
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioningController;->mActivityManager:Landroid/app/IActivityTaskManager;

    iget v3, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v2, v3}, Landroid/app/IActivityTaskManager;->setFocusedTask(I)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_47} :catch_48
    .catchall {:try_start_40 .. :try_end_47} :catchall_4e

    .line 146
    goto :goto_49

    .line 145
    :catch_48
    move-exception v2

    .line 148
    .end local v1  # "task":Lcom/android/server/wm/Task;
    :cond_49
    :goto_49
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_4e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 149
    return-void

    .line 148
    :catchall_4e
    move-exception v1

    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method showInputSurface(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 11
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "displayId"  # I

    .line 80
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mPositioningDisplay:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_79

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-eq v0, p2, :cond_b

    goto :goto_79

    .line 83
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 84
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    if-nez v1, :cond_31

    .line 85
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getSession()Landroid/view/SurfaceSession;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 87
    const-string v2, "Drag and Drop Input Consumer"

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    .line 90
    :cond_31
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioningController;->getDragWindowHandleLocked()Landroid/view/InputWindowHandle;

    move-result-object v1

    .line 91
    .local v1, "h":Landroid/view/InputWindowHandle;
    if-nez v1, :cond_3f

    .line 92
    const-string v2, "WindowManager"

    const-string v3, "Drag is in progress but there is no drag window handle."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void

    .line 97
    :cond_3f
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 98
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 99
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    const v3, 0x7fffffff

    invoke-virtual {p1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 101
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v2

    .line 102
    .local v2, "display":Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 103
    .local v3, "p":Landroid/graphics/Point;
    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 105
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioningController;->mTmpClipRect:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 106
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioningController;->mTmpClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 107
    iget-object v4, p0, Lcom/android/server/wm/TaskPositioningController;->mTransferTouchFromToken:Landroid/os/IBinder;

    iget-object v5, v1, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v4, v5}, Landroid/view/SurfaceControl$Transaction;->transferTouchFocus(Landroid/os/IBinder;Landroid/os/IBinder;)Landroid/view/SurfaceControl$Transaction;

    .line 108
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/wm/TaskPositioningController;->mTransferTouchFromToken:Landroid/os/IBinder;

    .line 109
    return-void

    .line 81
    .end local v0  # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v1  # "h":Landroid/view/InputWindowHandle;
    .end local v2  # "display":Landroid/view/Display;
    .end local v3  # "p":Landroid/graphics/Point;
    :cond_79
    :goto_79
    return-void
.end method

.method startMovingTask(Landroid/view/IWindow;FF)Z
    .registers 15
    .param p1, "window"  # Landroid/view/IWindow;
    .param p2, "startX"  # F
    .param p3, "startY"  # F

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "win":Lcom/android/server/wm/WindowState;
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 114
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v6
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_35

    .line 117
    .end local v0  # "win":Lcom/android/server/wm/WindowState;
    .local v6, "win":Lcom/android/server/wm/WindowState;
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    move v9, p2

    move v10, p3

    :try_start_16
    invoke-direct/range {v5 .. v10}, Lcom/android/server/wm/TaskPositioningController;->startPositioningLocked(Lcom/android/server/wm/WindowState;ZZFF)Z

    move-result v0

    if-nez v0, :cond_21

    .line 119
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_3d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 121
    :cond_21
    :try_start_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_3d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 123
    :try_start_25
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mActivityManager:Landroid/app/IActivityTaskManager;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->setFocusedTask(I)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_30} :catch_31

    goto :goto_32

    .line 124
    :catch_31
    move-exception v0

    :goto_32
    nop

    .line 125
    const/4 v0, 0x1

    return v0

    .line 121
    .end local v6  # "win":Lcom/android/server/wm/WindowState;
    .restart local v0  # "win":Lcom/android/server/wm/WindowState;
    :catchall_35
    move-exception v2

    move-object v6, v0

    move-object v0, v2

    .end local v0  # "win":Lcom/android/server/wm/WindowState;
    .restart local v6  # "win":Lcom/android/server/wm/WindowState;
    :goto_38
    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_3d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_3d
    move-exception v0

    goto :goto_38
.end method
