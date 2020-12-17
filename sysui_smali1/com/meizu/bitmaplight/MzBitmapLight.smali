.class public Lcom/meizu/bitmaplight/MzBitmapLight;
.super Ljava/lang/Object;
.source "MzBitmapLight.java"


# static fields
.field public static final BIT:F = 0.25f

.field public static final BRIGHT_ABOVE_AVERAGE:I = 0x2

.field public static final BRIGHT_HIGH:I = 0x3

.field public static final BRIGHT_LOW:I = 0x0

.field public static final BRIGHT_MIDDLE:I = 0x1

.field private static DEFAULT_HEIGHT_BIT:I = 0x64

.field public static DEFAULT_THRESHOLD:F = 220.0f

.field private static DEFAULT_WIDTH_BIT:I = 0x32

.field public static TAG:Ljava/lang/String; = "MzBitmapLight"


# instance fields
.field private mBitmapPalette:Landroidx/palette/graphics/Palette;

.field private mColorResult:I

.field private mIsBitmapChanged:Ljava/lang/Boolean;

.field private mIsPaletteValid:Z

.field private mIsThresholdChanged:Z

.field private mLightData:[[F

.field private mLightLevel:I

.field private mLightResult:[F

.field private mLightThreshold:F

.field private mTargetBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .registers 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 40
    iput-object v0, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mLightResult:[F

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mLightLevel:I

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mColorResult:I

    .line 48
    sget v1, Lcom/meizu/bitmaplight/MzBitmapLight;->DEFAULT_THRESHOLD:F

    iput v1, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mLightThreshold:F

    if-eqz p1, :cond_2b

    .line 50
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 55
    iput-object p1, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mTargetBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 58
    iput-boolean p1, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mIsThresholdChanged:Z

    .line 59
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mIsBitmapChanged:Ljava/lang/Boolean;

    .line 60
    iput-boolean v0, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mIsPaletteValid:Z

    .line 62
    invoke-direct {p0}, Lcom/meizu/bitmaplight/MzBitmapLight;->notifyChange()V

    return-void

    :cond_2b
    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mTargetBitmap:Landroid/graphics/Bitmap;

    .line 52
    sget-object p0, Lcom/meizu/bitmaplight/MzBitmapLight;->TAG:Ljava/lang/String;

    const-string p1, "Bitmap is recycled or null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "the bitmap is recycled or a null object"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static cBright(I)D
    .registers 7

    .line 397
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd322d0e5604189L  # 0.299

    mul-double/2addr v0, v2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3fe2c8b439581062L  # 0.587

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-double v2, p0

    const-wide v4, 0x3fbd2f1a9fbe76c9L  # 0.114

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private static cColor(FII)I
    .registers 7

    .line 387
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float/2addr v1, p0

    mul-float/2addr v0, v1

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p0

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p0

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p0

    add-float/2addr p1, p2

    float-to-int p0, p1

    invoke-static {v0, v2, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method private calculateAreaLightLevel(FFFF)I
    .registers 10

    .line 285
    iget-object v0, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mLightData:[[F

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 288
    :cond_6
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 289
    iget-object v0, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mLightData:[[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    sget v0, Lcom/meizu/bitmaplight/MzBitmapLight;->DEFAULT_WIDTH_BIT:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 290
    iget-object v0, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mLightData:[[F

    aget-object v0, v0, v1

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 291
    iget-object v0, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mLightData:[[F

    aget-object v0, v0, v1

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr p4, v0

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    sget v0, Lcom/meizu/bitmaplight/MzBitmapLight;->DEFAULT_HEIGHT_BIT:I

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result p4

    if-ge p1, p3, :cond_6b

    if-lt p2, p4, :cond_45

    goto :goto_6b

    :cond_45
    move v0, v1

    :goto_46
    if-ge p1, p3, :cond_63

    move v2, v0

    move v0, p2

    :goto_4a
    if-ge v0, p4, :cond_5f

    add-int/lit8 v2, v2, 0x1

    .line 302
    iget-object v3, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mLightData:[[F

    aget-object v3, v3, p1

    aget v3, v3, v0

    iget v4, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mLightThreshold:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5c

    add-int/lit8 v1, v1, 0x1

    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    :cond_5f
    add-int/lit8 p1, p1, 0x1

    move v0, v2

    goto :goto_46

    :cond_63
    int-to-float p1, v1

    int-to-float p2, v0

    div-float/2addr p1, p2

    .line 307
    invoke-direct {p0, p1}, Lcom/meizu/bitmaplight/MzBitmapLight;->calculateLightLevel(F)I

    move-result p0

    return p0

    :cond_6b
    :goto_6b
    const/4 p0, -0x1

    return p0
.end method

.method private calculateColor(Landroid/graphics/Bitmap;I)I
    .registers 4

    if-eqz p1, :cond_1f

    .line 318
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1f

    .line 319
    :cond_9
    iget-boolean v0, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mIsPaletteValid:Z

    if-nez v0, :cond_18

    const/16 v0, 0xc

    .line 320
    invoke-static {p1, v0}, Landroidx/palette/graphics/Palette;->generate(Landroid/graphics/Bitmap;I)Landroidx/palette/graphics/Palette;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mBitmapPalette:Landroidx/palette/graphics/Palette;

    const/4 p1, 0x1

    .line 321
    iput-boolean p1, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mIsPaletteValid:Z

    .line 323
    :cond_18
    iget-object p1, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mBitmapPalette:Landroidx/palette/graphics/Palette;

    invoke-direct {p0, p1, p2}, Lcom/meizu/bitmaplight/MzBitmapLight;->calculateColor(Landroidx/palette/graphics/Palette;I)I

    move-result p0

    return p0

    :cond_1f
    :goto_1f
    const/4 p0, -0x1

    return p0
.end method

.method private calculateColor(Landroidx/palette/graphics/Palette;I)I
    .registers 6

    const/4 v0, -0x1

    const/4 v1, 0x3

    if-ne p2, v1, :cond_7b

    .line 337
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette;->getVibrantSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object p2

    .line 338
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette;->getMutedSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v0

    const/high16 v1, -0x1000000

    const/high16 v2, 0x3e800000  # 0.25f

    if-eqz p2, :cond_26

    if-eqz v0, :cond_26

    .line 342
    invoke-virtual {p2}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result p1

    invoke-virtual {v0}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result p2

    invoke-static {v2, p1, p2}, Lcom/meizu/bitmaplight/MzBitmapLight;->cColor(FII)I

    move-result p1

    invoke-static {v2, v1, p1}, Lcom/meizu/bitmaplight/MzBitmapLight;->cColor(FII)I

    move-result p1

    :goto_24
    move v0, p1

    goto :goto_80

    :cond_26
    if-nez p2, :cond_67

    if-nez v0, :cond_67

    .line 345
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette;->getLightVibrantSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object p2

    .line 346
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette;->getLightMutedSwatch()Landroidx/palette/graphics/Palette$Swatch;

    move-result-object p1

    if-eqz p2, :cond_47

    if-eqz p1, :cond_47

    .line 349
    invoke-virtual {p2}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result p2

    invoke-virtual {p1}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result p1

    invoke-static {v2, p2, p1}, Lcom/meizu/bitmaplight/MzBitmapLight;->cColor(FII)I

    move-result p1

    invoke-static {v2, v1, p1}, Lcom/meizu/bitmaplight/MzBitmapLight;->cColor(FII)I

    move-result p1

    goto :goto_24

    :cond_47
    if-nez p2, :cond_53

    if-nez p1, :cond_53

    const/16 p1, 0xff

    const/4 p2, 0x0

    .line 351
    invoke-static {p1, p2, p2, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    goto :goto_24

    :cond_53
    if-eqz p2, :cond_5e

    .line 354
    invoke-virtual {p2}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result p1

    invoke-static {v2, v1, p1}, Lcom/meizu/bitmaplight/MzBitmapLight;->cColor(FII)I

    move-result p1

    goto :goto_24

    .line 356
    :cond_5e
    invoke-virtual {p1}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result p1

    invoke-static {v2, v1, p1}, Lcom/meizu/bitmaplight/MzBitmapLight;->cColor(FII)I

    move-result p1

    goto :goto_24

    :cond_67
    if-eqz p2, :cond_72

    .line 361
    invoke-virtual {p2}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result p1

    invoke-static {v2, v1, p1}, Lcom/meizu/bitmaplight/MzBitmapLight;->cColor(FII)I

    move-result p1

    goto :goto_24

    .line 363
    :cond_72
    invoke-virtual {v0}, Landroidx/palette/graphics/Palette$Swatch;->getRgb()I

    move-result p1

    invoke-static {v2, v1, p1}, Lcom/meizu/bitmaplight/MzBitmapLight;->cColor(FII)I

    move-result p1

    goto :goto_24

    :cond_7b
    const/4 p1, 0x2

    if-ne p2, p1, :cond_7f

    goto :goto_80

    :cond_7f
    const/4 p1, 0x1

    .line 373
    :goto_80
    iput v0, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mColorResult:I

    return v0
.end method

.method private calculateLightData(Landroid/graphics/Bitmap;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_ba

    .line 193
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_e

    goto/16 :goto_ba

    .line 196
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v2, v3, :cond_2b

    .line 197
    sget v2, Lcom/meizu/bitmaplight/MzBitmapLight;->DEFAULT_HEIGHT_BIT:I

    sget v3, Lcom/meizu/bitmaplight/MzBitmapLight;->DEFAULT_WIDTH_BIT:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const-class v3, F

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, v0, Lcom/meizu/bitmaplight/MzBitmapLight;->mLightData:[[F

    goto :goto_3d

    .line 199
    :cond_2b
    sget v2, Lcom/meizu/bitmaplight/MzBitmapLight;->DEFAULT_WIDTH_BIT:I

    sget v3, Lcom/meizu/bitmaplight/MzBitmapLight;->DEFAULT_HEIGHT_BIT:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const-class v3, F

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, v0, Lcom/meizu/bitmaplight/MzBitmapLight;->mLightData:[[F

    .line 202
    :goto_3d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 203
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 205
    iget-object v4, v0, Lcom/meizu/bitmaplight/MzBitmapLight;->mLightData:[[F

    array-length v5, v4

    const/4 v6, 0x0

    .line 206
    aget-object v4, v4, v6

    array-length v4, v4

    .line 208
    new-array v7, v5, [I

    .line 209
    new-array v8, v4, [I

    move v9, v6

    .line 211
    :goto_51
    array-length v10, v7

    if-ge v9, v10, :cond_5c

    mul-int v10, v2, v9

    .line 212
    div-int/2addr v10, v5

    aput v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_51

    :cond_5c
    move v2, v6

    .line 214
    :goto_5d
    array-length v5, v8

    if-ge v2, v5, :cond_68

    mul-int v5, v3, v2

    .line 215
    div-int/2addr v5, v4

    aput v5, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    :cond_68
    const-wide/16 v2, 0x0

    move-wide v9, v2

    move v5, v6

    move-wide v3, v9

    move v2, v5

    .line 221
    :goto_6e
    array-length v11, v7

    if-ge v2, v11, :cond_a8

    move-wide v11, v9

    move-wide v9, v3

    move v3, v6

    .line 222
    :goto_74
    array-length v4, v8

    if-ge v3, v4, :cond_a0

    add-int/lit8 v5, v5, 0x1

    .line 224
    aget v4, v7, v2

    aget v13, v8, v3

    invoke-virtual {v1, v4, v13}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    invoke-static {v4}, Lcom/meizu/bitmaplight/MzBitmapLight;->cBright(I)D

    move-result-wide v13

    .line 226
    iget-object v4, v0, Lcom/meizu/bitmaplight/MzBitmapLight;->mLightData:[[F

    aget-object v4, v4, v2

    double-to-int v15, v13

    int-to-float v15, v15

    aput v15, v4, v3

    .line 227
    iget v4, v0, Lcom/meizu/bitmaplight/MzBitmapLight;->mLightThreshold:F

    move-object/from16 v16, v7

    float-to-double v6, v4

    cmpl-double v4, v13, v6

    if-lez v4, :cond_99

    const-wide/high16 v6, 0x3ff0000000000000L  # 1.0

    add-double/2addr v11, v6

    :cond_99
    add-double/2addr v9, v13

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v7, v16

    const/4 v6, 0x0

    goto :goto_74

    :cond_a0
    move-object/from16 v16, v7

    add-int/lit8 v2, v2, 0x1

    move-wide v3, v9

    move-wide v9, v11

    const/4 v6, 0x0

    goto :goto_6e

    .line 233
    :cond_a8
    iget-object v1, v0, Lcom/meizu/bitmaplight/MzBitmapLight;->mLightResult:[F

    int-to-double v5, v5

    div-double/2addr v3, v5

    double-to-float v2, v3

    const/4 v3, 0x0

    aput v2, v1, v3

    div-double/2addr v9, v5

    double-to-float v2, v9

    const/4 v3, 0x1

    .line 234
    aput v2, v1, v3

    .line 235
    aget v1, v1, v3

    invoke-direct {v0, v1}, Lcom/meizu/bitmaplight/MzBitmapLight;->calculateLightLevel(F)I

    :cond_ba
    :goto_ba
    return-void
.end method

.method private calculateLightLevel(F)I
    .registers 6

    float-to-double v0, p1

    const-wide v2, 0x3fee666666666666L  # 0.95

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_e

    const/4 p1, 0x3

    .line 261
    iput p1, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mLightLevel:I

    return p1

    :cond_e
    cmpg-double p1, v0, v2

    const-wide v2, 0x3feb333333333333L  # 0.85

    if-gez p1, :cond_1f

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_1f

    const/4 p1, 0x2

    .line 264
    iput p1, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mLightLevel:I

    return p1

    :cond_1f
    cmpg-double p1, v0, v2

    if-gez p1, :cond_30

    const-wide v2, 0x3fe3333333333333L  # 0.6

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_30

    const/4 p1, 0x1

    .line 267
    iput p1, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mLightLevel:I

    return p1

    :cond_30
    const/4 p1, 0x0

    .line 270
    iput p1, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mLightLevel:I

    return p1
.end method

.method private calculateThresholdLightLevel()V
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 243
    :goto_3
    iget-object v3, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mLightData:[[F

    array-length v4, v3

    if-ge v1, v4, :cond_24

    move v3, v2

    move v2, v0

    .line 244
    :goto_a
    iget-object v4, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mLightData:[[F

    aget-object v5, v4, v0

    array-length v5, v5

    if-ge v2, v5, :cond_20

    .line 245
    aget-object v4, v4, v1

    aget v4, v4, v2

    iget v5, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mLightThreshold:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1d

    add-int/lit8 v3, v3, 0x1

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_20
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_3

    .line 250
    :cond_24
    iget-object v1, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mLightResult:[F

    array-length v4, v3

    aget-object v0, v3, v0

    array-length v0, v0

    mul-int/2addr v4, v0

    div-int/2addr v2, v4

    int-to-float v0, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    .line 251
    aget v0, v1, v2

    invoke-direct {p0, v0}, Lcom/meizu/bitmaplight/MzBitmapLight;->calculateLightLevel(F)I

    return-void
.end method

.method private static getBitmapColorFilter(F)Landroid/graphics/ColorFilter;
    .registers 4

    const/high16 v0, 0x437f0000  # 255.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    const/high16 v0, -0x1000000

    .line 422
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {p0, v1, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    .line 423
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v0
.end method

.method private notifyChange()V
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mIsBitmapChanged:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 71
    iget-object v0, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mTargetBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/meizu/bitmaplight/MzBitmapLight;->calculateLightData(Landroid/graphics/Bitmap;)V

    .line 72
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mIsBitmapChanged:Ljava/lang/Boolean;

    goto :goto_1e

    .line 74
    :cond_15
    iget-boolean v0, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mIsThresholdChanged:Z

    if-eqz v0, :cond_1e

    .line 75
    invoke-direct {p0}, Lcom/meizu/bitmaplight/MzBitmapLight;->calculateThresholdLightLevel()V

    .line 76
    iput-boolean v1, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mIsThresholdChanged:Z

    :cond_1e
    :goto_1e
    return-void
.end method

.method public static returnFilterBlurBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .registers 4

    if-eqz p0, :cond_26

    .line 404
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_26

    .line 405
    :cond_9
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 406
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 407
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 408
    invoke-static {p1}, Lcom/meizu/bitmaplight/MzBitmapLight;->getBitmapColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object p1

    .line 409
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 p1, 0x0

    .line 410
    invoke-virtual {v0, p0, p1, p1, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object p0

    :cond_26
    :goto_26
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getAreaLightLevel(FFFF)I
    .registers 5

    .line 147
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/bitmaplight/MzBitmapLight;->calculateAreaLightLevel(FFFF)I

    move-result p0

    return p0
.end method

.method public getAreaMaskColor(I)I
    .registers 3

    .line 189
    iget-object v0, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mTargetBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, p1}, Lcom/meizu/bitmaplight/MzBitmapLight;->calculateColor(Landroid/graphics/Bitmap;I)I

    move-result p0

    return p0
.end method

.method public getAvgLight()F
    .registers 2

    .line 156
    iget-object p0, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mLightResult:[F

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public getLightLevel()I
    .registers 1

    .line 165
    iget p0, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mLightLevel:I

    return p0
.end method

.method public getLightThreshold()F
    .registers 1

    .line 114
    iget p0, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mLightThreshold:F

    return p0
.end method

.method public getMaskColor()I
    .registers 3

    .line 174
    iget-object v0, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mTargetBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mLightLevel:I

    invoke-direct {p0, v0, v1}, Lcom/meizu/bitmaplight/MzBitmapLight;->calculateColor(Landroid/graphics/Bitmap;I)I

    move-result p0

    return p0
.end method

.method public getTargetBitmap()Landroid/graphics/Bitmap;
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mTargetBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setLightThreshold(F)V
    .registers 3

    .line 123
    iget-object v0, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mTargetBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_24

    :cond_b
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1a

    const/high16 v0, 0x437e0000  # 254.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_17

    goto :goto_1a

    .line 130
    :cond_17
    iput p1, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mLightThreshold:F

    goto :goto_1e

    .line 128
    :cond_1a
    :goto_1a
    sget p1, Lcom/meizu/bitmaplight/MzBitmapLight;->DEFAULT_THRESHOLD:F

    iput p1, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mLightThreshold:F

    :goto_1e
    const/4 p1, 0x1

    .line 132
    iput-boolean p1, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mIsThresholdChanged:Z

    .line 133
    invoke-direct {p0}, Lcom/meizu/bitmaplight/MzBitmapLight;->notifyChange()V

    :cond_24
    :goto_24
    return-void
.end method

.method public setTargetBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    if-eqz p1, :cond_18

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_18

    .line 101
    iput-object p1, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mTargetBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 103
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mIsBitmapChanged:Ljava/lang/Boolean;

    const/4 p1, 0x0

    .line 104
    iput-boolean p1, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mIsPaletteValid:Z

    .line 105
    invoke-direct {p0}, Lcom/meizu/bitmaplight/MzBitmapLight;->notifyChange()V

    return-void

    :cond_18
    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lcom/meizu/bitmaplight/MzBitmapLight;->mTargetBitmap:Landroid/graphics/Bitmap;

    .line 98
    sget-object p0, Lcom/meizu/bitmaplight/MzBitmapLight;->TAG:Ljava/lang/String;

    const-string p1, "Bitmap is recycled or null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "the bitmap is recycled or a null object"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
