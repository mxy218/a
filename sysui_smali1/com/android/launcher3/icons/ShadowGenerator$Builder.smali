.class public Lcom/android/launcher3/icons/ShadowGenerator$Builder;
.super Ljava/lang/Object;
.source "ShadowGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/icons/ShadowGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public ambientShadowAlpha:I

.field public final bounds:Landroid/graphics/RectF;

.field public final color:I

.field public keyShadowAlpha:I

.field public keyShadowDistance:F

.field public radius:F

.field public shadowBlur:F


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    const/16 v0, 0x1e

    .line 106
    iput v0, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->ambientShadowAlpha:I

    const/16 v0, 0x3d

    .line 111
    iput v0, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->keyShadowAlpha:I

    .line 115
    iput p1, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->color:I

    return-void
.end method


# virtual methods
.method public createPill(II)Landroid/graphics/Bitmap;
    .registers 5

    int-to-float v0, p2

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    .line 125
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->createPill(IIF)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public createPill(IIF)Landroid/graphics/Bitmap;
    .registers 8

    .line 129
    iput p3, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->radius:F

    int-to-float p1, p1

    const/high16 p3, 0x40000000  # 2.0f

    div-float v0, p1, p3

    .line 131
    iget v1, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->shadowBlur:F

    add-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 132
    iget v2, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->radius:F

    iget v3, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->shadowBlur:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->keyShadowDistance:F

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 133
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 134
    iget-object v2, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    int-to-float p2, p2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 135
    iget-object p1, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    int-to-float v2, v1

    sub-float v0, v2, v0

    div-float/2addr p2, p3

    sub-float/2addr v2, p2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    mul-int/lit8 v1, v1, 0x2

    .line 138
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 139
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->drawShadow(Landroid/graphics/Canvas;)V

    return-object p1
.end method

.method public drawShadow(Landroid/graphics/Canvas;)V
    .registers 8

    .line 144
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 145
    iget v1, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    iget v1, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->shadowBlur:F

    iget v2, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->keyShadowDistance:F

    iget v3, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->keyShadowAlpha:I

    const/high16 v4, -0x1000000

    .line 149
    invoke-static {v4, v3}, Lcom/android/launcher3/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v3

    const/4 v5, 0x0

    .line 148
    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 150
    iget-object v1, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->radius:F

    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 153
    iget v1, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->shadowBlur:F

    iget v2, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->ambientShadowAlpha:I

    .line 154
    invoke-static {v4, v2}, Lcom/android/launcher3/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v2

    .line 153
    invoke-virtual {v0, v1, v5, v5, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 155
    iget-object v1, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->radius:F

    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 157
    iget v1, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->color:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/16 v2, 0xff

    if-ge v1, v2, :cond_65

    .line 159
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 160
    invoke-virtual {v0}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 161
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    iget-object v1, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->radius:F

    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    .line 164
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 165
    iget v1, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    iget-object v1, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    iget p0, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->radius:F

    invoke-virtual {p1, v1, p0, p0, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_65
    return-void
.end method

.method public setupBlurForSize(I)Lcom/android/launcher3/icons/ShadowGenerator$Builder;
    .registers 3

    int-to-float p1, p1

    const/high16 v0, 0x3f800000  # 1.0f

    mul-float/2addr p1, v0

    const/high16 v0, 0x41c00000  # 24.0f

    div-float v0, p1, v0

    .line 119
    iput v0, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->shadowBlur:F

    const/high16 v0, 0x41800000  # 16.0f

    div-float/2addr p1, v0

    .line 120
    iput p1, p0, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->keyShadowDistance:F

    return-object p0
.end method
