.class public Lcom/android/systemui/assist/ui/PerimeterPathGuide;
.super Ljava/lang/Object;
.source "PerimeterPathGuide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;,
        Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;
    }
.end annotation


# instance fields
.field private final mBottomCornerRadiusPx:I

.field private final mCornerPathRenderer:Lcom/android/systemui/assist/ui/CornerPathRenderer;

.field private final mDeviceHeightPx:I

.field private final mDeviceWidthPx:I

.field private final mEdgeInset:I

.field private mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

.field private mRotation:I

.field private final mScratchPath:Landroid/graphics/Path;

.field private final mScratchPathMeasure:Landroid/graphics/PathMeasure;

.field private final mTopCornerRadiusPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/assist/ui/CornerPathRenderer;III)V
    .registers 9

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mScratchPath:Landroid/graphics/Path;

    .line 80
    new-instance v0, Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mScratchPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mScratchPathMeasure:Landroid/graphics/PathMeasure;

    .line 83
    iput v2, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRotation:I

    .line 87
    iput-object p2, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mCornerPathRenderer:Lcom/android/systemui/assist/ui/CornerPathRenderer;

    .line 88
    iput p4, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mDeviceWidthPx:I

    .line 89
    iput p5, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mDeviceHeightPx:I

    .line 90
    invoke-static {p1}, Lcom/android/systemui/assist/ui/DisplayUtils;->getCornerRadiusTop(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mTopCornerRadiusPx:I

    .line 91
    invoke-static {p1}, Lcom/android/systemui/assist/ui/DisplayUtils;->getCornerRadiusBottom(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mBottomCornerRadiusPx:I

    .line 92
    iput p3, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mEdgeInset:I

    const/16 p1, 0x8

    new-array p1, p1, [Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    .line 94
    iput-object p1, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    .line 95
    :goto_30
    iget-object p1, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    array-length p2, p1

    if-ge v2, p2, :cond_40

    .line 96
    new-instance p2, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;-><init>(Lcom/android/systemui/assist/ui/PerimeterPathGuide;Lcom/android/systemui/assist/ui/PerimeterPathGuide$1;)V

    aput-object p2, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 98
    :cond_40
    invoke-direct {p0}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->computeRegions()V

    return-void
.end method

.method private computeRegions()V
    .registers 13

    .line 205
    iget v0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mDeviceWidthPx:I

    .line 206
    iget v1, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mDeviceHeightPx:I

    .line 210
    iget v2, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRotation:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v6, :cond_18

    if-eq v2, v5, :cond_15

    if-eq v2, v3, :cond_12

    move v2, v4

    goto :goto_1a

    :cond_12
    const/16 v2, -0x10e

    goto :goto_1a

    :cond_15
    const/16 v2, -0xb4

    goto :goto_1a

    :cond_18
    const/16 v2, -0x5a

    .line 222
    :goto_1a
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v2, v2

    .line 223
    iget v8, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mDeviceWidthPx:I

    div-int/2addr v8, v5

    int-to-float v8, v8

    iget v9, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mDeviceHeightPx:I

    div-int/2addr v9, v5

    int-to-float v9, v9

    invoke-virtual {v7, v2, v8, v9}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 225
    iget v2, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRotation:I

    if-eq v2, v6, :cond_31

    if-ne v2, v3, :cond_40

    .line 226
    :cond_31
    iget v1, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mDeviceWidthPx:I

    .line 227
    iget v0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mDeviceHeightPx:I

    sub-int v2, v0, v1

    .line 228
    div-int/2addr v2, v5

    int-to-float v2, v2

    sub-int v3, v1, v0

    div-int/2addr v3, v5

    int-to-float v3, v3

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 232
    :cond_40
    sget-object v2, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->BOTTOM_LEFT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    invoke-direct {p0, v2}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRotatedCorner(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    move-result-object v2

    .line 234
    sget-object v3, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->BOTTOM_RIGHT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    invoke-direct {p0, v3}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRotatedCorner(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    move-result-object v3

    .line 236
    sget-object v5, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->TOP_LEFT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    invoke-direct {p0, v5}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRotatedCorner(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    move-result-object v5

    .line 238
    sget-object v8, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->TOP_RIGHT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    invoke-direct {p0, v8}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRotatedCorner(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    move-result-object v8

    .line 241
    iget-object v9, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    sget-object v10, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM_LEFT:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget-object v9, v9, v10

    iget-object v10, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mCornerPathRenderer:Lcom/android/systemui/assist/ui/CornerPathRenderer;

    iget v11, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mEdgeInset:I

    int-to-float v11, v11

    .line 242
    invoke-virtual {v10, v2, v11}, Lcom/android/systemui/assist/ui/CornerPathRenderer;->getInsetPath(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;F)Landroid/graphics/Path;

    move-result-object v10

    iput-object v10, v9, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    .line 243
    iget-object v9, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    sget-object v10, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM_RIGHT:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget-object v9, v9, v10

    iget-object v10, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mCornerPathRenderer:Lcom/android/systemui/assist/ui/CornerPathRenderer;

    iget v11, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mEdgeInset:I

    int-to-float v11, v11

    .line 244
    invoke-virtual {v10, v3, v11}, Lcom/android/systemui/assist/ui/CornerPathRenderer;->getInsetPath(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;F)Landroid/graphics/Path;

    move-result-object v10

    iput-object v10, v9, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    .line 245
    iget-object v9, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    sget-object v10, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->TOP_RIGHT:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget-object v9, v9, v10

    iget-object v10, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mCornerPathRenderer:Lcom/android/systemui/assist/ui/CornerPathRenderer;

    iget v11, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mEdgeInset:I

    int-to-float v11, v11

    .line 246
    invoke-virtual {v10, v8, v11}, Lcom/android/systemui/assist/ui/CornerPathRenderer;->getInsetPath(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;F)Landroid/graphics/Path;

    move-result-object v10

    iput-object v10, v9, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    .line 247
    iget-object v9, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    sget-object v10, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->TOP_LEFT:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget-object v9, v9, v10

    iget-object v10, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mCornerPathRenderer:Lcom/android/systemui/assist/ui/CornerPathRenderer;

    iget v11, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mEdgeInset:I

    int-to-float v11, v11

    .line 248
    invoke-virtual {v10, v5, v11}, Lcom/android/systemui/assist/ui/CornerPathRenderer;->getInsetPath(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;F)Landroid/graphics/Path;

    move-result-object v10

    iput-object v10, v9, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    .line 250
    iget-object v9, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    sget-object v10, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM_LEFT:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    invoke-virtual {v9, v7}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 251
    iget-object v9, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    sget-object v10, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM_RIGHT:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    invoke-virtual {v9, v7}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 252
    iget-object v9, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    sget-object v10, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->TOP_RIGHT:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    invoke-virtual {v9, v7}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 253
    iget-object v9, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    sget-object v10, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->TOP_LEFT:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget-object v9, v9, v10

    iget-object v9, v9, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    invoke-virtual {v9, v7}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 256
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 257
    invoke-direct {p0, v2}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getPhysicalCornerRadius(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mEdgeInset:I

    sub-int v10, v1, v10

    int-to-float v10, v10

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 258
    invoke-direct {p0, v3}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getPhysicalCornerRadius(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)I

    move-result v9

    sub-int v9, v0, v9

    int-to-float v9, v9

    iget v10, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mEdgeInset:I

    sub-int v10, v1, v10

    int-to-float v10, v10

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 260
    iget-object v9, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    sget-object v10, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget-object v9, v9, v10

    iput-object v7, v9, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    .line 262
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 263
    invoke-direct {p0, v8}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getPhysicalCornerRadius(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)I

    move-result v9

    sub-int v9, v0, v9

    int-to-float v9, v9

    iget v10, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mEdgeInset:I

    int-to-float v10, v10

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 264
    invoke-direct {p0, v5}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getPhysicalCornerRadius(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mEdgeInset:I

    int-to-float v10, v10

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 265
    iget-object v9, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    sget-object v10, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->TOP:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget-object v9, v9, v10

    iput-object v7, v9, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    .line 267
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 268
    iget v9, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mEdgeInset:I

    sub-int v9, v0, v9

    int-to-float v9, v9

    .line 269
    invoke-direct {p0, v3}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getPhysicalCornerRadius(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)I

    move-result v3

    sub-int v3, v1, v3

    int-to-float v3, v3

    .line 268
    invoke-virtual {v7, v9, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 270
    iget v3, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mEdgeInset:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-direct {p0, v8}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getPhysicalCornerRadius(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 271
    iget-object v0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    sget-object v3, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->RIGHT:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget-object v0, v0, v3

    iput-object v7, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    .line 273
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 274
    iget v3, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mEdgeInset:I

    int-to-float v3, v3

    .line 275
    invoke-direct {p0, v5}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getPhysicalCornerRadius(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)I

    move-result v5

    int-to-float v5, v5

    .line 274
    invoke-virtual {v0, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 276
    iget v3, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mEdgeInset:I

    int-to-float v3, v3

    invoke-direct {p0, v2}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getPhysicalCornerRadius(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 277
    iget-object v1, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    sget-object v2, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->LEFT:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v0, v1, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    .line 280
    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    const/4 v1, 0x0

    move v3, v1

    move v2, v4

    .line 281
    :goto_19a
    iget-object v5, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    array-length v7, v5

    if-ge v2, v7, :cond_1ba

    .line 282
    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    invoke-virtual {v0, v5, v4}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 283
    iget-object v5, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    aget-object v5, v5, v2

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v7

    iput v7, v5, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->absoluteLength:F

    .line 284
    iget-object v5, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->absoluteLength:F

    add-float/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_19a

    .line 288
    :cond_1ba
    :goto_1ba
    iget-object v0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    array-length v2, v0

    if-ge v4, v2, :cond_1d6

    .line 289
    aget-object v2, v0, v4

    aget-object v5, v0, v4

    iget v5, v5, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->absoluteLength:F

    div-float/2addr v5, v3

    iput v5, v2, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->normalizedLength:F

    .line 290
    aget-object v2, v0, v4

    iget v2, v2, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->absoluteLength:F

    add-float/2addr v1, v2

    .line 291
    aget-object v0, v0, v4

    div-float v2, v1, v3

    iput v2, v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->endCoordinate:F

    add-int/lit8 v4, v4, 0x1

    goto :goto_1ba

    .line 295
    :cond_1d6
    array-length p0, v0

    sub-int/2addr p0, v6

    aget-object p0, v0, p0

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->endCoordinate:F

    return-void
.end method

.method private getPhysicalCornerRadius(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)I
    .registers 3

    .line 196
    sget-object v0, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->BOTTOM_LEFT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    if-eq p1, v0, :cond_c

    sget-object v0, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->BOTTOM_RIGHT:Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    if-ne p1, v0, :cond_9

    goto :goto_c

    .line 200
    :cond_9
    iget p0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mTopCornerRadiusPx:I

    return p0

    .line 198
    :cond_c
    :goto_c
    iget p0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mBottomCornerRadiusPx:I

    return p0
.end method

.method private getRegionForPoint(F)Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;
    .registers 8

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/high16 v1, 0x3f800000  # 1.0f

    if-ltz v0, :cond_b

    cmpl-float v0, p1, v1

    if-lez v0, :cond_e

    :cond_b
    rem-float/2addr p1, v1

    add-float/2addr p1, v1

    rem-float/2addr p1, v1

    .line 382
    :cond_e
    invoke-static {}, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->values()[Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_2a

    aget-object v3, v0, v2

    .line 383
    iget-object v4, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v4, v4, v5

    iget v4, v4, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->endCoordinate:F

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_27

    return-object v3

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_2a
    const-string p0, "PerimeterPathGuide"

    const-string p1, "Fell out of getRegionForPoint"

    .line 389
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    sget-object p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    return-object p0
.end method

.method private getRotatedCorner(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;
    .registers 3

    .line 300
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    .line 301
    iget p0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRotation:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_16

    const/4 v0, 0x2

    if-eq p0, v0, :cond_13

    const/4 v0, 0x3

    if-eq p0, v0, :cond_10

    goto :goto_18

    :cond_10
    add-int/lit8 p1, p1, 0x1

    goto :goto_18

    :cond_13
    add-int/lit8 p1, p1, 0x2

    goto :goto_18

    :cond_16
    add-int/lit8 p1, p1, 0x3

    .line 312
    :goto_18
    invoke-static {}, Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;->values()[Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;

    move-result-object p0

    rem-int/lit8 p1, p1, 0x4

    aget-object p0, p0, p1

    return-object p0
.end method

.method private placePoint(F)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Landroid/util/Pair<",
            "Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, v0, p1

    const/high16 v1, 0x3f800000  # 1.0f

    if-gtz v0, :cond_b

    cmpl-float v0, p1, v1

    if-lez v0, :cond_e

    :cond_b
    rem-float/2addr p1, v1

    add-float/2addr p1, v1

    rem-float/2addr p1, v1

    .line 365
    :cond_e
    invoke-direct {p0, p1}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->getRegionForPoint(F)Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    move-result-object v0

    .line 366
    sget-object v1, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->BOTTOM:Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 367
    iget-object p0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object p0, p0, v1

    iget p0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->normalizedLength:F

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 369
    :cond_2e
    iget-object v1, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    iget v1, v1, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->endCoordinate:F

    sub-float/2addr p1, v1

    .line 370
    iget-object p0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    .line 371
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object p0, p0, v1

    iget p0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->normalizedLength:F

    div-float/2addr p1, p0

    .line 372
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private strokeRegion(Landroid/graphics/Path;Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;FF)V
    .registers 7

    cmpl-float v0, p3, p4

    if-nez v0, :cond_5

    return-void

    .line 346
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mScratchPathMeasure:Landroid/graphics/PathMeasure;

    iget-object v1, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget-object p2, v1, p2

    iget-object p2, p2, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->path:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    .line 347
    iget-object p2, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mScratchPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {p2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    mul-float/2addr p3, v0

    iget-object p0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mScratchPathMeasure:Landroid/graphics/PathMeasure;

    .line 348
    invoke-virtual {p0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p0

    mul-float/2addr p4, p0

    const/4 p0, 0x1

    .line 347
    invoke-virtual {p2, p3, p4, p1, p0}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    return-void
.end method

.method private strokeSegmentInternal(Landroid/graphics/Path;FF)V
    .registers 12

    .line 316
    invoke-direct {p0, p2}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->placePoint(F)Landroid/util/Pair;

    move-result-object p2

    .line 317
    invoke-direct {p0, p3}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->placePoint(F)Landroid/util/Pair;

    move-result-object p3

    .line 319
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    iget-object v1, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 320
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->strokeRegion(Landroid/graphics/Path;Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;FF)V

    goto :goto_70

    .line 322
    :cond_2c
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->strokeRegion(Landroid/graphics/Path;Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;FF)V

    .line 324
    invoke-static {}, Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;->values()[Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_44
    if-ge v3, v1, :cond_70

    aget-object v5, v0, v3

    .line 325
    iget-object v6, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    const/4 v4, 0x1

    goto :goto_6d

    :cond_52
    if-eqz v4, :cond_6d

    .line 330
    iget-object v6, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_61

    .line 331
    invoke-direct {p0, p1, v5, v7, v2}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->strokeRegion(Landroid/graphics/Path;Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;FF)V

    goto :goto_6d

    .line 333
    :cond_61
    iget-object p2, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-direct {p0, p1, v5, v7, p2}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->strokeRegion(Landroid/graphics/Path;Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;FF)V

    goto :goto_70

    :cond_6d
    :goto_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    :cond_70
    :goto_70
    return-void
.end method


# virtual methods
.method public getRegionWidth(Lcom/android/systemui/assist/ui/PerimeterPathGuide$Region;)F
    .registers 2

    .line 180
    iget-object p0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRegions:[Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p0, p0, p1

    iget p0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide$RegionAttributes;->normalizedLength:F

    return p0
.end method

.method public setRotation(I)V
    .registers 3

    .line 108
    iget v0, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRotation:I

    if-eq p1, v0, :cond_2b

    if-eqz p1, :cond_26

    const/4 v0, 0x1

    if-eq p1, v0, :cond_26

    const/4 v0, 0x2

    if-eq p1, v0, :cond_26

    const/4 v0, 0x3

    if-eq p1, v0, :cond_26

    .line 118
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid rotation provided: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PerimeterPathGuide"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 114
    :cond_26
    iput p1, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRotation:I

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->computeRegions()V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public strokeSegment(Landroid/graphics/Path;FF)V
    .registers 6

    .line 128
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    const/high16 v0, 0x3f800000  # 1.0f

    rem-float/2addr p2, v0

    add-float/2addr p2, v0

    rem-float/2addr p2, v0

    rem-float/2addr p3, v0

    add-float/2addr p3, v0

    rem-float/2addr p3, v0

    cmpl-float v1, p2, p3

    if-lez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    if-eqz v1, :cond_18

    .line 135
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->strokeSegmentInternal(Landroid/graphics/Path;FF)V

    const/4 p2, 0x0

    .line 138
    :cond_18
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->strokeSegmentInternal(Landroid/graphics/Path;FF)V

    return-void
.end method
