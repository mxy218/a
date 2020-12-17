.class public Lcom/meizu/common/renderer/effect/GLRenderer;
.super Ljava/lang/Object;
.source "GLRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/renderer/effect/GLRenderer$TrimCallback;,
        Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;
    }
.end annotation


# static fields
.field public static final DEBUG_BLUR:Z

.field public static final DEBUG_FUNCTOR:Z

.field public static final DEBUG_RESOURCE:Z

.field public static final DENSITY:I

.field private static sAppContext:Landroid/app/Application;

.field private static sEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private static sFrameBufferPool:Lcom/meizu/common/renderer/effect/FrameBufferPool;

.field private static sGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvasImpl;

.field private static sGLRecycler:Lcom/meizu/common/renderer/effect/GLRecycler;

.field private static sInitialized:Z

.field private static sLibraryName:Ljava/lang/String;

.field private static final sSync:Ljava/lang/Object;

.field private static sTextureCache:Lcom/meizu/common/renderer/effect/TextureCache;

.field private static sTexturePool:Lcom/meizu/common/renderer/effect/TexturePool;

.field private static sTrimBackground:Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

.field private static sTrimCallback:Lcom/meizu/common/renderer/effect/GLRenderer$TrimCallback;

.field private static sTrimComplete:Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

.field private static sTrimHideUI:Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    const-string/jumbo v1, "sys.debug.glrenderer_blur"

    .line 27
    invoke-static {v1, v0}, Lcom/meizu/common/renderer/SystemProperty;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/meizu/common/renderer/effect/GLRenderer;->DEBUG_BLUR:Z

    const-string/jumbo v1, "sys.debug.glrenderer_functor"

    .line 28
    invoke-static {v1, v0}, Lcom/meizu/common/renderer/SystemProperty;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/meizu/common/renderer/effect/GLRenderer;->DEBUG_FUNCTOR:Z

    const-string/jumbo v1, "sys.debug.glrenderer_resource"

    .line 29
    invoke-static {v1, v0}, Lcom/meizu/common/renderer/SystemProperty;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/meizu/common/renderer/effect/GLRenderer;->DEBUG_RESOURCE:Z

    const-string/jumbo v1, "ro.sf.lcd_density"

    const/16 v2, 0x1e0

    .line 33
    invoke-static {v1, v2}, Lcom/meizu/common/renderer/SystemProperty;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/meizu/common/renderer/effect/GLRenderer;->DENSITY:I

    const-string v1, "glrenderer"

    .line 35
    sput-object v1, Lcom/meizu/common/renderer/effect/GLRenderer;->sLibraryName:Ljava/lang/String;

    .line 36
    sput-boolean v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sInitialized:Z

    .line 50
    new-instance v0, Lcom/meizu/common/renderer/effect/GLRecycler;

    invoke-direct {v0}, Lcom/meizu/common/renderer/effect/GLRecycler;-><init>()V

    sput-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sGLRecycler:Lcom/meizu/common/renderer/effect/GLRecycler;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sSync:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 24
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sLibraryName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;
    .registers 1

    .line 24
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sTrimBackground:Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;)Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;
    .registers 1

    .line 24
    sput-object p0, Lcom/meizu/common/renderer/effect/GLRenderer;->sTrimBackground:Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    return-object p0
.end method

.method static synthetic access$1100()Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;
    .registers 1

    .line 24
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sTrimHideUI:Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;)Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;
    .registers 1

    .line 24
    sput-object p0, Lcom/meizu/common/renderer/effect/GLRenderer;->sTrimHideUI:Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .registers 1

    .line 24
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300()Lcom/meizu/common/renderer/effect/GLCanvasImpl;
    .registers 1

    .line 24
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvasImpl;

    return-object v0
.end method

.method static synthetic access$302(Lcom/meizu/common/renderer/effect/GLCanvasImpl;)Lcom/meizu/common/renderer/effect/GLCanvasImpl;
    .registers 1

    .line 24
    sput-object p0, Lcom/meizu/common/renderer/effect/GLRenderer;->sGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvasImpl;

    return-object p0
.end method

.method static synthetic access$400()Lcom/meizu/common/renderer/effect/TexturePool;
    .registers 1

    .line 24
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sTexturePool:Lcom/meizu/common/renderer/effect/TexturePool;

    return-object v0
.end method

.method static synthetic access$500()Lcom/meizu/common/renderer/effect/FrameBufferPool;
    .registers 1

    .line 24
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sFrameBufferPool:Lcom/meizu/common/renderer/effect/FrameBufferPool;

    return-object v0
.end method

.method static synthetic access$600()Lcom/meizu/common/renderer/effect/TextureCache;
    .registers 1

    .line 24
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sTextureCache:Lcom/meizu/common/renderer/effect/TextureCache;

    return-object v0
.end method

.method static synthetic access$702(Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;
    .registers 1

    .line 24
    sput-object p0, Lcom/meizu/common/renderer/effect/GLRenderer;->sEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object p0
.end method

.method static synthetic access$800()Z
    .registers 1

    .line 24
    sget-boolean v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sInitialized:Z

    return v0
.end method

.method static synthetic access$900()Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;
    .registers 1

    .line 24
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sTrimComplete:Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    return-object v0
.end method

.method static synthetic access$902(Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;)Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;
    .registers 1

    .line 24
    sput-object p0, Lcom/meizu/common/renderer/effect/GLRenderer;->sTrimComplete:Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;

    return-object p0
.end method

.method public static getCanvas()Lcom/meizu/common/renderer/effect/GLCanvasImpl;
    .registers 2

    .line 105
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 106
    :try_start_3
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getCurrentEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 108
    sget-object v1, Lcom/meizu/common/renderer/effect/GLRenderer;->sGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvasImpl;

    if-nez v1, :cond_14

    .line 109
    new-instance v1, Lcom/meizu/common/renderer/effect/GLCanvasImpl;

    invoke-direct {v1}, Lcom/meizu/common/renderer/effect/GLCanvasImpl;-><init>()V

    sput-object v1, Lcom/meizu/common/renderer/effect/GLRenderer;->sGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvasImpl;

    .line 111
    :cond_14
    sget-object v1, Lcom/meizu/common/renderer/effect/GLRenderer;->sGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvasImpl;

    monitor-exit v0

    return-object v1

    :cond_18
    const/4 v1, 0x0

    .line 113
    monitor-exit v0

    return-object v1

    :catchall_1b
    move-exception v1

    .line 114
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public static getCurrentEGLContext()Ljavax/microedition/khronos/egl/EGLContext;
    .registers 4

    .line 118
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_3
    sget-boolean v1, Lcom/meizu/common/renderer/effect/GLRenderer;->sInitialized:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 120
    monitor-exit v0

    return-object v2

    .line 123
    :cond_a
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    .line 124
    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    const-string v1, "glrenderer"

    const-string v3, "This thread is no EGLContext."

    .line 125
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    monitor-exit v0

    return-object v2

    .line 128
    :cond_25
    sget-object v2, Lcom/meizu/common/renderer/effect/GLRenderer;->sEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v2, :cond_32

    .line 129
    sget-object v2, Lcom/meizu/common/renderer/effect/GLRenderer;->sEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/meizu/common/renderer/RendererUtils;->assertTrue(Z)V

    .line 132
    :cond_32
    sput-object v1, Lcom/meizu/common/renderer/effect/GLRenderer;->sEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 133
    sget-object v1, Lcom/meizu/common/renderer/effect/GLRenderer;->sEGLContext:Ljavax/microedition/khronos/egl/EGLContext;

    monitor-exit v0

    return-object v1

    :catchall_38
    move-exception v1

    .line 134
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public static getFrameBufferPool()Lcom/meizu/common/renderer/effect/FrameBufferPool;
    .registers 4

    .line 172
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sFrameBufferPool:Lcom/meizu/common/renderer/effect/FrameBufferPool;

    if-nez v0, :cond_23

    .line 173
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_7
    new-instance v1, Lcom/meizu/common/renderer/effect/FrameBufferPool;

    invoke-direct {v1}, Lcom/meizu/common/renderer/effect/FrameBufferPool;-><init>()V

    sput-object v1, Lcom/meizu/common/renderer/effect/GLRenderer;->sFrameBufferPool:Lcom/meizu/common/renderer/effect/FrameBufferPool;

    .line 175
    sget-object v1, Lcom/meizu/common/renderer/effect/GLRenderer;->sFrameBufferPool:Lcom/meizu/common/renderer/effect/FrameBufferPool;

    sget v2, Lcom/meizu/common/renderer/effect/GLRenderer;->DENSITY:I

    const/16 v3, 0x280

    if-ge v2, v3, :cond_19

    const/16 v2, 0x20

    goto :goto_1b

    :cond_19
    const/16 v2, 0x3c

    :goto_1b
    invoke-virtual {v1, v2}, Lcom/meizu/common/renderer/effect/FrameBufferPool;->resize(I)V

    .line 176
    monitor-exit v0

    goto :goto_23

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw v1

    .line 178
    :cond_23
    :goto_23
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sFrameBufferPool:Lcom/meizu/common/renderer/effect/FrameBufferPool;

    return-object v0
.end method

.method public static getGLRecycler()Lcom/meizu/common/renderer/effect/GLRecycler;
    .registers 1

    .line 182
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sGLRecycler:Lcom/meizu/common/renderer/effect/GLRecycler;

    return-object v0
.end method

.method public static getTexturePool()Lcom/meizu/common/renderer/effect/TexturePool;
    .registers 4

    .line 146
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sTexturePool:Lcom/meizu/common/renderer/effect/TexturePool;

    if-nez v0, :cond_23

    .line 147
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_7
    new-instance v1, Lcom/meizu/common/renderer/effect/TexturePool;

    invoke-direct {v1}, Lcom/meizu/common/renderer/effect/TexturePool;-><init>()V

    sput-object v1, Lcom/meizu/common/renderer/effect/GLRenderer;->sTexturePool:Lcom/meizu/common/renderer/effect/TexturePool;

    .line 149
    sget-object v1, Lcom/meizu/common/renderer/effect/GLRenderer;->sTexturePool:Lcom/meizu/common/renderer/effect/TexturePool;

    sget v2, Lcom/meizu/common/renderer/effect/GLRenderer;->DENSITY:I

    const/16 v3, 0x280

    if-ge v2, v3, :cond_19

    const/16 v2, 0x20

    goto :goto_1b

    :cond_19
    const/16 v2, 0x3c

    :goto_1b
    invoke-virtual {v1, v2}, Lcom/meizu/common/renderer/effect/TexturePool;->resize(I)V

    .line 150
    monitor-exit v0

    goto :goto_23

    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_20

    throw v1

    .line 152
    :cond_23
    :goto_23
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sTexturePool:Lcom/meizu/common/renderer/effect/TexturePool;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .registers 2

    const/4 v0, 0x1

    .line 55
    invoke-static {p0, v0}, Lcom/meizu/common/renderer/effect/GLRenderer;->initialize(Landroid/content/Context;Z)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Z)V
    .registers 4

    .line 59
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_3
    sget-object v1, Lcom/meizu/common/renderer/effect/GLRenderer;->sAppContext:Landroid/app/Application;

    if-eqz v1, :cond_9

    .line 61
    monitor-exit v0

    return-void

    .line 63
    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    sput-object p0, Lcom/meizu/common/renderer/effect/GLRenderer;->sAppContext:Landroid/app/Application;

    .line 64
    new-instance p0, Lcom/meizu/common/renderer/effect/GLRenderer$TrimCallback;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/meizu/common/renderer/effect/GLRenderer$TrimCallback;-><init>(Lcom/meizu/common/renderer/effect/GLRenderer$1;)V

    sput-object p0, Lcom/meizu/common/renderer/effect/GLRenderer;->sTrimCallback:Lcom/meizu/common/renderer/effect/GLRenderer$TrimCallback;

    .line 65
    sget-object p0, Lcom/meizu/common/renderer/effect/GLRenderer;->sAppContext:Landroid/app/Application;

    sget-object v1, Lcom/meizu/common/renderer/effect/GLRenderer;->sTrimCallback:Lcom/meizu/common/renderer/effect/GLRenderer$TrimCallback;

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    if-nez p1, :cond_25

    .line 67
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->loadLibraryIfNeeded()V

    .line 69
    :cond_25
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public static loadLibraryIfNeeded()V
    .registers 6

    .line 73
    sget-object v0, Lcom/meizu/common/renderer/effect/GLRenderer;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_3
    sget-object v1, Lcom/meizu/common/renderer/effect/GLRenderer;->sAppContext:Landroid/app/Application;

    if-eqz v1, :cond_40

    .line 77
    sget-boolean v1, Lcom/meizu/common/renderer/effect/GLRenderer;->sInitialized:Z

    if-nez v1, :cond_3e

    .line 78
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_37

    .line 81
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 82
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/meizu/common/renderer/effect/GLRenderer$1;

    invoke-direct {v4, v1}, Lcom/meizu/common/renderer/effect/GLRenderer$1;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    const-string v5, "glrender-so-loader-thread"

    invoke-direct {v2, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_48

    .line 90
    :try_start_2a
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2d} :catch_2e
    .catchall {:try_start_2a .. :try_end_2d} :catchall_48

    goto :goto_3c

    :catch_2e
    :try_start_2e
    const-string v1, "glrenderer"

    const-string/jumbo v2, "thread interrupted! glrenderer.so probably not loaded yet"

    .line 92
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 95
    :cond_37
    sget-object v1, Lcom/meizu/common/renderer/effect/GLRenderer;->sLibraryName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 97
    :goto_3c
    sput-boolean v3, Lcom/meizu/common/renderer/effect/GLRenderer;->sInitialized:Z

    .line 99
    :cond_3e
    monitor-exit v0

    return-void

    .line 75
    :cond_40
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Please call it after initialize. "

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_48
    move-exception v1

    .line 99
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_2e .. :try_end_4a} :catchall_48

    throw v1
.end method
