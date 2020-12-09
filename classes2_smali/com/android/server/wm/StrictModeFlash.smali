.class Lcom/android/server/wm/StrictModeFlash;
.super Ljava/lang/Object;
.source "StrictModeFlash.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mDrawNeeded:Z

.field private mLastDH:I

.field private mLastDW:I

.field private final mSurface:Landroid/view/Surface;

.field private final mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mThickness:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 5

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    .line 38
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/wm/StrictModeFlash;->mThickness:I

    .line 41
    nop

    .line 43
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_11
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const-string v2, "StrictModeFlash"

    .line 44
    invoke-virtual {p1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 45
    invoke-virtual {p1, v0, v0}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    const/4 v2, -0x3

    .line 46
    invoke-virtual {p1, v2}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 48
    const p1, 0xf6950

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 49
    const/4 p1, 0x0

    invoke-virtual {v1, p1, p1}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 50
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V

    .line 51
    iget-object p1, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V
    :try_end_3a
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_11 .. :try_end_3a} :catch_3b

    .line 53
    goto :goto_3c

    .line 52
    :catch_3b
    move-exception p1

    .line 54
    :goto_3c
    iput-object v1, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 55
    iput-boolean v0, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    .line 56
    return-void
.end method

.method private drawIfNeeded()V
    .registers 8

    .line 59
    iget-boolean v0, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    if-nez v0, :cond_5

    .line 60
    return-void

    .line 62
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    .line 63
    iget v1, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    .line 64
    iget v2, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    .line 66
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 67
    const/4 v4, 0x0

    .line 69
    :try_start_12
    iget-object v5, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v5, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v4
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_18} :catch_1b
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_12 .. :try_end_18} :catch_19

    .line 72
    :goto_18
    goto :goto_1d

    .line 71
    :catch_19
    move-exception v3

    goto :goto_1d

    .line 70
    :catch_1b
    move-exception v3

    goto :goto_18

    .line 73
    :goto_1d
    if-nez v4, :cond_20

    .line 74
    return-void

    .line 78
    :cond_20
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 79
    new-instance v3, Landroid/graphics/Rect;

    const/16 v5, 0x14

    invoke-direct {v3, v0, v0, v1, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 80
    const/high16 v3, -0x10000

    invoke-virtual {v4, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 81
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 83
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 84
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v0, v0, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 85
    invoke-virtual {v4, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 86
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 88
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 89
    new-instance v5, Landroid/graphics/Rect;

    add-int/lit8 v6, v1, -0x14

    invoke-direct {v5, v6, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 90
    invoke-virtual {v4, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 91
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 93
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 94
    new-instance v5, Landroid/graphics/Rect;

    add-int/lit8 v6, v2, -0x14

    invoke-direct {v5, v0, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 95
    invoke-virtual {v4, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 96
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 98
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v4}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 99
    return-void
.end method


# virtual methods
.method positionSurface(II)V
    .registers 4

    .line 116
    iget v0, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    if-ne v0, p1, :cond_9

    iget v0, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    if-ne v0, p2, :cond_9

    .line 117
    return-void

    .line 119
    :cond_9
    iput p1, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    .line 120
    iput p2, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setBufferSize(II)V

    .line 122
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    .line 123
    return-void
.end method

.method public setVisibility(Z)V
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 105
    return-void

    .line 107
    :cond_5
    invoke-direct {p0}, Lcom/android/server/wm/StrictModeFlash;->drawIfNeeded()V

    .line 108
    if-eqz p1, :cond_10

    .line 109
    iget-object p1, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->show()V

    goto :goto_15

    .line 111
    :cond_10
    iget-object p1, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->hide()V

    .line 113
    :goto_15
    return-void
.end method
