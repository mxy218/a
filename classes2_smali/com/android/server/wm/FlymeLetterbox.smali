.class public Lcom/android/server/wm/FlymeLetterbox;
.super Lcom/android/server/wm/Letterbox;
.source "FlymeLetterbox.java"


# static fields
.field private static final CORNER_HEIGHT:I = 0x5d

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final WINDOW_CORNER_BOTTOM:Ljava/lang/String; = "bottom"

.field private static final WINDOW_CORNER_LEFT:Ljava/lang/String; = "left"

.field private static final WINDOW_CORNER_RIGHT:Ljava/lang/String; = "right"

.field private static final WINDOW_CORNER_TOP:Ljava/lang/String; = "top"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mFactory:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private mSurfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;Lcom/android/server/wm/DisplayContent;)V
    .registers 5
    .param p2, "displayContent"  # Lcom/android/server/wm/DisplayContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Builder;",
            ">;",
            "Lcom/android/server/wm/DisplayContent;",
            ")V"
        }
    .end annotation

    .line 61
    .local p1, "surfaceControlFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/view/SurfaceControl$Builder;>;"
    invoke-direct {p0, p1}, Lcom/android/server/wm/Letterbox;-><init>(Ljava/util/function/Supplier;)V

    .line 62
    iput-object p1, p0, Lcom/android/server/wm/FlymeLetterbox;->mFactory:Ljava/util/function/Supplier;

    .line 63
    iput-object p2, p0, Lcom/android/server/wm/FlymeLetterbox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 64
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/FlymeLetterbox;->build(Landroid/content/Context;Z)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/FlymeLetterbox;->mContext:Landroid/content/Context;

    .line 65
    return-void
.end method

.method private build(Landroid/content/Context;Z)Landroid/content/Context;
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "keepDpi"  # Z

    .line 68
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 69
    .local v0, "configuration":Landroid/content/res/Configuration;
    if-eqz p2, :cond_1f

    .line 70
    const/16 v1, 0x1e0

    const-string v2, "ro.sf.lcd_density"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 71
    .local v1, "mDefaultDensity":I
    const-string v2, "persist.sys.density"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 73
    .end local v1  # "mDefaultDensity":I
    :cond_1f
    invoke-virtual {p1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    .line 74
    .local v1, "result":Landroid/content/Context;
    return-object v1
.end method

.method private createSurface(II)V
    .registers 6
    .param p1, "width"  # I
    .param p2, "height"  # I

    .line 159
    iget-object v0, p0, Lcom/android/server/wm/FlymeLetterbox;->mFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Builder;

    const-string v1, "WindowCornerRadius"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 160
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/FlymeLetterbox;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 161
    iget-object v0, p0, Lcom/android/server/wm/FlymeLetterbox;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 162
    iget-object v0, p0, Lcom/android/server/wm/FlymeLetterbox;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_3e

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setColor([F)V

    .line 163
    iget-object v0, p0, Lcom/android/server/wm/FlymeLetterbox;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setColorSpaceAgnostic(Z)V

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/FlymeLetterbox;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setSkipDeviceColorMatrix(Z)V

    .line 165
    return-void

    nop

    :array_3e
    .array-data 4
        0x437f0000  # 255.0f
        0x0
        0x0
    .end array-data
.end method

.method private drawWindowCornerRadius(Landroid/view/SurfaceControl;Landroid/graphics/Bitmap;Ljava/lang/String;II)Z
    .registers 25
    .param p1, "surfaceControl"  # Landroid/view/SurfaceControl;
    .param p2, "bitmap"  # Landroid/graphics/Bitmap;
    .param p3, "type"  # Ljava/lang/String;
    .param p4, "width"  # I
    .param p5, "height"  # I

    .line 168
    move-object/from16 v1, p3

    const-string v2, "WindowManager"

    const/4 v3, 0x0

    .line 169
    .local v3, "c":Landroid/graphics/Canvas;
    new-instance v0, Landroid/view/Surface;

    move-object/from16 v4, p1

    invoke-direct {v0, v4}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceControl;)V

    move-object v5, v0

    .line 170
    .local v5, "mSurface":Landroid/view/Surface;
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    move-object v6, v0

    .line 172
    .local v6, "paint":Landroid/graphics/Paint;
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    move-object v14, v0

    .line 174
    .local v14, "matrix":Landroid/graphics/Matrix;
    new-instance v0, Landroid/graphics/Rect;

    const/4 v15, 0x0

    move/from16 v13, p4

    move/from16 v12, p5

    invoke-direct {v0, v15, v15, v13, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v11, v0

    .line 176
    .local v11, "dirty":Landroid/graphics/Rect;
    :try_start_24
    invoke-virtual {v5, v11}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_28} :catch_33
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_24 .. :try_end_28} :catch_2a

    move-object v3, v0

    .line 181
    :goto_29
    goto :goto_3c

    .line 179
    :catch_2a
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 180
    .local v0, "e":Landroid/view/Surface$OutOfResourcesException;
    const-string v7, "OutOfResourcesException lockCanvas Error:"

    invoke-static {v2, v7, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c

    .line 177
    .end local v0  # "e":Landroid/view/Surface$OutOfResourcesException;
    :catch_33
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 178
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "IllegalArgumentException lockCanvas Error:"

    invoke-static {v2, v7, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0  # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_29

    .line 182
    :goto_3c
    if-nez v3, :cond_44

    .line 183
    const-string v0, "Window corner radius without surface!"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return v15

    .line 186
    :cond_44
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v15, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 187
    invoke-virtual {v3, v15}, Landroid/graphics/Canvas;->setNightModeUseOf(I)V

    .line 188
    const/4 v0, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v7, 0x2

    const/4 v10, 0x1

    sparse-switch v2, :sswitch_data_c2

    :cond_56
    goto :goto_7e

    :sswitch_57
    const-string v2, "right"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    move v0, v7

    goto :goto_7e

    :sswitch_61
    const-string v2, "left"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    move v0, v15

    goto :goto_7e

    :sswitch_6b
    const-string v2, "top"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    move v0, v10

    goto :goto_7e

    :sswitch_75
    const-string v2, "bottom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    const/4 v0, 0x3

    :goto_7e
    if-eqz v0, :cond_8c

    if-eq v0, v10, :cond_8b

    if-eq v0, v7, :cond_85

    goto :goto_92

    .line 195
    :cond_85
    const/high16 v0, 0x42b40000  # 90.0f

    invoke-virtual {v14, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 196
    goto :goto_92

    .line 193
    :cond_8b
    goto :goto_92

    .line 190
    :cond_8c
    const/high16 v0, -0x3d4c0000  # -90.0f

    invoke-virtual {v14, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 191
    nop

    .line 200
    :goto_92
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/16 v16, 0x0

    move-object/from16 v7, p2

    move/from16 v17, v10

    move v10, v0

    move-object/from16 v18, v11

    .end local v11  # "dirty":Landroid/graphics/Rect;
    .local v18, "dirty":Landroid/graphics/Rect;
    move v11, v2

    move-object v12, v14

    move/from16 v13, v16

    invoke-static/range {v7 .. v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 201
    .local v0, "bpAfterRotate":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    new-instance v7, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v9

    invoke-direct {v7, v15, v15, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v0, v2, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 202
    invoke-virtual {v5, v3}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 203
    return v17

    :sswitch_data_c2
    .sparse-switch
        -0x527265d5 -> :sswitch_75
        0x1c155 -> :sswitch_6b
        0x32a007 -> :sswitch_61
        0x677c21c -> :sswitch_57
    .end sparse-switch
.end method


# virtual methods
.method public applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;)V
    .registers 10
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;

    .line 85
    invoke-super {p0, p1}, Lcom/android/server/wm/Letterbox;->applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/server/wm/FlymeLetterbox;->getWindowCornerRadiusType()Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, "type":Ljava/lang/String;
    if-eqz v6, :cond_5a

    .line 89
    invoke-virtual {p0, v6}, Lcom/android/server/wm/FlymeLetterbox;->getWindowCornerRadiusRect(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v7

    .line 90
    .local v7, "windowCornerRect":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/server/wm/FlymeLetterbox;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_1c

    .line 91
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/FlymeLetterbox;->createSurface(II)V

    .line 93
    :cond_1c
    iget-object v1, p0, Lcom/android/server/wm/FlymeLetterbox;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/server/wm/FlymeLetterbox;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0xa080331

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object v0, p0

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/FlymeLetterbox;->drawWindowCornerRadius(Landroid/view/SurfaceControl;Landroid/graphics/Bitmap;Ljava/lang/String;II)Z

    .line 95
    invoke-virtual {p0, v6}, Lcom/android/server/wm/FlymeLetterbox;->getWindowCornerRadiusPoint(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v0

    .line 96
    .local v0, "point":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/server/wm/FlymeLetterbox;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 97
    iget-object v1, p0, Lcom/android/server/wm/FlymeLetterbox;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 98
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 97
    invoke-virtual {p1, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 99
    iget-object v1, p0, Lcom/android/server/wm/FlymeLetterbox;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .end local v0  # "point":Landroid/graphics/Point;
    .end local v7  # "windowCornerRect":Landroid/graphics/Rect;
    goto :goto_62

    .line 100
    :cond_5a
    iget-object v0, p0, Lcom/android/server/wm/FlymeLetterbox;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_62

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_63

    .line 100
    :cond_62
    :goto_62
    nop

    .line 103
    :goto_63
    return-void
.end method

.method public destroy()V
    .registers 1

    .line 79
    invoke-super {p0}, Lcom/android/server/wm/Letterbox;->destroy()V

    .line 80
    invoke-virtual {p0}, Lcom/android/server/wm/FlymeLetterbox;->remove()V

    .line 81
    return-void
.end method

.method public getWindowCornerRadiusPoint(Ljava/lang/String;)Landroid/graphics/Point;
    .registers 7
    .param p1, "type"  # Ljava/lang/String;

    .line 127
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 128
    .local v0, "point":Landroid/graphics/Point;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    sparse-switch v1, :sswitch_data_8c

    :cond_f
    goto :goto_38

    :sswitch_10
    const-string v1, "right"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v4

    goto :goto_39

    :sswitch_1a
    const-string v1, "left"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    goto :goto_39

    :sswitch_24
    const-string v1, "top"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v3

    goto :goto_39

    :sswitch_2e
    const-string v1, "bottom"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v2

    goto :goto_39

    :goto_38
    const/4 v1, -0x1

    :goto_39
    if-eqz v1, :cond_7b

    if-eq v1, v3, :cond_69

    if-eq v1, v4, :cond_54

    if-eq v1, v2, :cond_42

    goto :goto_8b

    .line 140
    :cond_42
    invoke-virtual {p0}, Lcom/android/server/wm/FlymeLetterbox;->getInnerFrame()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/server/wm/FlymeLetterbox;->getInnerFrame()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, -0x5d

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_8b

    .line 137
    :cond_54
    invoke-virtual {p0}, Lcom/android/server/wm/FlymeLetterbox;->getInnerFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int/lit8 v1, v1, -0x5d

    add-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/android/server/wm/FlymeLetterbox;->getInnerFrame()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 138
    goto :goto_8b

    .line 133
    :cond_69
    invoke-virtual {p0}, Lcom/android/server/wm/FlymeLetterbox;->getInnerFrame()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/server/wm/FlymeLetterbox;->getInnerFrame()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, -0x5d

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 134
    goto :goto_8b

    .line 130
    :cond_7b
    invoke-virtual {p0}, Lcom/android/server/wm/FlymeLetterbox;->getInnerFrame()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/server/wm/FlymeLetterbox;->getInnerFrame()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 131
    nop

    .line 144
    :goto_8b
    return-object v0

    :sswitch_data_8c
    .sparse-switch
        -0x527265d5 -> :sswitch_2e
        0x1c155 -> :sswitch_24
        0x32a007 -> :sswitch_1a
        0x677c21c -> :sswitch_10
    .end sparse-switch
.end method

.method public getWindowCornerRadiusRect(Ljava/lang/String;)Landroid/graphics/Rect;
    .registers 7
    .param p1, "type"  # Ljava/lang/String;

    .line 148
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 149
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x32a007

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_20

    const v2, 0x677c21c

    if-eq v1, v2, :cond_16

    :cond_15
    goto :goto_2a

    :cond_16
    const-string v1, "right"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    move v1, v3

    goto :goto_2b

    :cond_20
    const-string v1, "left"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    move v1, v4

    goto :goto_2b

    :goto_2a
    const/4 v1, -0x1

    :goto_2b
    if-eqz v1, :cond_30

    if-eq v1, v3, :cond_30

    goto :goto_3d

    .line 152
    :cond_30
    const/16 v1, 0x5d

    invoke-virtual {p0}, Lcom/android/server/wm/FlymeLetterbox;->getInnerFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 155
    :goto_3d
    return-object v0
.end method

.method public getWindowCornerRadiusType()Ljava/lang/String;
    .registers 4

    .line 114
    iget-object v0, p0, Lcom/android/server/wm/FlymeLetterbox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v0

    .line 115
    .local v0, "displaycutout":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/server/wm/FlymeLetterbox;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    .line 117
    .local v1, "insets":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    if-lez v2, :cond_21

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-lez v2, :cond_21

    .line 118
    const-string v2, "left"

    return-object v2

    .line 119
    :cond_21
    iget v2, v1, Landroid/graphics/Rect;->right:I

    if-lez v2, :cond_2c

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-lez v2, :cond_2c

    .line 120
    const-string v2, "right"

    return-object v2

    .line 122
    :cond_2c
    const/4 v2, 0x0

    return-object v2
.end method

.method public remove()V
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/android/server/wm/FlymeLetterbox;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_15

    .line 107
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/FlymeLetterbox;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/FlymeLetterbox;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 110
    :cond_15
    return-void
.end method
