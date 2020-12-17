.class Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;
.super Ljava/lang/Object;
.source "MzDisplayDirectCurrentLight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayDirectCurrentLightSurfaceControl"
.end annotation


# instance fields
.field private mDisplayHeight:I

.field private mDisplayLayerStack:I

.field private mDisplayWidth:I

.field private mDisplayZorder:I

.field private final mLock:Ljava/lang/Object;

.field private mPositionX:I

.field private mPositionY:I

.field private mPrepared:Z

.field private mRelativeLayerSurfaceControl:Landroid/view/SurfaceControl;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceAlpha:F

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private mSurfaceLayout:Lcom/android/server/displayangulararc/NaturalSurfaceLayout;

.field private mSurfaceName:Ljava/lang/String;

.field private mSurfaceSession:Landroid/view/SurfaceSession;

.field private mSurfaceVisible:Z

.field final synthetic this$0:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;


# direct methods
.method public constructor <init>(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;IIII)V
    .registers 6
    .param p2, "surfaceWidth"  # I
    .param p3, "surfaceHeight"  # I
    .param p4, "layerStack"  # I
    .param p5, "zorder"  # I

    .line 332
    iput-object p1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->this$0:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceAlpha:F

    .line 326
    const-string p1, "Display_Dim"

    iput-object p1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceName:Ljava/lang/String;

    .line 327
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mPositionX:I

    .line 328
    iput p1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mPositionY:I

    .line 329
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mLock:Ljava/lang/Object;

    .line 333
    iput p2, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mDisplayWidth:I

    .line 334
    iput p3, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mDisplayHeight:I

    .line 335
    iput p4, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mDisplayLayerStack:I

    .line 336
    iput p5, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mDisplayZorder:I

    .line 337
    return-void
.end method

.method private createSurface()Z
    .registers 11

    .line 351
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-nez v0, :cond_b

    .line 352
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 355
    :cond_b
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 357
    :try_start_e
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x1

    if-nez v0, :cond_95

    .line 358
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_9a

    .line 360
    .local v0, "transaction":Landroid/view/SurfaceControl$Transaction;
    :try_start_18
    new-instance v2, Landroid/view/SurfaceControl$Builder;

    iget-object v3, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v2, v3}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    iget-object v3, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceName:Ljava/lang/String;

    .line 361
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const v3, 0x20004

    .line 362
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 363
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_32
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_18 .. :try_end_32} :catch_88
    .catchall {:try_start_18 .. :try_end_32} :catchall_9a

    .line 367
    nop

    .line 368
    :try_start_33
    iget-object v2, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mPositionX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mPositionY:I

    int-to-float v4, v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 370
    iget-object v2, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mDisplayZorder:I

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 372
    iget-object v2, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mDisplayLayerStack:I

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 373
    iget-object v2, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 374
    invoke-virtual {p0, v1}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->setSkipInScreenshotAndScreenrecord(Z)V

    .line 375
    iget-object v2, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setSkipDeviceColorMatrix(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 377
    iput-boolean v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceVisible:Z

    .line 379
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2}, Landroid/view/Surface;-><init>()V

    iput-object v2, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurface:Landroid/view/Surface;

    .line 380
    iget-object v2, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurface:Landroid/view/Surface;

    iget-object v3, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 382
    new-instance v2, Lcom/android/server/displayangulararc/NaturalSurfaceLayout;

    iget-object v3, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->this$0:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    invoke-static {v3}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->access$1700(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)Landroid/hardware/display/DisplayManagerInternal;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v8, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mPositionX:I

    iget v9, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mPositionY:I

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/displayangulararc/NaturalSurfaceLayout;-><init>(Landroid/hardware/display/DisplayManagerInternal;ILandroid/view/SurfaceControl;II)V

    iput-object v2, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceLayout:Lcom/android/server/displayangulararc/NaturalSurfaceLayout;

    .line 384
    iget-object v2, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceLayout:Lcom/android/server/displayangulararc/NaturalSurfaceLayout;

    invoke-virtual {v2, v0}, Lcom/android/server/displayangulararc/NaturalSurfaceLayout;->onDisplayTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 385
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_95

    .line 364
    :catch_88
    move-exception v1

    .line 365
    .local v1, "ex":Landroid/view/Surface$OutOfResourcesException;
    const-string v2, "MzDisplayDirectCurrentLight"

    const-string v3, "Unable to create surface."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_90
    .catchall {:try_start_33 .. :try_end_90} :catchall_9a

    .line 366
    const/4 v2, 0x0

    .line 388
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 366
    return v2

    .line 388
    .end local v0  # "transaction":Landroid/view/SurfaceControl$Transaction;
    .end local v1  # "ex":Landroid/view/Surface$OutOfResourcesException;
    :cond_95
    :goto_95
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 389
    nop

    .line 390
    return v1

    .line 388
    :catchall_9a
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method

.method private setRelativeLayerTransaction()V
    .registers 5

    .line 421
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 422
    :try_start_3
    iget-object v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mRelativeLayerSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_13

    .line 423
    iget-object v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mRelativeLayerSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setRelativeLayer(Landroid/view/SurfaceControl;I)V

    .line 425
    :cond_13
    monitor-exit v0

    .line 426
    return-void

    .line 425
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method


# virtual methods
.method public destroySurface()V
    .registers 4

    .line 493
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_29

    .line 494
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceLayout:Lcom/android/server/displayangulararc/NaturalSurfaceLayout;

    invoke-virtual {v0}, Lcom/android/server/displayangulararc/NaturalSurfaceLayout;->dispose()V

    .line 495
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceLayout:Lcom/android/server/displayangulararc/NaturalSurfaceLayout;

    .line 496
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v2, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 497
    iget-object v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 498
    iput-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 499
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceVisible:Z

    .line 500
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceAlpha:F

    .line 501
    iput-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mRelativeLayerSurfaceControl:Landroid/view/SurfaceControl;

    .line 503
    :cond_29
    return-void
.end method

.method public dismiss()V
    .registers 3

    .line 482
    iget-boolean v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mPrepared:Z

    if-eqz v0, :cond_11

    .line 483
    invoke-virtual {p0}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->destroySurface()V

    .line 484
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mPrepared:Z

    .line 485
    const-string v0, "MzDisplayDirectCurrentLight"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_11
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceAlpha:F

    .line 488
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mRelativeLayerSurfaceControl:Landroid/view/SurfaceControl;

    .line 489
    return-void
.end method

.method public hide()V
    .registers 3

    .line 448
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceVisible:Z

    if-eqz v0, :cond_27

    .line 449
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 452
    :try_start_f
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    .line 453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceVisible:Z

    .line 454
    const-string v0, "MzDisplayDirectCurrentLight"

    const-string v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_22

    .line 456
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 457
    goto :goto_27

    .line 456
    :catchall_22
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0

    .line 459
    :cond_27
    :goto_27
    return-void
.end method

.method public prepare()Z
    .registers 4

    .line 340
    iget-boolean v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mPrepared:Z

    const/4 v1, 0x1

    if-nez v0, :cond_15

    .line 342
    invoke-direct {p0}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->createSurface()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 343
    iput-boolean v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mPrepared:Z

    .line 344
    const-string v0, "MzDisplayDirectCurrentLight"

    const-string/jumbo v2, "prepare: ok!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_15
    return v1
.end method

.method public setAlpha(F)Z
    .registers 5
    .param p1, "alpha"  # F

    .line 463
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceVisible:Z

    if-eqz v0, :cond_3b

    .line 464
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 466
    :try_start_b
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mDisplayZorder:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 468
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 470
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 471
    const-string v0, "MzDisplayDirectCurrentLight"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alpha : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_b .. :try_end_32} :catchall_36

    .line 473
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 474
    goto :goto_3b

    .line 473
    :catchall_36
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0

    .line 476
    :cond_3b
    :goto_3b
    iput p1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceAlpha:F

    .line 477
    const/4 v0, 0x1

    return v0
.end method

.method public setDimDither(Z)V
    .registers 6
    .param p1, "enable"  # Z

    .line 506
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 507
    :try_start_3
    iget-object v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_23

    .line 508
    const-string v1, "MzDisplayDirectCurrentLight"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDimDither enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl;->setDimDither(Z)V

    .line 511
    :cond_23
    monitor-exit v0

    .line 512
    return-void

    .line 511
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public setRelativeLayerSurfaceControl(Landroid/view/SurfaceControl;)V
    .registers 6
    .param p1, "relativeLayer"  # Landroid/view/SurfaceControl;

    .line 402
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 403
    :try_start_3
    iput-object p1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mRelativeLayerSurfaceControl:Landroid/view/SurfaceControl;

    .line 404
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_32

    .line 406
    :try_start_8
    iget-object v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_27

    .line 407
    iget-object v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mDisplayZorder:I

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 408
    iget-object v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mRelativeLayerSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_27

    .line 409
    iget-object v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mRelativeLayerSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setRelativeLayer(Landroid/view/SurfaceControl;I)V

    .line 410
    const-string v1, "MzDisplayDirectCurrentLight"

    const-string/jumbo v2, "setRelativeLayer"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_2d

    .line 414
    :cond_27
    :try_start_27
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 415
    nop

    .line 416
    monitor-exit v0

    .line 417
    return-void

    .line 414
    :catchall_2d
    move-exception v1

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .end local p0  # "this":Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;
    .end local p1  # "relativeLayer":Landroid/view/SurfaceControl;
    throw v1

    .line 416
    .restart local p0  # "this":Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;
    .restart local p1  # "relativeLayer":Landroid/view/SurfaceControl;
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_27 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public setSkipInScreenshotAndScreenrecord(Z)V
    .registers 3
    .param p1, "skip"  # Z

    .line 395
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_7

    .line 396
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setSkipInScreenshotAndScreenrecord(Z)V

    .line 398
    :cond_7
    return-void
.end method

.method public show()V
    .registers 4

    .line 430
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_43

    iget-boolean v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceVisible:Z

    if-nez v0, :cond_43

    .line 431
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 433
    :try_start_b
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mDisplayZorder:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 435
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 437
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 438
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceVisible:Z

    .line 439
    const-string v0, "MzDisplayDirectCurrentLight"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show alpha:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->mSurfaceAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_b .. :try_end_3a} :catchall_3e

    .line 441
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 442
    goto :goto_43

    .line 441
    :catchall_3e
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0

    .line 444
    :cond_43
    :goto_43
    return-void
.end method
