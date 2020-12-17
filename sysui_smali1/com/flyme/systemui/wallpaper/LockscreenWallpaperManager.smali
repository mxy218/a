.class public Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;
.super Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitorAdapter;
.source "LockscreenWallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$LockScreenCallbacks;,
        Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$ProcessLockwallpaperTask;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;


# instance fields
.field private mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

.field private mBlurBackground:Landroid/widget/ImageView;

.field private mBlurBackgroundCover:Landroid/widget/ImageView;

.field private mBlurLockWallpaper:Landroid/graphics/Bitmap;

.field private mColorMasking:Lcom/meizu/keyguard/auto_color/ColorMasking;

.field private mContext:Landroid/content/Context;

.field private mCoveredLockWallpaper:Landroid/graphics/Bitmap;

.field private mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mHasNotification:Z

.field private mHasWallpaperChanged:Z

.field private mIsPanelDown:Z

.field private mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

.field private mLiveWallpaperBackground:Landroid/widget/ImageView;

.field private mLockScreenCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$LockScreenCallbacks;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLockWallpaperObserver:Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;

.field private mNotificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mVariedpage:Landroid/widget/ImageView;

.field private mWallpaperLink:Landroid/widget/TextView;

.field private final mWallpaperObserver:Landroid/database/ContentObserver;

.field private mWallpaperTextView:Lcom/meizu/keyguard/wallpaper/WallpaperView;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 76
    invoke-direct {p0}, Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitorAdapter;-><init>()V

    .line 69
    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 70
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 71
    const-class v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 72
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    iput-object v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mNotificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 74
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mLockScreenCallbacks:Ljava/util/ArrayList;

    .line 341
    new-instance v0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$2;-><init>(Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mWallpaperObserver:Landroid/database/ContentObserver;

    .line 77
    iput-object p1, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mContext:Landroid/content/Context;

    .line 78
    new-instance v0, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;

    invoke-direct {v0, p1, p0}, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;-><init>(Landroid/content/Context;Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;)V

    iput-object v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mLockWallpaperObserver:Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;

    .line 79
    iget-object p1, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitor;->registerCallback(Lcom/flyme/systemui/util/broadcast/BroadcastUpdateMonitorCallback;)V

    .line 80
    iget-object p1, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->registerCallback(Lcom/flyme/systemui/util/settings/SettingsUpdateMonitorCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;)Landroid/content/Context;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;)V
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->updateVariepageImage()V

    return-void
.end method

.method static synthetic access$200(Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;)Lcom/android/systemui/statusbar/NotificationMediaManager;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mNotificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    return-object p0
.end method

.method static synthetic access$302(Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mCoveredLockWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$402(Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mBlurLockWallpaper:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;)V
    .registers 1

    .line 46
    invoke-direct {p0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->updateBitmap()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;
    .registers 3

    const-class v0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    monitor-enter v0

    .line 84
    :try_start_3
    sget-object v1, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->sInstance:Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    if-nez v1, :cond_e

    .line 85
    new-instance v1, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->sInstance:Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    .line 87
    :cond_e
    sget-object p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->sInstance:Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private registerWallpaperUri()V
    .registers 5

    .line 310
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "settings_next_lock_screen_poster_url"

    .line 311
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mWallpaperObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 310
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 312
    invoke-direct {p0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->updateVariepageImage()V

    return-void
.end method

.method private updateBitmap()V
    .registers 5

    .line 216
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mBlurBackground:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mBlurLockWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 217
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mNotificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->updateBackdropView()V

    .line 218
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mLockScreenCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_14
    if-ltz v0, :cond_30

    .line 219
    iget-object v1, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mLockScreenCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$LockScreenCallbacks;

    if-eqz v1, :cond_2d

    .line 221
    iget-object v2, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mCoveredLockWallpaper:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mBlurLockWallpaper:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2, v3}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$LockScreenCallbacks;->onLockScreenChanged(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    :cond_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    :cond_30
    return-void
.end method

.method private updateLiveWallpaperBG()V
    .registers 2

    .line 418
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->hasLiveWallpaper()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 420
    :try_start_c
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->getScreenShotWallpaper()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 421
    iget-object p0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mLiveWallpaperBackground:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/meizu/keyguard/BlurBitmapFactory;->returnBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1f} :catch_20

    goto :goto_24

    :catch_20
    move-exception p0

    .line 423
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_24
    :goto_24
    return-void
.end method

.method private updateLockWallpaper()V
    .registers 4

    const/4 v0, 0x1

    .line 246
    iput-boolean v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mHasWallpaperChanged:Z

    .line 247
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mNotificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->setBackdropVisible(I)V

    .line 248
    iget-boolean v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mIsPanelDown:Z

    if-nez v0, :cond_14

    .line 249
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mNotificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationMediaManager;->setBackdropAlpha(F)V

    .line 251
    :cond_14
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mBlurBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    iget-object p0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mLockWallpaperObserver:Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->updateWallpaperColorBroadcast(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private updateVariepageImage()V
    .registers 3

    .line 316
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "settings_next_lock_screen_poster_url"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    const-string v1, ""

    .line 318
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_17
    const-string v0, "/system/customizecenter/wallpapers/h.png"

    .line 322
    :cond_19
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 323
    iget-object p0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mVariedpage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public getBlurLockWallpaper()Landroid/graphics/Bitmap;
    .registers 1

    .line 142
    iget-object p0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mBlurLockWallpaper:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getCoveredLockWallpaper()Landroid/graphics/Bitmap;
    .registers 1

    .line 138
    iget-object p0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mCoveredLockWallpaper:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public onFlymeLockscreenWallpaperChanged()V
    .registers 3

    const-string v0, "LockscreenWallpaperManager"

    const-string v1, "onFlymeLockscreenWallpaperChanged"

    .line 235
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-direct {p0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->updateLockWallpaper()V

    return-void
.end method

.method public onHideKeyguard()V
    .registers 2

    .line 199
    iget-object p0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_9

    const/16 v0, 0x8

    .line 200
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_9
    return-void
.end method

.method public onLockWallPaperChanged(ZI)V
    .registers 3

    .line 227
    new-instance p1, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$ProcessLockwallpaperTask;

    invoke-direct {p1, p0, p2}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$ProcessLockwallpaperTask;-><init>(Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;I)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    .line 228
    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 230
    iget-object p0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateColors()V

    return-void
.end method

.method public onNightModeChanged(Z)V
    .registers 6

    .line 278
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmeizu/wallpaper/FlymeWallpaperManager;->getInstance(Landroid/content/Context;)Lmeizu/wallpaper/FlymeWallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Lmeizu/wallpaper/FlymeWallpaperManager;->forgetLoadedLockWallpaper()V

    .line 280
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$1;-><init>(Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 287
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mLockWallpaperObserver:Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->updateWallpaperColorBroadcast(Landroid/graphics/Bitmap;)V

    .line 289
    iget-object p0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mColorMasking:Lcom/meizu/keyguard/auto_color/ColorMasking;

    if-eqz p0, :cond_22

    .line 290
    invoke-virtual {p0, p1}, Lcom/meizu/keyguard/auto_color/ColorMasking;->onNightModeChanged(Z)V

    :cond_22
    return-void
.end method

.method public onNotificationChange(Z)V
    .registers 2

    .line 271
    iput-boolean p1, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mHasNotification:Z

    .line 272
    iget-object p0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mColorMasking:Lcom/meizu/keyguard/auto_color/ColorMasking;

    if-eqz p0, :cond_9

    .line 273
    invoke-virtual {p0, p1}, Lcom/meizu/keyguard/auto_color/ColorMasking;->onNotificationChange(Z)V

    :cond_9
    return-void
.end method

.method public onPositionChanged(FZF)V
    .registers 6

    .line 256
    iput-boolean p2, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mIsPanelDown:Z

    .line 257
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mNotificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {v0, p3}, Lcom/android/systemui/statusbar/NotificationMediaManager;->setBackdropAlpha(F)V

    .line 259
    iget-object p3, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mWallpaperTextView:Lcom/meizu/keyguard/wallpaper/WallpaperView;

    invoke-virtual {p3, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    const/high16 p3, 0x3f800000  # 1.0f

    if-eqz p2, :cond_1b

    .line 262
    invoke-direct {p0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->updateLiveWallpaperBG()V

    .line 263
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mLiveWallpaperBackground:Landroid/widget/ImageView;

    sub-float v1, p3, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_2e

    .line 264
    :cond_1b
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/utils/SystemUICommonUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->compareFloatValue(FF)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 265
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mLiveWallpaperBackground:Landroid/widget/ImageView;

    sub-float v1, p3, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 267
    :cond_2e
    :goto_2e
    iget-object p0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mColorMasking:Lcom/meizu/keyguard/auto_color/ColorMasking;

    sub-float/2addr p3, p1

    invoke-virtual {p0, p3, p2}, Lcom/meizu/keyguard/auto_color/ColorMasking;->updateMaskingColor(FZ)V

    return-void
.end method

.method public onScreenTurnedOff()V
    .registers 1

    return-void
.end method

.method public onScreenTurnedOn()V
    .registers 4

    .line 327
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/wallpaper/KeyguardWallpaperController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/wallpaper/KeyguardWallpaperController;->isAutoChangeWallpaper()Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-boolean v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mHasWallpaperChanged:Z

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardExit()Z

    move-result v0

    if-nez v0, :cond_3c

    const/4 v0, 0x0

    .line 328
    iput-boolean v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mHasWallpaperChanged:Z

    .line 329
    new-instance v0, Landroid/content/Intent;

    const-string v1, "meizu.intent.action.ACTION_LOCK_SCREEN_POSTER_SHOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 330
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 331
    iget-boolean v1, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mHasNotification:Z

    const-string v2, "isNotificationCover"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.meizu.net.nativelockscreen"

    .line 332
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    iget-object p0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3c
    return-void
.end method

.method public onSettingsNightModeChanged(Z)V
    .registers 2

    const-string p0, "LockscreenWallpaperManager"

    const-string p1, "onSettingsNightModeChanged"

    .line 241
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onShowKeyguard()V
    .registers 8

    .line 146
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->hasLiveWallpaper()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasLockWallpaper = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockscreenWallpaperManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v1, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_90

    iget-object v1, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mContext:Landroid/content/Context;

    .line 149
    invoke-static {v1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v1

    if-eqz v1, :cond_39

    goto :goto_90

    .line 154
    :cond_39
    iget-object v1, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mNotificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    const/4 v3, 0x0

    if-eqz v0, :cond_40

    move v4, v3

    goto :goto_41

    :cond_40
    const/4 v4, 0x4

    :goto_41
    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/NotificationMediaManager;->setBackdropVisible(I)V

    .line 155
    iget-object v1, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mNotificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    const/high16 v4, 0x3f800000  # 1.0f

    const/4 v5, 0x0

    if-eqz v0, :cond_4d

    move v6, v4

    goto :goto_4e

    :cond_4d
    move v6, v5

    :goto_4e
    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/NotificationMediaManager;->setBackdropAlpha(F)V

    .line 157
    iget-object v1, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_5d

    .line 158
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 159
    iget-object v1, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 162
    :cond_5d
    iget-object v1, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mBlurBackground:Landroid/widget/ImageView;

    if-eqz v1, :cond_72

    if-eqz v0, :cond_65

    move v6, v3

    goto :goto_66

    :cond_65
    move v6, v2

    .line 163
    :goto_66
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    iget-object v1, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mBlurBackground:Landroid/widget/ImageView;

    if-eqz v0, :cond_6e

    goto :goto_6f

    :cond_6e
    move v4, v5

    :goto_6f
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 167
    :cond_72
    iget-object v1, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mLiveWallpaperBackground:Landroid/widget/ImageView;

    if-eqz v1, :cond_82

    if-eqz v0, :cond_79

    goto :goto_7a

    :cond_79
    move v2, v3

    .line 168
    :goto_7a
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mLiveWallpaperBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 172
    :cond_82
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mVariedpage:Landroid/widget/ImageView;

    if-eqz v0, :cond_89

    .line 173
    invoke-direct {p0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->updateVariepageImage()V

    .line 177
    :cond_89
    iget-object p0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mLockWallpaperObserver:Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->updateWallpaperColorBroadcast(Landroid/graphics/Bitmap;)V

    goto :goto_97

    .line 150
    :cond_90
    :goto_90
    iget-object p0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_97

    .line 151
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_97
    :goto_97
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 205
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mContext:Landroid/content/Context;

    .line 206
    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 207
    :cond_14
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1d

    const/16 v1, 0x8

    .line 208
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 212
    :cond_1d
    iget-object p0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mLockWallpaperObserver:Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->updateWallpaperColorBroadcast(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onThemeChange(I)V
    .registers 4

    .line 183
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mLockWallpaperObserver:Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/keyguard/auto_color/LockWallpaperObserver;->updateWallpaperColorBroadcast(Landroid/graphics/Bitmap;)V

    .line 184
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager;->useThirdPartLockscreen()Z

    move-result v0

    if-nez v0, :cond_27

    const/4 v0, 0x1

    if-ne p1, v0, :cond_30

    .line 185
    iget-object p1, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_30

    if-eqz p1, :cond_30

    const/4 v0, 0x0

    .line 187
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 188
    iget-object p0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_30

    .line 192
    :cond_27
    iget-object p0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_30

    const/16 p1, 0x8

    .line 193
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_30
    :goto_30
    return-void
.end method

.method public registerLockScreenCallback(Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$LockScreenCallbacks;)V
    .registers 5

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** register LockScreenCallbacks callback for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockscreenWallpaperManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 398
    :goto_17
    iget-object v2, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mLockScreenCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3d

    .line 399
    iget-object v2, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mLockScreenCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_3a

    .line 400
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Called by"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string p1, "Object tried to add another LockScreenCallbacks callback"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 405
    :cond_3d
    iget-object p0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mLockScreenCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeLockScreenCallback(Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$LockScreenCallbacks;)V
    .registers 4

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** unregister LockScreenCallbacks callback for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockscreenWallpaperManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mLockScreenCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1e
    if-ltz v0, :cond_36

    .line 411
    iget-object v1, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mLockScreenCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_33

    .line 412
    iget-object v1, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mLockScreenCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    :cond_36
    return-void
.end method

.method public setBackdrop(Lcom/android/systemui/statusbar/BackDropView;)Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    return-object p0
.end method

.method public setBackdropVisible(Ljava/lang/Boolean;)V
    .registers 2

    .line 135
    iget-object p0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x0

    goto :goto_c

    :cond_a
    const/16 p1, 0x8

    :goto_c
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public setBlurBackground(Landroid/widget/ImageView;)Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mBlurBackground:Landroid/widget/ImageView;

    return-object p0
.end method

.method public setBlurBackgroundCover(Landroid/widget/ImageView;)Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mBlurBackgroundCover:Landroid/widget/ImageView;

    .line 130
    iget-object p1, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mBlurBackgroundCover:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/meizu/keyguard/auto_color/ColorMasking;->getInstance(Landroid/widget/ImageView;)Lcom/meizu/keyguard/auto_color/ColorMasking;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mColorMasking:Lcom/meizu/keyguard/auto_color/ColorMasking;

    return-object p0
.end method

.method public setKeyguardBackgroundFrame(Landroid/widget/FrameLayout;)Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mKeyguardBackgroundFrame:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public setKeyguardShowing(Z)V
    .registers 2

    .line 304
    iget-object p0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mColorMasking:Lcom/meizu/keyguard/auto_color/ColorMasking;

    if-eqz p0, :cond_7

    .line 305
    invoke-virtual {p0, p1}, Lcom/meizu/keyguard/auto_color/ColorMasking;->setKeyguardShowing(Z)V

    :cond_7
    return-void
.end method

.method public setLiveWallpaperBackground(Landroid/widget/ImageView;)Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mLiveWallpaperBackground:Landroid/widget/ImageView;

    return-object p0
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method

.method public setVariedpage(Landroid/widget/ImageView;Landroid/widget/TextView;)Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;
    .registers 3

    .line 101
    iput-object p1, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mVariedpage:Landroid/widget/ImageView;

    .line 102
    iput-object p2, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mWallpaperLink:Landroid/widget/TextView;

    .line 103
    invoke-direct {p0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->registerWallpaperUri()V

    return-object p0
.end method

.method public setWallpaperTextView(Lcom/meizu/keyguard/wallpaper/WallpaperView;)Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->mWallpaperTextView:Lcom/meizu/keyguard/wallpaper/WallpaperView;

    return-object p0
.end method
