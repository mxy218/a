.class public Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;
.super Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitorAdapter;
.source "ImageWallpaperRenderer.java"

# interfaces
.implements Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;
.implements Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageWallpaperRenderer"


# instance fields
.field private mAlpha:F

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mHasMask:Z

.field private final mImageProcessHelper:Lcom/android/systemui/glwallpaper/ImageProcessHelper;

.field private final mImageRevealHelper:Lcom/android/systemui/glwallpaper/ImageRevealHelper;

.field private final mProgram:Lcom/android/systemui/glwallpaper/ImageGLProgram;

.field private mProxy:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;

.field private final mScissor:Landroid/graphics/Rect;

.field private mScissorMode:Z

.field private final mSurfaceSize:Landroid/graphics/Rect;

.field private final mViewport:Landroid/graphics/Rect;

.field private final mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mXOffset:F

.field private mYOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;)V
    .registers 7

    .line 70
    invoke-direct {p0}, Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitorAdapter;-><init>()V

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mViewport:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 302
    iput-boolean v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mHasMask:Z

    .line 71
    const-class v1, Landroid/app/WallpaperManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperManager;

    iput-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 72
    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-nez v1, :cond_29

    .line 73
    sget-object v1, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    const-string v2, "WallpaperManager not available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_29
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    .line 77
    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 78
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_56

    .line 83
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-direct {v2, v0, v0, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissor:Landroid/graphics/Rect;

    goto :goto_61

    .line 85
    :cond_56
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-direct {v2, v0, v0, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissor:Landroid/graphics/Rect;

    .line 88
    :goto_61
    iput-object p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProxy:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;

    .line 89
    new-instance p2, Lcom/android/systemui/glwallpaper/ImageGLProgram;

    invoke-direct {p2, p1}, Lcom/android/systemui/glwallpaper/ImageGLProgram;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProgram:Lcom/android/systemui/glwallpaper/ImageGLProgram;

    .line 90
    new-instance p2, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProgram:Lcom/android/systemui/glwallpaper/ImageGLProgram;

    invoke-direct {p2, v1}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;-><init>(Lcom/android/systemui/glwallpaper/ImageGLProgram;)V

    iput-object p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    .line 91
    new-instance p2, Lcom/android/systemui/glwallpaper/ImageProcessHelper;

    invoke-direct {p2}, Lcom/android/systemui/glwallpaper/ImageProcessHelper;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageProcessHelper:Lcom/android/systemui/glwallpaper/ImageProcessHelper;

    .line 92
    new-instance p2, Lcom/android/systemui/glwallpaper/ImageRevealHelper;

    invoke-direct {p2, p0}, Lcom/android/systemui/glwallpaper/ImageRevealHelper;-><init>(Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;)V

    iput-object p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageRevealHelper:Lcom/android/systemui/glwallpaper/ImageRevealHelper;

    .line 94
    invoke-direct {p0, v0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->loadBitmap(Z)Z

    move-result p2

    if-eqz p2, :cond_8e

    .line 96
    iget-object p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageProcessHelper:Lcom/android/systemui/glwallpaper/ImageProcessHelper;

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Lcom/android/systemui/glwallpaper/ImageProcessHelper;->start(Landroid/graphics/Bitmap;)V

    .line 99
    :cond_8e
    iput-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mContext:Landroid/content/Context;

    .line 100
    invoke-static {p1}, Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;->registerCallback(Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitorCallback;)V

    .line 101
    invoke-static {p1}, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->registerCallback(Lcom/flyme/systemui/util/settings/SettingsUpdateMonitorCallback;)V

    return-void
.end method

.method private loadBitmap(Z)Z
    .registers 5

    .line 120
    sget-object v0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadBitmap mAlpha = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "  refreshByMask = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2b

    if-eqz p1, :cond_aa

    :cond_2b
    const/4 p1, 0x0

    .line 125
    :try_start_2c
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mAlpha:F

    invoke-static {v0, v2}, Lcom/meizu/keyguard/BlurBitmapFactory;->returnFilterBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_3a
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_3a} :catch_3b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2c .. :try_end_3a} :catch_3b

    goto :goto_3c

    :catch_3b
    move-exception p1

    :goto_3c
    if-eqz p1, :cond_64

    .line 134
    sget-object v0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    const-string v2, "Unable to load wallpaper!"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    :try_start_45
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p1}, Landroid/app/WallpaperManager;->clear()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4a} :catch_4b

    goto :goto_53

    :catch_4b
    move-exception p1

    .line 139
    sget-object v0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    const-string v2, "Unable reset to default wallpaper!"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    :goto_53
    :try_start_53
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p1}, Landroid/app/WallpaperManager;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_5b
    .catch Ljava/lang/RuntimeException; {:try_start_53 .. :try_end_5b} :catch_5c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_53 .. :try_end_5b} :catch_5c

    goto :goto_64

    :catch_5c
    move-exception p1

    .line 145
    sget-object v0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    const-string v2, "Unable to load default wallpaper!"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    :cond_64
    :goto_64
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p1}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    .line 151
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_aa

    .line 152
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissor:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 153
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissor:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_9f

    .line 155
    iget-object v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto :goto_a5

    .line 156
    :cond_9f
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 157
    :goto_a5
    iget-object v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1, p1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 160
    :cond_aa
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_af

    const/4 v1, 0x1

    :cond_af
    return v1
.end method

.method private scaleViewport(F)V
    .registers 9

    .line 218
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissor:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 219
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 220
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 221
    iget-object v3, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissor:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/high16 v4, 0x3f800000  # 1.0f

    const v5, 0x3f8ccccd  # 1.1f

    .line 223
    invoke-static {v4, v5, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    sub-float/2addr v4, p1

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr v4, v5

    .line 227
    iget-object v5, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mViewport:Landroid/graphics/Rect;

    int-to-float v1, v1

    int-to-float v0, v0

    mul-float v6, v0, v4

    add-float/2addr v1, v6

    float-to-int v1, v1

    int-to-float v2, v2

    int-to-float v3, v3

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    mul-float/2addr v0, p1

    float-to-int v0, v0

    mul-float/2addr v3, p1

    float-to-int p1, v3

    invoke-virtual {v5, v1, v2, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 229
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mViewport:Landroid/graphics/Rect;

    iget p1, p0, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, v0, v1, p0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 261
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mProxy="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProxy:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 262
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSurfaceSize="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 263
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mScissor="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissor:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 264
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mViewport="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 265
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mScissorMode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissorMode:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 266
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mXOffset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mXOffset:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 267
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mYOffset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mYOffset:F

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 268
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "threshold="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageProcessHelper:Lcom/android/systemui/glwallpaper/ImageProcessHelper;

    invoke-virtual {v0}, Lcom/android/systemui/glwallpaper/ImageProcessHelper;->getThreshold()F

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 269
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public finish()V
    .registers 2

    const/4 v0, 0x0

    .line 209
    iput-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProxy:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;

    const/4 v0, 0x0

    .line 211
    iput v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mAlpha:F

    .line 212
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;->removeCallback(Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitorCallback;)V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->removeCallback(Lcom/flyme/systemui/util/settings/SettingsUpdateMonitorCallback;)V

    return-void
.end method

.method public onDrawFrame()V
    .registers 5

    .line 170
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageProcessHelper:Lcom/android/systemui/glwallpaper/ImageProcessHelper;

    invoke-virtual {v0}, Lcom/android/systemui/glwallpaper/ImageProcessHelper;->getThreshold()F

    move-result v0

    .line 171
    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageRevealHelper:Lcom/android/systemui/glwallpaper/ImageRevealHelper;

    invoke-virtual {v1}, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->getReveal()F

    move-result v1

    .line 173
    iget-object v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    const-string/jumbo v3, "uAod2Opacity"

    invoke-virtual {v2, v3}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->getHandle(Ljava/lang/String;)I

    move-result v2

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 174
    iget-object v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    const-string/jumbo v3, "uPer85"

    invoke-virtual {v2, v3}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->getHandle(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    const-string/jumbo v2, "uReveal"

    invoke-virtual {v0, v2}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->getHandle(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/16 v0, 0x4000

    .line 177
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 179
    iget-boolean v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissorMode:Z

    if-eqz v0, :cond_3f

    .line 180
    invoke-direct {p0, v1}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->scaleViewport(F)V

    goto :goto_4f

    .line 182
    :cond_3f
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 184
    :goto_4f
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    invoke-virtual {v0}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->useTexture()V

    .line 185
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->draw()V

    return-void
.end method

.method public onRevealEnd()V
    .registers 4

    .line 249
    iget-boolean v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissorMode:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    .line 250
    iput-boolean v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissorMode:Z

    .line 252
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v1}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->adjustTextureCoordinates(Landroid/graphics/Rect;Landroid/graphics/Rect;FF)V

    .line 254
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProxy:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;

    invoke-interface {v0}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;->requestRender()V

    .line 256
    :cond_13
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProxy:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;

    invoke-interface {p0}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;->postRender()V

    return-void
.end method

.method public onRevealStart(Z)V
    .registers 6

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    .line 240
    iput-boolean p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissorMode:Z

    .line 242
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissor:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mXOffset:F

    iget v3, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mYOffset:F

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->adjustTextureCoordinates(Landroid/graphics/Rect;Landroid/graphics/Rect;FF)V

    .line 244
    :cond_12
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProxy:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;

    invoke-interface {p0}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;->preRender()V

    return-void
.end method

.method public onRevealStateChanged()V
    .registers 1

    .line 234
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProxy:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;

    invoke-interface {p0}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;->requestRender()V

    return-void
.end method

.method public onSettingsNightModeChanged(Z)V
    .registers 3

    .line 295
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProxy:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;

    if-eqz p1, :cond_1a

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->loadBitmap(Z)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 296
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->setup(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    .line 297
    iput-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;

    .line 298
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProxy:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;

    invoke-interface {p0}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;->renderFromMask()V

    :cond_1a
    return-void
.end method

.method public onSurfaceChanged(II)V
    .registers 3

    const/4 p0, 0x0

    .line 165
    invoke-static {p0, p0, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public onSurfaceCreated()V
    .registers 4

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    .line 107
    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProgram:Lcom/android/systemui/glwallpaper/ImageGLProgram;

    sget v1, Lcom/android/systemui/R$raw;->image_wallpaper_vertex_shader:I

    sget v2, Lcom/android/systemui/R$raw;->image_wallpaper_fragment_shader:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/glwallpaper/ImageGLProgram;->useGLProgram(II)Z

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, v0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->loadBitmap(Z)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 112
    sget-object v0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    const-string v1, "reload bitmap failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_1d
    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->setup(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public onWallpaperMaskChanged(Z)V
    .registers 5

    .line 275
    sget-object v0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasMask "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  mhasMask = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mHasMask:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-boolean v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mHasMask:Z

    if-ne v0, p1, :cond_25

    return-void

    .line 279
    :cond_25
    iput-boolean p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mHasMask:Z

    if-eqz p1, :cond_2f

    const p1, 0x3e19999a  # 0.15f

    .line 282
    iput p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mAlpha:F

    goto :goto_32

    :cond_2f
    const/4 p1, 0x0

    .line 284
    iput p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mAlpha:F

    .line 286
    :goto_32
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProxy:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;

    if-eqz p1, :cond_4c

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->loadBitmap(Z)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 287
    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mWallpaper:Lcom/android/systemui/glwallpaper/ImageGLWallpaper;

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/android/systemui/glwallpaper/ImageGLWallpaper;->setup(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    .line 288
    iput-object p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mBitmap:Landroid/graphics/Bitmap;

    .line 289
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mProxy:Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;

    invoke-interface {p0}, Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;->renderFromMask()V

    :cond_4c
    return-void
.end method

.method public reportSurfaceSize()Landroid/util/Size;
    .registers 3

    .line 204
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public updateAmbientMode(ZJ)V
    .registers 4

    .line 190
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mImageRevealHelper:Lcom/android/systemui/glwallpaper/ImageRevealHelper;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->updateAwake(ZJ)V

    return-void
.end method

.method public updateOffsets(FF)V
    .registers 5

    .line 195
    iput p1, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mXOffset:F

    .line 196
    iput p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mYOffset:F

    .line 197
    iget-object p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mSurfaceSize:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissor:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 198
    iget-object p2, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissor:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p2, p1

    .line 199
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->mScissor:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
