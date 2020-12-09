.class public Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/wallpaper/IWallpaperManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 144
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 145
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;->mService:Lcom/android/server/wallpaper/IWallpaperManagerService;

    if-eqz v0, :cond_7

    .line 164
    invoke-interface {v0, p1}, Lcom/android/server/wallpaper/IWallpaperManagerService;->onBootPhase(I)V

    .line 166
    :cond_7
    return-void
.end method

.method public onStart()V
    .registers 6

    .line 150
    nop

    .line 152
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10401a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 154
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/IWallpaperManagerService;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;->mService:Lcom/android/server/wallpaper/IWallpaperManagerService;

    .line 155
    const-string/jumbo v0, "wallpaper"

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;->mService:Lcom/android/server/wallpaper/IWallpaperManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_38} :catch_39

    .line 158
    goto :goto_41

    .line 156
    :catch_39
    move-exception v0

    .line 157
    const-string v1, "WallpaperManagerService"

    const-string v2, "Failed to instantiate WallpaperManagerService"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    :goto_41
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 3

    .line 170
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;->mService:Lcom/android/server/wallpaper/IWallpaperManagerService;

    if-eqz v0, :cond_7

    .line 171
    invoke-interface {v0, p1}, Lcom/android/server/wallpaper/IWallpaperManagerService;->onUnlockUser(I)V

    .line 173
    :cond_7
    return-void
.end method
