.class Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;
.super Ljava/lang/Object;
.source "LockscreenWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoaderResult"
.end annotation


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final success:Z


# direct methods
.method constructor <init>(ZLandroid/graphics/Bitmap;)V
    .registers 3

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;->success:Z

    .line 231
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static success(Landroid/graphics/Bitmap;)Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;
    .registers 3

    .line 235
    new-instance v0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;-><init>(ZLandroid/graphics/Bitmap;)V

    return-object v0
.end method
