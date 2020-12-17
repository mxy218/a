.class Lcom/android/server/wm/WindowSurfaceController;
.super Ljava/lang/Object;
.source "WindowSurfaceController.java"


# static fields
.field static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field final mAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field private mHiddenForCrop:Z

.field private mHiddenForOtherReasons:Z

.field private mLastDsdx:F

.field private mLastDsdy:F

.field private mLastDtdx:F

.field private mLastDtdy:F

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSurfaceAlpha:F

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field private mSurfaceCrop:Landroid/graphics/Rect;

.field private mSurfaceH:I

.field private mSurfaceLayer:I

.field private mSurfaceShown:Z

.field private mSurfaceW:I

.field private mSurfaceX:F

.field private mSurfaceY:F

.field private final mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mWindowSession:Lcom/android/server/wm/Session;

.field private final mWindowType:I

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILcom/android/server/wm/WindowStateAnimator;II)V
    .registers 16
    .param p1, "s"  # Landroid/view/SurfaceSession;
    .param p2, "name"  # Ljava/lang/String;
    .param p3, "w"  # I
    .param p4, "h"  # I
    .param p5, "format"  # I
    .param p6, "flags"  # I
    .param p7, "animator"  # Lcom/android/server/wm/WindowStateAnimator;
    .param p8, "windowType"  # I
    .param p9, "ownerUid"  # I

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    .line 55
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    .line 56
    iput v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    .line 57
    iput v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:I

    .line 58
    iput v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:I

    .line 59
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, -0x1

    invoke-direct {v2, v0, v0, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceCrop:Landroid/graphics/Rect;

    .line 62
    const/high16 v2, 0x3f800000  # 1.0f

    iput v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    .line 63
    iput v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    .line 64
    iput v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    .line 65
    iput v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    .line 67
    iput v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceAlpha:F

    .line 69
    iput v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceLayer:I

    .line 74
    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForCrop:Z

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForOtherReasons:Z

    .line 85
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 89
    iput-object p7, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 91
    iput p3, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:I

    .line 92
    iput p4, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:I

    .line 94
    iput-object p2, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    .line 96
    iget-object v1, p7, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 97
    iget-object v1, p7, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 98
    .local v1, "win":Lcom/android/server/wm/WindowState;
    iput p8, p0, Lcom/android/server/wm/WindowSurfaceController;->mWindowType:I

    .line 99
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mWindowSession:Lcom/android/server/wm/Session;

    .line 101
    const-wide/16 v2, 0x20

    const-string v4, "new SurfaceControl"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 102
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->makeSurface()Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 103
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 104
    invoke-virtual {v4, p2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 105
    invoke-virtual {v4, p3, p4}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 106
    invoke-virtual {v4, p5}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 107
    invoke-virtual {v4, p6}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 108
    const/4 v5, 0x2

    invoke-virtual {v4, v5, p8}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 109
    invoke-virtual {v4, v0, p9}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 110
    .local v0, "b":Landroid/view/SurfaceControl$Builder;
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 111
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 112
    return-void
.end method

.method private hideSurface(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5
    .param p1, "transaction"  # Landroid/view/SurfaceControl$Transaction;

    .line 148
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 149
    return-void

    .line 151
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    .line 153
    :try_start_9
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 156
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wm/WmsInjector;->hideWindow(II)V
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_1f} :catch_20

    .line 160
    goto :goto_37

    .line 158
    :catch_20
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception hiding surface in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .end local v0  # "e":Ljava/lang/RuntimeException;
    :goto_37
    return-void
.end method

.method private logSurface(Ljava/lang/String;Ljava/lang/RuntimeException;)V
    .registers 5
    .param p1, "msg"  # Ljava/lang/String;
    .param p2, "where"  # Ljava/lang/RuntimeException;

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SURFACE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "str":Ljava/lang/String;
    const-string v1, "WindowManager"

    if-eqz p2, :cond_23

    .line 117
    invoke-static {v1, v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    .line 119
    :cond_23
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_26
    return-void
.end method

.method private showSurface()Z
    .registers 5

    .line 451
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    .line 452
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V

    .line 455
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/wm/WmsInjector;->showWindow(II)V
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1a} :catch_1b

    .line 457
    return v0

    .line 458
    :catch_1b
    move-exception v1

    .line 459
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure showing surface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 462
    .end local v1  # "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v2, "show"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    .line 464
    const/4 v0, 0x0

    return v0
.end method

.method private updateVisibility()Z
    .registers 2

    .line 434
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForCrop:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForOtherReasons:Z

    if-eqz v0, :cond_9

    goto :goto_14

    .line 441
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    if-nez v0, :cond_12

    .line 442
    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfaceController;->showSurface()Z

    move-result v0

    return v0

    .line 444
    :cond_12
    const/4 v0, 0x1

    return v0

    .line 435
    :cond_14
    :goto_14
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    if-eqz v0, :cond_22

    .line 436
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowSurfaceController;->hideSurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 437
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0}, Landroid/view/SurfaceControl;->mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 439
    :cond_22
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method clearCropInTransaction(Z)V
    .registers 6
    .param p1, "recoveringMemory"  # Z

    .line 209
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    const-string v1, "CLEAR CROP"

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/WindowSurfaceController;->logSurface(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 212
    :cond_a
    :try_start_a
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 213
    .local v0, "clipRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceCrop:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 214
    return-void

    .line 216
    :cond_1a
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    .line 217
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceCrop:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_24} :catch_25

    .line 223
    .end local v0  # "clipRect":Landroid/graphics/Rect;
    goto :goto_46

    .line 218
    :catch_25
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error setting clearing crop of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    if-nez p1, :cond_46

    .line 221
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v2, 0x1

    const-string v3, "crop"

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    .line 224
    .end local v0  # "e":Ljava/lang/RuntimeException;
    :cond_46
    :goto_46
    return-void
.end method

.method clearWindowContentFrameStats()Z
    .registers 2

    .line 480
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_6

    .line 481
    const/4 v0, 0x0

    return v0

    .line 483
    :cond_6
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->clearContentFrameStats()Z

    move-result v0

    return v0
.end method

.method deferTransactionUntil(Landroid/os/IBinder;J)V
    .registers 5
    .param p1, "handle"  # Landroid/os/IBinder;
    .param p2, "frame"  # J

    .line 469
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/os/IBinder;J)V

    .line 470
    return-void
.end method

.method destroyNotInTransaction()V
    .registers 7

    .line 164
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    const-string v1, "WindowManager"

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v0, :cond_2c

    .line 165
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying surface "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " called by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_2c
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_2e
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_37

    .line 169
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->remove()V

    .line 173
    :cond_37
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mPid:I

    iget-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/wm/WmsInjector;->destoryWindow(II)V
    :try_end_48
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_48} :catch_51
    .catchall {:try_start_2e .. :try_end_48} :catchall_4f

    .line 178
    nop

    :goto_49
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    .line 179
    iput-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 180
    goto :goto_68

    .line 178
    :catchall_4f
    move-exception v1

    goto :goto_69

    .line 175
    :catch_51
    move-exception v3

    .line 176
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error destroying surface in: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_66
    .catchall {:try_start_52 .. :try_end_66} :catchall_4f

    .line 178
    nop

    .end local v3  # "e":Ljava/lang/RuntimeException;
    goto :goto_49

    .line 181
    :goto_68
    return-void

    .line 178
    :goto_69
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    .line 179
    iput-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    throw v1
.end method

.method detachChildren()V
    .registers 3

    .line 131
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_b

    const-string v0, "WindowManager"

    const-string v1, "SEVER CHILDREN"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_12

    .line 133
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->detachChildren()V

    .line 135
    :cond_12
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;
    .param p3, "dumpAll"  # Z

    .line 551
    if-eqz p3, :cond_f

    .line 552
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSurface="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 554
    :cond_f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Surface: shown="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 555
    const-string v0, " layer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceLayer:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 556
    const-string v0, " alpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 557
    const-string v0, " rect=("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 558
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 559
    const-string v0, ") "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 560
    const-string v0, " x "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 561
    const-string v0, " transform=("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 562
    iget v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 563
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    return-void
.end method

.method forceScaleableInTransaction(Z)V
    .registers 4
    .param p1, "force"  # Z

    .line 475
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, -0x1

    .line 476
    .local v0, "scalingMode":I
    :goto_5
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl;->setOverrideScalingMode(I)V

    .line 477
    return-void
.end method

.method getContainerRect(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "rect"  # Landroid/graphics/Rect;

    .line 421
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowStateAnimator;->getContainerRect(Landroid/graphics/Rect;)V

    .line 422
    return-void
.end method

.method getHandle()Landroid/os/IBinder;
    .registers 2

    .line 499
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_6

    .line 500
    const/4 v0, 0x0

    return-object v0

    .line 502
    :cond_6
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method getHeight()I
    .registers 2

    .line 540
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:I

    return v0
.end method

.method getLayer()I
    .registers 2

    .line 510
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceLayer:I

    return v0
.end method

.method getShown()Z
    .registers 2

    .line 514
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    return v0
.end method

.method getSurfaceControl(Landroid/view/SurfaceControl;)V
    .registers 3
    .param p1, "outSurfaceControl"  # Landroid/view/SurfaceControl;

    .line 506
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 507
    return-void
.end method

.method getWidth()I
    .registers 2

    .line 536
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:I

    return v0
.end method

.method getWindowContentFrameStats(Landroid/view/WindowContentFrameStats;)Z
    .registers 3
    .param p1, "outStats"  # Landroid/view/WindowContentFrameStats;

    .line 487
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_6

    .line 488
    const/4 v0, 0x0

    return v0

    .line 490
    :cond_6
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->getContentFrameStats(Landroid/view/WindowContentFrameStats;)Z

    move-result v0

    return v0
.end method

.method getX()F
    .registers 2

    .line 528
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    return v0
.end method

.method getY()F
    .registers 2

    .line 532
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    return v0
.end method

.method hasSurface()Z
    .registers 2

    .line 495
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V
    .registers 5
    .param p1, "transaction"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "reason"  # Ljava/lang/String;

    .line 138
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HIDE ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/WindowSurfaceController;->logSurface(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 139
    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForOtherReasons:Z

    .line 141
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroyPreservedSurfaceLocked()V

    .line 142
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    if-eqz v0, :cond_2d

    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowSurfaceController;->hideSurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 145
    :cond_2d
    return-void
.end method

.method prepareToShowInTransaction(FFFFFZ)Z
    .registers 11
    .param p1, "alpha"  # F
    .param p2, "dsdx"  # F
    .param p3, "dtdx"  # F
    .param p4, "dsdy"  # F
    .param p5, "dtdy"  # F
    .param p6, "recoveringMemory"  # Z

    .line 327
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x1

    if-eqz v0, :cond_3c

    .line 329
    :try_start_5
    iput p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceAlpha:F

    .line 330
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 331
    iput p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    .line 332
    iput p3, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    .line 333
    iput p4, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    .line 334
    iput p5, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    .line 335
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_17} :catch_18

    .line 343
    goto :goto_3c

    .line 337
    :catch_18
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error updating surface in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    if-nez p6, :cond_3a

    .line 340
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v3, "update"

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    .line 342
    :cond_3a
    const/4 v1, 0x0

    return v1

    .line 345
    .end local v0  # "e":Ljava/lang/RuntimeException;
    :cond_3c
    :goto_3c
    return v1
.end method

.method reparentChildrenInTransaction(Lcom/android/server/wm/WindowSurfaceController;)V
    .registers 4
    .param p1, "other"  # Lcom/android/server/wm/WindowSurfaceController;

    .line 124
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REPARENT from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_31

    iget-object v1, p1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_31

    .line 126
    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfaceController;->getHandle()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->reparentChildren(Landroid/os/IBinder;)V

    .line 128
    :cond_31
    return-void
.end method

.method setBufferSizeInTransaction(IIZ)Z
    .registers 11
    .param p1, "width"  # I
    .param p2, "height"  # I
    .param p3, "recoveringMemory"  # Z

    .line 299
    const-string v0, "x"

    iget v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, p1, :cond_f

    iget v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:I

    if-eq v1, p2, :cond_d

    goto :goto_f

    :cond_d
    move v1, v2

    goto :goto_10

    :cond_f
    :goto_f
    move v1, v3

    .line 300
    .local v1, "surfaceResized":Z
    :goto_10
    if-eqz v1, :cond_72

    .line 301
    iput p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:I

    .line 302
    iput p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:I

    .line 305
    :try_start_16
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v4, :cond_35

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIZE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/server/wm/WindowSurfaceController;->logSurface(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 307
    :cond_35
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, p1, p2}, Landroid/view/SurfaceControl;->setBufferSize(II)V
    :try_end_3a
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_3a} :catch_3c

    .line 318
    nop

    .line 319
    return v3

    .line 308
    :catch_3c
    move-exception v4

    .line 312
    .local v4, "e":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error resizing surface of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " size=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "WindowManager"

    invoke-static {v5, v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    if-nez p3, :cond_71

    .line 315
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v5, "size"

    invoke-virtual {v0, v5, v3}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    .line 317
    :cond_71
    return v2

    .line 321
    .end local v4  # "e":Ljava/lang/RuntimeException;
    :cond_72
    return v2
.end method

.method setColorSpaceAgnostic(Z)V
    .registers 7
    .param p1, "agnostic"  # Z

    .line 399
    const-string v0, "<<< CLOSE TRANSACTION setColorSpaceAgnosticLocked"

    const-string v1, "setColorSpaceAgnostic"

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v2, :cond_1d

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isColorSpaceAgnostic="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/WindowSurfaceController;->logSurface(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 403
    :cond_1d
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v2, :cond_22

    .line 404
    return-void

    .line 406
    :cond_22
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    const-string v3, "WindowManager"

    if-eqz v2, :cond_2d

    .line 407
    const-string v2, ">>> OPEN TRANSACTION setColorSpaceAgnosticLocked"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_2d
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 411
    :try_start_32
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, p1}, Landroid/view/SurfaceControl;->setColorSpaceAgnostic(Z)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_44

    .line 413
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 414
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_43

    .line 415
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_43
    return-void

    .line 413
    :catchall_44
    move-exception v2

    iget-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 414
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_51

    .line 415
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    throw v2
.end method

.method setCropInTransaction(Landroid/graphics/Rect;Z)V
    .registers 7
    .param p1, "clipRect"  # Landroid/graphics/Rect;
    .param p2, "recoveringMemory"  # Z

    .line 184
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CROP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 184
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/WindowSurfaceController;->logSurface(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 187
    :cond_1d
    const/4 v0, 0x1

    :try_start_1e
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_43

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lez v1, :cond_43

    .line 188
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 189
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    .line 190
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceCrop:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 192
    :cond_3c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForCrop:Z

    .line 193
    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfaceController;->updateVisibility()Z

    goto :goto_4d

    .line 195
    :cond_43
    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForCrop:Z

    .line 196
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->destroyPreservedSurfaceLocked()V

    .line 197
    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfaceController;->updateVisibility()Z
    :try_end_4d
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_4d} :catch_4e

    .line 205
    :goto_4d
    goto :goto_7a

    .line 199
    :catch_4e
    move-exception v1

    .line 200
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setting crop surface of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " crop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    const-string v3, "WindowManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    if-nez p2, :cond_7a

    .line 203
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v3, "crop"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    .line 206
    .end local v1  # "e":Ljava/lang/RuntimeException;
    :cond_7a
    :goto_7a
    return-void
.end method

.method setGeometryAppliesWithResizeInTransaction(Z)V
    .registers 3
    .param p1, "recoveringMemory"  # Z

    .line 257
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->setGeometryAppliesWithResize()V

    .line 258
    return-void
.end method

.method setMatrix(Landroid/view/SurfaceControl$Transaction;FFFFZ)V
    .registers 23
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "dsdx"  # F
    .param p3, "dtdx"  # F
    .param p4, "dtdy"  # F
    .param p5, "dsdy"  # F
    .param p6, "recoveringMemory"  # Z

    .line 267
    move-object/from16 v1, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    const-string v12, "]"

    const-string v13, ","

    iget v0, v1, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    cmpl-float v0, v0, v8

    if-nez v0, :cond_29

    iget v0, v1, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    cmpl-float v0, v0, v9

    if-nez v0, :cond_29

    iget v0, v1, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    cmpl-float v0, v0, v10

    if-nez v0, :cond_29

    iget v0, v1, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    cmpl-float v0, v0, v11

    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    const/4 v0, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 v0, 0x1

    :goto_2a
    move v15, v0

    .line 269
    .local v15, "matrixChanged":Z
    if-nez v15, :cond_2e

    .line 270
    return-void

    .line 273
    :cond_2e
    iput v8, v1, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    .line 274
    iput v9, v1, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    .line 275
    iput v10, v1, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    .line 276
    iput v11, v1, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    .line 279
    const/4 v7, 0x0

    :try_start_37
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_64

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MATRIX ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v7}, Lcom/android/server/wm/WindowSurfaceController;->logSurface(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 281
    :cond_64
    if-nez p1, :cond_6c

    .line 282
    iget-object v0, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_7c

    .line 284
    :cond_6c
    iget-object v3, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_6e
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_6e} :catch_7f

    move-object/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object v14, v7

    move/from16 v7, p5

    :try_start_79
    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;
    :try_end_7c
    .catch Ljava/lang/RuntimeException; {:try_start_79 .. :try_end_7c} :catch_7d

    .line 295
    :goto_7c
    goto :goto_c0

    .line 286
    :catch_7d
    move-exception v0

    goto :goto_81

    :catch_7f
    move-exception v0

    move-object v14, v7

    .line 290
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setting matrix on surface surface"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " MATRIX ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    if-nez p6, :cond_c0

    .line 293
    iget-object v2, v1, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v3, "matrix"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    .line 296
    .end local v0  # "e":Ljava/lang/RuntimeException;
    :cond_c0
    :goto_c0
    return-void
.end method

.method setMatrixInTransaction(FFFFZ)V
    .registers 13
    .param p1, "dsdx"  # F
    .param p2, "dtdx"  # F
    .param p3, "dtdy"  # F
    .param p4, "dsdy"  # F
    .param p5, "recoveringMemory"  # Z

    .line 262
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WindowSurfaceController;->setMatrix(Landroid/view/SurfaceControl$Transaction;FFFFZ)V

    .line 263
    return-void
.end method

.method setOpaque(Z)V
    .registers 7
    .param p1, "isOpaque"  # Z

    .line 365
    const-string v0, "<<< CLOSE TRANSACTION setOpaqueLocked"

    const-string v1, "setOpaqueLocked"

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v2, :cond_1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOpaque="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/WindowSurfaceController;->logSurface(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 368
    :cond_1d
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v2, :cond_22

    .line 369
    return-void

    .line 371
    :cond_22
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    const-string v3, "WindowManager"

    if-eqz v2, :cond_2d

    const-string v2, ">>> OPEN TRANSACTION setOpaqueLocked"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_2d
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 374
    :try_start_32
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, p1}, Landroid/view/SurfaceControl;->setOpaque(Z)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_44

    .line 376
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 377
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_43

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_43
    return-void

    .line 376
    :catchall_44
    move-exception v2

    iget-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 377
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_51

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    throw v2
.end method

.method setPosition(Landroid/view/SurfaceControl$Transaction;FFZ)V
    .registers 12
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "left"  # F
    .param p3, "top"  # F
    .param p4, "recoveringMemory"  # Z

    .line 232
    const-string v0, ")"

    const-string v1, ","

    iget v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    cmpl-float v2, v2, p2

    const/4 v3, 0x1

    if-nez v2, :cond_14

    iget v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    cmpl-float v2, v2, p3

    if-eqz v2, :cond_12

    goto :goto_14

    :cond_12
    const/4 v2, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    move v2, v3

    .line 233
    .local v2, "surfaceMoved":Z
    :goto_15
    if-eqz v2, :cond_7c

    .line 234
    iput p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    .line 235
    iput p3, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    .line 238
    :try_start_1b
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v4, :cond_3d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "POS (setPositionInTransaction) @ ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/server/wm/WindowSurfaceController;->logSurface(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 241
    :cond_3d
    if-nez p1, :cond_45

    .line 242
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, p2, p3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    goto :goto_4a

    .line 244
    :cond_45
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v4, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;
    :try_end_4a
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_4a} :catch_4b

    .line 252
    :goto_4a
    goto :goto_7c

    .line 246
    :catch_4b
    move-exception v4

    .line 247
    .local v4, "e":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error positioning surface of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " pos=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    if-nez p4, :cond_7c

    .line 250
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v1, "position"

    invoke-virtual {v0, v1, v3}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    .line 254
    .end local v4  # "e":Ljava/lang/RuntimeException;
    :cond_7c
    :goto_7c
    return-void
.end method

.method setPositionInTransaction(FFZ)V
    .registers 5
    .param p1, "left"  # F
    .param p2, "top"  # F
    .param p3, "recoveringMemory"  # Z

    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/wm/WindowSurfaceController;->setPosition(Landroid/view/SurfaceControl$Transaction;FFZ)V

    .line 228
    return-void
.end method

.method setSecure(Z)V
    .registers 7
    .param p1, "isSecure"  # Z

    .line 382
    const-string v0, "<<< CLOSE TRANSACTION setSecureLocked"

    const-string v1, "setSecure"

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v2, :cond_1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSecure="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/WindowSurfaceController;->logSurface(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 385
    :cond_1d
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v2, :cond_22

    .line 386
    return-void

    .line 388
    :cond_22
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    const-string v3, "WindowManager"

    if-eqz v2, :cond_2d

    const-string v2, ">>> OPEN TRANSACTION setSecureLocked"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_2d
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 391
    :try_start_32
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, p1}, Landroid/view/SurfaceControl;->setSecure(Z)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_44

    .line 393
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 394
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_43

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_43
    return-void

    .line 393
    :catchall_44
    move-exception v2

    iget-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 394
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_51

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    throw v2
.end method

.method setShown(Z)V
    .registers 5
    .param p1, "surfaceShown"  # Z

    .line 518
    iput-boolean p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    .line 520
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/WindowManagerService;->updateNonSystemOverlayWindowsVisibilityIfNeeded(Lcom/android/server/wm/WindowState;Z)V

    .line 522
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mWindowSession:Lcom/android/server/wm/Session;

    if-eqz v0, :cond_16

    .line 523
    iget-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    iget v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mWindowType:I

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/wm/Session;->onWindowSurfaceVisibilityChanged(Lcom/android/server/wm/WindowSurfaceController;ZI)V

    .line 525
    :cond_16
    return-void
.end method

.method setTransparentRegionHint(Landroid/graphics/Region;)V
    .registers 7
    .param p1, "region"  # Landroid/graphics/Region;

    .line 349
    const-string v0, "<<< CLOSE TRANSACTION setTransparentRegion"

    const-string v1, "setTransparentRegion"

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    const-string v3, "WindowManager"

    if-nez v2, :cond_10

    .line 350
    const-string v0, "setTransparentRegionHint: null mSurface after mHasSurface true"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return-void

    .line 353
    :cond_10
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v2, :cond_19

    const-string v2, ">>> OPEN TRANSACTION setTransparentRegion"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_19
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 356
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_30

    .line 358
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 359
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_2f

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_2f
    return-void

    .line 358
    :catchall_30
    move-exception v2

    iget-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 359
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_3d

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    throw v2
.end method

.method showRobustlyInTransaction()Z
    .registers 3

    .line 425
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    const-string v1, "SHOW (performLayout)"

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/WindowSurfaceController;->logSurface(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    .line 427
    :cond_a
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Showing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " during relayout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForOtherReasons:Z

    .line 430
    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfaceController;->updateVisibility()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 568
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J

    .line 544
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 545
    .local v0, "token":J
    iget-boolean v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 546
    iget v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceLayer:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 547
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 548
    return-void
.end method
