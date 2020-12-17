.class public Lcom/android/launcher3/icons/BitmapInfo;
.super Ljava/lang/Object;
.source "BitmapInfo.java"


# static fields
.field public static final LOW_RES_ICON:Landroid/graphics/Bitmap;


# instance fields
.field public color:I

.field public icon:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 23
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_ICON:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromBitmap(Landroid/graphics/Bitmap;Lcom/android/launcher3/icons/ColorExtractor;)Lcom/android/launcher3/icons/BitmapInfo;
    .registers 3

    .line 42
    new-instance v0, Lcom/android/launcher3/icons/BitmapInfo;

    invoke-direct {v0}, Lcom/android/launcher3/icons/BitmapInfo;-><init>()V

    .line 43
    iput-object p0, v0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_e

    .line 45
    invoke-virtual {p1, p0}, Lcom/android/launcher3/icons/ColorExtractor;->findDominantColorByHue(Landroid/graphics/Bitmap;)I

    move-result p0

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    .line 46
    :goto_f
    iput p0, v0, Lcom/android/launcher3/icons/BitmapInfo;->color:I

    return-object v0
.end method
