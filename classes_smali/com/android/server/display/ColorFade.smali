.class final Lcom/android/server/display/ColorFade;
.super Ljava/lang/Object;
.source "ColorFade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;
    }
.end annotation


# static fields
.field private static final COLOR_FADE_LAYER:I = 0x40000001

.field private static final DEBUG:Z = false

.field private static final DEJANK_FRAMES:I = 0x3

.field public static final MODE_COOL_DOWN:I = 0x1

.field public static final MODE_FADE:I = 0x2

.field public static final MODE_WARM_UP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ColorFade"


# instance fields
.field private mCreatedResources:Z

.field private mDisplayHeight:I

.field private final mDisplayId:I

.field private mDisplayLayerStack:I

.field private final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mDisplayWidth:I

.field private mEglConfig:Landroid/opengl/EGLConfig;

.field private mEglContext:Landroid/opengl/EGLContext;

.field private mEglDisplay:Landroid/opengl/EGLDisplay;

.field private mEglSurface:Landroid/opengl/EGLSurface;

.field private final mGLBuffers:[I

.field private mGammaLoc:I

.field private mMode:I

.field private mOpacityLoc:I

.field private mPrepared:Z

.field private mProgram:I

.field private final mProjMatrix:[F

.field private mProjMatrixLoc:I

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceAlpha:F

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

.field private mSurfaceSession:Landroid/view/SurfaceSession;

.field private mSurfaceVisible:Z

.field private final mTexCoordBuffer:Ljava/nio/FloatBuffer;

.field private mTexCoordLoc:I

.field private final mTexMatrix:[F

.field private mTexMatrixLoc:I

.field private final mTexNames:[I

.field private mTexNamesGenerated:Z

.field private mTexUnitLoc:I

.field private final mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mVertexLoc:I


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "displayId"  # I

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    .line 104
    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mTexMatrix:[F

    .line 105
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    .line 106
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    .line 113
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 114
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 132
    iput p1, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    .line 133
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 134
    return-void
.end method

.method private attachEglContext()Z
    .registers 5

    .line 688
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 689
    return v1

    .line 691
    :cond_6
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v2, v0, v0, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 692
    const-string v0, "eglMakeCurrent"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 693
    return v1

    .line 695
    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method private captureScreenshotTextureAndSetViewport()Z
    .registers 14

    .line 478
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 479
    return v1

    .line 482
    :cond_8
    :try_start_8
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    const/4 v2, 0x1

    if-nez v0, :cond_21

    .line 483
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 484
    const-string v0, "glGenTextures"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_ae

    if-eqz v0, :cond_1f

    .line 485
    nop

    .line 520
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 485
    return v1

    .line 487
    :cond_1f
    :try_start_1f
    iput-boolean v2, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    .line 490
    :cond_21
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    aget v3, v3, v1

    invoke-direct {v0, v3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 491
    .local v0, "st":Landroid/graphics/SurfaceTexture;
    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_ae

    .line 493
    .local v3, "s":Landroid/view/Surface;
    :try_start_2f
    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v4

    .line 494
    .local v4, "token":Landroid/os/IBinder;
    if-nez v4, :cond_47

    .line 495
    const-string v2, "ColorFade"

    const-string v5, "Failed to take screenshot because internal display is disconnected"

    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_a6

    .line 497
    nop

    .line 504
    :try_start_3d
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 505
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_ae

    .line 520
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 497
    return v1

    .line 500
    :cond_47
    :try_start_47
    invoke-static {v4, v3}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V

    .line 501
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 502
    iget-object v5, p0, Lcom/android/server/display/ColorFade;->mTexMatrix:[F

    invoke-virtual {v0, v5}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V
    :try_end_52
    .catchall {:try_start_47 .. :try_end_52} :catchall_a6

    .line 504
    .end local v4  # "token":Landroid/os/IBinder;
    :try_start_52
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 505
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 506
    nop

    .line 511
    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v2, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 512
    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x3

    const/high16 v7, 0x3f800000  # 1.0f

    invoke-virtual {v4, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 513
    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x4

    invoke-virtual {v4, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x5

    invoke-virtual {v4, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 514
    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x6

    invoke-virtual {v4, v6, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v6, 0x7

    invoke-virtual {v4, v6, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 517
    iget v4, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    iget v5, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    invoke-static {v1, v1, v4, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 518
    const/4 v7, 0x0

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    int-to-float v8, v1

    const/4 v9, 0x0

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    int-to-float v10, v1

    const/high16 v11, -0x40800000  # -1.0f

    const/high16 v12, 0x3f800000  # 1.0f

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/server/display/ColorFade;->ortho(FFFFFF)V
    :try_end_a1
    .catchall {:try_start_52 .. :try_end_a1} :catchall_ae

    .line 520
    .end local v0  # "st":Landroid/graphics/SurfaceTexture;
    .end local v3  # "s":Landroid/view/Surface;
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 521
    nop

    .line 522
    return v2

    .line 504
    .restart local v0  # "st":Landroid/graphics/SurfaceTexture;
    .restart local v3  # "s":Landroid/view/Surface;
    :catchall_a6
    move-exception v1

    :try_start_a7
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 505
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .end local p0  # "this":Lcom/android/server/display/ColorFade;
    throw v1
    :try_end_ae
    .catchall {:try_start_a7 .. :try_end_ae} :catchall_ae

    .line 520
    .end local v0  # "st":Landroid/graphics/SurfaceTexture;
    .end local v3  # "s":Landroid/view/Surface;
    .restart local p0  # "this":Lcom/android/server/display/ColorFade;
    :catchall_ae
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    throw v0
.end method

.method private static checkGlErrors(Ljava/lang/String;)Z
    .registers 2
    .param p0, "func"  # Ljava/lang/String;

    .line 716
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static checkGlErrors(Ljava/lang/String;Z)Z
    .registers 7
    .param p0, "func"  # Ljava/lang/String;
    .param p1, "log"  # Z

    .line 720
    const/4 v0, 0x0

    .line 722
    .local v0, "hadError":Z
    :goto_1
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    move v2, v1

    .local v2, "error":I
    if-eqz v1, :cond_2a

    .line 723
    if-eqz p1, :cond_28

    .line 724
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed: error "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    const-string v4, "ColorFade"

    invoke-static {v4, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 726
    :cond_28
    const/4 v0, 0x1

    goto :goto_1

    .line 728
    :cond_2a
    return v0
.end method

.method private createEglContext()Z
    .registers 13

    .line 534
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2c

    .line 535
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 536
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v3, :cond_18

    .line 537
    const-string v0, "eglGetDisplay"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 538
    return v2

    .line 541
    :cond_18
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 542
    .local v0, "version":[I
    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v3, v0, v2, v0, v1}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 543
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 544
    const-string v1, "eglInitialize"

    invoke-static {v1}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 545
    return v2

    .line 549
    .end local v0  # "version":[I
    :cond_2c
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    if-nez v0, :cond_60

    .line 550
    const/16 v0, 0xb

    new-array v4, v0, [I

    fill-array-data v4, :array_82

    .line 559
    .local v4, "eglConfigAttribList":[I
    new-array v0, v1, [I

    .line 560
    .local v0, "numEglConfigs":[I
    new-array v11, v1, [Landroid/opengl/EGLConfig;

    .line 561
    .local v11, "eglConfigs":[Landroid/opengl/EGLConfig;
    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v5, 0x0

    const/4 v7, 0x0

    array-length v8, v11

    const/4 v10, 0x0

    move-object v6, v11

    move-object v9, v0

    invoke-static/range {v3 .. v10}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 563
    const-string v1, "eglChooseConfig"

    invoke-static {v1}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 564
    return v2

    .line 566
    :cond_4f
    aget v3, v0, v2

    if-gtz v3, :cond_5c

    .line 567
    const-string v1, "ColorFade"

    const-string/jumbo v3, "no valid config found"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    return v2

    .line 571
    :cond_5c
    aget-object v3, v11, v2

    iput-object v3, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    .line 574
    .end local v0  # "numEglConfigs":[I
    .end local v4  # "eglConfigAttribList":[I
    .end local v11  # "eglConfigs":[Landroid/opengl/EGLConfig;
    :cond_60
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_80

    .line 575
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_9c

    .line 579
    .local v0, "eglContextAttribList":[I
    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v3, v4, v5, v0, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    .line 581
    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    if-nez v3, :cond_80

    .line 582
    const-string v1, "eglCreateContext"

    invoke-static {v1}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 583
    return v2

    .line 586
    .end local v0  # "eglContextAttribList":[I
    :cond_80
    return v1

    nop

    :array_82
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3038
    .end array-data

    :array_9c
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private createEglSurface()Z
    .registers 7

    .line 627
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    const/4 v1, 0x1

    if-nez v0, :cond_22

    .line 628
    new-array v0, v1, [I

    const/16 v2, 0x3038

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 632
    .local v0, "eglSurfaceAttribList":[I
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    iget-object v5, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    invoke-static {v2, v4, v5, v0, v3}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 634
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    if-nez v2, :cond_22

    .line 635
    const-string v1, "eglCreateWindowSurface"

    invoke-static {v1}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 636
    return v3

    .line 639
    .end local v0  # "eglSurfaceAttribList":[I
    :cond_22
    return v1
.end method

.method private static createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;
    .registers 3
    .param p0, "size"  # I

    .line 706
    mul-int/lit8 v0, p0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 707
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 708
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    return-object v1
.end method

.method private createSurface()Z
    .registers 7

    .line 590
    const-string v0, "ColorFade"

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-nez v1, :cond_d

    .line 591
    new-instance v1, Landroid/view/SurfaceSession;

    invoke-direct {v1}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 594
    :cond_d
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x1

    if-nez v1, :cond_80

    .line 595
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 597
    .local v1, "t":Landroid/view/SurfaceControl$Transaction;
    :try_start_17
    new-instance v3, Landroid/view/SurfaceControl$Builder;

    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v3, v4}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 598
    invoke-virtual {v3, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    .line 599
    .local v3, "builder":Landroid/view/SurfaceControl$Builder;
    iget v4, p0, Lcom/android/server/display/ColorFade;->mMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2b

    .line 600
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    goto :goto_32

    .line 602
    :cond_2b
    iget v4, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    iget v5, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    .line 604
    :goto_32
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 606
    const-class v4, Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/FlymeWindowManagerInternal;->setColorFadeShow(Z)V
    :try_end_43
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_17 .. :try_end_43} :catch_78

    .line 611
    .end local v3  # "builder":Landroid/view/SurfaceControl$Builder;
    nop

    .line 613
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p0, Lcom/android/server/display/ColorFade;->mDisplayLayerStack:I

    invoke-virtual {v1, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 614
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    iget v4, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    invoke-virtual {v1, v0, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 615
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    .line 616
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v3}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 618
    new-instance v0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v4, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    iget-object v5, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct {v0, v3, v4, v5}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;-><init>(Landroid/hardware/display/DisplayManagerInternal;ILandroid/view/SurfaceControl;)V

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    .line 620
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    invoke-virtual {v0, v1}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->onDisplayTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 621
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_80

    .line 608
    :catch_78
    move-exception v2

    .line 609
    .local v2, "ex":Landroid/view/Surface$OutOfResourcesException;
    const-string v3, "Unable to create surface."

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 610
    const/4 v0, 0x0

    return v0

    .line 623
    .end local v1  # "t":Landroid/view/SurfaceControl$Transaction;
    .end local v2  # "ex":Landroid/view/Surface$OutOfResourcesException;
    :cond_80
    :goto_80
    return v2
.end method

.method private destroyEglSurface()V
    .registers 3

    .line 643
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_14

    .line 644
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 645
    const-string v0, "eglDestroySurface"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 647
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 649
    :cond_14
    return-void
.end method

.method private destroyGLBuffers()V
    .registers 4

    .line 314
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 315
    const-string v0, "glDeleteBuffers"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 316
    return-void
.end method

.method private destroyGLShaders()V
    .registers 2

    .line 275
    iget v0, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 276
    const-string v0, "glDeleteProgram"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 277
    return-void
.end method

.method private destroyScreenshotTexture()V
    .registers 4

    .line 526
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    if-eqz v0, :cond_12

    .line 527
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    .line 528
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 529
    const-string v0, "glDeleteTextures"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 531
    :cond_12
    return-void
.end method

.method private destroySurface()V
    .registers 3

    .line 652
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_36

    .line 653
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    invoke-virtual {v0}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->dispose()V

    .line 654
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    .line 655
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 657
    :try_start_f
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->remove()V

    .line 658
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_31

    .line 660
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 661
    nop

    .line 662
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 663
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    .line 664
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    .line 666
    const-class v1, Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/FlymeWindowManagerInternal;->setColorFadeShow(Z)V

    goto :goto_36

    .line 660
    :catchall_31
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0

    .line 669
    :cond_36
    :goto_36
    return-void
.end method

.method private detachEglContext()V
    .registers 5

    .line 699
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_d

    .line 700
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 703
    :cond_d
    return-void
.end method

.method private drawFaded(FF)V
    .registers 14
    .param p1, "opacity"  # F
    .param p2, "gamma"  # F

    .line 430
    iget v0, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 433
    iget v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrixLoc:I

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 434
    iget v0, p0, Lcom/android/server/display/ColorFade;->mTexMatrixLoc:I

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mTexMatrix:[F

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 435
    iget v0, p0, Lcom/android/server/display/ColorFade;->mOpacityLoc:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 436
    iget v0, p0, Lcom/android/server/display/ColorFade;->mGammaLoc:I

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 439
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 440
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    aget v0, v0, v3

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 443
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    aget v0, v0, v3

    const v4, 0x8892

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 444
    iget v0, p0, Lcom/android/server/display/ColorFade;->mVertexLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 445
    iget v5, p0, Lcom/android/server/display/ColorFade;->mVertexLoc:I

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 447
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    aget v0, v0, v2

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 448
    iget v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordLoc:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 449
    iget v5, p0, Lcom/android/server/display/ColorFade;->mTexCoordLoc:I

    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 451
    const/4 v0, 0x6

    const/4 v2, 0x4

    invoke-static {v0, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 454
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 455
    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 456
    return-void
.end method

.method private initGLBuffers()Z
    .registers 7

    .line 281
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lcom/android/server/display/ColorFade;->setQuad(Ljava/nio/FloatBuffer;FFFF)V

    .line 284
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const v2, 0x8d65

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 285
    const/16 v0, 0x2600

    const/16 v3, 0x2800

    invoke-static {v2, v3, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 287
    const/16 v3, 0x2801

    invoke-static {v2, v3, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 289
    const v0, 0x812f

    const/16 v3, 0x2802

    invoke-static {v2, v3, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 291
    const/16 v3, 0x2803

    invoke-static {v2, v3, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 293
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 296
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    const/4 v2, 0x2

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 299
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    aget v0, v0, v1

    const v2, 0x8892

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 300
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const v4, 0x88e4

    invoke-static {v2, v0, v3, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 304
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 305
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v5, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v2, v0, v5, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 308
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 310
    return v3
.end method

.method private initGLShaders(Landroid/content/Context;)Z
    .registers 7
    .param p1, "context"  # Landroid/content/Context;

    .line 241
    const v0, 0x1100003

    const v1, 0x8b31

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/display/ColorFade;->loadShader(Landroid/content/Context;II)I

    move-result v0

    .line 243
    .local v0, "vshader":I
    const v1, 0x1100002

    const v2, 0x8b30

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/display/ColorFade;->loadShader(Landroid/content/Context;II)I

    move-result v1

    .line 245
    .local v1, "fshader":I
    invoke-static {}, Landroid/opengl/GLES20;->glReleaseShaderCompiler()V

    .line 246
    const/4 v2, 0x0

    if-eqz v0, :cond_93

    if-nez v1, :cond_1d

    goto :goto_93

    .line 248
    :cond_1d
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    .line 250
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 251
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 252
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 253
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 255
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 257
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v4, "position"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mVertexLoc:I

    .line 258
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v4, "uv"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mTexCoordLoc:I

    .line 260
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v4, "proj_matrix"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mProjMatrixLoc:I

    .line 261
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v4, "tex_matrix"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mTexMatrixLoc:I

    .line 263
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v4, "opacity"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mOpacityLoc:I

    .line 264
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string v4, "gamma"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mGammaLoc:I

    .line 265
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v4, "texUnit"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/server/display/ColorFade;->mTexUnitLoc:I

    .line 267
    iget v3, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 268
    iget v3, p0, Lcom/android/server/display/ColorFade;->mTexUnitLoc:I

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 269
    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 271
    const/4 v2, 0x1

    return v2

    .line 246
    :cond_93
    :goto_93
    return v2
.end method

.method private loadShader(Landroid/content/Context;II)I
    .registers 9
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "resourceId"  # I
    .param p3, "type"  # I

    .line 220
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/ColorFade;->readFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "source":Ljava/lang/String;
    invoke-static {p3}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 224
    .local v1, "shader":I
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 225
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 227
    const/4 v2, 0x1

    new-array v2, v2, [I

    .line 228
    .local v2, "compiled":[I
    const/4 v3, 0x0

    const v4, 0x8b81

    invoke-static {v1, v4, v2, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 229
    aget v3, v2, v3

    if-nez v3, :cond_51

    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ColorFade"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderSource(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 234
    const/4 v1, 0x0

    .line 237
    :cond_51
    return v1
.end method

.method private static logEglError(Ljava/lang/String;)V
    .registers 4
    .param p0, "func"  # Ljava/lang/String;

    .line 712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed: error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "ColorFade"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 713
    return-void
.end method

.method private ortho(FFFFFF)V
    .registers 11
    .param p1, "left"  # F
    .param p2, "right"  # F
    .param p3, "bottom"  # F
    .param p4, "top"  # F
    .param p5, "znear"  # F
    .param p6, "zfar"  # F

    .line 459
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    sub-float v1, p2, p1

    const/high16 v2, 0x40000000  # 2.0f

    div-float v1, v2, v1

    const/4 v3, 0x0

    aput v1, v0, v3

    .line 460
    const/4 v1, 0x0

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 461
    const/4 v3, 0x2

    aput v1, v0, v3

    .line 462
    const/4 v3, 0x3

    aput v1, v0, v3

    .line 463
    const/4 v3, 0x4

    aput v1, v0, v3

    .line 464
    sub-float v3, p4, p3

    div-float/2addr v2, v3

    const/4 v3, 0x5

    aput v2, v0, v3

    .line 465
    const/4 v2, 0x6

    aput v1, v0, v2

    .line 466
    const/4 v2, 0x7

    aput v1, v0, v2

    .line 467
    const/16 v2, 0x8

    aput v1, v0, v2

    .line 468
    const/16 v2, 0x9

    aput v1, v0, v2

    .line 469
    sub-float v2, p6, p5

    const/high16 v3, -0x40000000  # -2.0f

    div-float/2addr v3, v2

    const/16 v2, 0xa

    aput v3, v0, v2

    .line 470
    const/16 v2, 0xb

    aput v1, v0, v2

    .line 471
    add-float v1, p2, p1

    neg-float v1, v1

    sub-float v2, p2, p1

    div-float/2addr v1, v2

    const/16 v2, 0xc

    aput v1, v0, v2

    .line 472
    add-float v1, p4, p3

    neg-float v1, v1

    sub-float v2, p4, p3

    div-float/2addr v1, v2

    const/16 v2, 0xd

    aput v1, v0, v2

    .line 473
    add-float v1, p6, p5

    neg-float v1, v1

    sub-float v2, p6, p5

    div-float/2addr v1, v2

    const/16 v2, 0xe

    aput v1, v0, v2

    .line 474
    const/16 v1, 0xf

    const/high16 v2, 0x3f800000  # 1.0f

    aput v2, v0, v1

    .line 475
    return-void
.end method

.method private readFile(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "resourceId"  # I

    .line 210
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 211
    .local v0, "stream":Ljava/io/InputStream;
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v2}, Llibcore/io/Streams;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_17

    return-object v1

    .line 213
    .end local v0  # "stream":Ljava/io/InputStream;
    :catch_17
    move-exception v0

    .line 214
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized shader "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorFade"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static setQuad(Ljava/nio/FloatBuffer;FFFF)V
    .registers 7
    .param p0, "vtx"  # Ljava/nio/FloatBuffer;
    .param p1, "x"  # F
    .param p2, "y"  # F
    .param p3, "w"  # F
    .param p4, "h"  # F

    .line 322
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 323
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 324
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 325
    add-float v0, p2, p4

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 326
    add-float v0, p1, p3

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 327
    add-float v0, p2, p4

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 328
    add-float v0, p1, p3

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 329
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 330
    return-void
.end method

.method private showSurface(F)Z
    .registers 5
    .param p1, "alpha"  # F

    .line 672
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_28

    .line 673
    :cond_b
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 675
    :try_start_e
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    const v2, 0x40000001  # 2.0000002f

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 676
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 677
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_29

    .line 679
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 680
    nop

    .line 681
    iput-boolean v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    .line 682
    iput p1, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    .line 684
    :cond_28
    return v1

    .line 679
    :catchall_29
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 372
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    if-eqz v0, :cond_d

    .line 373
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->dismissResources()V

    .line 374
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroySurface()V

    .line 375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    .line 377
    :cond_d
    return-void
.end method

.method public dismissResources()V
    .registers 2

    .line 343
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mCreatedResources:Z

    if-eqz v0, :cond_23

    .line 344
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    .line 346
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroyScreenshotTexture()V

    .line 347
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroyGLShaders()V

    .line 348
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroyGLBuffers()V

    .line 349
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroyEglSurface()V
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_1e

    .line 351
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 352
    nop

    .line 355
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mCreatedResources:Z

    goto :goto_23

    .line 351
    :catchall_1e
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    throw v0

    .line 358
    :cond_23
    :goto_23
    return-void
.end method

.method public draw(F)Z
    .registers 19
    .param p1, "level"  # F

    .line 391
    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcom/android/server/display/ColorFade;->mPrepared:Z

    const/4 v2, 0x0

    if-nez v0, :cond_8

    .line 392
    return v2

    .line 395
    :cond_8
    iget v0, v1, Lcom/android/server/display/ColorFade;->mMode:I

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000  # 1.0f

    if-ne v0, v3, :cond_16

    .line 396
    sub-float v4, v4, p1

    invoke-direct {v1, v4}, Lcom/android/server/display/ColorFade;->showSurface(F)Z

    move-result v0

    return v0

    .line 399
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 400
    return v2

    .line 404
    :cond_1d
    const/4 v0, 0x0

    :try_start_1e
    invoke-static {v0, v0, v0, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 405
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 408
    sub-float v0, v4, p1

    float-to-double v5, v0

    .line 409
    .local v5, "one_minus_level":D
    const-wide v7, 0x400921fb54442d18L  # Math.PI

    mul-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    .line 410
    .local v7, "cos":D
    const-wide/16 v9, 0x0

    cmpg-double v0, v7, v9

    if-gez v0, :cond_3c

    const-wide/high16 v9, -0x4010000000000000L  # -1.0

    goto :goto_3e

    :cond_3c
    const-wide/high16 v9, 0x3ff0000000000000L  # 1.0

    .line 411
    .local v9, "sign":D
    :goto_3e
    const-wide/high16 v11, 0x4000000000000000L  # 2.0

    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    neg-double v13, v13

    double-to-float v0, v13

    add-float/2addr v0, v4

    .line 412
    .local v0, "opacity":F
    const-wide/high16 v13, 0x3fe0000000000000L  # 0.5

    mul-double v15, v9, v13

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    mul-double/2addr v15, v11

    add-double/2addr v15, v13

    const-wide v11, 0x3feccccccccccccdL  # 0.9

    mul-double/2addr v15, v11

    const-wide v11, 0x3fb999999999999aL  # 0.1

    add-double/2addr v11, v15

    double-to-float v3, v11

    .line 413
    .local v3, "gamma":F
    div-float v11, v4, v3

    invoke-direct {v1, v0, v11}, Lcom/android/server/display/ColorFade;->drawFaded(FF)V

    .line 414
    const-string v11, "drawFrame"

    invoke-static {v11}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    move-result v11
    :try_end_69
    .catchall {:try_start_1e .. :try_end_69} :catchall_81

    if-eqz v11, :cond_70

    .line 415
    nop

    .line 420
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 415
    return v2

    .line 418
    :cond_70
    :try_start_70
    iget-object v2, v1, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v11, v1, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v2, v11}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
    :try_end_77
    .catchall {:try_start_70 .. :try_end_77} :catchall_81

    .line 420
    nop

    .end local v0  # "opacity":F
    .end local v3  # "gamma":F
    .end local v5  # "one_minus_level":D
    .end local v7  # "cos":D
    .end local v9  # "sign":D
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 421
    nop

    .line 422
    invoke-direct {v1, v4}, Lcom/android/server/display/ColorFade;->showSurface(F)Z

    move-result v0

    return v0

    .line 420
    :catchall_81
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 732
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 733
    const-string v0, "Color Fade State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPrepared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/ColorFade;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSurfaceVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSurfaceAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 741
    return-void
.end method

.method public prepare(Landroid/content/Context;I)Z
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "mode"  # I

    .line 148
    iput p2, p0, Lcom/android/server/display/ColorFade;->mMode:I

    .line 152
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 153
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v1, v0, Landroid/view/DisplayInfo;->layerStack:I

    iput v1, p0, Lcom/android/server/display/ColorFade;->mDisplayLayerStack:I

    .line 154
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v1

    iput v1, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    .line 155
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v1

    iput v1, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    .line 158
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/DeviceControlService;->setSkipInScreenshotAndScreenrecord(Z)V

    .line 162
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->createSurface()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_7f

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->createEglContext()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->createEglSurface()Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 163
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->captureScreenshotTextureAndSetViewport()Z

    move-result v2

    if-nez v2, :cond_38

    goto :goto_7f

    .line 172
    :cond_38
    invoke-static {v3}, Lcom/android/server/DeviceControlService;->setSkipInScreenshotAndScreenrecord(Z)V

    .line 176
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    move-result v2

    if-nez v2, :cond_42

    .line 177
    return v1

    .line 180
    :cond_42
    :try_start_42
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorFade;->initGLShaders(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->initGLBuffers()Z

    move-result v2

    if-eqz v2, :cond_6f

    const-string/jumbo v2, "prepare"

    invoke-static {v2}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    move-result v2
    :try_end_55
    .catchall {:try_start_42 .. :try_end_55} :catchall_7a

    if-eqz v2, :cond_58

    goto :goto_6f

    .line 186
    :cond_58
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 187
    nop

    .line 190
    iput-boolean v3, p0, Lcom/android/server/display/ColorFade;->mCreatedResources:Z

    .line 191
    iput-boolean v3, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    .line 200
    if-ne p2, v3, :cond_6e

    .line 201
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_63
    const/4 v2, 0x3

    if-ge v1, v2, :cond_6e

    .line 202
    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {p0, v2}, Lcom/android/server/display/ColorFade;->draw(F)Z

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_63

    .line 205
    .end local v1  # "i":I
    :cond_6e
    return v3

    .line 181
    :cond_6f
    :goto_6f
    :try_start_6f
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 182
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->dismiss()V
    :try_end_75
    .catchall {:try_start_6f .. :try_end_75} :catchall_7a

    .line 183
    nop

    .line 186
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 183
    return v1

    .line 186
    :catchall_7a
    move-exception v1

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    throw v1

    .line 164
    :cond_7f
    :goto_7f
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->dismiss()V

    .line 166
    invoke-static {v3}, Lcom/android/server/DeviceControlService;->setSkipInScreenshotAndScreenrecord(Z)V

    .line 168
    return v1
.end method
