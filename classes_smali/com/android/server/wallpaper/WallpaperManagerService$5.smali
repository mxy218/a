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
    .param p1, "this$0"  # Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 1818
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iput p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 1821
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$5;->val$userId:I

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object v0

    .line 1822
    .local v0, "wallpaperDir":Ljava/io/File;
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$3400()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_21

    aget-object v4, v1, v3

    .line 1823
    .local v4, "filename":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1824
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 1825
    invoke-static {v5}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    .line 1822
    .end local v4  # "filename":Ljava/lang/String;
    .end local v5  # "f":Ljava/io/File;
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 1828
    :cond_21
    return-void
.end method
