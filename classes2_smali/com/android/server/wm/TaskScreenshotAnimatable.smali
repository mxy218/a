.class Lcom/android/server/wm/TaskScreenshotAnimatable;
.super Ljava/lang/Object;
.source "TaskScreenshotAnimatable.java"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$Animatable;


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskScreenshotAnim"


# instance fields
.field private mHeight:I

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private mTask:Lcom/android/server/wm/Task;

.field private mWidth:I


# direct methods
.method private constructor <init>(Lcom/android/server/wm/Task;Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;)V
    .registers 6

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-nez p2, :cond_7

    .line 57
    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {p2}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    .line 58
    :goto_b
    iput-object p1, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mTask:Lcom/android/server/wm/Task;

    .line 59
    const/4 p1, 0x1

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v1

    goto :goto_16

    :cond_15
    move v1, p1

    :goto_16
    iput v1, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mWidth:I

    .line 60
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result p1

    :cond_1e
    iput p1, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mHeight:I

    .line 65
    new-instance p1, Landroid/view/SurfaceControl$Builder;

    new-instance v1, Landroid/view/SurfaceSession;

    invoke-direct {v1}, Landroid/view/SurfaceSession;-><init>()V

    invoke-direct {p1, v1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 66
    const-string v1, "RecentTaskScreenshotSurface"

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    iget v1, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mWidth:I

    iget v2, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mHeight:I

    .line 67
    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 69
    if-eqz v0, :cond_54

    .line 70
    new-instance p1, Landroid/view/Surface;

    invoke-direct {p1}, Landroid/view/Surface;-><init>()V

    .line 71
    iget-object v1, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 72
    invoke-virtual {p2}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/view/Surface;->attachAndQueueBufferWithColorSpace(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)V

    .line 73
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 75
    :cond_54
    invoke-virtual {p0}, Lcom/android/server/wm/TaskScreenshotAnimatable;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 76
    return-void
.end method

.method public static create(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskScreenshotAnimatable;
    .registers 3

    .line 41
    new-instance v0, Lcom/android/server/wm/TaskScreenshotAnimatable;

    invoke-static {p0}, Lcom/android/server/wm/TaskScreenshotAnimatable;->getBufferFromTask(Lcom/android/server/wm/Task;)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/TaskScreenshotAnimatable;-><init>(Lcom/android/server/wm/Task;Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;)V

    return-object v0
.end method

.method private static getBufferFromTask(Lcom/android/server/wm/Task;)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;
    .registers 3

    .line 45
    if-nez p0, :cond_4

    .line 46
    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 49
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 50
    nop

    .line 51
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object p0

    const/high16 v1, 0x3f800000  # 1.0f

    .line 50
    invoke-static {p0, v0, v1}, Landroid/view/SurfaceControl;->captureLayers(Landroid/os/IBinder;Landroid/graphics/Rect;F)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public commitPendingTransaction()V
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->commitPendingTransaction()V

    .line 86
    return-void
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getAnimationLeashParent()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public getParentSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getSurfaceHeight()I
    .registers 2

    .line 128
    iget v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mHeight:I

    return v0
.end method

.method public getSurfaceWidth()I
    .registers 2

    .line 123
    iget v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mWidth:I

    return v0
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 91
    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_a

    .line 96
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 97
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/TaskScreenshotAnimatable;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 99
    :cond_a
    return-void
.end method
