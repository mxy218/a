.class Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$2;
.super Landroid/database/ContentObserver;
.source "LockscreenWallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;Landroid/os/Handler;)V
    .registers 3

    .line 341
    iput-object p1, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$2;->this$0:Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 344
    iget-object p0, p0, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager$2;->this$0:Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    invoke-static {p0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->access$100(Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;)V

    return-void
.end method
