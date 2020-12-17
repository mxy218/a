.class Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;
.super Ljava/lang/Object;
.source "FingerprintDimLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FingerprintDimLayerController"
.end annotation


# instance fields
.field private mDisplay:Landroid/view/Display;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mIsScreenOn:Z

.field private final mLock:Ljava/lang/Object;

.field private mMzDisplayDirectCurrentLight:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceAlpha:F

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private mSurfaceSession:Landroid/view/SurfaceSession;

.field final synthetic this$0:Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;Landroid/content/Context;)V
    .registers 6
    .param p2, "context"  # Landroid/content/Context;

    .line 76
    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->this$0:Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mLock:Ljava/lang/Object;

    .line 73
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mMzDisplayDirectCurrentLight:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    .line 77
    const-string/jumbo p1, "window"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mDisplay:Landroid/view/Display;

    .line 78
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 79
    .local p1, "point":Landroid/graphics/Point;
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 80
    iget v0, p1, Landroid/graphics/Point;->x:I

    .line 81
    .local v0, "width":I
    iget v1, p1, Landroid/graphics/Point;->y:I

    .line 82
    .local v1, "height":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mDisplayHeight:I

    .line 83
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mDisplayWidth:I

    .line 84
    return-void
.end method

.method private createSurface(F)V
    .registers 8
    .param p1, "alpha"  # F

    .line 112
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_3
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-nez v1, :cond_e

    .line 114
    new-instance v1, Landroid/view/SurfaceSession;

    invoke-direct {v1}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 117
    :cond_e
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_85

    .line 119
    :try_start_11
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_80

    if-nez v1, :cond_7a

    .line 121
    const v1, 0x20004

    .line 122
    .local v1, "flags":I
    :try_start_18
    new-instance v2, Landroid/view/SurfaceControl$Builder;

    iget-object v3, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v2, v3}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 123
    .local v2, "builder":Landroid/view/SurfaceControl$Builder;
    const-string v3, "FingerprintDimLayer"

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 124
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    .line 125
    invoke-virtual {v2, v1}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    .line 126
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 127
    iget-object v3, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mSurfaceControl:Landroid/view/SurfaceControl;

    const v4, 0x40000097  # 2.000036f

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl;->setLayer(I)V
    :try_end_39
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_18 .. :try_end_39} :catch_3a
    .catchall {:try_start_18 .. :try_end_39} :catchall_80

    .line 130
    .end local v1  # "flags":I
    .end local v2  # "builder":Landroid/view/SurfaceControl$Builder;
    goto :goto_42

    .line 128
    :catch_3a
    move-exception v1

    .line 129
    .local v1, "ex":Landroid/view/Surface$OutOfResourcesException;
    :try_start_3b
    const-string v2, "FingerprintDimLayer"

    const-string v3, "Unable to create surface."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    .end local v1  # "ex":Landroid/view/Surface$OutOfResourcesException;
    :goto_42
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 133
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mDisplayWidth:I

    iget v4, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mDisplayHeight:I

    invoke-virtual {v1, v3, v4}, Landroid/view/SurfaceControl;->setBufferSize(II)V

    .line 134
    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1}, Landroid/view/Surface;-><init>()V

    iput-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mSurface:Landroid/view/Surface;

    .line 135
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mSurface:Landroid/view/Surface;

    iget-object v3, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 136
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl;->setSkipDeviceColorMatrix(Z)V

    .line 138
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->this$0:Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;

    new-instance v3, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$NaturalSurfaceLayout;

    iget-object v4, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->this$0:Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;

    invoke-static {v4}, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;->access$100(Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;)Landroid/hardware/display/DisplayManagerInternal;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct {v3, v4, v2, v5}, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$NaturalSurfaceLayout;-><init>(Landroid/hardware/display/DisplayManagerInternal;ILandroid/view/SurfaceControl;)V

    invoke-static {v1, v3}, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;->access$002(Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$NaturalSurfaceLayout;)Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$NaturalSurfaceLayout;

    .line 141
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->showSurface(F)Z
    :try_end_7a
    .catchall {:try_start_3b .. :try_end_7a} :catchall_80

    .line 144
    :cond_7a
    :try_start_7a
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 145
    nop

    .line 146
    monitor-exit v0

    .line 147
    return-void

    .line 144
    :catchall_80
    move-exception v1

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .end local p0  # "this":Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;
    .end local p1  # "alpha":F
    throw v1

    .line 146
    .restart local p0  # "this":Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;
    .restart local p1  # "alpha":F
    :catchall_85
    move-exception v1

    monitor-exit v0
    :try_end_87
    .catchall {:try_start_7a .. :try_end_87} :catchall_85

    throw v1
.end method

.method private destroySurface()V
    .registers 5

    .line 150
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_3
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_38

    .line 153
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->updateDisplayDirectCurrentLight(Landroid/view/SurfaceControl;)V

    .line 155
    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->this$0:Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;

    invoke-static {v2}, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;->access$000(Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;)Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$NaturalSurfaceLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$NaturalSurfaceLayout;->dispose()V

    .line 156
    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->this$0:Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;

    invoke-static {v2, v1}, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;->access$002(Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$NaturalSurfaceLayout;)Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$NaturalSurfaceLayout;

    .line 157
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v3, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 158
    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 159
    iput-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 160
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mSurfaceAlpha:F

    .line 163
    const-string v1, "FingerprintDimLayer"

    const-string v2, "dismiss"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_38
    monitor-exit v0

    .line 168
    return-void

    .line 166
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method private showSurface(F)Z
    .registers 9
    .param p1, "alpha"  # F

    .line 171
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    :try_start_3
    iget v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mSurfaceAlpha:F

    cmpl-float v1, v1, p1

    const/4 v2, 0x1

    if-eqz v1, :cond_5e

    .line 173
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_60

    .line 176
    :try_start_d
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct {p0, v1}, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->updateDisplayDirectCurrentLight(Landroid/view/SurfaceControl;)V

    .line 178
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_23

    float-to-double v3, p1

    const-wide/high16 v5, 0x3ff0000000000000L  # 1.0

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1f

    goto :goto_23

    .line 181
    :cond_1f
    invoke-virtual {p0, v2}, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->setSkipInScreenshotAndScreenrecord(Z)V

    goto :goto_27

    .line 179
    :cond_23
    :goto_23
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->setSkipInScreenshotAndScreenrecord(Z)V

    .line 184
    :goto_27
    const-string/jumbo v1, "set_alpha"

    const-wide/16 v3, 0x8

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 186
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 187
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_59

    .line 189
    :try_start_3c
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 190
    nop

    .line 192
    iput p1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mSurfaceAlpha:F

    .line 195
    const-string v1, "FingerprintDimLayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drawFrame: alpha="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 189
    :catchall_59
    move-exception v1

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .end local p0  # "this":Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;
    .end local p1  # "alpha":F
    throw v1

    .line 199
    .restart local p0  # "this":Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;
    .restart local p1  # "alpha":F
    :cond_5e
    :goto_5e
    monitor-exit v0

    return v2

    .line 200
    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_3c .. :try_end_62} :catchall_60

    throw v1
.end method

.method private updateDisplayDirectCurrentLight(Landroid/view/SurfaceControl;)V
    .registers 2
    .param p1, "surfaceControl"  # Landroid/view/SurfaceControl;

    .line 227
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_7

    .line 88
    invoke-direct {p0}, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->destroySurface()V

    .line 90
    :cond_7
    return-void
.end method

.method public draw(F)V
    .registers 3
    .param p1, "alpha"  # F

    .line 97
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mIsScreenOn:Z

    if-eqz v0, :cond_d

    .line 98
    invoke-virtual {p0}, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->dismiss()V

    .line 100
    return-void

    .line 103
    :cond_d
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_15

    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->createSurface(F)V

    goto :goto_18

    .line 106
    :cond_15
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->showSurface(F)Z

    .line 108
    :goto_18
    return-void
.end method

.method public setScreenOn(Z)V
    .registers 2
    .param p1, "screenOn"  # Z

    .line 93
    iput-boolean p1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mIsScreenOn:Z

    .line 94
    return-void
.end method

.method public setSkipInScreenshotAndScreenrecord(Z)V
    .registers 6
    .param p1, "enable"  # Z

    .line 204
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_3
    const-string v1, "FingerprintDimLayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSkipInScreenshotAndScreenrecord enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mSurfaceControl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_49

    .line 207
    const-string v1, "FingerprintDimLayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "real to set setDimDither and skip screenshot, enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl;->setDimDither(Z)V

    .line 209
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer$FingerprintDimLayerController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl;->setSkipInScreenshotAndScreenrecord(Z)V

    .line 211
    :cond_49
    monitor-exit v0

    .line 212
    return-void

    .line 211
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_4b

    throw v1
.end method
