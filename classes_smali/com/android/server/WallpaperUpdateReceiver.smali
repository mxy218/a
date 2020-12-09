.class public Lcom/android/server/WallpaperUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WallpaperUpdateReceiver.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WallpaperUpdateReceiver"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic lambda$U0nVive5QwEBqcnNmDq5uiouKcg(Lcom/android/server/WallpaperUpdateReceiver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/WallpaperUpdateReceiver;->updateWallpaper()V

    return-void
.end method

.method private updateWallpaper()V
    .registers 4

    .line 50
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 54
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 57
    const v1, 0x108027d

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->setResource(I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 60
    goto :goto_34

    .line 58
    :catch_1d
    move-exception v0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to customize system wallpaper."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperUpdateReceiver"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_34
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 43
    if-eqz p2, :cond_16

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.DEVICE_CUSTOMIZATION_READY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 44
    new-instance p1, Lcom/android/server/-$$Lambda$WallpaperUpdateReceiver$U0nVive5QwEBqcnNmDq5uiouKcg;

    invoke-direct {p1, p0}, Lcom/android/server/-$$Lambda$WallpaperUpdateReceiver$U0nVive5QwEBqcnNmDq5uiouKcg;-><init>(Lcom/android/server/WallpaperUpdateReceiver;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 46
    :cond_16
    return-void
.end method
