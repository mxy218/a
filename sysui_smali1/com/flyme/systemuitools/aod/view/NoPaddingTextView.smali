.class public Lcom/flyme/systemuitools/aod/view/NoPaddingTextView;
.super Landroid/widget/TextView;
.source "NoPaddingTextView.java"


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/NoPaddingTextView;->mPaint:Landroid/graphics/Paint;

    .line 14
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/NoPaddingTextView;->mBounds:Landroid/graphics/Rect;

    return-void
.end method

.method private calculateTextParams()Ljava/lang/String;
    .registers 6

    .line 48
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 50
    iget-object v2, p0, Lcom/flyme/systemuitools/aod/view/NoPaddingTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string/jumbo v2, "system/fonts/Roboto-Light.ttf"

    .line 51
    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 52
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/NoPaddingTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 53
    iget-object v2, p0, Lcom/flyme/systemuitools/aod/view/NoPaddingTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/NoPaddingTextView;->mBounds:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v1, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    if-nez v1, :cond_31

    .line 55
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/NoPaddingTextView;->mBounds:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/graphics/Rect;->right:I

    :cond_31
    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 30
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/view/NoPaddingTextView;->calculateTextParams()Ljava/lang/String;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/NoPaddingTextView;->mBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 33
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    neg-int v4, v2

    .line 34
    iget v5, v1, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 35
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/NoPaddingTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 36
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/NoPaddingTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    neg-int v1, v2

    int-to-float v1, v1

    .line 37
    iget-object v2, p0, Lcom/flyme/systemuitools/aod/view/NoPaddingTextView;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/NoPaddingTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 42
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 43
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/view/NoPaddingTextView;->calculateTextParams()Ljava/lang/String;

    .line 44
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/view/NoPaddingTextView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iget-object p2, p0, Lcom/flyme/systemuitools/aod/view/NoPaddingTextView;->mBounds:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    neg-int p2, p2

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    return-void
.end method
