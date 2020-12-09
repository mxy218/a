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


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;Landroid/app/IActivityTaskManager;Landroid/os/Looper;)V
    .registers 6

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mTmpClipRect:Landroid/graphics/Rect;

    .line 64
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 65
    iput-object p2, p0, Lcom/android/server/wm/TaskPositioningController;->mInputManager:Lcom/android/server/input/InputManagerService;

    .line 66
    iput-object p3, p0, Lcom/android/server/wm/TaskPositioningController;->mActivityManager:Landroid/app/IActivityTaskManager;

    .line 67
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/TaskPositioningController;->mHandler:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method private cleanUpTaskPositioner()V
    .registers 3

    .line 207
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    .line 208
    if-nez v0, :cond_5

    .line 209
    return-void

    .line 214
    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    .line 215
    invoke-virtual {v0}, Lcom/android/server/wm/TaskPositioner;->unregister()V

    .line 216
    return-void
.end method

.method private startPositioningLocked(Lcom/android/server/wm/WindowState;ZZFF)Z
    .registers 14

    .line 149
    const/4 v0, 0x0

    const-string v1, "WindowManager"

    if-eqz p1, :cond_8d

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v2

    if-nez v2, :cond_d

    goto/16 :goto_8d

    .line 153
    :cond_d
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-nez v2, :cond_2b

    .line 154
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "startPositioningLocked: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has no input channel,  probably being removed"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return v0

    .line 159
    :cond_2b
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 160
    if-nez v2, :cond_46

    .line 161
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "startPositioningLocked: Invalid display content "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return v0

    .line 164
    :cond_46
    iput-object v2, p0, Lcom/android/server/wm/TaskPositioningController;->mPositioningDisplay:Lcom/android/server/wm/DisplayContent;

    .line 166
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v3}, Lcom/android/server/wm/TaskPositioner;->create(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/TaskPositioner;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    .line 167
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/TaskPositioner;->register(Lcom/android/server/wm/DisplayContent;)V

    .line 173
    nop

    .line 174
    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_69

    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq v3, p1, :cond_69

    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-ne v3, v4, :cond_69

    .line 176
    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    goto :goto_6a

    .line 178
    :cond_69
    move-object v2, p1

    :goto_6a
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioningController;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    iget-object v4, v4, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/input/InputManagerService;->transferTouchFocus(Landroid/view/InputChannel;Landroid/view/InputChannel;)Z

    move-result v2

    if-nez v2, :cond_81

    .line 180
    const-string p1, "startPositioningLocked: Unable to transfer touch focus"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-direct {p0}, Lcom/android/server/wm/TaskPositioningController;->cleanUpTaskPositioner()V

    .line 182
    return v0

    .line 185
    :cond_81
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/TaskPositioner;->startDrag(Lcom/android/server/wm/WindowState;ZZFF)V

    .line 186
    const/4 p1, 0x1

    return p1

    .line 150
    :cond_8d
    :goto_8d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "startPositioningLocked: Bad window "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return v0
.end method


# virtual methods
.method finishTaskPositioning()V
    .registers 3

    .line 196
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskPositioningController$z3n1stJjOdhDbXXrvPlvlqmON6k;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$TaskPositioningController$z3n1stJjOdhDbXXrvPlvlqmON6k;-><init>(Lcom/android/server/wm/TaskPositioningController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    return-void
.end method

.method public finishTaskPositioning(Landroid/view/IWindow;)V
    .registers 3

    .line 190
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mTaskPositioner:Lcom/android/server/wm/TaskPositioner;

    if-eqz v0, :cond_f

    iget-object v0, v0, Lcom/android/server/wm/TaskPositioner;->mClientCallback:Landroid/os/IBinder;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-ne v0, p1, :cond_f

    .line 191
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioningController;->finishTaskPositioning()V

    .line 193
    :cond_f
    return-void
.end method

.method getDragWindowHandleLocked()Landroid/view/InputWindowHandle;
    .registers 2

    .line 59
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

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$TaskPositioningController$u0oAwi82C-bAGo2JAsAc_9ZLi70;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/wm/-$$Lambda$TaskPositioningController$u0oAwi82C-bAGo2JAsAc_9ZLi70;-><init>(Lcom/android/server/wm/TaskPositioningController;Lcom/android/server/wm/DisplayContent;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 140
    return-void
.end method

.method hideInputSurface(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 4

    .line 71
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mPositioningDisplay:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-ne v0, p2, :cond_11

    iget-object p2, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    if-eqz p2, :cond_11

    .line 73
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 75
    :cond_11
    return-void
.end method

.method isPositioningLocked()Z
    .registers 2

    .line 55
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

    .line 199
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 200
    invoke-direct {p0}, Lcom/android/server/wm/TaskPositioningController;->cleanUpTaskPositioner()V

    .line 201
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mPositioningDisplay:Lcom/android/server/wm/DisplayContent;

    .line 202
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 203
    return-void

    .line 202
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$handleTapOutsideTask$0$TaskPositioningController(Lcom/android/server/wm/DisplayContent;II)V
    .registers 11

    .line 126
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 127
    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->findTaskForResizePoint(II)Lcom/android/server/wm/Task;

    move-result-object p1

    .line 128
    if-eqz p1, :cond_2e

    .line 129
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    const/4 v3, 0x1

    .line 130
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->preserveOrientationOnResize()Z

    move-result v4

    int-to-float v5, p2

    int-to-float v6, p3

    .line 129
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/TaskPositioningController;->startPositioningLocked(Lcom/android/server/wm/WindowState;ZZFF)Z

    move-result p2

    if-nez p2, :cond_25

    .line 131
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 134
    :cond_25
    :try_start_25
    iget-object p2, p0, Lcom/android/server/wm/TaskPositioningController;->mActivityManager:Landroid/app/IActivityTaskManager;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {p2, p1}, Landroid/app/IActivityTaskManager;->setFocusedTask(I)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2c} :catch_2d
    .catchall {:try_start_25 .. :try_end_2c} :catchall_33

    .line 136
    goto :goto_2e

    .line 135
    :catch_2d
    move-exception p1

    .line 138
    :cond_2e
    :goto_2e
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 139
    return-void

    .line 138
    :catchall_33
    move-exception p1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method showInputSurface(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 6

    .line 78
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mPositioningDisplay:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_6f

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-eq v0, p2, :cond_b

    goto :goto_6f

    .line 81
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    .line 82
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_31

    .line 83
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getSession()Landroid/view/SurfaceSession;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 85
    const-string v1, "Drag and Drop Input Consumer"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    .line 88
    :cond_31
    invoke-virtual {p0}, Lcom/android/server/wm/TaskPositioningController;->getDragWindowHandleLocked()Landroid/view/InputWindowHandle;

    move-result-object v0

    .line 89
    if-nez v0, :cond_3f

    .line 90
    const-string p1, "WindowManager"

    const-string p2, "Drag is in progress but there is no drag window handle."

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void

    .line 95
    :cond_3f
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 96
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    .line 97
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    const v1, 0x7fffffff

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 99
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object p2

    .line 100
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 101
    invoke-virtual {p2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 103
    iget-object p2, p0, Lcom/android/server/wm/TaskPositioningController;->mTmpClipRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 104
    iget-object p2, p0, Lcom/android/server/wm/TaskPositioningController;->mInputSurface:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mTmpClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 105
    return-void

    .line 79
    :cond_6f
    :goto_6f
    return-void
.end method

.method startMovingTask(Landroid/view/IWindow;FF)Z
    .registers 14

    .line 108
    nop

    .line 109
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 110
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioningController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 113
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    move-object v5, p1

    move v8, p2

    move v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/wm/TaskPositioningController;->startPositioningLocked(Lcom/android/server/wm/WindowState;ZZFF)Z

    move-result p2

    if-nez p2, :cond_22

    .line 115
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_6 .. :try_end_1e} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 117
    :cond_22
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 119
    :try_start_26
    iget-object p2, p0, Lcom/android/server/wm/TaskPositioningController;->mActivityManager:Landroid/app/IActivityTaskManager;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {p2, p1}, Landroid/app/IActivityTaskManager;->setFocusedTask(I)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_31} :catch_32

    goto :goto_33

    .line 120
    :catch_32
    move-exception p1

    :goto_33
    nop

    .line 121
    const/4 p1, 0x1

    return p1

    .line 117
    :catchall_36
    move-exception p1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method
