.class Lcom/android/server/wm/EmulatorDisplayOverlay;
.super Ljava/lang/Object;
.source "EmulatorDisplayOverlay.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mDrawNeeded:Z

.field private mLastDH:I

.field private mLastDW:I

.field private mOverlay:Landroid/graphics/drawable/Drawable;

.field private mRotation:I

.field private mScreenSize:Landroid/graphics/Point;

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;I)V
    .registers 7

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurface:Landroid/view/Surface;

    .line 52
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 53
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    .line 54
    iget-object v1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 56
    nop

    .line 58
    const/4 v0, 0x0

    :try_start_1c
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    const-string v1, "EmulatorDisplayOverlay"

    .line 59
    invoke-virtual {p2, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 60
    invoke-virtual {p2, v1, v2}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    const/4 v1, -0x3

    .line 61
    invoke-virtual {p2, v1}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object p2

    .line 62
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 63
    invoke-virtual {v0, p3}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 64
    const/4 p2, 0x0

    invoke-virtual {v0, p2, p2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 65
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 66
    iget-object p2, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurface:Landroid/view/Surface;

    invoke-virtual {p2, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_4a
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1c .. :try_end_4a} :catch_4b

    .line 68
    goto :goto_4c

    .line 67
    :catch_4b
    move-exception p2

    .line 69
    :goto_4c
    iput-object v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 70
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mDrawNeeded:Z

    .line 71
    const p2, 0x10802cd

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 73
    return-void
.end method

.method private drawIfNeeded()V
    .registers 5

    .line 76
    iget-boolean v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mDrawNeeded:Z

    if-eqz v0, :cond_4f

    iget-boolean v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mVisible:Z

    if-nez v0, :cond_9

    goto :goto_4f

    .line 79
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mDrawNeeded:Z

    .line 81
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 82
    const/4 v2, 0x0

    .line 84
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3, v1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v2
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_20} :catch_23
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1a .. :try_end_20} :catch_21

    .line 87
    :goto_20
    goto :goto_25

    .line 86
    :catch_21
    move-exception v1

    goto :goto_25

    .line 85
    :catch_23
    move-exception v1

    goto :goto_20

    .line 88
    :goto_25
    if-nez v2, :cond_28

    .line 89
    return-void

    .line 91
    :cond_28
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 92
    iget-object v1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 94
    iget-object v1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 95
    iget-object v3, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0, v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 96
    iget-object v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 97
    iget-object v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 98
    return-void

    .line 77
    :cond_4f
    :goto_4f
    return-void
.end method


# virtual methods
.method positionSurface(III)V
    .registers 5

    .line 116
    iget v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mLastDW:I

    if-ne v0, p1, :cond_d

    iget v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mLastDH:I

    if-ne v0, p2, :cond_d

    iget v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mRotation:I

    if-ne v0, p3, :cond_d

    .line 117
    return-void

    .line 119
    :cond_d
    iput p1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mLastDW:I

    .line 120
    iput p2, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mLastDH:I

    .line 121
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mDrawNeeded:Z

    .line 122
    iput p3, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mRotation:I

    .line 123
    invoke-direct {p0}, Lcom/android/server/wm/EmulatorDisplayOverlay;->drawIfNeeded()V

    .line 124
    return-void
.end method

.method public setVisibility(Z)V
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 104
    return-void

    .line 106
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mVisible:Z

    .line 107
    invoke-direct {p0}, Lcom/android/server/wm/EmulatorDisplayOverlay;->drawIfNeeded()V

    .line 108
    if-eqz p1, :cond_12

    .line 109
    iget-object p1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->show()V

    goto :goto_17

    .line 111
    :cond_12
    iget-object p1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->hide()V

    .line 113
    :goto_17
    return-void
.end method
