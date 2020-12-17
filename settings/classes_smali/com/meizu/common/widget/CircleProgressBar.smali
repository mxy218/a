.class public Lcom/meizu/common/widget/CircleProgressBar;
.super Landroid/view/View;
.source "CircleProgressBar.java"


# instance fields
.field private mBarColor:I

.field private mBarPaint:Landroid/graphics/Paint;

.field private mBarPostition:I

.field private mBarWidth:F

.field private mCircleBound:Landroid/graphics/RectF;

.field private mIsShowProgress:Z

.field private mMax:I

.field private mPercentage:I

.field private mProgress:I

.field private mRimColor:I

.field private mRimPaint:Landroid/graphics/Paint;

.field private mShouldUpdateBound:Z

.field private mText:Ljava/lang/String;

.field private mTextColor:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 44
    iput p1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarPostition:I

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarPaint:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mRimPaint:Landroid/graphics/Paint;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mCircleBound:Landroid/graphics/RectF;

    .line 52
    iput p1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mTextSize:I

    const-string v0, "0%"

    .line 54
    iput-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mText:Ljava/lang/String;

    .line 55
    iput p1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mPercentage:I

    .line 56
    iput-boolean p1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mShouldUpdateBound:Z

    const/4 p1, 0x1

    .line 57
    iput-boolean p1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mIsShowProgress:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/CircleProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarPostition:I

    .line 48
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarPaint:Landroid/graphics/Paint;

    .line 49
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mRimPaint:Landroid/graphics/Paint;

    .line 50
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    .line 51
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mCircleBound:Landroid/graphics/RectF;

    .line 52
    iput v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mTextSize:I

    const-string v1, "0%"

    .line 54
    iput-object v1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mText:Ljava/lang/String;

    .line 55
    iput v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mPercentage:I

    .line 56
    iput-boolean v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mShouldUpdateBound:Z

    const/4 v1, 0x1

    .line 57
    iput-boolean v1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mIsShowProgress:Z

    .line 85
    sget-object v1, Lcom/meizu/common/R$styleable;->CircleProgressBar:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 87
    sget p2, Lcom/meizu/common/R$styleable;->CircleProgressBar_mcCircleBarColor:I

    const p3, -0xe67213

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarColor:I

    .line 88
    sget p2, Lcom/meizu/common/R$styleable;->CircleProgressBar_mcCircleBarRimColor:I

    const/high16 p3, 0xc000000

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/meizu/common/widget/CircleProgressBar;->mRimColor:I

    .line 89
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 90
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 91
    iget p3, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40400000  # 3.0f

    mul-float/2addr p3, v1

    float-to-int p3, p3

    .line 92
    sget v1, Lcom/meizu/common/R$styleable;->CircleProgressBar_mcCircleBarWidth:I

    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarWidth:F

    .line 94
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x41600000  # 14.0f

    mul-float/2addr p2, p3

    float-to-int p2, p2

    .line 95
    sget p3, Lcom/meizu/common/R$styleable;->CircleProgressBar_mcCenterTextSize:I

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/meizu/common/widget/CircleProgressBar;->mTextSize:I

    .line 97
    sget p2, Lcom/meizu/common/R$styleable;->CircleProgressBar_mcCenterTextColor:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/meizu/common/widget/CircleProgressBar;->mTextColor:I

    .line 99
    sget p2, Lcom/meizu/common/R$styleable;->CircleProgressBar_mcCircleIsShowProgress:I

    iget-boolean p3, p0, Lcom/meizu/common/widget/CircleProgressBar;->mIsShowProgress:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/meizu/common/widget/CircleProgressBar;->mIsShowProgress:Z

    .line 100
    sget p2, Lcom/meizu/common/R$styleable;->CircleProgressBar_mcCircleBarMax:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/meizu/common/widget/CircleProgressBar;->setMax(I)V

    .line 101
    sget p2, Lcom/meizu/common/R$styleable;->CircleProgressBar_mcCircleBarProgress:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/meizu/common/widget/CircleProgressBar;->setProgress(I)V

    .line 102
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    invoke-direct {p0}, Lcom/meizu/common/widget/CircleProgressBar;->init()V

    return-void
.end method

.method private getPosByProgress(IZ)I
    .registers 3

    if-eqz p2, :cond_5

    const/16 p2, 0xb4

    goto :goto_7

    :cond_5
    const/16 p2, 0x64

    .line 176
    :goto_7
    iget p0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mMax:I

    if-gtz p0, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    if-lt p1, p0, :cond_10

    return p2

    :cond_10
    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    int-to-float p0, p2

    mul-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private init()V
    .registers 3

    .line 107
    invoke-direct {p0}, Lcom/meizu/common/widget/CircleProgressBar;->setBound()V

    .line 108
    invoke-direct {p0}, Lcom/meizu/common/widget/CircleProgressBar;->setPaint()V

    .line 109
    iget v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mProgress:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/CircleProgressBar;->getPosByProgress(IZ)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarPostition:I

    .line 110
    iget v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mProgress:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/meizu/common/widget/CircleProgressBar;->getPosByProgress(IZ)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mPercentage:I

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mPercentage:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mText:Ljava/lang/String;

    return-void
.end method

.method private setBound()V
    .registers 4

    .line 139
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mCircleBound:Landroid/graphics/RectF;

    if-nez v0, :cond_b

    .line 140
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mCircleBound:Landroid/graphics/RectF;

    .line 142
    :cond_b
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mCircleBound:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarWidth:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 143
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mCircleBound:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarWidth:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 144
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mCircleBound:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarWidth:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 145
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mCircleBound:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget p0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarWidth:F

    sub-float/2addr v1, p0

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private setPaint()V
    .registers 4

    .line 149
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_b

    .line 150
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarPaint:Landroid/graphics/Paint;

    .line 152
    :cond_b
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 154
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 155
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 156
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 158
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mRimPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_38

    .line 159
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mRimPaint:Landroid/graphics/Paint;

    .line 161
    :cond_38
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mRimPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/widget/CircleProgressBar;->mRimColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mRimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 163
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mRimPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 164
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mRimPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 166
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_5d

    .line 167
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    .line 169
    :cond_5d
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/widget/CircleProgressBar;->mTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 170
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/meizu/common/widget/CircleProgressBar;->mTextColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    iget-object p0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public getMax()I
    .registers 1

    .line 280
    iget p0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mMax:I

    if-gez p0, :cond_5

    const/4 p0, 0x0

    :cond_5
    return p0
.end method

.method public getProgress()I
    .registers 1

    .line 288
    iget p0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mProgress:I

    if-gez p0, :cond_5

    const/4 p0, 0x0

    :cond_5
    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15

    .line 116
    iget-boolean v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mShouldUpdateBound:Z

    if-eqz v0, :cond_a

    .line 117
    invoke-direct {p0}, Lcom/meizu/common/widget/CircleProgressBar;->setBound()V

    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mShouldUpdateBound:Z

    .line 120
    :cond_a
    iget-object v2, p0, Lcom/meizu/common/widget/CircleProgressBar;->mCircleBound:Landroid/graphics/RectF;

    const/high16 v3, 0x43b40000  # 360.0f

    const/high16 v4, 0x43b40000  # 360.0f

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/meizu/common/widget/CircleProgressBar;->mRimPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 121
    iget-object v8, p0, Lcom/meizu/common/widget/CircleProgressBar;->mCircleBound:Landroid/graphics/RectF;

    iget v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarPostition:I

    add-int/lit8 v1, v0, 0x5a

    int-to-float v9, v1

    mul-int/lit8 v0, v0, -0x2

    int-to-float v10, v0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarPaint:Landroid/graphics/Paint;

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 122
    iget-object v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr v0, v1

    .line 123
    iget-object v2, p0, Lcom/meizu/common/widget/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    sub-float/2addr v0, v2

    .line 124
    iget-object v2, p0, Lcom/meizu/common/widget/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/meizu/common/widget/CircleProgressBar;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    div-float/2addr v2, v1

    .line 125
    iget-boolean v1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mIsShowProgress:Z

    if-eqz v1, :cond_63

    .line 126
    iget-object v1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mText:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v3, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget-object p0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_63
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    .line 293
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 294
    const-class p0, Lcom/meizu/common/widget/CircleProgressBar;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const/4 p1, 0x1

    .line 135
    iput-boolean p1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mShouldUpdateBound:Z

    return-void
.end method

.method public setCircleBarColor(I)V
    .registers 3

    .line 237
    iget v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarColor:I

    if-eq v0, p1, :cond_10

    .line 238
    iput p1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarColor:I

    .line 239
    iget-object p1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 240
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_10
    return-void
.end method

.method public setCircleBarWidth(F)V
    .registers 6

    .line 261
    iget v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarWidth:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL  # 1.0E-6

    cmpg-double v0, v0, v2

    if-gez v0, :cond_12

    return-void

    :cond_12
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1a

    .line 265
    iput v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarWidth:F

    goto :goto_1c

    .line 267
    :cond_1a
    iput p1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarWidth:F

    .line 269
    :goto_1c
    iget-object p1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarWidth:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 270
    iget-object p1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mRimPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarWidth:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p1, 0x1

    .line 271
    iput-boolean p1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mShouldUpdateBound:Z

    .line 272
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setCircleRimColor(I)V
    .registers 3

    .line 249
    iget v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mRimColor:I

    if-eq v0, p1, :cond_10

    .line 250
    iput p1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mRimColor:I

    .line 251
    iget-object p1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mRimPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mRimColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 252
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_10
    return-void
.end method

.method public setMax(I)V
    .registers 3

    if-gez p1, :cond_3

    const/4 p1, 0x0

    .line 203
    :cond_3
    iget v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mMax:I

    if-eq p1, v0, :cond_12

    .line 204
    iput p1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mMax:I

    .line 205
    iget v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mProgress:I

    if-le v0, p1, :cond_f

    .line 206
    iput p1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mProgress:I

    .line 208
    :cond_f
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_12
    return-void
.end method

.method public setProgress(I)V
    .registers 4

    const/4 v0, 0x0

    if-gez p1, :cond_4

    move p1, v0

    .line 220
    :cond_4
    iget v1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mMax:I

    if-le p1, v1, :cond_9

    move p1, v1

    .line 223
    :cond_9
    iget v1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mProgress:I

    if-eq p1, v1, :cond_3c

    .line 224
    iput p1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mProgress:I

    .line 225
    iget p1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mProgress:I

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/meizu/common/widget/CircleProgressBar;->getPosByProgress(IZ)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mBarPostition:I

    .line 226
    iget p1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mProgress:I

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/CircleProgressBar;->getPosByProgress(IZ)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mPercentage:I

    .line 227
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/meizu/common/widget/CircleProgressBar;->mPercentage:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mText:Ljava/lang/String;

    .line 228
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_3c
    return-void
.end method

.method public setProgressStatus(Z)V
    .registers 2

    .line 192
    iput-boolean p1, p0, Lcom/meizu/common/widget/CircleProgressBar;->mIsShowProgress:Z

    return-void
.end method
