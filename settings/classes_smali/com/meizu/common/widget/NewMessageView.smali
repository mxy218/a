.class public Lcom/meizu/common/widget/NewMessageView;
.super Landroid/view/View;
.source "NewMessageView.java"


# instance fields
.field private bounds:Landroid/graphics/Rect;

.field private drawableHeight:I

.field private drawableWidth:I

.field private mBgPaint:Landroid/graphics/Paint;

.field private mBorderColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mBorderWidth:I

.field private mCurrentStage:I

.field private mHeight:I

.field private mHideNumRadius:I

.field private mIsHide:Z

.field private mNewMessageColor:I

.field private mShowBorder:Z

.field private mSpace:I

.field private mTextColor:I

.field private mTextContent:Ljava/lang/String;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextSize:F

.field private mWidth:I

.field private rectF:Landroid/graphics/RectF;

.field private viewMaxHeight:I

.field private viewMaxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 53
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/meizu/common/widget/NewMessageView;->mIsHide:Z

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/meizu/common/widget/NewMessageView;->mShowBorder:Z

    .line 49
    iput v0, p0, Lcom/meizu/common/widget/NewMessageView;->mCurrentStage:I

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/NewMessageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcom/meizu/common/widget/NewMessageView;->mIsHide:Z

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/meizu/common/widget/NewMessageView;->mShowBorder:Z

    .line 49
    iput v0, p0, Lcom/meizu/common/widget/NewMessageView;->mCurrentStage:I

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/NewMessageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 22
    iput-boolean p3, p0, Lcom/meizu/common/widget/NewMessageView;->mIsHide:Z

    const/4 p3, 0x0

    .line 27
    iput-boolean p3, p0, Lcom/meizu/common/widget/NewMessageView;->mShowBorder:Z

    .line 49
    iput p3, p0, Lcom/meizu/common/widget/NewMessageView;->mCurrentStage:I

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/NewMessageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getMeasure(IIII)I
    .registers 5

    const/high16 p0, -0x80000000

    if-eq p4, p0, :cond_10

    const/high16 p0, 0x40000000  # 2.0f

    if-eq p4, p0, :cond_9

    goto :goto_10

    :cond_9
    if-ge p1, p2, :cond_c

    goto :goto_10

    :cond_c
    if-le p1, p3, :cond_11

    move p1, p3

    goto :goto_11

    :cond_10
    :goto_10
    move p1, p2

    :cond_11
    :goto_11
    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_new_message_view_layout_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/NewMessageView;->viewMaxWidth:I

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_new_message_view_layout_max_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/NewMessageView;->viewMaxHeight:I

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/NewMessageView;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    invoke-direct {p0}, Lcom/meizu/common/widget/NewMessageView;->intPaint()V

    .line 72
    invoke-direct {p0}, Lcom/meizu/common/widget/NewMessageView;->initTextPaint()V

    .line 73
    invoke-direct {p0}, Lcom/meizu/common/widget/NewMessageView;->initBorder()V

    return-void
.end method

.method private initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 110
    sget-object v0, Lcom/meizu/common/R$styleable;->NewMessageView:[I

    invoke-virtual {p0, p1, p2, v0}, Lcom/meizu/common/widget/NewMessageView;->getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    .line 114
    :cond_9
    sget p2, Lcom/meizu/common/R$styleable;->NewMessageView_mcNewMessageTextColor:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/meizu/common/widget/NewMessageView;->mTextColor:I

    .line 115
    sget p2, Lcom/meizu/common/R$styleable;->NewMessageView_mcNewMessageTextSize:I

    const/high16 v1, 0x41200000  # 10.0f

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/meizu/common/widget/NewMessageView;->mTextSize:F

    .line 117
    sget p2, Lcom/meizu/common/R$styleable;->NewMessageView_mcNewMessageRadius:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_new_message_view_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/meizu/common/widget/NewMessageView;->mHideNumRadius:I

    .line 118
    sget p2, Lcom/meizu/common/R$styleable;->NewMessageView_mcNewMessageColor:I

    const/high16 v1, -0x10000

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/meizu/common/widget/NewMessageView;->mNewMessageColor:I

    .line 119
    sget p2, Lcom/meizu/common/R$styleable;->NewMessageView_mcNewMessageBorderColor:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderColor:I

    .line 120
    sget p2, Lcom/meizu/common/R$styleable;->NewMessageView_mcNewMessageBorderWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_new_message_view_border_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderWidth:I

    .line 121
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initBorder()V
    .registers 2

    .line 77
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->rectF:Landroid/graphics/RectF;

    return-void
.end method

.method private initTextPaint()V
    .registers 3

    .line 88
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mTextPaint:Landroid/text/TextPaint;

    .line 89
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 90
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const-string v0, "SFPRO-bold"

    const/4 v1, 0x0

    .line 93
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/meizu/common/widget/NewMessageView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->bounds:Landroid/graphics/Rect;

    return-void
.end method

.method private intPaint()V
    .registers 4

    .line 99
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mBgPaint:Landroid/graphics/Paint;

    .line 100
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mBgPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 101
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mBgPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/widget/NewMessageView;->mNewMessageColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mBgPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderPaint:Landroid/graphics/Paint;

    .line 104
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object p0, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private setRectF(FFFF)V
    .registers 5

    .line 81
    iget-object p0, p0, Lcom/meizu/common/widget/NewMessageView;->rectF:Landroid/graphics/RectF;

    iput p1, p0, Landroid/graphics/RectF;->left:F

    .line 82
    iput p2, p0, Landroid/graphics/RectF;->top:F

    .line 83
    iput p3, p0, Landroid/graphics/RectF;->right:F

    .line 84
    iput p4, p0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method


# virtual methods
.method public getBorderWidth()I
    .registers 1

    .line 389
    iget p0, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderWidth:I

    return p0
.end method

.method public getNewMessageGravity()I
    .registers 1

    .line 361
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 362
    iget p0, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return p0
.end method

.method public getNewMessageMargin()[I
    .registers 4

    .line 419
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 420
    iget v1, p0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget p0, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/4 v1, 0x3

    aput p0, v0, v1

    return-object v0
.end method

.method public getNewMessageNum()Ljava/lang/Integer;
    .registers 2

    .line 283
    iget-object p0, p0, Lcom/meizu/common/widget/NewMessageView;->mTextContent:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p0, :cond_a

    return-object v0

    .line 287
    :cond_a
    :try_start_a
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    return-object v0
.end method

.method public getState()I
    .registers 1

    .line 231
    iget p0, p0, Lcom/meizu/common/widget/NewMessageView;->mCurrentStage:I

    return p0
.end method

.method protected getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .registers 4

    const/4 p0, 0x0

    .line 125
    invoke-virtual {p1, p2, p3, p0, p0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method public getViewMaxHeight()I
    .registers 1

    .line 331
    iget p0, p0, Lcom/meizu/common/widget/NewMessageView;->viewMaxHeight:I

    return p0
.end method

.method public getViewMaxWidth()I
    .registers 1

    .line 322
    iget p0, p0, Lcom/meizu/common/widget/NewMessageView;->viewMaxWidth:I

    return p0
.end method

.method public isHide()Z
    .registers 1

    .line 249
    iget-boolean p0, p0, Lcom/meizu/common/widget/NewMessageView;->mIsHide:Z

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    .line 190
    iget-boolean v0, p0, Lcom/meizu/common/widget/NewMessageView;->mShowBorder:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_5d

    iget v0, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderWidth:I

    if-lez v0, :cond_5d

    .line 192
    iget-object v2, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderPaint:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 193
    iget v0, p0, Lcom/meizu/common/widget/NewMessageView;->mCurrentStage:I

    if-ne v0, v1, :cond_46

    .line 194
    iget v0, p0, Lcom/meizu/common/widget/NewMessageView;->mWidth:I

    iget v2, p0, Lcom/meizu/common/widget/NewMessageView;->drawableWidth:I

    sub-int v3, v0, v2

    iget v4, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderWidth:I

    sub-int/2addr v3, v4

    int-to-double v5, v3

    const-wide/high16 v7, 0x3fe0000000000000L  # 0.5

    mul-double/2addr v5, v7

    double-to-float v3, v5

    .line 195
    iget v5, p0, Lcom/meizu/common/widget/NewMessageView;->mHeight:I

    iget v6, p0, Lcom/meizu/common/widget/NewMessageView;->drawableHeight:I

    sub-int v9, v5, v6

    sub-int/2addr v9, v4

    int-to-double v9, v9

    mul-double/2addr v9, v7

    double-to-float v9, v9

    int-to-double v10, v0

    sub-int/2addr v0, v2

    sub-int/2addr v0, v4

    int-to-double v12, v0

    mul-double/2addr v12, v7

    sub-double/2addr v10, v12

    double-to-float v0, v10

    add-int/2addr v5, v6

    add-int/2addr v5, v4

    int-to-double v10, v5

    mul-double/2addr v10, v7

    double-to-float v2, v10

    .line 198
    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v4

    int-to-float v4, v6

    .line 199
    invoke-direct {p0, v3, v9, v0, v2}, Lcom/meizu/common/widget/NewMessageView;->setRectF(FFFF)V

    .line 200
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->rectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_5d

    .line 202
    :cond_46
    iget v0, p0, Lcom/meizu/common/widget/NewMessageView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/meizu/common/widget/NewMessageView;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/NewMessageView;->mHideNumRadius:I

    iget v4, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 205
    :cond_5d
    :goto_5d
    iget v0, p0, Lcom/meizu/common/widget/NewMessageView;->mCurrentStage:I

    if-ne v0, v1, :cond_99

    .line 206
    iget v0, p0, Lcom/meizu/common/widget/NewMessageView;->mWidth:I

    iget v2, p0, Lcom/meizu/common/widget/NewMessageView;->drawableWidth:I

    sub-int v3, v0, v2

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/meizu/common/widget/NewMessageView;->mHeight:I

    div-int/lit8 v5, v4, 0x2

    iget v6, p0, Lcom/meizu/common/widget/NewMessageView;->drawableHeight:I

    div-int/lit8 v7, v6, 0x2

    sub-int/2addr v5, v7

    int-to-float v5, v5

    sub-int v2, v0, v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    int-to-float v2, v4

    invoke-direct {p0, v3, v5, v0, v2}, Lcom/meizu/common/widget/NewMessageView;->setRectF(FFFF)V

    .line 207
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 208
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->rectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/meizu/common/widget/NewMessageView;->drawableHeight:I

    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/meizu/common/widget/NewMessageView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 209
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_ab

    .line 211
    :cond_99
    iget v0, p0, Lcom/meizu/common/widget/NewMessageView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/meizu/common/widget/NewMessageView;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/NewMessageView;->mHideNumRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/meizu/common/widget/NewMessageView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 213
    :goto_ab
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mTextContent:Ljava/lang/String;

    if-eqz v0, :cond_f5

    .line 214
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 216
    iget-boolean v0, p0, Lcom/meizu/common/widget/NewMessageView;->mShowBorder:Z

    if-eqz v0, :cond_d6

    .line 217
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mTextContent:Ljava/lang/String;

    iget v2, p0, Lcom/meizu/common/widget/NewMessageView;->mWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/NewMessageView;->mHeight:I

    iget v4, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderWidth:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/meizu/common/widget/NewMessageView;->drawableHeight:I

    iget-object v5, p0, Lcom/meizu/common/widget/NewMessageView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    int-to-float v1, v3

    iget-object p0, p0, Lcom/meizu/common/widget/NewMessageView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_f2

    .line 219
    :cond_d6
    iget-object v0, p0, Lcom/meizu/common/widget/NewMessageView;->mTextContent:Ljava/lang/String;

    iget v2, p0, Lcom/meizu/common/widget/NewMessageView;->mWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/NewMessageView;->mHeight:I

    iget v4, p0, Lcom/meizu/common/widget/NewMessageView;->drawableHeight:I

    iget-object v5, p0, Lcom/meizu/common/widget/NewMessageView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    int-to-float v1, v3

    iget-object p0, p0, Lcom/meizu/common/widget/NewMessageView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 221
    :goto_f2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_f5
    return-void
.end method

.method protected onMeasure(II)V
    .registers 10

    .line 130
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 131
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 132
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 133
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 136
    iget v2, p0, Lcom/meizu/common/widget/NewMessageView;->mCurrentStage:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8b

    iget-object v2, p0, Lcom/meizu/common/widget/NewMessageView;->mTextContent:Ljava/lang/String;

    if-eqz v2, :cond_8b

    .line 137
    iget-object v2, p0, Lcom/meizu/common/widget/NewMessageView;->mTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/meizu/common/widget/NewMessageView;->mTextSize:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/meizu/common/util/ResourceUtils;->sp2px(FLandroid/content/Context;)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 138
    iget-object v2, p0, Lcom/meizu/common/widget/NewMessageView;->mTextPaint:Landroid/text/TextPaint;

    iget v3, p0, Lcom/meizu/common/widget/NewMessageView;->mTextColor:I

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 139
    iget-object v2, p0, Lcom/meizu/common/widget/NewMessageView;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/meizu/common/widget/NewMessageView;->mTextContent:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/meizu/common/widget/NewMessageView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 140
    iget v2, p0, Lcom/meizu/common/widget/NewMessageView;->mSpace:I

    if-nez v2, :cond_50

    const/high16 v2, 0x40000000  # 2.0f

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/meizu/common/R$dimen;->mc_new_message_view_space_large:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    mul-float/2addr v3, v2

    float-to-int v2, v3

    goto :goto_52

    :cond_50
    mul-int/lit8 v2, v2, 0x2

    .line 141
    :goto_52
    iget-object v3, p0, Lcom/meizu/common/widget/NewMessageView;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v3, v2

    iput v3, p0, Lcom/meizu/common/widget/NewMessageView;->drawableWidth:I

    const-wide/high16 v2, 0x3ff8000000000000L  # 1.5

    .line 142
    iget v4, p0, Lcom/meizu/common/widget/NewMessageView;->mTextSize:F

    float-to-double v4, v4

    mul-double/2addr v4, v2

    double-to-float v2, v4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/common/util/ResourceUtils;->dp2px(FLandroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/meizu/common/widget/NewMessageView;->drawableHeight:I

    .line 143
    iget v2, p0, Lcom/meizu/common/widget/NewMessageView;->drawableWidth:I

    iget v3, p0, Lcom/meizu/common/widget/NewMessageView;->drawableHeight:I

    if-ge v2, v3, :cond_75

    .line 144
    iput v3, p0, Lcom/meizu/common/widget/NewMessageView;->drawableWidth:I

    .line 146
    :cond_75
    iget-boolean v2, p0, Lcom/meizu/common/widget/NewMessageView;->mShowBorder:Z

    if-eqz v2, :cond_86

    .line 147
    iget v2, p0, Lcom/meizu/common/widget/NewMessageView;->drawableWidth:I

    iget v3, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderWidth:I

    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v2, v4

    .line 148
    iget v4, p0, Lcom/meizu/common/widget/NewMessageView;->drawableHeight:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v4, v3

    goto :goto_9a

    .line 150
    :cond_86
    iget v2, p0, Lcom/meizu/common/widget/NewMessageView;->drawableWidth:I

    .line 151
    iget v4, p0, Lcom/meizu/common/widget/NewMessageView;->drawableHeight:I

    goto :goto_9a

    .line 154
    :cond_8b
    iget-boolean v2, p0, Lcom/meizu/common/widget/NewMessageView;->mShowBorder:Z

    if-eqz v2, :cond_95

    .line 155
    iget v2, p0, Lcom/meizu/common/widget/NewMessageView;->mHideNumRadius:I

    iget v3, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderWidth:I

    add-int/2addr v2, v3

    goto :goto_97

    .line 157
    :cond_95
    iget v2, p0, Lcom/meizu/common/widget/NewMessageView;->mHideNumRadius:I

    :goto_97
    mul-int/lit8 v2, v2, 0x2

    move v4, v2

    .line 160
    :goto_9a
    iget v3, p0, Lcom/meizu/common/widget/NewMessageView;->viewMaxWidth:I

    invoke-direct {p0, p1, v2, v3, v0}, Lcom/meizu/common/widget/NewMessageView;->getMeasure(IIII)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/NewMessageView;->mWidth:I

    .line 161
    iget p1, p0, Lcom/meizu/common/widget/NewMessageView;->viewMaxHeight:I

    invoke-direct {p0, p2, v4, p1, v1}, Lcom/meizu/common/widget/NewMessageView;->getMeasure(IIII)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/NewMessageView;->mHeight:I

    .line 162
    iget p1, p0, Lcom/meizu/common/widget/NewMessageView;->mWidth:I

    iget p2, p0, Lcom/meizu/common/widget/NewMessageView;->mHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 2

    .line 341
    iget-object p0, p0, Lcom/meizu/common/widget/NewMessageView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setBorderColor(I)V
    .registers 2

    .line 398
    iget-object p0, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setBorderWidth(I)V
    .registers 2

    .line 380
    iput p1, p0, Lcom/meizu/common/widget/NewMessageView;->mBorderWidth:I

    return-void
.end method

.method public setHide(Z)V
    .registers 3

    .line 240
    iput-boolean p1, p0, Lcom/meizu/common/widget/NewMessageView;->mIsHide:Z

    .line 241
    iget p1, p0, Lcom/meizu/common/widget/NewMessageView;->mCurrentStage:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    .line 242
    iget-object p1, p0, Lcom/meizu/common/widget/NewMessageView;->mTextContent:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/NewMessageView;->setText(Ljava/lang/String;)V

    goto :goto_11

    :cond_d
    const/4 p1, 0x0

    .line 244
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/NewMessageView;->setText(Ljava/lang/String;)V

    :goto_11
    return-void
.end method

.method public setNewMessageGravity(I)V
    .registers 3

    .line 350
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 351
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 352
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setNewMessageNum(I)V
    .registers 3

    const/4 v0, 0x1

    .line 267
    iput v0, p0, Lcom/meizu/common/widget/NewMessageView;->mCurrentStage:I

    const/16 v0, 0x3e7

    if-lt p1, v0, :cond_9

    move p1, v0

    goto :goto_c

    :cond_9
    if-gtz p1, :cond_c

    const/4 p1, 0x0

    .line 273
    :cond_c
    :goto_c
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/NewMessageView;->setText(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setNewMessageSpace(I)V
    .registers 2

    .line 299
    iput p1, p0, Lcom/meizu/common/widget/NewMessageView;->mSpace:I

    return-void
.end method

.method public setShowBorder(Z)V
    .registers 2

    .line 371
    iput-boolean p1, p0, Lcom/meizu/common/widget/NewMessageView;->mShowBorder:Z

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3

    .line 253
    invoke-virtual {p0}, Lcom/meizu/common/widget/NewMessageView;->isHide()Z

    move-result v0

    if-eqz v0, :cond_16

    if-eqz p1, :cond_10

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_10
    const/16 v0, 0x8

    .line 254
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1a

    :cond_16
    const/4 v0, 0x0

    .line 256
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 258
    :goto_1a
    iput-object p1, p0, Lcom/meizu/common/widget/NewMessageView;->mTextContent:Ljava/lang/String;

    return-void
.end method

.method public setTextSize(F)V
    .registers 2

    .line 303
    iput p1, p0, Lcom/meizu/common/widget/NewMessageView;->mTextSize:F

    return-void
.end method
