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
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    return-object p0
.end method


# virtual methods
.method cancelDragAndDrop(Landroid/os/IBinder;Z)V
    .registers 5

    .line 243
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0, p1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->preCancelDragAndDrop(Landroid/os/IBinder;)V

    .line 245
    :try_start_b
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_5c

    :try_start_10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 246
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v1, :cond_47

    .line 251
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v1, v1, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    if-ne v1, p1, :cond_38

    .line 258
    iget-object p1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 259
    iget-object p1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/DragState;->cancelDragLocked(Z)V

    .line 260
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_56

    :try_start_28
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_5c

    .line 262
    iget-object p1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {p1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postCancelDragAndDrop()V

    .line 263
    nop

    .line 264
    return-void

    .line 252
    :cond_38
    :try_start_38
    const-string p1, "WindowManager"

    const-string p2, "cancelDragAndDrop() does not match prepareDrag()"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cancelDragAndDrop() does not match prepareDrag()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 247
    :cond_47
    const-string p1, "WindowManager"

    const-string p2, "cancelDragAndDrop() without prepareDrag()"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cancelDragAndDrop() without prepareDrag()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 260
    :catchall_56
    move-exception p1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_38 .. :try_end_58} :catchall_56

    :try_start_58
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_5c

    .line 262
    :catchall_5c
    move-exception p1

    iget-object p2, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {p2}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postCancelDragAndDrop()V

    throw p1
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
    .registers 2

    .line 294
    return-void
.end method

.method dragRecipientExited(Landroid/view/IWindow;)V
    .registers 2

    .line 300
    return-void
.end method

.method handleMotionEvent(ZFF)V
    .registers 6

    .line 274
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 275
    invoke-virtual {p0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v1

    if-nez v1, :cond_13

    .line 279
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 282
    :cond_13
    if-eqz p1, :cond_1b

    .line 283
    :try_start_15
    iget-object p1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/DragState;->notifyMoveLocked(FF)V

    goto :goto_20

    .line 285
    :cond_1b
    iget-object p1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/DragState;->notifyDropLocked(FF)V

    .line 287
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 288
    return-void

    .line 287
    :catchall_25
    move-exception p1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method onDragStateClosedLocked(Lcom/android/server/wm/DragState;)V
    .registers 3

    .line 322
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eq v0, p1, :cond_c

    .line 323
    const-string p1, "WindowManager"

    const-string v0, "Unknown drag state is closed"

    invoke-static {p1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return-void

    .line 326
    :cond_c
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    .line 327
    return-void
.end method

.method performDrag(Landroid/view/SurfaceSession;IILandroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;)Landroid/os/IBinder;
    .registers 31

    .line 98
    move-object/from16 v8, p0

    move-object/from16 v0, p4

    move/from16 v7, p8

    move/from16 v6, p9

    move/from16 v5, p10

    move/from16 v4, p11

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    .line 99
    iget-object v1, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    move-object/from16 v10, p4

    move-object v11, v3

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move/from16 v15, p10

    move/from16 v16, p11

    move-object/from16 v17, p12

    invoke-interface/range {v9 .. v17}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->prePerformDrag(Landroid/view/IWindow;Landroid/os/IBinder;IFFFFLandroid/content/ClipData;)Z

    move-result v1

    .line 102
    :try_start_2d
    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v9
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_237

    const/4 v10, 0x0

    :try_start_33
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 104
    if-nez v1, :cond_66

    .line 105
    const-string v0, "WindowManager"

    const-string v1, "IDragDropCallback rejects the performDrag request"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_33 .. :try_end_3f} :catchall_217

    .line 106
    nop

    .line 184
    if-eqz p6, :cond_45

    .line 185
    :try_start_42
    invoke-virtual/range {p6 .. p6}, Landroid/view/SurfaceControl;->release()V

    .line 187
    :cond_45
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_56

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_56

    .line 188
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_56
    monitor-exit v9
    :try_end_57
    .catchall {:try_start_42 .. :try_end_57} :catchall_231

    .line 194
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 106
    return-object v10

    .line 109
    :cond_66
    :try_start_66
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DragDropController;->dragDropActiveLocked()Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 110
    const-string v0, "WindowManager"

    const-string v1, "Drag already in progress"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_66 .. :try_end_73} :catchall_217

    .line 111
    nop

    .line 184
    if-eqz p6, :cond_79

    .line 185
    :try_start_76
    invoke-virtual/range {p6 .. p6}, Landroid/view/SurfaceControl;->release()V

    .line 187
    :cond_79
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_8a

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_8a

    .line 188
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_8a
    monitor-exit v9
    :try_end_8b
    .catchall {:try_start_76 .. :try_end_8b} :catchall_231

    .line 194
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 111
    return-object v10

    .line 114
    :cond_9a
    :try_start_9a
    iget-object v1, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v10, v0, v2}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v11

    .line 116
    if-eqz v11, :cond_1d9

    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->cantReceiveTouchInput()Z

    move-result v1

    if-eqz v1, :cond_ab

    goto/16 :goto_1d9

    .line 133
    :cond_ab
    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    .line 134
    if-nez v12, :cond_df

    .line 135
    const-string v0, "WindowManager"

    const-string v1, "display content is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b8
    .catchall {:try_start_9a .. :try_end_b8} :catchall_217

    .line 136
    nop

    .line 184
    if-eqz p6, :cond_be

    .line 185
    :try_start_bb
    invoke-virtual/range {p6 .. p6}, Landroid/view/SurfaceControl;->release()V

    .line 187
    :cond_be
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_cf

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_cf

    .line 188
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_cf
    monitor-exit v9
    :try_end_d0
    .catchall {:try_start_bb .. :try_end_d0} :catchall_231

    .line 194
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 136
    return-object v10

    .line 139
    :cond_df
    move/from16 v13, p5

    and-int/lit16 v1, v13, 0x200

    if-nez v1, :cond_e9

    .line 140
    const v1, 0x3f350481  # 0.7071f

    goto :goto_eb

    :cond_e9
    const/high16 v1, 0x3f800000  # 1.0f

    :goto_eb
    move v14, v1

    .line 141
    :try_start_ec
    invoke-interface/range {p4 .. p4}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 142
    new-instance v15, Landroid/os/Binder;

    invoke-direct {v15}, Landroid/os/Binder;-><init>()V

    .line 143
    new-instance v2, Lcom/android/server/wm/DragState;

    iget-object v1, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v16, v1

    move-object v1, v2

    move-object v10, v2

    move-object/from16 v2, v16

    move-object v13, v3

    move-object/from16 v3, p0

    move-object v4, v15

    move v15, v5

    move-object/from16 v5, p6

    move v15, v6

    move/from16 v6, p5

    move v15, v7

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/DragState;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DragDropController;Landroid/os/IBinder;Landroid/view/SurfaceControl;ILandroid/os/IBinder;)V

    iput-object v10, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;
    :try_end_110
    .catchall {:try_start_ec .. :try_end_110} :catchall_217

    .line 144
    nop

    .line 145
    :try_start_111
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v1, p2

    iput v1, v0, Lcom/android/server/wm/DragState;->mPid:I

    .line 146
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v1, p3

    iput v1, v0, Lcom/android/server/wm/DragState;->mUid:I

    .line 147
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput v14, v0, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    .line 148
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-object v13, v0, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    .line 149
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-object v12, v0, Lcom/android/server/wm/DragState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 151
    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 152
    iget-object v1, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    iget-object v2, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v3, v8, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v4, v11, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->registerInputChannel(Lcom/android/server/wm/DragState;Landroid/view/Display;Lcom/android/server/input/InputManagerService;Landroid/view/InputChannel;)Z

    move-result v0

    if-nez v0, :cond_16e

    .line 155
    const-string v0, "WindowManager"

    const-string v1, "Unable to transfer touch focus"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14a
    .catchall {:try_start_111 .. :try_end_14a} :catchall_1d6

    .line 156
    nop

    .line 184
    nop

    .line 187
    :try_start_14c
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_15d

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_15d

    .line 188
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_15d
    monitor-exit v9
    :try_end_15e
    .catchall {:try_start_14c .. :try_end_15e} :catchall_231

    .line 194
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 156
    const/4 v1, 0x0

    return-object v1

    .line 159
    :cond_16e
    :try_start_16e
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/android/server/wm/DragState;->mData:Landroid/content/ClipData;

    .line 160
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v2, p9

    move v1, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DragState;->broadcastDragStartedLocked(FF)V

    .line 161
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v3, p7

    invoke-virtual {v0, v3}, Lcom/android/server/wm/DragState;->overridePointerIconLocked(I)V

    .line 163
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v3, p10

    iput v3, v0, Lcom/android/server/wm/DragState;->mThumbOffsetX:F

    .line 164
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    move/from16 v4, p11

    iput v4, v0, Lcom/android/server/wm/DragState;->mThumbOffsetY:F

    .line 167
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v0, v0, Lcom/android/server/wm/DragState;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 170
    iget-object v5, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v5, v5, Lcom/android/server/wm/DragState;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 171
    iget-object v6, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget v6, v6, Lcom/android/server/wm/DragState;->mOriginalAlpha:F

    invoke-virtual {v5, v0, v6}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 172
    sub-float v3, v1, v3

    sub-float v4, v2, v4

    invoke-virtual {v5, v0, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 174
    invoke-virtual {v5, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 175
    invoke-virtual {v12, v5, v0}, Lcom/android/server/wm/DisplayContent;->reparentToOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 176
    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->scheduleAnimation()V

    .line 182
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DragState;->notifyLocationLocked(FF)V
    :try_end_1b3
    .catchall {:try_start_16e .. :try_end_1b3} :catchall_1d6

    .line 184
    nop

    .line 187
    :try_start_1b4
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_1c5

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_1c5

    .line 188
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->closeLocked()V

    .line 191
    :cond_1c5
    monitor-exit v9
    :try_end_1c6
    .catchall {:try_start_1b4 .. :try_end_1c6} :catchall_231

    :try_start_1c6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1c9
    .catchall {:try_start_1c6 .. :try_end_1c9} :catchall_237

    .line 192
    nop

    .line 194
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 192
    return-object v13

    .line 184
    :catchall_1d6
    move-exception v0

    const/4 v1, 0x0

    goto :goto_21a

    .line 117
    :cond_1d9
    :goto_1d9
    :try_start_1d9
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad requesting window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ef
    .catchall {:try_start_1d9 .. :try_end_1ef} :catchall_217

    .line 118
    nop

    .line 184
    if-eqz p6, :cond_1f5

    .line 185
    :try_start_1f2
    invoke-virtual/range {p6 .. p6}, Landroid/view/SurfaceControl;->release()V

    .line 187
    :cond_1f5
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v0, :cond_206

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_206

    .line 188
    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_206
    monitor-exit v9
    :try_end_207
    .catchall {:try_start_1f2 .. :try_end_207} :catchall_231

    .line 194
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v0}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    .line 118
    const/4 v1, 0x0

    return-object v1

    .line 184
    :catchall_217
    move-exception v0

    move-object/from16 v1, p6

    :goto_21a
    if-eqz v1, :cond_21f

    .line 185
    :try_start_21c
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 187
    :cond_21f
    iget-object v1, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v1, :cond_230

    iget-object v1, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1}, Lcom/android/server/wm/DragState;->isInProgress()Z

    move-result v1

    if-nez v1, :cond_230

    .line 188
    iget-object v1, v8, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v1}, Lcom/android/server/wm/DragState;->closeLocked()V

    :cond_230
    throw v0

    .line 191
    :catchall_231
    move-exception v0

    monitor-exit v9
    :try_end_233
    .catchall {:try_start_21c .. :try_end_233} :catchall_231

    :try_start_233
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_237
    .catchall {:try_start_233 .. :try_end_237} :catchall_237

    .line 194
    :catchall_237
    move-exception v0

    iget-object v1, v8, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postPerformDrag()V

    throw v0
.end method

.method registerCallback(Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;)V
    .registers 3

    .line 77
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method reportDropResult(Landroid/view/IWindow;Z)V
    .registers 7

    .line 199
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {v1, p1, p2}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->preReportDropResult(Landroid/view/IWindow;Z)V

    .line 206
    :try_start_f
    iget-object v1, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_af

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 207
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    if-nez v2, :cond_32

    .line 210
    const-string p1, "WindowManager"

    const-string p2, "Drop result given but no drag in progress"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_a9

    .line 234
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object p1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {p1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    .line 211
    return-void

    .line 214
    :cond_32
    :try_start_32
    iget-object v2, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iget-object v2, v2, Lcom/android/server/wm/DragState;->mToken:Landroid/os/IBinder;

    if-ne v2, v0, :cond_8b

    .line 223
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v3}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 225
    if-nez v0, :cond_71

    .line 226
    const-string p2, "WindowManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad result-reporting window "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_32 .. :try_end_62} :catchall_a9

    .line 234
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object p1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {p1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    .line 227
    return-void

    .line 230
    :cond_71
    :try_start_71
    iget-object p1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    iput-boolean p2, p1, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 231
    iget-object p1, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {p1}, Lcom/android/server/wm/DragState;->endDragLocked()V

    .line 232
    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_71 .. :try_end_7b} :catchall_a9

    :try_start_7b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_af

    .line 234
    iget-object p1, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {p1}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    .line 235
    nop

    .line 236
    return-void

    .line 216
    :cond_8b
    :try_start_8b
    const-string p2, "WindowManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid drop-result claim by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "reportDropResult() by non-recipient"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 232
    :catchall_a9
    move-exception p1

    monitor-exit v1
    :try_end_ab
    .catchall {:try_start_8b .. :try_end_ab} :catchall_a9

    :try_start_ab
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_af
    .catchall {:try_start_ab .. :try_end_af} :catchall_af

    .line 234
    :catchall_af
    move-exception p1

    iget-object p2, p0, Lcom/android/server/wm/DragDropController;->mCallback:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;

    invoke-interface {p2}, Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;->postReportDropResult()V

    throw p1
.end method

.method sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DragState;->sendDragStartedIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 88
    return-void
.end method

.method sendHandlerMessage(ILjava/lang/Object;)V
    .registers 4

    .line 306
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 307
    return-void
.end method

.method sendTimeoutMessage(ILjava/lang/Object;)V
    .registers 5

    .line 313
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 314
    iget-object v0, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 315
    iget-object p2, p0, Lcom/android/server/wm/DragDropController;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1388

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 316
    return-void
.end method
