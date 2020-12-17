.class public Lcom/android/server/wm/SeamlessRotator;
.super Ljava/lang/Object;
.source "SeamlessRotator.java"


# instance fields
.field private final mFloat9:[F

.field private final mNewRotation:I

.field private final mOldRotation:I

.field private final mTransform:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(IILandroid/view/DisplayInfo;)V
    .registers 9
    .param p1, "oldRotation"  # I
    .param p2, "newRotation"  # I
    .param p3, "info"  # Landroid/view/DisplayInfo;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    .line 44
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/SeamlessRotator;->mFloat9:[F

    .line 49
    iput p1, p0, Lcom/android/server/wm/SeamlessRotator;->mOldRotation:I

    .line 50
    iput p2, p0, Lcom/android/server/wm/SeamlessRotator;->mNewRotation:I

    .line 52
    iget v0, p3, Landroid/view/DisplayInfo;->rotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    iget v0, p3, Landroid/view/DisplayInfo;->rotation:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :cond_20
    :goto_20
    move v0, v1

    .line 53
    .local v0, "flipped":Z
    if-eqz v0, :cond_26

    iget v1, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_28

    :cond_26
    iget v1, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 54
    .local v1, "h":I
    :goto_28
    if-eqz v0, :cond_2d

    iget v2, p3, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_2f

    :cond_2d
    iget v2, p3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 56
    .local v2, "w":I
    :goto_2f
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 57
    .local v3, "tmp":Landroid/graphics/Matrix;
    iget-object v4, p0, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    invoke-static {p1, v2, v1, v4}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformLogicalToPhysicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 58
    invoke-static {p2, v2, v1, v3}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V

    .line 59
    iget-object v4, p0, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 60
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 110
    const-string v0, "{old="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/SeamlessRotator;->mOldRotation:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ", new="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/SeamlessRotator;->mNewRotation:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 111
    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public finish(Lcom/android/server/wm/WindowState;Z)V
    .registers 8
    .param p1, "win"  # Lcom/android/server/wm/WindowState;
    .param p2, "timeout"  # Z

    .line 97
    iget-object v0, p0, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 98
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 99
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/server/wm/SeamlessRotator;->mFloat9:[F

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 100
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mLastSurfacePosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mLastSurfacePosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 101
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v1, :cond_4f

    if-nez p2, :cond_4f

    .line 102
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 103
    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfaceController;->getHandle()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameNumber()J

    move-result-wide v3

    .line 102
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->deferTransactionUntil(Landroid/view/SurfaceControl;Landroid/os/IBinder;J)Landroid/view/SurfaceControl$Transaction;

    .line 104
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 105
    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfaceController;->getHandle()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameNumber()J

    move-result-wide v3

    .line 104
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->deferTransactionUntil(Landroid/view/SurfaceControl;Landroid/os/IBinder;J)Landroid/view/SurfaceControl$Transaction;

    .line 107
    :cond_4f
    return-void
.end method

.method public getOldRotation()I
    .registers 2

    .line 82
    iget v0, p0, Lcom/android/server/wm/SeamlessRotator;->mOldRotation:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 116
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 117
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/SeamlessRotator;->dump(Ljava/io/PrintWriter;)V

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ForcedSeamlessRotator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unrotate(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowState;)V
    .registers 7
    .param p1, "transaction"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "win"  # Lcom/android/server/wm/WindowState;

    .line 67
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/server/wm/SeamlessRotator;->mFloat9:[F

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mLastSurfacePosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mLastSurfacePosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 71
    .local v0, "winSurfacePos":[F
    iget-object v1, p0, Lcom/android/server/wm/SeamlessRotator;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 72
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    aget v2, v0, v2

    aget v3, v0, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 73
    return-void
.end method
