.class final Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$ProcessLockwallpaperTask;
.super Landroid/os/AsyncTask;
.source "LockscreenWallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProcessLockwallpaperTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mBrightLevel:I

.field private final mManagerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;I)V
    .registers 4

    .line 351
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 352
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$ProcessLockwallpaperTask;->mManagerRef:Ljava/lang/ref/WeakReference;

    .line 353
    iput p2, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$ProcessLockwallpaperTask;->mBrightLevel:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 348
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$ProcessLockwallpaperTask;->doInBackground([Ljava/lang/Void;)[Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Landroid/graphics/Bitmap;
    .registers 6

    const/4 p1, 0x2

    new-array v0, p1, [Landroid/graphics/Bitmap;

    .line 359
    iget-object v1, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$ProcessLockwallpaperTask;->mManagerRef:Ljava/lang/ref/WeakReference;

    .line 360
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    invoke-static {v1}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->access$000(Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lmeizu/wallpaper/FlymeWallpaperManager;->getInstance(Landroid/content/Context;)Lmeizu/wallpaper/FlymeWallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Lmeizu/wallpaper/FlymeWallpaperManager;->getLockWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 364
    iget-object v2, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$ProcessLockwallpaperTask;->mManagerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    invoke-static {v2}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->access$000(Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->usedDefaultColor()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_4d

    .line 365
    iget v2, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$ProcessLockwallpaperTask;->mBrightLevel:I

    if-ne v2, p1, :cond_3a

    const p1, 0x3e4ccccd  # 0.2f

    .line 366
    invoke-static {v1, p1}, Lcom/meizu/keyguard/BlurBitmapFactory;->returnFilterBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_4d

    :cond_3a
    if-ne v2, v3, :cond_44

    const p1, 0x3dcccccd  # 0.1f

    .line 368
    invoke-static {v1, p1}, Lcom/meizu/keyguard/BlurBitmapFactory;->returnFilterBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_4d

    :cond_44
    if-nez v2, :cond_4d

    const p1, 0x3d4ccccd  # 0.05f

    .line 370
    invoke-static {v1, p1}, Lcom/meizu/keyguard/BlurBitmapFactory;->returnFilterBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 373
    :cond_4d
    :goto_4d
    iget-object p0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$ProcessLockwallpaperTask;->mManagerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    invoke-static {p0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->access$200(Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;)Lcom/android/systemui/statusbar/NotificationMediaManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 p1, 0x0

    aput-object v1, v0, p1

    aput-object p0, v0, v3

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 348
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$ProcessLockwallpaperTask;->onPostExecute([Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPostExecute([Landroid/graphics/Bitmap;)V
    .registers 4

    .line 384
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$ProcessLockwallpaperTask;->mManagerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v0, v1}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->access$302(Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 385
    iget-object v0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$ProcessLockwallpaperTask;->mManagerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->access$402(Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 387
    iget-object p0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$ProcessLockwallpaperTask;->mManagerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    invoke-static {p0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->access$500(Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;)V

    return-void
.end method
