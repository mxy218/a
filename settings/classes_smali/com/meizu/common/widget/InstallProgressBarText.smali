.class public Lcom/meizu/common/widget/InstallProgressBarText;
.super Landroid/view/View;
.source "InstallProgressBarText.java"


# instance fields
.field private mObjectAnimator:Landroid/animation/ObjectAnimator;

.field private mPaint:Landroid/graphics/Paint;

.field private mProgress:F

.field private mRealWidth:I

.field private mText:Ljava/lang/String;

.field private mTextBound:Landroid/graphics/Rect;

.field private mTextCenterX:I

.field private mTextChangeColor:I

.field private mTextOriginColor:I

.field private mTextSize:I

.field private mTextStartX:I

.field private mTextWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 36
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextStartX:I

    .line 21
    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextCenterX:I

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->online_theme_download_install_font_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextSize:I

    const/high16 v0, -0x1000000

    .line 25
    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextOriginColor:I

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextChangeColor:I

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextBound:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mText:Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/InstallProgressBarText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextStartX:I

    .line 21
    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextCenterX:I

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->online_theme_download_install_font_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextSize:I

    const/high16 v0, -0x1000000

    .line 25
    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextOriginColor:I

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextChangeColor:I

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextBound:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mText:Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/InstallProgressBarText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 20
    iput p3, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextStartX:I

    .line 21
    iput p3, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextCenterX:I

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/meizu/common/R$dimen;->online_theme_download_install_font_size:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextSize:I

    const/high16 p3, -0x1000000

    .line 25
    iput p3, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextOriginColor:I

    const/4 p3, -0x1

    .line 26
    iput p3, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextChangeColor:I

    .line 28
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextBound:Landroid/graphics/Rect;

    const/4 p3, 0x0

    .line 29
    iput-object p3, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mText:Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/InstallProgressBarText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private drawChangeLeft(Landroid/graphics/Canvas;)V
    .registers 7

    .line 148
    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextChangeColor:I

    iget v1, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextStartX:I

    int-to-float v2, v1

    iget v3, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mProgress:F

    iget v4, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mRealWidth:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/meizu/common/widget/InstallProgressBarText;->drawText(Landroid/graphics/Canvas;III)V

    return-void
.end method

.method private drawOriginLeft(Landroid/graphics/Canvas;)V
    .registers 8

    .line 152
    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextOriginColor:I

    iget v1, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextStartX:I

    int-to-float v2, v1

    iget v3, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mProgress:F

    iget v4, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mRealWidth:I

    int-to-float v5, v4

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v4

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/meizu/common/widget/InstallProgressBarText;->drawText(Landroid/graphics/Canvas;III)V

    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;III)V
    .registers 6

    .line 138
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 139
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 140
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0, p4, p2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 141
    iget-object p2, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    .line 142
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    iget p4, p2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr p3, p4

    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr p3, p2

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p3, p2

    .line 143
    iget-object p2, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mText:Ljava/lang/String;

    iget p4, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextCenterX:I

    int-to-float p4, p4

    int-to-float p3, p3

    iget-object p0, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p4, p3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 144
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private getProgressAnimtot(F)Landroid/animation/ObjectAnimator;
    .registers 10

    .line 162
    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mProgress:F

    cmpg-float v1, p1, v0

    const-wide/16 v2, 0x1f4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v7, "Progress"

    if-gez v1, :cond_1d

    new-array v0, v6, [F

    const/4 v1, 0x0

    aput v1, v0, v5

    aput p1, v0, v4

    .line 163
    invoke-static {p0, v7, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 164
    invoke-virtual {p0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    goto :goto_2b

    :cond_1d
    new-array v1, v6, [F

    aput v0, v1, v5

    aput p1, v1, v4

    .line 166
    invoke-static {p0, v7, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 167
    invoke-virtual {p0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    :goto_2b
    return-object p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mPaint:Landroid/graphics/Paint;

    const-string/jumbo v0, "sans-serif-medium"

    const/4 v1, 0x0

    .line 52
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/InstallProgressBarText;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 58
    sget-object v0, Lcom/meizu/common/R$styleable;->InstallProgressBarText:[I

    invoke-virtual {p0, p1, p2, v0}, Lcom/meizu/common/widget/InstallProgressBarText;->getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    .line 62
    :cond_9
    sget p2, Lcom/meizu/common/R$styleable;->InstallProgressBarText_mcText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mText:Ljava/lang/String;

    .line 63
    sget p2, Lcom/meizu/common/R$styleable;->InstallProgressBarText_mcProgressTextSize:I

    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextSize:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextSize:I

    .line 65
    sget p2, Lcom/meizu/common/R$styleable;->InstallProgressBarText_mcTextOriginColor:I

    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextOriginColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextOriginColor:I

    .line 68
    sget p2, Lcom/meizu/common/R$styleable;->InstallProgressBarText_mcTextChangeColor:I

    iget v0, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextChangeColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextChangeColor:I

    .line 71
    sget p2, Lcom/meizu/common/R$styleable;->InstallProgressBarText_mcTextProgress:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mProgress:F

    .line 72
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private measureHeight(I)I
    .registers 5

    .line 85
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 86
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_16

    if-eqz v0, :cond_16

    const/high16 v2, 0x40000000  # 2.0f

    if-eq v0, v2, :cond_14

    const/4 v2, 0x0

    goto :goto_1e

    :cond_14
    move v2, p1

    goto :goto_1e

    .line 94
    :cond_16
    iget-object v2, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextBound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    :goto_1e
    if-ne v0, v1, :cond_24

    .line 97
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 98
    :cond_24
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    add-int/2addr v2, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    add-int/2addr v2, p0

    return v2
.end method

.method private measureText()V
    .registers 5

    .line 80
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextWidth:I

    .line 81
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object p0, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextBound:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, p0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    return-void
.end method

.method private measureWidth(I)I
    .registers 5

    .line 102
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 103
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_16

    if-eqz v0, :cond_16

    const/high16 v2, 0x40000000  # 2.0f

    if-eq v0, v2, :cond_14

    const/4 v2, 0x0

    goto :goto_18

    :cond_14
    move v2, p1

    goto :goto_18

    .line 111
    :cond_16
    iget v2, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextWidth:I

    :goto_18
    if-ne v0, v1, :cond_1e

    .line 114
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 115
    :cond_1e
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    add-int/2addr v2, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    add-int/2addr v2, p0

    return v2
.end method


# virtual methods
.method public getProgress()F
    .registers 1

    .line 173
    iget p0, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mProgress:F

    return p0
.end method

.method public getText()Ljava/lang/String;
    .registers 1

    .line 193
    iget-object p0, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public getTextChangeColor()I
    .registers 1

    .line 223
    iget p0, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextChangeColor:I

    return p0
.end method

.method public getTextOriginColor()I
    .registers 1

    .line 214
    iget p0, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextOriginColor:I

    return p0
.end method

.method public getTextSize()I
    .registers 1

    .line 204
    iget p0, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextSize:I

    return p0
.end method

.method protected getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .registers 4

    const/4 p0, 0x0

    .line 76
    invoke-virtual {p1, p2, p3, p0, p0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 132
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 133
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/InstallProgressBarText;->drawChangeLeft(Landroid/graphics/Canvas;)V

    .line 134
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/InstallProgressBarText;->drawOriginLeft(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 120
    invoke-direct {p0}, Lcom/meizu/common/widget/InstallProgressBarText;->measureText()V

    .line 121
    iget-object v0, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 122
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/InstallProgressBarText;->measureWidth(I)I

    move-result p1

    .line 123
    invoke-direct {p0, p2}, Lcom/meizu/common/widget/InstallProgressBarText;->measureHeight(I)I

    move-result p2

    .line 124
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mRealWidth:I

    .line 126
    iget p1, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mRealWidth:I

    div-int/lit8 p1, p1, 0x2

    iget p2, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextWidth:I

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextCenterX:I

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public declared-synchronized setAnimProgress(F)V
    .registers 2

    monitor-enter p0

    .line 182
    :try_start_1
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/InstallProgressBarText;->getProgressAnimtot(F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    .line 183
    iget-object p1, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mObjectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 184
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProgress(F)V
    .registers 2

    .line 177
    iput p1, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mProgress:F

    .line 178
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mText:Ljava/lang/String;

    .line 188
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 189
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextChangeColor(I)V
    .registers 2

    .line 227
    iput p1, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextChangeColor:I

    .line 228
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextOriginColor(I)V
    .registers 2

    .line 218
    iput p1, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextOriginColor:I

    .line 219
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setTextSize(I)V
    .registers 2

    .line 208
    iput p1, p0, Lcom/meizu/common/widget/InstallProgressBarText;->mTextSize:I

    .line 209
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 210
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
