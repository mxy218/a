.class public Lcom/meizu/settings/widget/GradientTextView;
.super Landroid/widget/TextView;
.source "GradientTextView.java"


# instance fields
.field private isVertrial:Z

.field private mColorList:[I

.field private mLinearGradient:Landroid/graphics/LinearGradient;

.field private mPaint:Landroid/graphics/Paint;

.field private mTextBound:Landroid/graphics/Rect;

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/widget/GradientTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/meizu/settings/widget/GradientTextView;->mViewWidth:I

    .line 18
    iput p1, p0, Lcom/meizu/settings/widget/GradientTextView;->mViewHeight:I

    .line 19
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/widget/GradientTextView;->mTextBound:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/meizu/settings/widget/GradientTextView;->isVertrial:Z

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 30
    fill-array-data p1, :array_1c

    iput-object p1, p0, Lcom/meizu/settings/widget/GradientTextView;->mColorList:[I

    return-void

    nop

    :array_1c
    .array-data 4
        -0xdf3901
        -0xd96403
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 13

    .line 37
    iget-boolean v0, p0, Lcom/meizu/settings/widget/GradientTextView;->isVertrial:Z

    if-eqz v0, :cond_b

    .line 38
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/widget/GradientTextView;->mViewHeight:I

    goto :goto_11

    .line 40
    :cond_b
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/widget/GradientTextView;->mViewWidth:I

    .line 43
    :goto_11
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/widget/GradientTextView;->mPaint:Landroid/graphics/Paint;

    .line 44
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/meizu/settings/widget/GradientTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 46
    new-instance v10, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v2, p0, Lcom/meizu/settings/widget/GradientTextView;->mViewWidth:I

    int-to-float v5, v2

    iget v2, p0, Lcom/meizu/settings/widget/GradientTextView;->mViewHeight:I

    int-to-float v6, v2

    iget-object v7, p0, Lcom/meizu/settings/widget/GradientTextView;->mColorList:[I

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v10, p0, Lcom/meizu/settings/widget/GradientTextView;->mLinearGradient:Landroid/graphics/LinearGradient;

    .line 48
    iget-object v2, p0, Lcom/meizu/settings/widget/GradientTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/meizu/settings/widget/GradientTextView;->mLinearGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 49
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 50
    iget-object v2, p0, Lcom/meizu/settings/widget/GradientTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    iget-object v3, p0, Lcom/meizu/settings/widget/GradientTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    neg-float v1, v1

    div-float/2addr v1, v3

    .line 51
    iget-object p0, p0, Lcom/meizu/settings/widget/GradientTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setColorList([I)V
    .registers 4

    if-eqz p1, :cond_f

    .line 59
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_7

    goto :goto_f

    .line 60
    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "mClorList\'s length must be > 2"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 62
    :cond_f
    :goto_f
    iput-object p1, p0, Lcom/meizu/settings/widget/GradientTextView;->mColorList:[I

    return-void
.end method

.method public setVertrial(Z)V
    .registers 2

    .line 55
    iput-boolean p1, p0, Lcom/meizu/settings/widget/GradientTextView;->isVertrial:Z

    return-void
.end method
