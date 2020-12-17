.class public Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;
.super Ljava/lang/Object;
.source "FlymeWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/FlymeWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlymeWallpaperData"
.end annotation


# instance fields
.field public mFlymeWallpaperCallback:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lmeizu/wallpaper/IFlymeWallpaperCallback;",
            ">;"
        }
    .end annotation
.end field

.field mHeightOfLockWallpaper:I

.field mNameOfLockWallpaper:Ljava/lang/String;

.field mWidthOfLockWallpaper:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mNameOfLockWallpaper:Ljava/lang/String;

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mWidthOfLockWallpaper:I

    .line 78
    iput v0, p0, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mHeightOfLockWallpaper:I

    .line 80
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/FlymeWallpaperService$FlymeWallpaperData;->mFlymeWallpaperCallback:Landroid/os/RemoteCallbackList;

    return-void
.end method
