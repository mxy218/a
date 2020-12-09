.class Lcom/android/server/wallpaper/WallpaperManagerService$5;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;->onUnlockUser(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .registers 3

    .line 1809
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iput p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1812
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$userId:I

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object v0

    .line 1813
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$3400()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_21

    aget-object v4, v1, v3

    .line 1814
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1815
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1816
    invoke-static {v5}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    .line 1813
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1819
    :cond_21
    return-void
.end method
