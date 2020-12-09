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
    .registers 13

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    .line 56
    iput v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    .line 57
    iput p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:I

    .line 58
    iput p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:I

    .line 59
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, -0x1

    invoke-direct {v1, p1, p1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceCrop:Landroid/graphics/Rect;

    .line 62
    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    .line 63
    iput v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    .line 64
    iput v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    .line 65
    iput v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    .line 67
    iput v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceAlpha:F

    .line 69
    iput p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceLayer:I

    .line 74
    iput-boolean p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForCrop:Z

    .line 77
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForOtherReasons:Z

    .line 85
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 89
    iput-object p7, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 91
    iput p3, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:I

    .line 92
    iput p4, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:I

    .line 94
    iput-object p2, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    .line 96
    iget-object v0, p7, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 97
    iget-object p7, p7, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    .line 98
    iput p8, p0, Lcom/android/server/wm/WindowSurfaceController;->mWindowType:I

    .line 99
    iget-object v0, p7, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mWindowSession:Lcom/android/server/wm/Session;

    .line 101
    const-wide/16 v0, 0x20

    const-string v2, "new SurfaceControl"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 102
    invoke-virtual {p7}, Lcom/android/server/wm/WindowState;->makeSurface()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 103
    invoke-virtual {p7}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p7

    invoke-virtual {v2, p7}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p7

    .line 104
    invoke-virtual {p7, p2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    .line 105
    invoke-virtual {p2, p3, p4}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    .line 106
    invoke-virtual {p2, p5}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    .line 107
    invoke-virtual {p2, p6}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    .line 108
    const/4 p3, 0x2

    invoke-virtual {p2, p3, p8}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    .line 109
    invoke-virtual {p2, p1, p9}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 111
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 112
    return-void
.end method

.method private hideSurface(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

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
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_e} :catch_f

    .line 156
    goto :goto_26

    .line 154
    :catch_f
    move-exception p1

    .line 155
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception hiding surface in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindowManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_26
    return-void
.end method

.method private logSurface(Ljava/lang/String;Ljava/lang/RuntimeException;)V
    .registers 5

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SURFACE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 116
    const-string v0, "WindowManager"

    if-eqz p2, :cond_23

    .line 117
    invoke-static {v0, p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26

    .line 119
    :cond_23
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_26
    return-void
.end method

.method private showSurface()Z
    .registers 5

    .line 443
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    .line 444
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_9} :catch_a

    .line 445
    return v0

    .line 446
    :catch_a
    move-exception v1

    .line 447
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

    .line 450
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v2, "show"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    .line 452
    const/4 v0, 0x0

    return v0
.end method

.method private updateVisibility()Z
    .registers 2

    .line 426
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForCrop:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForOtherReasons:Z

    if-eqz v0, :cond_9

    goto :goto_14

    .line 433
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    if-nez v0, :cond_12

    .line 434
    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfaceController;->showSurface()Z

    move-result v0

    return v0

    .line 436
    :cond_12
    const/4 v0, 0x1

    return v0

    .line 427
    :cond_14
    :goto_14
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    if-eqz v0, :cond_22

    .line 428
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowSurfaceController;->hideSurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 429
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0}, Landroid/view/SurfaceControl;->mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 431
    :cond_22
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method clearCropInTransaction(Z)V
    .registers 5

    .line 204
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 205
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceCrop:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 206
    return-void

    .line 208
    :cond_10
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    .line 209
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceCrop:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 215
    goto :goto_3c

    .line 210
    :catch_1b
    move-exception v0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error setting clearing crop of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    if-nez p1, :cond_3c

    .line 213
    iget-object p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v0, 0x1

    const-string v1, "crop"

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    .line 216
    :cond_3c
    :goto_3c
    return-void
.end method

.method clearWindowContentFrameStats()Z
    .registers 2

    .line 468
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_6

    .line 469
    const/4 v0, 0x0

    return v0

    .line 471
    :cond_6
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->clearContentFrameStats()Z

    move-result v0

    return v0
.end method

.method deferTransactionUntil(Landroid/os/IBinder;J)V
    .registers 5

    .line 457
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/os/IBinder;J)V

    .line 458
    return-void
.end method

.method destroyNotInTransaction()V
    .registers 7

    .line 164
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_11

    .line 165
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_11} :catch_19
    .catchall {:try_start_2 .. :try_end_11} :catchall_17

    .line 170
    :cond_11
    :goto_11
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    .line 171
    iput-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 172
    goto :goto_31

    .line 170
    :catchall_17
    move-exception v2

    goto :goto_32

    .line 167
    :catch_19
    move-exception v2

    .line 168
    :try_start_1a
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error destroying surface in: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_1a .. :try_end_30} :catchall_17

    goto :goto_11

    .line 173
    :goto_31
    return-void

    .line 170
    :goto_32
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    .line 171
    iput-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    throw v2
.end method

.method detachChildren()V
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_7

    .line 133
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->detachChildren()V

    .line 135
    :cond_7
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 4

    .line 541
    if-eqz p3, :cond_f

    .line 542
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mSurface="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 544
    :cond_f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "Surface: shown="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 545
    const-string p2, " layer="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceLayer:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 546
    const-string p2, " alpha="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceAlpha:F

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(F)V

    .line 547
    const-string p2, " rect=("

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(F)V

    .line 548
    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(F)V

    .line 549
    const-string p2, ") "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 550
    const-string p2, " x "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 551
    const-string p2, " transform=("

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(F)V

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 552
    iget p3, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(F)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(F)V

    .line 553
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(F)V

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    return-void
.end method

.method forceScaleableInTransaction(Z)V
    .registers 3

    .line 463
    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, -0x1

    .line 464
    :goto_5
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setOverrideScalingMode(I)V

    .line 465
    return-void
.end method

.method getContainerRect(Landroid/graphics/Rect;)V
    .registers 3

    .line 413
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowStateAnimator;->getContainerRect(Landroid/graphics/Rect;)V

    .line 414
    return-void
.end method

.method getHandle()Landroid/os/IBinder;
    .registers 2

    .line 487
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_6

    .line 488
    const/4 v0, 0x0

    return-object v0

    .line 490
    :cond_6
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method getHeight()I
    .registers 2

    .line 530
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:I

    return v0
.end method

.method getLayer()I
    .registers 2

    .line 498
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceLayer:I

    return v0
.end method

.method getShown()Z
    .registers 2

    .line 502
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    return v0
.end method

.method getSurfaceControl(Landroid/view/SurfaceControl;)V
    .registers 3

    .line 494
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 495
    return-void
.end method

.method getWidth()I
    .registers 2

    .line 526
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:I

    return v0
.end method

.method getWindowContentFrameStats(Landroid/view/WindowContentFrameStats;)Z
    .registers 3

    .line 475
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_6

    .line 476
    const/4 p1, 0x0

    return p1

    .line 478
    :cond_6
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->getContentFrameStats(Landroid/view/WindowContentFrameStats;)Z

    move-result p1

    return p1
.end method

.method getX()F
    .registers 2

    .line 518
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    return v0
.end method

.method getY()F
    .registers 2

    .line 522
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    return v0
.end method

.method hasSurface()Z
    .registers 2

    .line 483
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
    .registers 3

    .line 139
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForOtherReasons:Z

    .line 141
    iget-object p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowStateAnimator;->destroyPreservedSurfaceLocked()V

    .line 142
    iget-boolean p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    if-eqz p2, :cond_f

    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowSurfaceController;->hideSurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 145
    :cond_f
    return-void
.end method

.method prepareToShowInTransaction(FFFFFZ)Z
    .registers 9

    .line 319
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x1

    if-eqz v0, :cond_3c

    .line 321
    :try_start_5
    iput p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceAlpha:F

    .line 322
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 323
    iput p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    .line 324
    iput p3, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    .line 325
    iput p4, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    .line 326
    iput p5, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    .line 327
    iget-object p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_17} :catch_18

    .line 335
    goto :goto_3c

    .line 329
    :catch_18
    move-exception p1

    .line 330
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error updating surface in "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "WindowManager"

    invoke-static {p3, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    if-nez p6, :cond_3a

    .line 332
    iget-object p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string p2, "update"

    invoke-virtual {p1, p2, v1}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    .line 334
    :cond_3a
    const/4 p1, 0x0

    return p1

    .line 337
    :cond_3c
    :goto_3c
    return v1
.end method

.method reparentChildrenInTransaction(Lcom/android/server/wm/WindowSurfaceController;)V
    .registers 4

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_f

    iget-object v1, p1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_f

    .line 126
    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfaceController;->getHandle()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->reparentChildren(Landroid/os/IBinder;)V

    .line 128
    :cond_f
    return-void
.end method

.method setBufferSizeInTransaction(IIZ)Z
    .registers 9

    .line 291
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_d

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:I

    if-eq v0, p2, :cond_b

    goto :goto_d

    :cond_b
    move v0, v1

    goto :goto_e

    :cond_d
    :goto_d
    move v0, v2

    .line 292
    :goto_e
    if-eqz v0, :cond_53

    .line 293
    iput p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:I

    .line 294
    iput p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:I

    .line 299
    :try_start_14
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setBufferSize(II)V
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_19} :catch_1b

    .line 310
    nop

    .line 311
    return v2

    .line 300
    :catch_1b
    move-exception v0

    .line 304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error resizing surface of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " size=("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WindowManager"

    invoke-static {p2, p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    if-nez p3, :cond_52

    .line 307
    iget-object p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string p2, "size"

    invoke-virtual {p1, p2, v2}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    .line 309
    :cond_52
    return v1

    .line 313
    :cond_53
    return v1
.end method

.method setColorSpaceAgnostic(Z)V
    .registers 4

    .line 395
    const-string v0, "setColorSpaceAgnostic"

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_7

    .line 396
    return-void

    .line 401
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 403
    :try_start_c
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl;->setColorSpaceAgnostic(Z)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_18

    .line 405
    iget-object p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 409
    nop

    .line 410
    return-void

    .line 405
    :catchall_18
    move-exception p1

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw p1
.end method

.method setCropInTransaction(Landroid/graphics/Rect;Z)V
    .registers 7

    .line 179
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_26

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lez v1, :cond_26

    .line 180
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 181
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    .line 182
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceCrop:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 184
    :cond_1f
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForCrop:Z

    .line 185
    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfaceController;->updateVisibility()Z

    goto :goto_30

    .line 187
    :cond_26
    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForCrop:Z

    .line 188
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->destroyPreservedSurfaceLocked()V

    .line 189
    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfaceController;->updateVisibility()Z
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_30} :catch_31

    .line 197
    :goto_30
    goto :goto_5d

    .line 191
    :catch_31
    move-exception v1

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setting crop surface of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " crop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 192
    const-string v2, "WindowManager"

    invoke-static {v2, p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    if-nez p2, :cond_5d

    .line 195
    iget-object p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string p2, "crop"

    invoke-virtual {p1, p2, v0}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    .line 198
    :cond_5d
    :goto_5d
    return-void
.end method

.method setGeometryAppliesWithResizeInTransaction(Z)V
    .registers 2

    .line 249
    iget-object p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->setGeometryAppliesWithResize()V

    .line 250
    return-void
.end method

.method setMatrix(Landroid/view/SurfaceControl$Transaction;FFFFZ)V
    .registers 15

    .line 259
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    cmpl-float v0, v0, p2

    const/4 v1, 0x1

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    cmpl-float v0, v0, p4

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    cmpl-float v0, v0, p5

    if-eqz v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x0

    goto :goto_1d

    :cond_1c
    :goto_1c
    move v0, v1

    .line 261
    :goto_1d
    if-nez v0, :cond_20

    .line 262
    return-void

    .line 265
    :cond_20
    iput p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    .line 266
    iput p3, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    .line 267
    iput p4, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    .line 268
    iput p5, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    .line 273
    if-nez p1, :cond_30

    .line 274
    :try_start_2a
    iget-object p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_3a

    .line 276
    :cond_30
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;
    :try_end_3a
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_3a} :catch_3b

    .line 287
    :goto_3a
    goto :goto_7f

    .line 278
    :catch_3b
    move-exception p1

    .line 282
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error setting matrix on surface surface"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " MATRIX ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "WindowManager"

    invoke-static {p3, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    if-nez p6, :cond_7f

    .line 285
    iget-object p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string p2, "matrix"

    invoke-virtual {p1, p2, v1}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    .line 288
    :cond_7f
    :goto_7f
    return-void
.end method

.method setMatrixInTransaction(FFFFZ)V
    .registers 13

    .line 254
    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WindowSurfaceController;->setMatrix(Landroid/view/SurfaceControl$Transaction;FFFFZ)V

    .line 255
    return-void
.end method

.method setOpaque(Z)V
    .registers 4

    .line 360
    const-string v0, "setOpaqueLocked"

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_7

    .line 361
    return-void

    .line 364
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 366
    :try_start_c
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl;->setOpaque(Z)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_18

    .line 368
    iget-object p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 370
    nop

    .line 371
    return-void

    .line 368
    :catchall_18
    move-exception p1

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw p1
.end method

.method setPosition(Landroid/view/SurfaceControl$Transaction;FFZ)V
    .registers 8

    .line 224
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    cmpl-float v0, v0, p2

    const/4 v1, 0x1

    if-nez v0, :cond_10

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    move v0, v1

    .line 225
    :goto_11
    if-eqz v0, :cond_5a

    .line 226
    iput p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    .line 227
    iput p3, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    .line 233
    if-nez p1, :cond_1f

    .line 234
    :try_start_19
    iget-object p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    goto :goto_24

    .line 236
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_24} :catch_25

    .line 244
    :goto_24
    goto :goto_5a

    .line 238
    :catch_25
    move-exception p1

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error positioning surface of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " pos=("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "WindowManager"

    invoke-static {p3, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    if-nez p4, :cond_5a

    .line 242
    iget-object p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string p2, "position"

    invoke-virtual {p1, p2, v1}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    .line 246
    :cond_5a
    :goto_5a
    return-void
.end method

.method setPositionInTransaction(FFZ)V
    .registers 5

    .line 219
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/wm/WindowSurfaceController;->setPosition(Landroid/view/SurfaceControl$Transaction;FFZ)V

    .line 220
    return-void
.end method

.method setSecure(Z)V
    .registers 4

    .line 377
    const-string v0, "setSecure"

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_7

    .line 378
    return-void

    .line 381
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 383
    :try_start_c
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl;->setSecure(Z)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_18

    .line 385
    iget-object p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 387
    nop

    .line 388
    return-void

    .line 385
    :catchall_18
    move-exception p1

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw p1
.end method

.method setShown(Z)V
    .registers 4

    .line 506
    iput-boolean p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    .line 508
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/WindowManagerService;->updateNonSystemOverlayWindowsVisibilityIfNeeded(Lcom/android/server/wm/WindowState;Z)V

    .line 510
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowState;->onSurfaceShownChanged(Z)V

    .line 512
    iget-object p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mWindowSession:Lcom/android/server/wm/Session;

    if-eqz p1, :cond_1d

    .line 513
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    iget v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mWindowType:I

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/server/wm/Session;->onWindowSurfaceVisibilityChanged(Lcom/android/server/wm/WindowSurfaceController;ZI)V

    .line 515
    :cond_1d
    return-void
.end method

.method setTransparentRegionHint(Landroid/graphics/Region;)V
    .registers 4

    .line 341
    const-string v0, "setTransparentRegion"

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_e

    .line 342
    const-string p1, "WindowManager"

    const-string v0, "setTransparentRegionHint: null mSurface after mHasSurface true"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return-void

    .line 346
    :cond_e
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 348
    :try_start_13
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1f

    .line 350
    iget-object p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 353
    nop

    .line 354
    return-void

    .line 350
    :catchall_1f
    move-exception p1

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw p1
.end method

.method showRobustlyInTransaction()Z
    .registers 2

    .line 421
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForOtherReasons:Z

    .line 422
    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfaceController;->updateVisibility()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 558
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 534
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 535
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    const-wide v1, 0x10800000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 536
    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceLayer:I

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 537
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 538
    return-void
.end method
