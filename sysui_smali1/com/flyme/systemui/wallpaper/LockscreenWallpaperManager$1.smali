.class Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$1;
.super Ljava/lang/Object;
.source "LockscreenWallpaperManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->onNightModeChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;)V
    .registers 2

    .line 280
    iput-object p1, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$1;->this$0:Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 283
    iget-object p0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$1;->this$0:Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    invoke-static {p0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->access$000(Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->liveWallpaperChange()V

    return-void
.end method
