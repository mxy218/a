.class Lcom/android/server/wm/DragDropController;
.super Ljava/lang/Object;
.source "DragDropController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DragDropController$DragHandler;
    }
.end annotation


# static fields
.field private static final DRAG_SHADOW_ALPHA_TRANSPARENT:F = 0.7071f

.field private static final DRAG_TIMEOUT_MS:J = 0x1388L

.field static final MSG_ANIMATION_END:I = 0x2

.field static final MSG_DRAG_END_TIMEOUT:I = 0x0

.field static final MSG_TEAR_DOWN_DRAG_AND_DROP_INPUT:I = 0x1


# instance fields
.field private mCallback:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mDragState:Lcom/android/server/wm/DragState;

.field private final mHandler:Landroid/os/Handler;

.field private mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p1, "service"  # Lcom/android/server/wm/WindowManagerService;
    .param p2, "looper"  # Landroid/os/Looper;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/android/server/wm/DragDropController$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DragDropController$1;-><init>(Lcom/android/server/wm/DragDropController;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    .line 82
    iput-object p1, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 83
    new-instance v0, Lcom/android/server/wm/DragDropController$DragHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/DragDropController$DragHandler;-><init>(Lcom/android/server/wm/DragDropController;Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/DragState;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/DragDropController;

    .line 45
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    return-object v0
.end method


# virtual methods
.method cancelDragAndDrop(Landroid/os/IBinder;Z)V
    .registers 6
    .param p1, "dragToken"  # Landroid/os/IBinder;
    .param p2, "skipAnimation"  # Z

    .line 240
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_b

    .line 241
    const-string v0, "WindowManager"

    const-string v1, "cancelDragAndDrop"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0, p1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->preCancelDragAndDrop(Landroid/os/IBinder;)V

    .line 246
    :try_start_16
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_67

    :try_start_1b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 247
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v1, :cond_52

    .line 252
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v1, v1, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    if-ne v1, p1, :cond_43

    .line 259
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 260
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/DragState;->cancelDragLocked(Z)V

    .line 261
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_1b .. :try_end_33} :catchall_61

    :try_start_33
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_67

    .line 263
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postCancelDragAndDrop()V

    .line 264
    nop

    .line 265
    return-void

    .line 253
    :cond_43
    :try_start_43
    const-string v1, "WindowManager"

    const-string v2, "cancelDragAndDrop() does not match prepareDrag()"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cancelDragAndDrop() does not match prepareDrag()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wm/DragDropController;
    .end local p1  # "dragToken":Landroid/os/IBinder;
    .end local p2  # "skipAnimation":Z
    throw v1

    .line 248
    .restart local p0  # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1  # "dragToken":Landroid/os/IBinder;
    .restart local p2  # "skipAnimation":Z
    :cond_52
    const-string v1, "WindowManager"

    const-string v2, "cancelDragAndDrop() without prepareDrag()"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cancelDragAndDrop() without prepareDrag()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wm/DragDropController;
    .end local p1  # "dragToken":Landroid/os/IBinder;
    .end local p2  # "skipAnimation":Z
    throw v1

    .line 261
    .restart local p0  # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1  # "dragToken":Landroid/os/IBinder;
    .restart local p2  # "skipAnimation":Z
    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_43 .. :try_end_63} :catchall_61

    :try_start_63
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local p0  # "this":Lcom/android/server/wm/DragDropController;
    .end local p1  # "dragToken":Landroid/os/IBinder;
    .end local p2  # "skipAnimation":Z
    throw v1
    :try_end_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_67

    .line 263
    .restart local p0  # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1  # "dragToken":Landroid/os/IBinder;
    .restart local p2  # "skipAnimation":Z
    :catchall_67
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postCancelDragAndDrop()V

    throw v0
.end method

.method dragDropActiveLocked()Z
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->isClosing()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method dragRecipientEntered(Landroid/view/IWindow;)V
    .registers 4
    .param p1, "window"  # Landroid/view/IWindow;

    .line 292
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_1e

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drag into new candidate view @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_1e
    return-void
.end method

.method dragRecipientExited(Landroid/view/IWindow;)V
    .registers 4
    .param p1, "window"  # Landroid/view/IWindow;

    .line 298
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_1e

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drag from old candidate view @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_1e
    return-void
.end method

.method handleMotionEvent(ZFF)V
    .registers 6
    .param p1, "keepHandling"  # Z
    .param p2, "newX"  # F
    .param p3, "newY"  # F

    .line 275
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 276
    invoke-virtual {p0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v1

    if-nez v1, :cond_13

    .line 280
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 283
    :cond_13
    if-eqz p1, :cond_1b

    .line 284
    :try_start_15
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/wm/DragState;->notifyMoveLocked(FF)V

    goto :goto_20

    .line 286
    :cond_1b
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/wm/DragState;->notifyDropLocked(FF)V

    .line 288
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 289
    return-void

    .line 288
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method onDragStateClosedLocked(Lcom/android/server/wm/DragState;)V
    .registers 4
    .param p1, "dragState"  # Lcom/android/server/wm/DragState;

    .line 323
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eq v0, p1, :cond_c

    .line 324
    const-string v0, "WindowManager"

    const-string v1, "Unknown drag state is closed"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-void

    .line 327
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 328
    return-void
.end method

.method performDrag(Landroid/view/SurfaceSession;IILandroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;)Landroid/os/IBinder;
    .registers 32
    .param p1, "session"  # Landroid/view/SurfaceSession;
    .param p2, "callerPid"  # I
    .param p3, "callerUid"  # I
    .param p4, "window"  # Landroid/view/IWindow;
    .param p5, "flags"  # I
    .param p6, "surface"  # Landroid/view/SurfaceControl;
    .param p7, "touchSource"  # I
    .param p8, "touchX"  # F
    .param p9, "touchY"  # F
    .param p10, "thumbCenterX"  # F
    .param p11, "thumbCenterY"  # F
    .param p12, "data"  # Landroid/content/ClipData;

    .line 93
    move-object/from16 v8, p0

    move-object/from16 v6, p4

    move-object/from16 v5, p6

    move/from16 v3, p8

    move/from16 v2, p9

    move/from16 v1, p10

    move/from16 v4, p11

    move-object/from16 v7, p12

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v0, :cond_46

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "perform drag: win="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " surface="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " flags="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " data="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    const-string v9, "WindowManager"

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_46
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    move-object v15, v0

    .line 99
    .local v15, "dragToken":Landroid/os/IBinder;
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    move-object/from16 v10, p4

    move-object v11, v15

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move-object/from16 v18, v15

    .end local v15  # "dragToken":Landroid/os/IBinder;
    .local v18, "dragToken":Landroid/os/IBinder;
    move/from16 v15, p10

    move/from16 v16, p11

    move-object/from16 v17, p12

    invoke-interface/range {v9 .. v17}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->prePerformDrag(Landroid/view/IWindow;Landroid/os/IBinder;IFFFFLandroid/content/ClipData;)Z

    move-result v9

    .line 102
    .local v9, "callbackResult":Z
    :try_start_6a
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v10
    :try_end_6f
    .catchall {:try_start_6a .. :try_end_6f} :catchall_300

    :try_start_6f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_2d4

    .line 104
    const/4 v0, 0x0

    if-nez v9, :cond_bd

    .line 105
    :try_start_75
    const-string v11, "WindowManager"

    const-string v12, "IDragDropCallback rejects the performDrag request"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_75 .. :try_end_7c} :catchall_b0

    .line 106
    nop

    .line 185
    if-eqz v5, :cond_82

    .line 186
    :try_start_7f
    invoke-virtual/range {p6 .. p6}, Landroid/view/SurfaceControl;->release()V

    .line 188
    :cond_82
    iget-object v11, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v11, :cond_93

    iget-object v11, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v11}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v11

    if-nez v11, :cond_93

    .line 189
    iget-object v11, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v11}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_93
    monitor-exit v10
    :try_end_94
    .catchall {:try_start_7f .. :try_end_94} :catchall_a3

    .line 195
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v10, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v10}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 106
    return-object v0

    .line 192
    :catchall_a3
    move-exception v0

    move/from16 v13, p7

    move v6, v2

    move v15, v4

    move-object v1, v5

    move/from16 v16, v9

    move-object/from16 v5, v18

    move-object v9, v7

    goto/16 :goto_2f9

    .line 185
    :catchall_b0
    move-exception v0

    move/from16 v13, p7

    move v6, v2

    move v15, v4

    move-object v1, v5

    move/from16 v16, v9

    move-object/from16 v5, v18

    move-object v9, v7

    goto/16 :goto_2e0

    .line 109
    :cond_bd
    :try_start_bd
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v11
    :try_end_c1
    .catchall {:try_start_bd .. :try_end_c1} :catchall_2d4

    if-eqz v11, :cond_f1

    .line 110
    :try_start_c3
    const-string v11, "WindowManager"

    const-string v12, "Drag already in progress"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ca
    .catchall {:try_start_c3 .. :try_end_ca} :catchall_b0

    .line 111
    nop

    .line 185
    if-eqz v5, :cond_d0

    .line 186
    :try_start_cd
    invoke-virtual/range {p6 .. p6}, Landroid/view/SurfaceControl;->release()V

    .line 188
    :cond_d0
    iget-object v11, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v11, :cond_e1

    iget-object v11, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v11}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v11

    if-nez v11, :cond_e1

    .line 189
    iget-object v11, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v11}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_e1
    monitor-exit v10
    :try_end_e2
    .catchall {:try_start_cd .. :try_end_e2} :catchall_a3

    .line 195
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v10, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v10}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 111
    return-object v0

    .line 114
    :cond_f1
    :try_start_f1
    iget-object v11, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v0, v6, v12}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v11
    :try_end_f8
    .catchall {:try_start_f1 .. :try_end_f8} :catchall_2d4

    .line 116
    .local v11, "callingWin":Lcom/android/server/wm/WindowState;
    if-nez v11, :cond_137

    .line 117
    :try_start_fa
    const-string v12, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Bad requesting window "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_110
    .catchall {:try_start_fa .. :try_end_110} :catchall_b0

    .line 118
    nop

    .line 185
    if-eqz v5, :cond_116

    .line 186
    :try_start_113
    invoke-virtual/range {p6 .. p6}, Landroid/view/SurfaceControl;->release()V

    .line 188
    :cond_116
    iget-object v12, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v12, :cond_127

    iget-object v12, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v12}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v12

    if-nez v12, :cond_127

    .line 189
    iget-object v12, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v12}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_127
    monitor-exit v10
    :try_end_128
    .catchall {:try_start_113 .. :try_end_128} :catchall_a3

    .line 195
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v10, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v10}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 118
    return-object v0

    .line 133
    :cond_137
    :try_start_137
    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v12
    :try_end_13b
    .catchall {:try_start_137 .. :try_end_13b} :catchall_2d4

    .line 134
    .local v12, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v12, :cond_16b

    .line 135
    :try_start_13d
    const-string v13, "WindowManager"

    const-string v14, "display content is null"

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_144
    .catchall {:try_start_13d .. :try_end_144} :catchall_b0

    .line 136
    nop

    .line 185
    if-eqz v5, :cond_14a

    .line 186
    :try_start_147
    invoke-virtual/range {p6 .. p6}, Landroid/view/SurfaceControl;->release()V

    .line 188
    :cond_14a
    iget-object v13, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v13, :cond_15b

    iget-object v13, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v13}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v13

    if-nez v13, :cond_15b

    .line 189
    iget-object v13, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v13}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_15b
    monitor-exit v10
    :try_end_15c
    .catchall {:try_start_147 .. :try_end_15c} :catchall_a3

    .line 195
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v10, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v10}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 136
    return-object v0

    .line 139
    :cond_16b
    move/from16 v13, p5

    and-int/lit16 v14, v13, 0x200

    if-nez v14, :cond_175

    .line 140
    const v14, 0x3f350481  # 0.7071f

    goto :goto_177

    :cond_175
    const/high16 v14, 0x3f800000  # 1.0f

    .line 141
    .local v14, "alpha":F
    :goto_177
    :try_start_177
    invoke-interface/range {p4 .. p4}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v15
    :try_end_17b
    .catchall {:try_start_177 .. :try_end_17b} :catchall_2d4

    move/from16 v16, v9

    move-object v9, v7

    .end local v9  # "callbackResult":Z
    .local v16, "callbackResult":Z
    move-object v7, v15

    .line 142
    .local v7, "winBinder":Landroid/os/IBinder;
    :try_start_17f
    new-instance v15, Landroid/os/Binder;

    invoke-direct {v15}, Landroid/os/Binder;-><init>()V
    :try_end_184
    .catchall {:try_start_17f .. :try_end_184} :catchall_2ca

    move v13, v4

    move-object v4, v15

    .line 143
    .local v4, "token":Landroid/os/IBinder;
    :try_start_186
    new-instance v15, Lcom/android/server/wm/DragState;

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;
    :try_end_18a
    .catchall {:try_start_186 .. :try_end_18a} :catchall_2c0

    move v13, v1

    move-object v1, v15

    move v13, v2

    move-object v2, v0

    move v13, v3

    move-object/from16 v3, p0

    move-object/from16 v5, p6

    move/from16 v6, p5

    :try_start_195
    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/DragState;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DragDropController;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V

    iput-object v15, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_19a
    .catchall {:try_start_195 .. :try_end_19a} :catchall_2b3

    .line 144
    const/4 v1, 0x0

    .line 145
    .end local p6  # "surface":Landroid/view/SurfaceControl;
    .local v1, "surface":Landroid/view/SurfaceControl;
    :try_start_19b
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v2, p2

    iput v2, v0, Lcom/android/server/wm/DragState;->mPid:I

    .line 146
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v3, p3

    iput v3, v0, Lcom/android/server/wm/DragState;->mUid:I

    .line 147
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput v14, v0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    .line 148
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_1ad
    .catchall {:try_start_19b .. :try_end_1ad} :catchall_2a8

    move-object/from16 v5, v18

    .end local v18  # "dragToken":Landroid/os/IBinder;
    .local v5, "dragToken":Landroid/os/IBinder;
    :try_start_1af
    iput-object v5, v0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 149
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-object v12, v0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 151
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 152
    .local v0, "display":Landroid/view/Display;
    iget-object v6, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    iget-object v15, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v3, v11, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-interface {v6, v15, v0, v2, v3}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->registerInputChannel(Lcom/android/server/wm/DragState;Landroid/view/Display;Lcom/android/server/input/InputManagerService;Landroid/view/InputChannel;)Z

    move-result v2

    if-nez v2, :cond_208

    .line 155
    const-string v2, "WindowManager"

    const-string v3, "Unable to transfer touch focus"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d6
    .catchall {:try_start_1af .. :try_end_1d6} :catchall_29f

    .line 156
    nop

    .line 185
    if-eqz v1, :cond_1dc

    .line 186
    :try_start_1d9
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 188
    :cond_1dc
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_1ed

    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v2

    if-nez v2, :cond_1ed

    .line 189
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_1ed
    monitor-exit v10
    :try_end_1ee
    .catchall {:try_start_1d9 .. :try_end_1ee} :catchall_1fe

    .line 195
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v2}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 156
    const/4 v2, 0x0

    return-object v2

    .line 192
    .end local v0  # "display":Landroid/view/Display;
    .end local v4  # "token":Landroid/os/IBinder;
    .end local v7  # "winBinder":Landroid/os/IBinder;
    .end local v11  # "callingWin":Lcom/android/server/wm/WindowState;
    .end local v12  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v14  # "alpha":F
    :catchall_1fe
    move-exception v0

    move/from16 v6, p9

    move/from16 v15, p11

    move v3, v13

    move/from16 v13, p7

    goto/16 :goto_2f9

    .line 159
    .restart local v0  # "display":Landroid/view/Display;
    .restart local v4  # "token":Landroid/os/IBinder;
    .restart local v7  # "winBinder":Landroid/os/IBinder;
    .restart local v11  # "callingWin":Lcom/android/server/wm/WindowState;
    .restart local v12  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v14  # "alpha":F
    :cond_208
    :try_start_208
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-object v9, v2, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 160
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_20e
    .catchall {:try_start_208 .. :try_end_20e} :catchall_29f

    move/from16 v6, p9

    move v3, v13

    :try_start_211
    invoke-virtual {v2, v3, v6}, Lcom/android/server/wm/DragState;->broadcastDragStartedLocked(FF)V

    .line 161
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_216
    .catchall {:try_start_211 .. :try_end_216} :catchall_299

    move/from16 v13, p7

    :try_start_218
    invoke-virtual {v2, v13}, Lcom/android/server/wm/DragState;->overridePointerIconLocked(I)V

    .line 163
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v15, p10

    iput v15, v2, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 164
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_223
    .catchall {:try_start_218 .. :try_end_223} :catchall_297

    move/from16 v15, p11

    :try_start_225
    iput v15, v2, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    .line 167
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v2, v2, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 168
    .local v2, "surfaceControl":Landroid/view/SurfaceControl;
    sget-boolean v17, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v17, :cond_23b

    move-object/from16 p6, v0

    .end local v0  # "display":Landroid/view/Display;
    .local p6, "display":Landroid/view/Display;
    const-string v0, "WindowManager"

    move-object/from16 v17, v4

    .end local v4  # "token":Landroid/os/IBinder;
    .local v17, "token":Landroid/os/IBinder;
    const-string v4, ">>> OPEN TRANSACTION performDrag"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23f

    .end local v17  # "token":Landroid/os/IBinder;
    .end local p6  # "display":Landroid/view/Display;
    .restart local v0  # "display":Landroid/view/Display;
    .restart local v4  # "token":Landroid/os/IBinder;
    :cond_23b
    move-object/from16 p6, v0

    move-object/from16 v17, v4

    .line 170
    .end local v0  # "display":Landroid/view/Display;
    .end local v4  # "token":Landroid/os/IBinder;
    .restart local v17  # "token":Landroid/os/IBinder;
    .restart local p6  # "display":Landroid/view/Display;
    :goto_23f
    nop

    .line 171
    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 172
    .local v0, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v4, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget v4, v4, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    invoke-virtual {v0, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 173
    sub-float v4, v3, p10

    move-object/from16 v18, v7

    .end local v7  # "winBinder":Landroid/os/IBinder;
    .local v18, "winBinder":Landroid/os/IBinder;
    sub-float v7, v6, v15

    invoke-virtual {v0, v2, v4, v7}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 175
    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 176
    invoke-virtual {v12, v0, v2}, Lcom/android/server/wm/DisplayContent;->reparentToOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 177
    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->scheduleAnimation()V

    .line 179
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v4, :cond_268

    .line 180
    const-string v4, "WindowManager"

    const-string v7, "<<< CLOSE TRANSACTION performDrag"

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_268
    iget-object v4, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v4, v3, v6}, Lcom/android/server/wm/DragState;->notifyLocationLocked(FF)V
    :try_end_26d
    .catchall {:try_start_225 .. :try_end_26d} :catchall_294

    .line 185
    .end local v0  # "transaction":Landroid/view/SurfaceControl$Transaction;
    .end local v2  # "surfaceControl":Landroid/view/SurfaceControl;
    .end local v11  # "callingWin":Lcom/android/server/wm/WindowState;
    .end local v12  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v14  # "alpha":F
    .end local v17  # "token":Landroid/os/IBinder;
    .end local v18  # "winBinder":Landroid/os/IBinder;
    .end local p6  # "display":Landroid/view/Display;
    if-eqz v1, :cond_272

    .line 186
    :try_start_26f
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 188
    :cond_272
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_283

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_283

    .line 189
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->closeLocked()V

    .line 192
    :cond_283
    monitor-exit v10
    :try_end_284
    .catchall {:try_start_26f .. :try_end_284} :catchall_2f8

    :try_start_284
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_287
    .catchall {:try_start_284 .. :try_end_287} :catchall_2fe

    .line 193
    nop

    .line 195
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 193
    return-object v5

    .line 185
    :catchall_294
    move-exception v0

    goto/16 :goto_2e0

    :catchall_297
    move-exception v0

    goto :goto_29c

    :catchall_299
    move-exception v0

    move/from16 v13, p7

    :goto_29c
    move/from16 v15, p11

    goto :goto_2e0

    :catchall_29f
    move-exception v0

    move/from16 v6, p9

    move/from16 v15, p11

    move v3, v13

    move/from16 v13, p7

    goto :goto_2e0

    .end local v5  # "dragToken":Landroid/os/IBinder;
    .local v18, "dragToken":Landroid/os/IBinder;
    :catchall_2a8
    move-exception v0

    move/from16 v6, p9

    move/from16 v15, p11

    move v3, v13

    move-object/from16 v5, v18

    move/from16 v13, p7

    .end local v18  # "dragToken":Landroid/os/IBinder;
    .restart local v5  # "dragToken":Landroid/os/IBinder;
    goto :goto_2e0

    .end local v1  # "surface":Landroid/view/SurfaceControl;
    .end local v5  # "dragToken":Landroid/os/IBinder;
    .restart local v18  # "dragToken":Landroid/os/IBinder;
    .local p6, "surface":Landroid/view/SurfaceControl;
    :catchall_2b3
    move-exception v0

    move/from16 v6, p9

    move/from16 v15, p11

    move v3, v13

    move-object/from16 v5, v18

    move/from16 v13, p7

    move-object/from16 v1, p6

    .end local v18  # "dragToken":Landroid/os/IBinder;
    .restart local v5  # "dragToken":Landroid/os/IBinder;
    goto :goto_2e0

    .end local v5  # "dragToken":Landroid/os/IBinder;
    .restart local v18  # "dragToken":Landroid/os/IBinder;
    :catchall_2c0
    move-exception v0

    move v6, v2

    move v15, v13

    move-object/from16 v5, v18

    move/from16 v13, p7

    move-object/from16 v1, p6

    .end local v18  # "dragToken":Landroid/os/IBinder;
    .restart local v5  # "dragToken":Landroid/os/IBinder;
    goto :goto_2e0

    .end local v5  # "dragToken":Landroid/os/IBinder;
    .restart local v18  # "dragToken":Landroid/os/IBinder;
    :catchall_2ca
    move-exception v0

    move/from16 v13, p7

    move v6, v2

    move v15, v4

    move-object/from16 v5, v18

    move-object/from16 v1, p6

    .end local v18  # "dragToken":Landroid/os/IBinder;
    .restart local v5  # "dragToken":Landroid/os/IBinder;
    goto :goto_2e0

    .end local v5  # "dragToken":Landroid/os/IBinder;
    .end local v16  # "callbackResult":Z
    .restart local v9  # "callbackResult":Z
    .restart local v18  # "dragToken":Landroid/os/IBinder;
    :catchall_2d4
    move-exception v0

    move/from16 v13, p7

    move v6, v2

    move v15, v4

    move/from16 v16, v9

    move-object/from16 v5, v18

    move-object v9, v7

    move-object/from16 v1, p6

    .end local v9  # "callbackResult":Z
    .end local v18  # "dragToken":Landroid/os/IBinder;
    .end local p6  # "surface":Landroid/view/SurfaceControl;
    .restart local v1  # "surface":Landroid/view/SurfaceControl;
    .restart local v5  # "dragToken":Landroid/os/IBinder;
    .restart local v16  # "callbackResult":Z
    :goto_2e0
    if-eqz v1, :cond_2e5

    .line 186
    :try_start_2e2
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 188
    :cond_2e5
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_2f6

    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v2

    if-nez v2, :cond_2f6

    .line 189
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_2f6
    nop

    .end local v1  # "surface":Landroid/view/SurfaceControl;
    .end local v5  # "dragToken":Landroid/os/IBinder;
    .end local v16  # "callbackResult":Z
    .end local p0  # "this":Lcom/android/server/wm/DragDropController;
    .end local p1  # "session":Landroid/view/SurfaceSession;
    .end local p2  # "callerPid":I
    .end local p3  # "callerUid":I
    .end local p4  # "window":Landroid/view/IWindow;
    .end local p5  # "flags":I
    .end local p7  # "touchSource":I
    .end local p8  # "touchX":F
    .end local p9  # "touchY":F
    .end local p10  # "thumbCenterX":F
    .end local p11  # "thumbCenterY":F
    .end local p12  # "data":Landroid/content/ClipData;
    throw v0

    .line 192
    .restart local v1  # "surface":Landroid/view/SurfaceControl;
    .restart local v5  # "dragToken":Landroid/os/IBinder;
    .restart local v16  # "callbackResult":Z
    .restart local p0  # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1  # "session":Landroid/view/SurfaceSession;
    .restart local p2  # "callerPid":I
    .restart local p3  # "callerUid":I
    .restart local p4  # "window":Landroid/view/IWindow;
    .restart local p5  # "flags":I
    .restart local p7  # "touchSource":I
    .restart local p8  # "touchX":F
    .restart local p9  # "touchY":F
    .restart local p10  # "thumbCenterX":F
    .restart local p11  # "thumbCenterY":F
    .restart local p12  # "data":Landroid/content/ClipData;
    :catchall_2f8
    move-exception v0

    :goto_2f9
    monitor-exit v10
    :try_end_2fa
    .catchall {:try_start_2e2 .. :try_end_2fa} :catchall_2f8

    :try_start_2fa
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v1  # "surface":Landroid/view/SurfaceControl;
    .end local v5  # "dragToken":Landroid/os/IBinder;
    .end local v16  # "callbackResult":Z
    .end local p0  # "this":Lcom/android/server/wm/DragDropController;
    .end local p1  # "session":Landroid/view/SurfaceSession;
    .end local p2  # "callerPid":I
    .end local p3  # "callerUid":I
    .end local p4  # "window":Landroid/view/IWindow;
    .end local p5  # "flags":I
    .end local p7  # "touchSource":I
    .end local p8  # "touchX":F
    .end local p9  # "touchY":F
    .end local p10  # "thumbCenterX":F
    .end local p11  # "thumbCenterY":F
    .end local p12  # "data":Landroid/content/ClipData;
    throw v0
    :try_end_2fe
    .catchall {:try_start_2fa .. :try_end_2fe} :catchall_2fe

    .line 195
    .restart local v1  # "surface":Landroid/view/SurfaceControl;
    .restart local v5  # "dragToken":Landroid/os/IBinder;
    .restart local v16  # "callbackResult":Z
    .restart local p0  # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1  # "session":Landroid/view/SurfaceSession;
    .restart local p2  # "callerPid":I
    .restart local p3  # "callerUid":I
    .restart local p4  # "window":Landroid/view/IWindow;
    .restart local p5  # "flags":I
    .restart local p7  # "touchSource":I
    .restart local p8  # "touchX":F
    .restart local p9  # "touchY":F
    .restart local p10  # "thumbCenterX":F
    .restart local p11  # "thumbCenterY":F
    .restart local p12  # "data":Landroid/content/ClipData;
    :catchall_2fe
    move-exception v0

    goto :goto_30c

    .end local v1  # "surface":Landroid/view/SurfaceControl;
    .end local v5  # "dragToken":Landroid/os/IBinder;
    .end local v16  # "callbackResult":Z
    .restart local v9  # "callbackResult":Z
    .restart local v18  # "dragToken":Landroid/os/IBinder;
    .restart local p6  # "surface":Landroid/view/SurfaceControl;
    :catchall_300
    move-exception v0

    move/from16 v13, p7

    move v6, v2

    move v15, v4

    move/from16 v16, v9

    move-object/from16 v5, v18

    move-object v9, v7

    move-object/from16 v1, p6

    .end local v9  # "callbackResult":Z
    .end local v18  # "dragToken":Landroid/os/IBinder;
    .end local p6  # "surface":Landroid/view/SurfaceControl;
    .restart local v1  # "surface":Landroid/view/SurfaceControl;
    .restart local v5  # "dragToken":Landroid/os/IBinder;
    .restart local v16  # "callbackResult":Z
    :goto_30c
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v2}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    throw v0
.end method

.method registerCallback(Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;)V
    .registers 3
    .param p1, "callback"  # Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    .line 77
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method reportDropResult(Landroid/view/IWindow;Z)V
    .registers 9
    .param p1, "window"  # Landroid/view/IWindow;
    .param p2, "consumed"  # Z

    .line 200
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 201
    .local v0, "token":Landroid/os/IBinder;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v1, :cond_26

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drop result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " reported by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_26
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1, p1, p2}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->preReportDropResult(Landroid/view/IWindow;Z)V

    .line 207
    :try_start_31
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_d1

    :try_start_36
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 208
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v2, :cond_54

    .line 211
    const-string v2, "WindowManager"

    const-string v3, "Drop result given but no drag in progress"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_cb

    .line 235
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    .line 212
    return-void

    .line 215
    :cond_54
    :try_start_54
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v2, v2, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    if-ne v2, v0, :cond_ad

    .line 224
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 225
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1, v4}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 226
    .local v2, "callingWin":Lcom/android/server/wm/WindowState;
    if-nez v2, :cond_93

    .line 227
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad result-reporting window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    monitor-exit v1
    :try_end_84
    .catchall {:try_start_54 .. :try_end_84} :catchall_cb

    .line 235
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    .line 228
    return-void

    .line 231
    :cond_93
    :try_start_93
    iget-object v3, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-boolean p2, v3, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 232
    iget-object v3, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v3}, Lcom/android/server/wm/DragState;->endDragLocked()V

    .line 233
    .end local v2  # "callingWin":Lcom/android/server/wm/WindowState;
    monitor-exit v1
    :try_end_9d
    .catchall {:try_start_93 .. :try_end_9d} :catchall_cb

    :try_start_9d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_d1

    .line 235
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    .line 236
    nop

    .line 237
    return-void

    .line 217
    :cond_ad
    :try_start_ad
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid drop-result claim by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "reportDropResult() by non-recipient"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0  # "token":Landroid/os/IBinder;
    .end local p0  # "this":Lcom/android/server/wm/DragDropController;
    .end local p1  # "window":Landroid/view/IWindow;
    .end local p2  # "consumed":Z
    throw v2

    .line 233
    .restart local v0  # "token":Landroid/os/IBinder;
    .restart local p0  # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1  # "window":Landroid/view/IWindow;
    .restart local p2  # "consumed":Z
    :catchall_cb
    move-exception v2

    monitor-exit v1
    :try_end_cd
    .catchall {:try_start_ad .. :try_end_cd} :catchall_cb

    :try_start_cd
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "token":Landroid/os/IBinder;
    .end local p0  # "this":Lcom/android/server/wm/DragDropController;
    .end local p1  # "window":Landroid/view/IWindow;
    .end local p2  # "consumed":Z
    throw v2
    :try_end_d1
    .catchall {:try_start_cd .. :try_end_d1} :catchall_d1

    .line 235
    .restart local v0  # "token":Landroid/os/IBinder;
    .restart local p0  # "this":Lcom/android/server/wm/DragDropController;
    .restart local p1  # "window":Landroid/view/IWindow;
    .restart local p2  # "consumed":Z
    :catchall_d1
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v2}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    throw v1
.end method

.method sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p1, "window"  # Lcom/android/server/wm/WindowState;

    .line 87
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DragState;->sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 88
    return-void
.end method

.method sendHandlerMessage(ILjava/lang/Object;)V
    .registers 4
    .param p1, "what"  # I
    .param p2, "arg"  # Ljava/lang/Object;

    .line 307
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 308
    return-void
.end method

.method sendTimeoutMessage(ILjava/lang/Object;)V
    .registers 7
    .param p1, "what"  # I
    .param p2, "arg"  # Ljava/lang/Object;

    .line 314
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 315
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 316
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 317
    return-void
.end method
