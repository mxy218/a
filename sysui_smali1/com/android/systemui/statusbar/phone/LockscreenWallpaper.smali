.class public Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "LockscreenWallpaper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$WallpaperDrawable;,
        Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;
    }
.end annotation


# instance fields
.field private final mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mCache:Landroid/graphics/Bitmap;

.field private mCached:Z

.field private mCurrentUserId:I

.field private final mH:Landroid/os/Handler;

.field private mLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;",
            ">;"
        }
    .end annotation
.end field

.field private mLockscreenWallpaperManager:Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

.field private final mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private mSelectedUser:Landroid/os/UserHandle;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V
    .registers 5

    .line 74
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 58
    const-class v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 59
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 75
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 76
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mH:Landroid/os/Handler;

    const-string/jumbo p2, "wallpaper"

    .line 77
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/WallpaperManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 78
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p3

    iput p3, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCurrentUserId:I

    .line 79
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 82
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 81
    invoke-static {p2}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object p2

    .line 84
    :try_start_30
    invoke-interface {p2, p0}, Landroid/app/IWallpaperManager;->setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_4b

    :catch_34
    move-exception p2

    .line 86
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "System dead?"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "LockscreenWallpaper"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :goto_4b
    invoke-static {p1}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mLockscreenWallpaperManager:Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;)Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mzLoadBitmap()Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;Z)Z
    .registers 2

    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCached:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCache:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;)Lcom/android/systemui/statusbar/NotificationMediaManager;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .registers 2

    .line 54
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mLoader:Landroid/os/AsyncTask;

    return-object p1
.end method

.method private mzLoadBitmap()Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;
    .registers 1

    .line 338
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mLockscreenWallpaperManager:Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    invoke-virtual {p0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->getCoveredLockWallpaper()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 340
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;->success(Landroid/graphics/Bitmap;)Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;

    move-result-object p0

    return-object p0
.end method

.method private postUpdateWallpaper()V
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 5

    .line 95
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCached:Z

    if-eqz v0, :cond_7

    .line 96
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCache:Landroid/graphics/Bitmap;

    return-object p0

    .line 98
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->isWallpaperSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_16

    .line 99
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCached:Z

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCache:Landroid/graphics/Bitmap;

    return-object v0

    .line 108
    :cond_16
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mzLoadBitmap()Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;

    move-result-object v0

    .line 110
    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;->success:Z

    if-eqz v2, :cond_2f

    .line 111
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCached:Z

    .line 112
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_27

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setHasLockscreenWallpaper(Z)V

    .line 113
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCache:Landroid/graphics/Bitmap;

    .line 115
    :cond_2f
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCache:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public onWallpaperChanged()V
    .registers 1

    .line 172
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->postUpdateWallpaper()V

    return-void
.end method

.method public onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    .registers 4

    return-void
.end method

.method public run()V
    .registers 4

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mLoader:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 190
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 195
    :cond_8
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;-><init>(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    .line 222
    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mLoader:Landroid/os/AsyncTask;

    return-void
.end method

.method public setCurrentUser(I)V
    .registers 3

    .line 153
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCurrentUserId:I

    if-eq p1, v0, :cond_13

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mSelectedUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-eq p1, v0, :cond_11

    :cond_e
    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCached:Z

    .line 157
    :cond_11
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->mCurrentUserId:I

    :cond_13
    return-void
.end method
