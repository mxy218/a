.class public Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;
.super Landroid/widget/TextView;
.source "GradientTextView.java"


# instance fields
.field private mColors:[I

.field private mLinearGradient:Landroid/graphics/LinearGradient;

.field private mPaint:Landroid/graphics/Paint;

.field private mTextBound:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;->mTextBound:Landroid/graphics/Rect;

    .line 25
    sget-object p1, Lcom/flyme/systemuitools/aod/Config;->DEFAULT_COLOR:[I

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;->mColors:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;->mTextBound:Landroid/graphics/Rect;

    .line 25
    sget-object p1, Lcom/flyme/systemuitools/aod/Config;->DEFAULT_COLOR:[I

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;->mColors:[I

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 33
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;->mTextBound:Landroid/graphics/Rect;

    .line 25
    sget-object p1, Lcom/flyme/systemuitools/aod/Config;->DEFAULT_COLOR:[I

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;->mColors:[I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15

    .line 47
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;->mPaint:Landroid/graphics/Paint;

    .line 49
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;->mTextBound:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 50
    new-instance v1, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    int-to-float v9, v2

    iget-object v10, p0, Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;->mColors:[I

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;->mLinearGradient:Landroid/graphics/LinearGradient;

    .line 52
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;->mLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 53
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;->mTextBound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;->mTextBound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setColors([I)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/view/gradient/GradientTextView;->mColors:[I

    return-void
.end method
