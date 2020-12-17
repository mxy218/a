.class final Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$NaturalSurfaceLayout;
.super Ljava/lang/Object;
.source "FingerprintDimLayer.java"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NaturalSurfaceLayout"
.end annotation


# instance fields
.field private final mDisplayId:I

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mSurfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManagerInternal;ILandroid/view/SurfaceControl;)V
    .registers 5
    .param p1, "displayManagerInternal"  # Landroid/hardware/display/DisplayManagerInternal;
    .param p2, "displayId"  # I
    .param p3, "surfaceControl"  # Landroid/view/SurfaceControl;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 246
    iput p2, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$NaturalSurfaceLayout;->mDisplayId:I

    .line 247
    iput-object p3, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 248
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManagerInternal;->registerDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    .line 249
    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .line 252
    monitor-enter p0

    .line 253
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 254
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_b

    .line 255
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManagerInternal;->unregisterDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    .line 256
    return-void

    .line 254
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public onDisplayTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 8
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;

    .line 260
    monitor-enter p0

    .line 261
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_7

    .line 262
    monitor-exit p0

    return-void

    .line 265
    :cond_7
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$NaturalSurfaceLayout;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$NaturalSurfaceLayout;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 266
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v1, v0, Landroid/view/DisplayInfo;->rotation:I

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_4f

    const/4 v4, 0x1

    const/high16 v5, -0x40800000  # -1.0f

    if-eq v1, v4, :cond_41

    const/4 v4, 0x2

    if-eq v1, v4, :cond_30

    const/4 v4, 0x3

    if-eq v1, v4, :cond_22

    goto :goto_5a

    .line 281
    :cond_22
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v4, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v4, v4

    invoke-virtual {v1, v4, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 282
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3, v2, v5, v3}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_5a

    .line 276
    :cond_30
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v2, v2

    iget v4, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v4, v4

    invoke-virtual {v1, v2, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 278
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v5, v3, v3, v5}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 279
    goto :goto_5a

    .line 272
    :cond_41
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v4, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 273
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3, v5, v2, v3}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 274
    goto :goto_5a

    .line 268
    :cond_4f
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 269
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2, v3, v3, v2}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 270
    nop

    .line 285
    .end local v0  # "displayInfo":Landroid/view/DisplayInfo;
    :goto_5a
    monitor-exit p0

    .line 286
    return-void

    .line 285
    :catchall_5c
    move-exception v0

    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_1 .. :try_end_5e} :catchall_5c

    throw v0
.end method
