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

.field private static final EGL_GL_COLORSPACE_DISPLAY_P3_PASSTHROUGH_EXT:I = 0x3490

.field private static final EGL_GL_COLORSPACE_KHR:I = 0x309d

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

.field private mIsWideColor:Z

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

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    .line 105
    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mTexMatrix:[F

    .line 106
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    .line 107
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    .line 114
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 115
    invoke-static {v0}, Lcom/android/server/display/ColorFade;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 133
    iput p1, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    .line 134
    const-class p1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManagerInternal;

    iput-object p1, p0, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 135
    return-void
.end method

.method private attachEglContext()Z
    .registers 5

    .line 677
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 678
    return v1

    .line 680
    :cond_6
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v2, v0, v0, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 681
    const-string v0, "eglMakeCurrent"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 682
    return v1

    .line 684
    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method private captureScreenshotTextureAndSetViewport()Z
    .registers 12

    .line 468
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 469
    return v1

    .line 472
    :cond_8
    :try_start_8
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    const/4 v2, 0x1

    if-nez v0, :cond_21

    .line 473
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 474
    const-string v0, "glGenTextures"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_bb

    if-eqz v0, :cond_1f

    .line 475
    nop

    .line 512
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 475
    return v1

    .line 477
    :cond_1f
    :try_start_1f
    iput-boolean v2, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    .line 480
    :cond_21
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    aget v3, v3, v1

    invoke-direct {v0, v3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 481
    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_bb

    .line 483
    :try_start_2f
    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v4

    .line 484
    if-nez v4, :cond_47

    .line 485
    const-string v2, "ColorFade"

    const-string v4, "Failed to take screenshot because internal display is disconnected"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_b3

    .line 487
    nop

    .line 496
    :try_start_3d
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 497
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_bb

    .line 512
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 487
    return v1

    .line 490
    :cond_47
    :try_start_47
    invoke-static {v4}, Landroid/view/SurfaceControl;->getActiveColorMode(Landroid/os/IBinder;)I

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_51

    move v5, v2

    goto :goto_52

    :cond_51
    move v5, v1

    :goto_52
    iput-boolean v5, p0, Lcom/android/server/display/ColorFade;->mIsWideColor:Z

    .line 492
    invoke-static {v4, v3}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V

    .line 493
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 494
    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mTexMatrix:[F

    invoke-virtual {v0, v4}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V
    :try_end_5f
    .catchall {:try_start_47 .. :try_end_5f} :catchall_b3

    .line 496
    :try_start_5f
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 497
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 498
    nop

    .line 503
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 504
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x3

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-virtual {v0, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 505
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 506
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x7

    invoke-virtual {v0, v4, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 509
    iget v0, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    iget v3, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    invoke-static {v1, v1, v0, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 510
    const/4 v5, 0x0

    iget v0, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    int-to-float v6, v0

    const/4 v7, 0x0

    iget v0, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    int-to-float v8, v0

    const/high16 v9, -0x40800000  # -1.0f

    const/high16 v10, 0x3f800000  # 1.0f

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/display/ColorFade;->ortho(FFFFFF)V
    :try_end_ae
    .catchall {:try_start_5f .. :try_end_ae} :catchall_bb

    .line 512
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 513
    nop

    .line 514
    return v2

    .line 496
    :catchall_b3
    move-exception v1

    :try_start_b4
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 497
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    throw v1
    :try_end_bb
    .catchall {:try_start_b4 .. :try_end_bb} :catchall_bb

    .line 512
    :catchall_bb
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    throw v0
.end method

.method private static checkGlErrors(Ljava/lang/String;)Z
    .registers 2

    .line 705
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static checkGlErrors(Ljava/lang/String;Z)Z
    .registers 5

    .line 709
    const/4 v0, 0x0

    .line 711
    :goto_1
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    if-eqz v1, :cond_29

    .line 712
    if-eqz p1, :cond_27

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed: error "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "ColorFade"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 715
    :cond_27
    const/4 v0, 0x1

    goto :goto_1

    .line 717
    :cond_29
    return v0
.end method

.method private createEglContext()Z
    .registers 13

    .line 526
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2c

    .line 527
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 528
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v3, :cond_18

    .line 529
    const-string v0, "eglGetDisplay"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 530
    return v2

    .line 533
    :cond_18
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 534
    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v3, v0, v2, v0, v1}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 535
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    .line 536
    const-string v0, "eglInitialize"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 537
    return v2

    .line 541
    :cond_2c
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    if-nez v0, :cond_60

    .line 542
    const/16 v0, 0xb

    new-array v4, v0, [I

    fill-array-data v4, :array_82

    .line 551
    new-array v0, v1, [I

    .line 552
    new-array v11, v1, [Landroid/opengl/EGLConfig;

    .line 553
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

    .line 555
    const-string v0, "eglChooseConfig"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 556
    return v2

    .line 558
    :cond_4f
    aget v0, v0, v2

    if-gtz v0, :cond_5c

    .line 559
    const-string v0, "ColorFade"

    const-string/jumbo v1, "no valid config found"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    return v2

    .line 563
    :cond_5c
    aget-object v0, v11, v2

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    .line 566
    :cond_60
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_80

    .line 567
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_9c

    .line 571
    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v3, v4, v5, v0, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    .line 573
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_80

    .line 574
    const-string v0, "eglCreateContext"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 575
    return v2

    .line 578
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

    .line 616
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    const/4 v1, 0x1

    if-nez v0, :cond_2e

    .line 617
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_30

    .line 624
    iget-boolean v2, p0, Lcom/android/server/display/ColorFade;->mIsWideColor:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_18

    .line 625
    const/16 v2, 0x309d

    aput v2, v0, v3

    .line 626
    const/16 v2, 0x3490

    aput v2, v0, v1

    .line 629
    :cond_18
    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mEglConfig:Landroid/opengl/EGLConfig;

    iget-object v5, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    invoke-static {v2, v4, v5, v0, v3}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 631
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_2e

    .line 632
    const-string v0, "eglCreateWindowSurface"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 633
    return v3

    .line 636
    :cond_2e
    return v1

    nop

    :array_30
    .array-data 4
        0x3038
        0x3038
        0x3038
    .end array-data
.end method

.method private static createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;
    .registers 2

    .line 695
    mul-int/lit8 p0, p0, 0x4

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 696
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 697
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method private createSurface()Z
    .registers 6

    .line 582
    const-string v0, "ColorFade"

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-nez v1, :cond_d

    .line 583
    new-instance v1, Landroid/view/SurfaceSession;

    invoke-direct {v1}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 586
    :cond_d
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_74

    .line 587
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 589
    :try_start_16
    new-instance v2, Landroid/view/SurfaceControl$Builder;

    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v2, v3}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 590
    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 591
    iget v3, p0, Lcom/android/server/display/ColorFade;->mMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 592
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    goto :goto_31

    .line 594
    :cond_2a
    iget v3, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    iget v4, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    .line 596
    :goto_31
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_37
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_16 .. :try_end_37} :catch_6c

    .line 600
    nop

    .line 602
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Lcom/android/server/display/ColorFade;->mDisplayLayerStack:I

    invoke-virtual {v1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 603
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    iget v3, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 604
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    .line 605
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 607
    new-instance v0, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v3, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    iget-object v4, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;-><init>(Landroid/hardware/display/DisplayManagerInternal;ILandroid/view/SurfaceControl;)V

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    .line 609
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    invoke-virtual {v0, v1}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->onDisplayTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 610
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_74

    .line 597
    :catch_6c
    move-exception v1

    .line 598
    const-string v2, "Unable to create surface."

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 599
    const/4 v0, 0x0

    return v0

    .line 612
    :cond_74
    :goto_74
    const/4 v0, 0x1

    return v0
.end method

.method private destroyEglSurface()V
    .registers 3

    .line 640
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_14

    .line 641
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 642
    const-string v0, "eglDestroySurface"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->logEglError(Ljava/lang/String;)V

    .line 644
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    .line 646
    :cond_14
    return-void
.end method

.method private destroyGLBuffers()V
    .registers 4

    .line 304
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 305
    const-string v0, "glDeleteBuffers"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 306
    return-void
.end method

.method private destroyGLShaders()V
    .registers 2

    .line 265
    iget v0, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 266
    const-string v0, "glDeleteProgram"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 267
    return-void
.end method

.method private destroyScreenshotTexture()V
    .registers 4

    .line 518
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    if-eqz v0, :cond_12

    .line 519
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mTexNamesGenerated:Z

    .line 520
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 521
    const-string v0, "glDeleteTextures"

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    .line 523
    :cond_12
    return-void
.end method

.method private destroySurface()V
    .registers 4

    .line 649
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_27

    .line 650
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    invoke-virtual {v0}, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->dispose()V

    .line 651
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceLayout:Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    .line 652
    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v2, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 653
    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 654
    iput-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 655
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    .line 656
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    .line 658
    :cond_27
    return-void
.end method

.method private detachEglContext()V
    .registers 5

    .line 688
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_d

    .line 689
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 692
    :cond_d
    return-void
.end method

.method private drawFaded(FF)V
    .registers 13

    .line 420
    iget v0, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 423
    iget v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrixLoc:I

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 424
    iget v0, p0, Lcom/android/server/display/ColorFade;->mTexMatrixLoc:I

    iget-object v1, p0, Lcom/android/server/display/ColorFade;->mTexMatrix:[F

    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 425
    iget v0, p0, Lcom/android/server/display/ColorFade;->mOpacityLoc:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 426
    iget p1, p0, Lcom/android/server/display/ColorFade;->mGammaLoc:I

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 429
    const p1, 0x84c0

    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 430
    iget-object p1, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    aget p1, p1, v3

    const p2, 0x8d65

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 433
    iget-object p1, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    aget p1, p1, v3

    const v0, 0x8892

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 434
    iget p1, p0, Lcom/android/server/display/ColorFade;->mVertexLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 435
    iget v4, p0, Lcom/android/server/display/ColorFade;->mVertexLoc:I

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 437
    iget-object p1, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    aget p1, p1, v2

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 438
    iget p1, p0, Lcom/android/server/display/ColorFade;->mTexCoordLoc:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 439
    iget v4, p0, Lcom/android/server/display/ColorFade;->mTexCoordLoc:I

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 441
    const/4 p1, 0x6

    const/4 v1, 0x4

    invoke-static {p1, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 444
    invoke-static {p2, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 445
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 446
    return-void
.end method

.method private initGLBuffers()Z
    .registers 7

    .line 271
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lcom/android/server/display/ColorFade;->setQuad(Ljava/nio/FloatBuffer;FFFF)V

    .line 274
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexNames:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const v2, 0x8d65

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 275
    const/16 v0, 0x2600

    const/16 v3, 0x2800

    invoke-static {v2, v3, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 277
    const/16 v3, 0x2801

    invoke-static {v2, v3, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 279
    const v0, 0x812f

    const/16 v3, 0x2802

    invoke-static {v2, v3, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 281
    const/16 v3, 0x2803

    invoke-static {v2, v3, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 283
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 286
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    const/4 v2, 0x2

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 289
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    aget v0, v0, v1

    const v2, 0x8892

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 290
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v3, p0, Lcom/android/server/display/ColorFade;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const v4, 0x88e4

    invoke-static {v2, v0, v3, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 294
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mGLBuffers:[I

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 295
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v5, p0, Lcom/android/server/display/ColorFade;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v2, v0, v5, v4}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 298
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 300
    return v3
.end method

.method private initGLShaders(Landroid/content/Context;)Z
    .registers 5

    .line 231
    const v0, 0x1100003

    const v1, 0x8b31

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/display/ColorFade;->loadShader(Landroid/content/Context;II)I

    move-result v0

    .line 233
    const v1, 0x1100002

    const v2, 0x8b30

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/display/ColorFade;->loadShader(Landroid/content/Context;II)I

    move-result p1

    .line 235
    invoke-static {}, Landroid/opengl/GLES20;->glReleaseShaderCompiler()V

    .line 236
    const/4 v1, 0x0

    if-eqz v0, :cond_93

    if-nez p1, :cond_1d

    goto :goto_93

    .line 238
    :cond_1d
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    iput v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    .line 240
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 241
    iget v2, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 242
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 243
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 245
    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 247
    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v0, "position"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/ColorFade;->mVertexLoc:I

    .line 248
    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v0, "uv"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/ColorFade;->mTexCoordLoc:I

    .line 250
    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v0, "proj_matrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/ColorFade;->mProjMatrixLoc:I

    .line 251
    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v0, "tex_matrix"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/ColorFade;->mTexMatrixLoc:I

    .line 253
    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v0, "opacity"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/ColorFade;->mOpacityLoc:I

    .line 254
    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string v0, "gamma"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/ColorFade;->mGammaLoc:I

    .line 255
    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    const-string/jumbo v0, "texUnit"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/ColorFade;->mTexUnitLoc:I

    .line 257
    iget p1, p0, Lcom/android/server/display/ColorFade;->mProgram:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 258
    iget p1, p0, Lcom/android/server/display/ColorFade;->mTexUnitLoc:I

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 259
    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 261
    const/4 p1, 0x1

    return p1

    .line 236
    :cond_93
    :goto_93
    return v1
.end method

.method private loadShader(Landroid/content/Context;II)I
    .registers 6

    .line 210
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/ColorFade;->readFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 212
    invoke-static {p3}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p2

    .line 214
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 215
    invoke-static {p2}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 217
    const/4 p1, 0x1

    new-array p1, p1, [I

    .line 218
    const/4 v0, 0x0

    const v1, 0x8b81

    invoke-static {p2, v1, p1, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 219
    aget p1, p1, v0

    if-nez p1, :cond_51

    .line 220
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not compile shader "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ColorFade"

    invoke-static {p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-static {p2}, Landroid/opengl/GLES20;->glGetShaderSource(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-static {p2}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-static {p2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 224
    move p2, v0

    .line 227
    :cond_51
    return p2
.end method

.method private static logEglError(Ljava/lang/String;)V
    .registers 3

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed: error "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "ColorFade"

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 702
    return-void
.end method

.method private ortho(FFFFFF)V
    .registers 14

    .line 449
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mProjMatrix:[F

    sub-float v1, p2, p1

    const/high16 v2, 0x40000000  # 2.0f

    div-float v3, v2, v1

    const/4 v4, 0x0

    aput v3, v0, v4

    .line 450
    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v3, v0, v4

    .line 451
    const/4 v4, 0x2

    aput v3, v0, v4

    .line 452
    const/4 v4, 0x3

    aput v3, v0, v4

    .line 453
    const/4 v4, 0x4

    aput v3, v0, v4

    .line 454
    sub-float v4, p4, p3

    div-float/2addr v2, v4

    const/4 v5, 0x5

    aput v2, v0, v5

    .line 455
    const/4 v2, 0x6

    aput v3, v0, v2

    .line 456
    const/4 v2, 0x7

    aput v3, v0, v2

    .line 457
    const/16 v2, 0x8

    aput v3, v0, v2

    .line 458
    const/16 v2, 0x9

    aput v3, v0, v2

    .line 459
    sub-float v2, p6, p5

    const/high16 v5, -0x40000000  # -2.0f

    div-float/2addr v5, v2

    const/16 v6, 0xa

    aput v5, v0, v6

    .line 460
    const/16 v5, 0xb

    aput v3, v0, v5

    .line 461
    add-float/2addr p2, p1

    neg-float p1, p2

    div-float/2addr p1, v1

    const/16 p2, 0xc

    aput p1, v0, p2

    .line 462
    add-float/2addr p4, p3

    neg-float p1, p4

    div-float/2addr p1, v4

    const/16 p2, 0xd

    aput p1, v0, p2

    .line 463
    add-float/2addr p6, p5

    neg-float p1, p6

    div-float/2addr p1, v2

    const/16 p2, 0xe

    aput p1, v0, p2

    .line 464
    const/16 p1, 0xf

    const/high16 p2, 0x3f800000  # 1.0f

    aput p2, v0, p1

    .line 465
    return-void
.end method

.method private readFile(Landroid/content/Context;I)Ljava/lang/String;
    .registers 5

    .line 200
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    .line 201
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Llibcore/io/Streams;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_17

    return-object v0

    .line 203
    :catch_17
    move-exception p1

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized shader "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ColorFade"

    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static setQuad(Ljava/nio/FloatBuffer;FFFF)V
    .registers 6

    .line 312
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 313
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 314
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 315
    add-float/2addr p4, p2

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 316
    add-float/2addr p1, p3

    const/4 p3, 0x4

    invoke-virtual {p0, p3, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 317
    const/4 p3, 0x5

    invoke-virtual {p0, p3, p4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 318
    const/4 p3, 0x6

    invoke-virtual {p0, p3, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 319
    const/4 p1, 0x7

    invoke-virtual {p0, p1, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 320
    return-void
.end method

.method private showSurface(F)Z
    .registers 5

    .line 661
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_28

    .line 662
    :cond_b
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 664
    :try_start_e
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    const v2, 0x40000001  # 2.0000002f

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 665
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 666
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_29

    .line 668
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 669
    nop

    .line 670
    iput-boolean v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    .line 671
    iput p1, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    .line 673
    :cond_28
    return v1

    .line 668
    :catchall_29
    move-exception p1

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw p1
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 362
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    if-eqz v0, :cond_d

    .line 363
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->dismissResources()V

    .line 364
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroySurface()V

    .line 365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    .line 367
    :cond_d
    return-void
.end method

.method public dismissResources()V
    .registers 2

    .line 333
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mCreatedResources:Z

    if-eqz v0, :cond_23

    .line 334
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    .line 336
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroyScreenshotTexture()V

    .line 337
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroyGLShaders()V

    .line 338
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroyGLBuffers()V

    .line 339
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->destroyEglSurface()V
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_1e

    .line 341
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 342
    nop

    .line 345
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/ColorFade;->mCreatedResources:Z

    goto :goto_23

    .line 341
    :catchall_1e
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    throw v0

    .line 348
    :cond_23
    :goto_23
    return-void
.end method

.method public draw(F)Z
    .registers 14

    .line 381
    iget-boolean v0, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 382
    return v1

    .line 385
    :cond_6
    iget v0, p0, Lcom/android/server/display/ColorFade;->mMode:I

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000  # 1.0f

    if-ne v0, v2, :cond_13

    .line 386
    sub-float/2addr v3, p1

    invoke-direct {p0, v3}, Lcom/android/server/display/ColorFade;->showSurface(F)Z

    move-result p1

    return p1

    .line 389
    :cond_13
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 390
    return v1

    .line 394
    :cond_1a
    const/4 v0, 0x0

    :try_start_1b
    invoke-static {v0, v0, v0, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 395
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 398
    sub-float p1, v3, p1

    float-to-double v4, p1

    .line 399
    const-wide v6, 0x400921fb54442d18L  # Math.PI

    mul-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 400
    const-wide/16 v8, 0x0

    cmpg-double p1, v6, v8

    if-gez p1, :cond_39

    const-wide/high16 v8, -0x4010000000000000L  # -1.0

    goto :goto_3b

    :cond_39
    const-wide/high16 v8, 0x3ff0000000000000L  # 1.0

    .line 401
    :goto_3b
    const-wide/high16 v10, 0x4000000000000000L  # 2.0

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    neg-double v4, v4

    double-to-float p1, v4

    add-float/2addr p1, v3

    .line 402
    const-wide/high16 v4, 0x3fe0000000000000L  # 0.5

    mul-double/2addr v8, v4

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v8, v6

    add-double/2addr v8, v4

    const-wide v4, 0x3feccccccccccccdL  # 0.9

    mul-double/2addr v8, v4

    const-wide v4, 0x3fb999999999999aL  # 0.1

    add-double/2addr v8, v4

    double-to-float v0, v8

    .line 403
    div-float v0, v3, v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/ColorFade;->drawFaded(FF)V

    .line 404
    const-string p1, "drawFrame"

    invoke-static {p1}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    move-result p1
    :try_end_65
    .catchall {:try_start_1b .. :try_end_65} :catchall_7c

    if-eqz p1, :cond_6c

    .line 405
    nop

    .line 410
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 405
    return v1

    .line 408
    :cond_6c
    :try_start_6c
    iget-object p1, p0, Lcom/android/server/display/ColorFade;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {p1, v0}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_7c

    .line 410
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 411
    nop

    .line 412
    invoke-direct {p0, v3}, Lcom/android/server/display/ColorFade;->showSurface(F)Z

    move-result p1

    return p1

    .line 410
    :catchall_7c
    move-exception p1

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    throw p1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 721
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 722
    const-string v0, "Color Fade State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPrepared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/ColorFade;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSurfaceVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSurfaceAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/ColorFade;->mSurfaceAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 730
    return-void
.end method

.method public prepare(Landroid/content/Context;I)Z
    .registers 5

    .line 149
    iput p2, p0, Lcom/android/server/display/ColorFade;->mMode:I

    .line 153
    iget-object v0, p0, Lcom/android/server/display/ColorFade;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, p0, Lcom/android/server/display/ColorFade;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 154
    iget v1, v0, Landroid/view/DisplayInfo;->layerStack:I

    iput v1, p0, Lcom/android/server/display/ColorFade;->mDisplayLayerStack:I

    .line 155
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v1

    iput v1, p0, Lcom/android/server/display/ColorFade;->mDisplayWidth:I

    .line 156
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/ColorFade;->mDisplayHeight:I

    .line 159
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->createSurface()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_79

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->createEglContext()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->createEglSurface()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 160
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->captureScreenshotTextureAndSetViewport()Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_79

    .line 166
    :cond_34
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->attachEglContext()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 167
    return v1

    .line 170
    :cond_3b
    :try_start_3b
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorFade;->initGLShaders(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_69

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->initGLBuffers()Z

    move-result p1

    if-eqz p1, :cond_69

    const-string/jumbo p1, "prepare"

    invoke-static {p1}, Lcom/android/server/display/ColorFade;->checkGlErrors(Ljava/lang/String;)Z

    move-result p1
    :try_end_4e
    .catchall {:try_start_3b .. :try_end_4e} :catchall_74

    if-eqz p1, :cond_51

    goto :goto_69

    .line 176
    :cond_51
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 177
    nop

    .line 180
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/display/ColorFade;->mCreatedResources:Z

    .line 181
    iput-boolean p1, p0, Lcom/android/server/display/ColorFade;->mPrepared:Z

    .line 190
    if-ne p2, p1, :cond_68

    .line 191
    nop

    :goto_5d
    const/4 p2, 0x3

    if-ge v1, p2, :cond_68

    .line 192
    const/high16 p2, 0x3f800000  # 1.0f

    invoke-virtual {p0, p2}, Lcom/android/server/display/ColorFade;->draw(F)Z

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    .line 195
    :cond_68
    return p1

    .line 171
    :cond_69
    :goto_69
    :try_start_69
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 172
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->dismiss()V
    :try_end_6f
    .catchall {:try_start_69 .. :try_end_6f} :catchall_74

    .line 173
    nop

    .line 176
    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    .line 173
    return v1

    .line 176
    :catchall_74
    move-exception p1

    invoke-direct {p0}, Lcom/android/server/display/ColorFade;->detachEglContext()V

    throw p1

    .line 161
    :cond_79
    :goto_79
    invoke-virtual {p0}, Lcom/android/server/display/ColorFade;->dismiss()V

    .line 162
    return v1
.end method
