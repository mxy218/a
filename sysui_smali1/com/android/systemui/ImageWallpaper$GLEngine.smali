.class Lcom/android/systemui/ImageWallpaper$GLEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "ImageWallpaper.java"

# interfaces
.implements Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ImageWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GLEngine"
.end annotation


# static fields
.field static final MIN_SURFACE_HEIGHT:I = 0x40
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MIN_SURFACE_WIDTH:I = 0x40
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

.field private final mFinishRenderingTask:Ljava/lang/Runnable;

.field private final mMonitor:Ljava/lang/Object;

.field private mNeedRedraw:Z

.field private final mNeedTransition:Z

.field private mRenderer:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;

.field private mWaitingForRendering:Z

.field final synthetic this$0:Lcom/android/systemui/ImageWallpaper;


# direct methods
.method constructor <init>(Lcom/android/systemui/ImageWallpaper;Landroid/content/Context;)V
    .registers 3

    .line 90
    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 83
    new-instance p1, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$4IwqG_0jMNtMT6yCqqj-KAFKSvE;

    invoke-direct {p1, p0}, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$4IwqG_0jMNtMT6yCqqj-KAFKSvE;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mFinishRenderingTask:Ljava/lang/Runnable;

    .line 85
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mMonitor:Ljava/lang/Object;

    .line 91
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result p1

    if-eqz p1, :cond_25

    .line 92
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result p1

    if-nez p1, :cond_25

    const/4 p1, 0x1

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    :goto_26
    iput-boolean p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mNeedTransition:Z

    .line 96
    const-class p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 97
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    if-eqz p1, :cond_39

    .line 98
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 100
    :cond_39
    new-instance p1, Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-direct {p1}, Lcom/android/systemui/glwallpaper/EglHelper;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    .line 101
    new-instance p1, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    invoke-direct {p1, p2, p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;-><init>(Landroid/content/Context;Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;)V

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;

    return-void
.end method

.method private cancelFinishRenderingTask()V
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mFinishRenderingTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private finishRendering()V
    .registers 2

    .line 291
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    if-eqz v0, :cond_12

    .line 292
    invoke-virtual {v0}, Lcom/android/systemui/glwallpaper/EglHelper;->destroyEglSurface()V

    .line 293
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->needPreserveEglContext()Z

    move-result v0

    if-nez v0, :cond_12

    .line 294
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->destroyEglContext()V

    :cond_12
    return-void
.end method

.method public static synthetic lambda$4IwqG_0jMNtMT6yCqqj-KAFKSvE(Lcom/android/systemui/ImageWallpaper$GLEngine;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->finishRendering()V

    return-void
.end method

.method public static synthetic lambda$8Tw1AsmyFt-Lr4VSDxpiW6fEz7g(Lcom/android/systemui/ImageWallpaper$GLEngine;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->scheduleFinishRendering()V

    return-void
.end method

.method private needPreserveEglContext()Z
    .registers 3

    .line 300
    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mNeedTransition:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    if-eqz p0, :cond_10

    .line 301
    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p0

    if-ne p0, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method private notifyWaitingThread()V
    .registers 3

    .line 270
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_3
    iget-boolean v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mWaitingForRendering:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_11

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    .line 273
    :try_start_8
    iput-boolean v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mWaitingForRendering:Z

    .line 274
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mMonitor:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_f
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_8 .. :try_end_f} :catch_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_11

    .line 278
    :catch_f
    :cond_f
    :try_start_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_11

    throw p0
.end method

.method private preRenderInternal()V
    .registers 5

    .line 213
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 214
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->cancelFinishRenderingTask()V

    .line 217
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v1}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglContext()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 218
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v1}, Lcom/android/systemui/glwallpaper/EglHelper;->destroyEglSurface()V

    .line 219
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v1}, Lcom/android/systemui/glwallpaper/EglHelper;->createEglContext()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 220
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "recreate egl context failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    :cond_2a
    const/4 v1, 0x1

    goto :goto_2d

    :cond_2c
    :goto_2c
    const/4 v1, 0x0

    .line 227
    :goto_2d
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v2}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglContext()Z

    move-result v2

    if-eqz v2, :cond_52

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v2}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglSurface()Z

    move-result v2

    if-nez v2, :cond_52

    .line 228
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/glwallpaper/EglHelper;->createEglSurface(Landroid/view/SurfaceHolder;)Z

    move-result v2

    if-nez v2, :cond_52

    .line 229
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "recreate egl surface failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_52
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v2}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglContext()Z

    move-result v2

    if-eqz v2, :cond_76

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v2}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglSurface()Z

    move-result v2

    if-eqz v2, :cond_76

    if-eqz v1, :cond_76

    .line 235
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;

    invoke-interface {v1}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;->onSurfaceCreated()V

    .line 236
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-interface {p0, v1, v0}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;->onSurfaceChanged(II)V

    :cond_76
    return-void
.end method

.method private requestRenderInternal()V
    .registers 5

    .line 247
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v1}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglContext()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v1}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglSurface()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 249
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_26

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lez v1, :cond_26

    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    if-eqz v1, :cond_40

    .line 251
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;

    invoke-interface {v0}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;->onDrawFrame()V

    .line 252
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->swapBuffer()Z

    move-result p0

    if-nez p0, :cond_74

    .line 253
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string v0, "drawFrame failed!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 256
    :cond_40
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestRender: not ready, has context="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v3}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglContext()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", has surface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    .line 257
    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglSurface()Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", frame="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 256
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    :goto_74
    return-void
.end method

.method private scheduleFinishRendering()V
    .registers 4

    .line 286
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->cancelFinishRenderingTask()V

    .line 287
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mFinishRenderingTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateSurfaceSize()V
    .registers 4

    .line 112
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 113
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;

    invoke-interface {p0}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;->reportSurfaceSize()Landroid/util/Size;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    const/16 v2, 0x40

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 115
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 116
    invoke-interface {v0, v1, p0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    return-void
.end method

.method private waitForBackgroundRendering()V
    .registers 8

    .line 139
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mMonitor:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 141
    :try_start_5
    iput-boolean v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mWaitingForRendering:Z

    move v3, v2

    .line 142
    :goto_8
    iget-boolean v4, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mWaitingForRendering:Z

    if-eqz v4, :cond_22

    .line 143
    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mMonitor:Ljava/lang/Object;

    const-wide/16 v5, 0x64

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 144
    iget-boolean v4, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mWaitingForRendering:Z

    const/16 v5, 0xa

    if-ge v3, v5, :cond_1b

    move v5, v2

    goto :goto_1c

    :cond_1b
    move v5, v1

    :goto_1c
    and-int/2addr v4, v5

    iput-boolean v4, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mWaitingForRendering:Z
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_1f} :catch_22
    .catchall {:try_start_5 .. :try_end_1f} :catchall_25

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 148
    :catch_22
    :cond_22
    :try_start_22
    iput-boolean v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mWaitingForRendering:Z

    goto :goto_29

    :catchall_25
    move-exception v2

    iput-boolean v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mWaitingForRendering:Z

    throw v2

    .line 150
    :goto_29
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_2b

    throw p0
.end method


# virtual methods
.method protected dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 306
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 307
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Engine="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 309
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    .line 310
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "isHighEndGfx="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v0

    .line 313
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "displayNeedsBlanking="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "null"

    if-eqz v0, :cond_3c

    .line 314
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3d

    :cond_3c
    move-object v0, v1

    :goto_3d
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 316
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNeedTransition="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mNeedTransition:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 317
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "StatusBarState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    if-eqz v0, :cond_62

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_63

    :cond_62
    move-object v0, v1

    :goto_63
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 320
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "valid surface="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_90

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_90

    .line 322
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_91

    :cond_90
    move-object v0, v1

    .line 321
    :goto_91
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 325
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "surface frame="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_ab

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    :cond_ab
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 328
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/glwallpaper/EglHelper;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 329
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onAmbientModeChanged$1$ImageWallpaper$GLEngine(ZJ)V
    .registers 4

    .line 129
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;->updateAmbientMode(ZJ)V

    return-void
.end method

.method public synthetic lambda$onDestroy$2$ImageWallpaper$GLEngine()V
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;

    invoke-interface {v0}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;->finish()V

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;

    .line 163
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v1}, Lcom/android/systemui/glwallpaper/EglHelper;->finish()V

    .line 164
    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    .line 165
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Surface;->hwuiDestroy()V

    return-void
.end method

.method public synthetic lambda$onOffsetsChanged$0$ImageWallpaper$GLEngine(FF)V
    .registers 3

    .line 122
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;->updateOffsets(FF)V

    return-void
.end method

.method public synthetic lambda$onSurfaceChanged$4$ImageWallpaper$GLEngine(II)V
    .registers 4

    .line 180
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;->onSurfaceChanged(II)V

    const/4 p1, 0x1

    .line 181
    iput-boolean p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mNeedRedraw:Z

    return-void
.end method

.method public synthetic lambda$onSurfaceCreated$3$ImageWallpaper$GLEngine(Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 172
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/glwallpaper/EglHelper;->init(Landroid/view/SurfaceHolder;)Z

    .line 173
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;

    invoke-interface {p0}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;->onSurfaceCreated()V

    return-void
.end method

.method public synthetic lambda$onSurfaceRedrawNeeded$5$ImageWallpaper$GLEngine()V
    .registers 2

    .line 188
    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mNeedRedraw:Z

    if-eqz v0, :cond_10

    .line 189
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->preRender()V

    .line 190
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->requestRender()V

    .line 191
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->postRender()V

    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mNeedRedraw:Z

    :cond_10
    return-void
.end method

.method public synthetic lambda$renderFromMask$6$ImageWallpaper$GLEngine()V
    .registers 3

    .line 336
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v0}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglSurface()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 337
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "destroyEglSurface from mask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->finishRendering()V

    .line 341
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v0}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglContext()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 342
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v0}, Lcom/android/systemui/glwallpaper/EglHelper;->destroyEglContext()V

    .line 343
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "destroyEglContext from mask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_2a
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->preRender()V

    .line 347
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->requestRender()V

    .line 348
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->postRender()V

    return-void
.end method

.method public onAmbientModeChanged(ZJ)V
    .registers 6

    .line 127
    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mNeedTransition:Z

    if-nez v0, :cond_5

    return-void

    .line 128
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$w2dgQ1kcC5UhS4OuTNdpiCJsVqQ;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$w2dgQ1kcC5UhS4OuTNdpiCJsVqQ;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;ZJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_22

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-nez p1, :cond_22

    .line 134
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->waitForBackgroundRendering()V

    :cond_22
    return-void
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .registers 2

    const/4 p1, 0x1

    .line 106
    invoke-virtual {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->setFixedSizeAllowed(Z)V

    .line 107
    invoke-virtual {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->setOffsetNotificationsEnabled(Z)V

    .line 108
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->updateSurfaceSize()V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 155
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    if-eqz v0, :cond_7

    .line 156
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    :cond_7
    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 160
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$Rhxb7oaAcAGNLCxy2rNqC6pp_0w;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$Rhxb7oaAcAGNLCxy2rNqC6pp_0w;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .registers 7

    .line 122
    iget-object p3, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p3}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p3

    new-instance p4, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$g3IyjqoMJVi1L9x8yfO51WpEVxQ;

    invoke-direct {p4, p0, p1, p2}, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$g3IyjqoMJVi1L9x8yfO51WpEVxQ;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;FF)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStatePostChange()V
    .registers 3

    .line 200
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-nez v0, :cond_1a

    .line 201
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$8Tw1AsmyFt-Lr4VSDxpiW6fEz7g;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$8Tw1AsmyFt-Lr4VSDxpiW6fEz7g;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1a
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    .line 179
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$syj9B-tRzmYbOUFqEOGp6WsQqI0;

    invoke-direct {p2, p0, p3, p4}, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$syj9B-tRzmYbOUFqEOGp6WsQqI0;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;II)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4

    .line 171
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$WwPnKXUZbkazdjOcqYKAzWQFvTQ;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$WwPnKXUZbkazdjOcqYKAzWQFvTQ;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;Landroid/view/SurfaceHolder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .registers 3

    .line 187
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$nUXqEeCVFkWFioUicXPSoLlcN1s;

    invoke-direct {v0, p0}, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$nUXqEeCVFkWFioUicXPSoLlcN1s;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postRender()V
    .registers 1

    .line 265
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->notifyWaitingThread()V

    .line 266
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->scheduleFinishRendering()V

    return-void
.end method

.method public preRender()V
    .registers 1

    .line 208
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->preRenderInternal()V

    return-void
.end method

.method public renderFromMask()V
    .registers 3

    .line 335
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$000(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$WzXZWW3Cz01lwKgI5p56xo7D5GU;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$ImageWallpaper$GLEngine$WzXZWW3Cz01lwKgI5p56xo7D5GU;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestRender()V
    .registers 1

    .line 243
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->requestRenderInternal()V

    return-void
.end method
