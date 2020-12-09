.class Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WallpaperData"
.end annotation


# instance fields
.field allowBackup:Z

.field private callbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

.field final cropFile:Ljava/io/File;

.field final cropHint:Landroid/graphics/Rect;

.field imageWallpaperPending:Z

.field lastDiedTime:J

.field name:Ljava/lang/String;

.field nextWallpaperComponent:Landroid/content/ComponentName;

.field primaryColors:Landroid/app/WallpaperColors;

.field setComplete:Landroid/app/IWallpaperManagerCallback;

.field userId:I

.field wallpaperComponent:Landroid/content/ComponentName;

.field final wallpaperFile:Ljava/io/File;

.field wallpaperId:I

.field wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

.field wallpaperUpdating:Z

.field whichPending:I


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 952
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 914
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 944
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    .line 950
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 953
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    .line 954
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object p1

    .line 955
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    .line 956
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    .line 957
    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;
    .registers 1

    .line 883
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->callbacks:Landroid/os/RemoteCallbackList;

    return-object p0
.end method


# virtual methods
.method cropExists()Z
    .registers 2

    .line 961
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method sourceExists()Z
    .registers 2

    .line 965
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method
