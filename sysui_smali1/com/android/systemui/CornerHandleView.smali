.class public Lcom/android/systemui/CornerHandleView;
.super Landroid/view/View;
.source "CornerHandleView.java"


# instance fields
.field private mDarkColor:I

.field private mLightColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/CornerHandleView;->mPaint:Landroid/graphics/Paint;

    .line 55
    iget-object p1, p0, Lcom/android/systemui/CornerHandleView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object p1, p0, Lcom/android/systemui/CornerHandleView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object p1, p0, Lcom/android/systemui/CornerHandleView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 58
    iget-object p1, p0, Lcom/android/systemui/CornerHandleView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/android/systemui/CornerHandleView;->getStrokePx()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/systemui/R$attr;->darkIconTheme:I

    invoke-static {p1, p2}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result p1

    .line 61
    iget-object p2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$attr;->lightIconTheme:I

    invoke-static {p2, v0}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result p2

    .line 62
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 63
    new-instance p2, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 64
    sget p1, Lcom/android/systemui/R$attr;->singleToneColor:I

    invoke-static {v0, p1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/CornerHandleView;->mLightColor:I

    .line 65
    sget p1, Lcom/android/systemui/R$attr;->singleToneColor:I

    invoke-static {p2, p1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/CornerHandleView;->mDarkColor:I

    .line 67
    invoke-direct {p0}, Lcom/android/systemui/CornerHandleView;->updatePath()V

    return-void
.end method

.method private static convertDpToPixel(FLandroid/content/Context;)F
    .registers 3

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x43200000  # 160.0f

    div-float/2addr p1, v0

    mul-float/2addr p0, p1

    return p0
.end method

.method private static convertPixelToDp(FLandroid/content/Context;)F
    .registers 3

    const/high16 v0, 0x43200000  # 160.0f

    mul-float/2addr p0, v0

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method

.method private getAngle()F
    .registers 3

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/CornerHandleView;->getOuterRadiusPx()F

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    mul-float/2addr v0, v1

    const v1, 0x40490fdb  # (float)Math.PI

    mul-float/2addr v0, v1

    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 134
    invoke-static {v0, p0}, Lcom/android/systemui/CornerHandleView;->convertPixelToDp(FLandroid/content/Context;)F

    move-result p0

    const/high16 v0, 0x41f80000  # 31.0f

    div-float/2addr v0, p0

    const/high16 p0, 0x43b40000  # 360.0f

    mul-float/2addr v0, p0

    const/high16 p0, 0x42b40000  # 90.0f

    cmpl-float v1, v0, p0

    if-lez v1, :cond_1e

    goto :goto_1f

    :cond_1e
    move p0, v0

    :goto_1f
    return p0
.end method

.method private getInnerRadiusPx()F
    .registers 2

    .line 148
    invoke-direct {p0}, Lcom/android/systemui/CornerHandleView;->getOuterRadiusPx()F

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/CornerHandleView;->getMarginPx()F

    move-result p0

    sub-float/2addr v0, p0

    return v0
.end method

.method private getMarginPx()F
    .registers 2

    .line 144
    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/high16 v0, 0x41000000  # 8.0f

    invoke-static {v0, p0}, Lcom/android/systemui/CornerHandleView;->convertDpToPixel(FLandroid/content/Context;)F

    move-result p0

    return p0
.end method

.method private getOuterRadiusPx()F
    .registers 3

    .line 154
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-nez v0, :cond_18

    .line 157
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_18
    if-nez v0, :cond_25

    .line 161
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_25
    if-nez v0, :cond_30

    const/high16 v0, 0x41700000  # 15.0f

    .line 165
    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/systemui/CornerHandleView;->convertDpToPixel(FLandroid/content/Context;)F

    move-result p0

    float-to-int v0, p0

    :cond_30
    int-to-float p0, v0

    return p0
.end method

.method private getStrokePx()F
    .registers 3

    .line 172
    invoke-direct {p0}, Lcom/android/systemui/CornerHandleView;->getAngle()F

    move-result v0

    const/high16 v1, 0x42b40000  # 90.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_d

    const/high16 v0, 0x40000000  # 2.0f

    goto :goto_10

    :cond_d
    const v0, 0x3ff9999a  # 1.95f

    .line 173
    :goto_10
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 172
    invoke-static {v0, p0}, Lcom/android/systemui/CornerHandleView;->convertDpToPixel(FLandroid/content/Context;)F

    move-result p0

    return p0
.end method

.method private updatePath()V
    .registers 12

    .line 71
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/CornerHandleView;->mPath:Landroid/graphics/Path;

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/CornerHandleView;->getMarginPx()F

    move-result v0

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/CornerHandleView;->getInnerRadiusPx()F

    move-result v1

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/CornerHandleView;->getStrokePx()F

    move-result v2

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/CornerHandleView;->getAngle()F

    move-result v4

    const/high16 v5, 0x42b40000  # 90.0f

    sub-float v6, v5, v4

    div-float/2addr v6, v3

    const/high16 v7, 0x43340000  # 180.0f

    add-float/2addr v6, v7

    .line 78
    new-instance v7, Landroid/graphics/RectF;

    add-float v8, v0, v2

    mul-float v9, v1, v3

    add-float v10, v0, v9

    sub-float/2addr v10, v2

    invoke-direct {v7, v8, v8, v10, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    cmpl-float v2, v4, v5

    if-ltz v2, :cond_6d

    const v2, 0x40490fdb  # (float)Math.PI

    mul-float/2addr v9, v2

    .line 84
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v9, v2}, Lcom/android/systemui/CornerHandleView;->convertPixelToDp(FLandroid/content/Context;)F

    move-result v2

    .line 86
    invoke-direct {p0}, Lcom/android/systemui/CornerHandleView;->getAngle()F

    move-result v5

    mul-float/2addr v2, v5

    const/high16 v5, 0x43b40000  # 360.0f

    div-float/2addr v2, v5

    const/high16 v5, 0x41f80000  # 31.0f

    sub-float/2addr v5, v2

    const/high16 v2, 0x41000000  # 8.0f

    sub-float/2addr v5, v2

    div-float/2addr v5, v3

    .line 89
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/android/systemui/CornerHandleView;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v2

    .line 92
    iget-object v3, p0, Lcom/android/systemui/CornerHandleView;->mPath:Landroid/graphics/Path;

    add-float/2addr v0, v1

    add-float/2addr v2, v0

    invoke-virtual {v3, v8, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 93
    iget-object v1, p0, Lcom/android/systemui/CornerHandleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v8, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 94
    iget-object v1, p0, Lcom/android/systemui/CornerHandleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v7, v6, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 95
    iget-object v1, p0, Lcom/android/systemui/CornerHandleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 96
    iget-object p0, p0, Lcom/android/systemui/CornerHandleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0, v2, v8}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_72

    .line 98
    :cond_6d
    iget-object p0, p0, Lcom/android/systemui/CornerHandleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0, v7, v6, v4}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    :goto_72
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 117
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 118
    iget-object v0, p0, Lcom/android/systemui/CornerHandleView;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/systemui/CornerHandleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public updateDarkness(F)V
    .registers 6

    .line 107
    iget-object v0, p0, Lcom/android/systemui/CornerHandleView;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/CornerHandleView;->mLightColor:I

    .line 108
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/CornerHandleView;->mDarkColor:I

    .line 109
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 107
    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_28

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_28
    return-void
.end method
