.class Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;
.super Ljava/lang/Object;
.source "MzDisplayAngularArcSurface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayAngularArcSurfaceControl"
.end annotation


# instance fields
.field private mBitMap:Landroid/graphics/Bitmap;

.field private mDisplayHeight:I

.field private mDisplayLayerStack:I

.field private mDisplayWidth:I

.field private mDisplayZorder:I

.field private mPositionX:I

.field private mPositionY:I

.field private mPrepared:Z

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private mSurfaceLayout:Lcom/android/server/displayangulararc/NaturalSurfaceLayout;

.field private mSurfaceName:Ljava/lang/String;

.field private mSurfaceSession:Landroid/view/SurfaceSession;

.field private mSurfaceVisible:Z

.field final synthetic this$0:Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;


# direct methods
.method public constructor <init>(Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;Ljava/lang/String;IIIILandroid/graphics/Bitmap;II)V
    .registers 10
    .param p2, "surfaceName"  # Ljava/lang/String;
    .param p3, "positionX"  # I
    .param p4, "positionY"  # I
    .param p5, "surfaceWidth"  # I
    .param p6, "surfaceHeight"  # I
    .param p7, "bp"  # Landroid/graphics/Bitmap;
    .param p8, "layerStack"  # I
    .param p9, "zorder"  # I

    .line 161
    iput-object p1, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->this$0:Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const-string/jumbo p1, "mzDisplayAngularArcView"

    iput-object p1, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurfaceName:Ljava/lang/String;

    .line 157
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mPositionX:I

    .line 158
    iput p1, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mPositionY:I

    .line 162
    iput p5, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mDisplayWidth:I

    .line 163
    iput p6, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mDisplayHeight:I

    .line 164
    iput-object p7, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mBitMap:Landroid/graphics/Bitmap;

    .line 165
    iput p8, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mDisplayLayerStack:I

    .line 166
    iput p9, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mDisplayZorder:I

    .line 167
    iput-object p2, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurfaceName:Ljava/lang/String;

    .line 168
    iput p3, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mPositionX:I

    .line 169
    iput p4, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mPositionY:I

    .line 170
    return-void
.end method

.method private createSurface()Z
    .registers 11

    .line 184
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-nez v0, :cond_b

    .line 185
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 187
    :cond_b
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 189
    :try_start_e
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x1

    if-nez v0, :cond_a3

    .line 190
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_a8

    .line 192
    .local v0, "transaction":Landroid/view/SurfaceControl$Transaction;
    :try_start_18
    new-instance v2, Landroid/view/SurfaceControl$Builder;

    iget-object v3, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v2, v3}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    iget-object v3, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurfaceName:Ljava/lang/String;

    .line 193
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mDisplayWidth:I

    iget v4, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mDisplayHeight:I

    .line 194
    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 195
    invoke-virtual {v2, v1}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const/4 v3, 0x4

    .line 196
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 197
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_3c
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_18 .. :try_end_3c} :catch_96
    .catchall {:try_start_18 .. :try_end_3c} :catchall_a8

    .line 201
    nop

    .line 203
    :try_start_3d
    iget-object v2, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mDisplayLayerStack:I

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 204
    iget-object v2, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mDisplayWidth:I

    iget v4, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mDisplayHeight:I

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 205
    iget-object v2, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mDisplayZorder:I

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 207
    iget-object v2, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mPositionX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mPositionY:I

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 209
    invoke-virtual {p0, v1}, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->setSkipInScreenshotAndScreenrecord(Z)V

    .line 210
    iget-object v2, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v1}, Landroid/view/SurfaceControl;->setSkipDeviceColorMatrix(Z)V

    .line 212
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2}, Landroid/view/Surface;-><init>()V

    iput-object v2, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurface:Landroid/view/Surface;

    .line 213
    iget-object v2, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurface:Landroid/view/Surface;

    iget-object v3, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 215
    invoke-direct {p0}, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->prepareDisplayAngularArcView()Z

    .line 217
    new-instance v2, Lcom/android/server/displayangulararc/NaturalSurfaceLayout;

    iget-object v3, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->this$0:Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;

    invoke-static {v3}, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;->access$000(Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface;)Landroid/hardware/display/DisplayManagerInternal;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v8, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mPositionX:I

    iget v9, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mPositionY:I

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/displayangulararc/NaturalSurfaceLayout;-><init>(Landroid/hardware/display/DisplayManagerInternal;ILandroid/view/SurfaceControl;II)V

    iput-object v2, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurfaceLayout:Lcom/android/server/displayangulararc/NaturalSurfaceLayout;

    .line 219
    iget-object v2, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurfaceLayout:Lcom/android/server/displayangulararc/NaturalSurfaceLayout;

    invoke-virtual {v2, v0}, Lcom/android/server/displayangulararc/NaturalSurfaceLayout;->onDisplayTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 220
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_a3

    .line 198
    :catch_96
    move-exception v1

    .line 199
    .local v1, "ex":Landroid/view/Surface$OutOfResourcesException;
    const-string v2, "MzDisplayAngularArc"

    const-string v3, "Unable to create surface."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9e
    .catchall {:try_start_3d .. :try_end_9e} :catchall_a8

    .line 200
    const/4 v2, 0x0

    .line 223
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 200
    return v2

    .line 223
    .end local v0  # "transaction":Landroid/view/SurfaceControl$Transaction;
    .end local v1  # "ex":Landroid/view/Surface$OutOfResourcesException;
    :cond_a3
    :goto_a3
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 224
    nop

    .line 225
    return v1

    .line 223
    :catchall_a8
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method private prepareDisplayAngularArcView()Z
    .registers 7

    .line 235
    const-string v0, "MzDisplayAngularArc"

    iget-object v1, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mBitMap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_47

    .line 236
    const/4 v1, 0x0

    .line 237
    .local v1, "c":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mDisplayWidth:I

    iget v5, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mDisplayHeight:I

    invoke-direct {v3, v2, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 239
    .local v3, "dirty":Landroid/graphics/Rect;
    :try_start_19
    iget-object v4, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_1f} :catch_28
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_19 .. :try_end_1f} :catch_21

    move-object v1, v0

    .line 244
    :goto_20
    goto :goto_2f

    .line 242
    :catch_21
    move-exception v4

    .line 243
    .local v4, "e":Landroid/view/Surface$OutOfResourcesException;
    const-string v5, "OutOfResourcesException lockCanvas Error:"

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f

    .line 240
    .end local v4  # "e":Landroid/view/Surface$OutOfResourcesException;
    :catch_28
    move-exception v4

    .line 241
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "IllegalArgumentException lockCanvas Error:"

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4  # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_20

    .line 245
    :goto_2f
    if-nez v1, :cond_32

    .line 246
    return v2

    .line 248
    :cond_32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 249
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setNightModeUseOf(I)V

    .line 251
    iget-object v2, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mBitMap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 252
    iget-object v2, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 253
    const/4 v2, 0x1

    return v2

    .line 256
    .end local v0  # "paint":Landroid/graphics/Paint;
    .end local v1  # "c":Landroid/graphics/Canvas;
    .end local v3  # "dirty":Landroid/graphics/Rect;
    :cond_47
    return v2
.end method


# virtual methods
.method public destroySurface()V
    .registers 4

    .line 293
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_27

    .line 294
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurfaceLayout:Lcom/android/server/displayangulararc/NaturalSurfaceLayout;

    invoke-virtual {v0}, Lcom/android/server/displayangulararc/NaturalSurfaceLayout;->dispose()V

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurfaceLayout:Lcom/android/server/displayangulararc/NaturalSurfaceLayout;

    .line 296
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 297
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v2, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 298
    iget-object v1, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 299
    iput-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurfaceVisible:Z

    .line 302
    :cond_27
    return-void
.end method

.method public dismiss()V
    .registers 3

    .line 285
    iget-boolean v0, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mPrepared:Z

    if-eqz v0, :cond_11

    .line 286
    invoke-virtual {p0}, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->destroySurface()V

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mPrepared:Z

    .line 288
    const-string v0, "MzDisplayAngularArc"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_11
    return-void
.end method

.method public hide()V
    .registers 3

    .line 272
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurfaceVisible:Z

    if-eqz v0, :cond_27

    .line 273
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 275
    :try_start_f
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurfaceVisible:Z

    .line 277
    const-string v0, "MzDisplayAngularArc"

    const-string v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_22

    .line 279
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 280
    goto :goto_27

    .line 279
    :catchall_22
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0

    .line 282
    :cond_27
    :goto_27
    return-void
.end method

.method public prepare()Z
    .registers 4

    .line 173
    iget-boolean v0, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mPrepared:Z

    const/4 v1, 0x1

    if-nez v0, :cond_15

    .line 175
    invoke-direct {p0}, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->createSurface()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 176
    iput-boolean v1, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mPrepared:Z

    .line 177
    const-string v0, "MzDisplayAngularArc"

    const-string/jumbo v2, "prepare: ok!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_15
    return v1
.end method

.method public setSkipInScreenshotAndScreenrecord(Z)V
    .registers 3
    .param p1, "skip"  # Z

    .line 229
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_7

    .line 230
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setSkipInScreenshotAndScreenrecord(Z)V

    .line 232
    :cond_7
    return-void
.end method

.method public show()V
    .registers 2

    .line 260
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurfaceVisible:Z

    if-nez v0, :cond_1c

    .line 261
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 263
    :try_start_b
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/displayangulararc/MzDisplayAngularArcSurface$DisplayAngularArcSurfaceControl;->mSurfaceVisible:Z
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_17

    .line 266
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 267
    goto :goto_1c

    .line 266
    :catchall_17
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0

    .line 269
    :cond_1c
    :goto_1c
    return-void
.end method
