.class public Lcom/flyme/systemui/qs/FreeWifiDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FreeWifiDrawable.java"


# instance fields
.field private fontSize:I

.field private mContext:Landroid/content/Context;

.field private mIntrinsicHeight:I

.field private mIntrinsicWidth:I

.field private mRoundCorners:F

.field private mStrokeWidth:F

.field private mText:Ljava/lang/String;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 31
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const v0, 0x3faa3d71  # 1.33f

    .line 27
    iput v0, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->mRoundCorners:F

    const v0, 0x3f2b851f  # 0.67f

    .line 28
    iput v0, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->mStrokeWidth:F

    const/16 v0, 0x8

    .line 29
    iput v0, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->fontSize:I

    .line 32
    iput-object p1, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->mText:Ljava/lang/String;

    .line 34
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->paint:Landroid/graphics/Paint;

    .line 36
    iget-object p1, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->paint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->fontSize:I

    int-to-float v0, v0

    invoke-static {p2, v0}, Lcom/flyme/systemui/qs/FreeWifiDrawable;->dip2px(Landroid/content/Context;F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 37
    iget-object p1, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->paint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    iget-object p1, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->paint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 39
    iget-object p1, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->paint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const-string p1, "sans-serif-medium"

    .line 40
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 41
    iget-object p2, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 42
    iget-object p1, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    iget-object p1, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->paint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->mText:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result p1

    float-to-int p1, p1

    iget-object p2, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->mContext:Landroid/content/Context;

    const/high16 v0, 0x40c00000  # 6.0f

    invoke-static {p2, v0}, Lcom/flyme/systemui/qs/FreeWifiDrawable;->dip2px(Landroid/content/Context;F)I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->mIntrinsicWidth:I

    .line 45
    iget-object p1, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->mContext:Landroid/content/Context;

    const/high16 p2, 0x41400000  # 12.0f

    invoke-static {p1, p2}, Lcom/flyme/systemui/qs/FreeWifiDrawable;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->mIntrinsicHeight:I

    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .registers 2

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000  # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 51
    iget-object v0, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    iget-object v0, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->mStrokeWidth:F

    invoke-static {v1, v2}, Lcom/flyme/systemui/qs/FreeWifiDrawable;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 54
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->mRoundCorners:F

    invoke-static {v2, v3}, Lcom/flyme/systemui/qs/FreeWifiDrawable;->dip2px(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 55
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 56
    iget-object v0, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->mRoundCorners:F

    invoke-static {v0, v2}, Lcom/flyme/systemui/qs/FreeWifiDrawable;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->mRoundCorners:F

    invoke-static {v2, v3}, Lcom/flyme/systemui/qs/FreeWifiDrawable;->dip2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 59
    iget-object v0, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    iget-object v0, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 61
    iget-object v0, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 63
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v2, v1

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 65
    iget-object v0, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->mText:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v2

    iget-object p0, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .registers 1

    .line 89
    iget p0, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->mIntrinsicHeight:I

    return p0
.end method

.method public getIntrinsicWidth()I
    .registers 1

    .line 94
    iget p0, p0, Lcom/flyme/systemui/qs/FreeWifiDrawable;->mIntrinsicWidth:I

    return p0
.end method

.method public getOpacity()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method
