.class Lcom/android/systemui/glwallpaper/ImageProcessHelper$Threshold;
.super Ljava/lang/Object;
.source "ImageProcessHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/glwallpaper/ImageProcessHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Threshold"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/glwallpaper/ImageProcessHelper$1;)V
    .registers 2

    .line 108
    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/ImageProcessHelper$Threshold;-><init>()V

    return-void
.end method

.method private getHistogram(Landroid/graphics/Bitmap;)[I
    .registers 10

    .line 137
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    .line 138
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/16 v1, 0x100

    new-array v1, v1, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v0, :cond_38

    move v4, v2

    :goto_11
    if-ge v4, p0, :cond_35

    .line 144
    invoke-virtual {p1, v4, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    .line 145
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    add-int/2addr v6, v5

    const/16 v5, 0xff

    if-gt v6, v5, :cond_32

    if-gez v6, :cond_2c

    goto :goto_32

    .line 149
    :cond_2c
    aget v5, v1, v6

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v6

    :cond_32
    :goto_32
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_38
    return-object v1
.end method

.method private isSolidColor(Landroid/graphics/Bitmap;[I)Z
    .registers 6

    .line 158
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    mul-int/2addr p0, p1

    .line 162
    array-length p1, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    if-ge v1, p1, :cond_1c

    aget v2, p2, v1

    if-eqz v2, :cond_15

    if-eq v2, p0, :cond_15

    goto :goto_1c

    :cond_15
    if-ne v2, p0, :cond_19

    const/4 v0, 0x1

    goto :goto_1c

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1c
    :goto_1c
    return v0
.end method

.method private toGrayscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 6

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    .line 123
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    const/4 v3, 0x0

    .line 125
    invoke-static {p0, v0, v1, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;ZLandroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 127
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 128
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-static {}, Lcom/android/systemui/glwallpaper/ImageProcessHelper;->access$500()[F

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrix;-><init>([F)V

    .line 129
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 130
    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 131
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-object p0
.end method


# virtual methods
.method public compute(Landroid/graphics/Bitmap;)F
    .registers 4

    .line 110
    invoke-direct {p0, p1}, Lcom/android/systemui/glwallpaper/ImageProcessHelper$Threshold;->toGrayscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 111
    invoke-direct {p0, p1}, Lcom/android/systemui/glwallpaper/ImageProcessHelper$Threshold;->getHistogram(Landroid/graphics/Bitmap;)[I

    move-result-object v0

    .line 112
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/glwallpaper/ImageProcessHelper$Threshold;->isSolidColor(Landroid/graphics/Bitmap;[I)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_15

    .line 117
    new-instance p0, Lcom/android/systemui/glwallpaper/ImageProcessHelper$Percentile85;

    invoke-direct {p0, v1}, Lcom/android/systemui/glwallpaper/ImageProcessHelper$Percentile85;-><init>(Lcom/android/systemui/glwallpaper/ImageProcessHelper$1;)V

    goto :goto_1a

    :cond_15
    new-instance p0, Lcom/android/systemui/glwallpaper/ImageProcessHelper$Otsus;

    invoke-direct {p0, v1}, Lcom/android/systemui/glwallpaper/ImageProcessHelper$Otsus;-><init>(Lcom/android/systemui/glwallpaper/ImageProcessHelper$1;)V

    .line 118
    :goto_1a
    invoke-interface {p0, p1, v0}, Lcom/android/systemui/glwallpaper/ImageProcessHelper$ThresholdAlgorithm;->compute(Landroid/graphics/Bitmap;[I)F

    move-result p0

    return p0
.end method
