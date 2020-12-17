.class public Lcom/flyme/systemui/qs/ArrowView;
.super Landroid/view/View;
.source "ArrowView.java"


# instance fields
.field private mArrowPosition:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mStrokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 32
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    .line 28
    iput p1, p0, Lcom/flyme/systemui/qs/ArrowView;->mStrokeWidth:I

    .line 29
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/qs/ArrowView;->mPath:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    .line 28
    iput p1, p0, Lcom/flyme/systemui/qs/ArrowView;->mStrokeWidth:I

    .line 29
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/qs/ArrowView;->mPath:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    .line 88
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 90
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    move p1, v0

    .line 92
    :goto_c
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_2e

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/android/systemui/R$dimen;->notification_panel_side_padding_landscape:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 95
    invoke-virtual {p0, p1, v0, p1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->qs_detail_arrow_height_landscape:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_3d

    .line 100
    :cond_2e
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->qs_detail_arrow_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 104
    :goto_3d
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/utils/SystemUICommonUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getPanelWidth()I

    move-result p1

    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 13

    .line 51
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/flyme/systemui/qs/ArrowView;->mStrokeWidth:I

    sub-int/2addr v1, v2

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    int-to-double v4, v1

    const-wide/high16 v6, 0x404e000000000000L  # 60.0

    .line 57
    invoke-static {v6, v7}, Ljava/lang/Math;->tanh(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-float v4, v4

    .line 59
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/high16 v6, 0x1a000000

    .line 60
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v6, 0x1

    .line 62
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 63
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    .line 64
    iget v8, p0, Lcom/flyme/systemui/qs/ArrowView;->mArrowPosition:I

    int-to-float v8, v8

    sub-float/2addr v8, v4

    iget v9, p0, Lcom/flyme/systemui/qs/ArrowView;->mStrokeWidth:I

    int-to-float v10, v9

    add-float/2addr v8, v10

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 65
    iget v8, p0, Lcom/flyme/systemui/qs/ArrowView;->mArrowPosition:I

    int-to-float v8, v8

    iget v9, p0, Lcom/flyme/systemui/qs/ArrowView;->mStrokeWidth:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 66
    iget v8, p0, Lcom/flyme/systemui/qs/ArrowView;->mArrowPosition:I

    int-to-float v8, v8

    add-float/2addr v8, v4

    iget v9, p0, Lcom/flyme/systemui/qs/ArrowView;->mStrokeWidth:I

    int-to-float v10, v9

    sub-float/2addr v8, v10

    add-int/2addr v9, v1

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 67
    invoke-virtual {v7}, Landroid/graphics/Path;->close()V

    .line 68
    invoke-virtual {p1, v7, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 70
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/flyme/systemui/qs/ArrowView;->mPaint:Landroid/graphics/Paint;

    .line 71
    iget-object v5, p0, Lcom/flyme/systemui/qs/ArrowView;->mPaint:Landroid/graphics/Paint;

    const v7, 0x1affffff

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object v5, p0, Lcom/flyme/systemui/qs/ArrowView;->mPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    iget-object v5, p0, Lcom/flyme/systemui/qs/ArrowView;->mPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/flyme/systemui/qs/ArrowView;->mStrokeWidth:I

    int-to-float v7, v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 74
    iget-object v5, p0, Lcom/flyme/systemui/qs/ArrowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    iget-object v5, p0, Lcom/flyme/systemui/qs/ArrowView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 77
    iget-object v5, p0, Lcom/flyme/systemui/qs/ArrowView;->mPath:Landroid/graphics/Path;

    int-to-float v2, v2

    int-to-float v1, v1

    invoke-virtual {v5, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 78
    iget-object v2, p0, Lcom/flyme/systemui/qs/ArrowView;->mPath:Landroid/graphics/Path;

    iget v5, p0, Lcom/flyme/systemui/qs/ArrowView;->mArrowPosition:I

    int-to-float v5, v5

    sub-float/2addr v5, v4

    invoke-virtual {v2, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 79
    iget-object v2, p0, Lcom/flyme/systemui/qs/ArrowView;->mPath:Landroid/graphics/Path;

    iget v5, p0, Lcom/flyme/systemui/qs/ArrowView;->mArrowPosition:I

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 80
    iget-object v2, p0, Lcom/flyme/systemui/qs/ArrowView;->mPath:Landroid/graphics/Path;

    iget v5, p0, Lcom/flyme/systemui/qs/ArrowView;->mArrowPosition:I

    int-to-float v5, v5

    add-float/2addr v5, v4

    invoke-virtual {v2, v5, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 81
    iget-object v2, p0, Lcom/flyme/systemui/qs/ArrowView;->mPath:Landroid/graphics/Path;

    sub-int/2addr v0, v3

    int-to-float v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 82
    iget-object v0, p0, Lcom/flyme/systemui/qs/ArrowView;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/flyme/systemui/qs/ArrowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setArrowPosition(I)V
    .registers 2

    .line 45
    iput p1, p0, Lcom/flyme/systemui/qs/ArrowView;->mArrowPosition:I

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
