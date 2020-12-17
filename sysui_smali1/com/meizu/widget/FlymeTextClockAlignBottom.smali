.class public Lcom/meizu/widget/FlymeTextClockAlignBottom;
.super Landroid/widget/TextClock;
.source "FlymeTextClockAlignBottom.java"


# instance fields
.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 13
    invoke-direct {p0, p1}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;)V

    .line 10
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/meizu/widget/FlymeTextClockAlignBottom;->mTextPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/meizu/widget/FlymeTextClockAlignBottom;->mTextPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/meizu/widget/FlymeTextClockAlignBottom;->mTextPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 10
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/meizu/widget/FlymeTextClockAlignBottom;->mTextPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 31
    iget-object v0, p0, Lcom/meizu/widget/FlymeTextClockAlignBottom;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 32
    iget-object v0, p0, Lcom/meizu/widget/FlymeTextClockAlignBottom;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 33
    iget-object v0, p0, Lcom/meizu/widget/FlymeTextClockAlignBottom;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getCurrentTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    iget-object v0, p0, Lcom/meizu/widget/FlymeTextClockAlignBottom;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 36
    invoke-virtual {p0}, Landroid/widget/TextClock;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/meizu/widget/FlymeTextClockAlignBottom;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 39
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    int-to-float v1, v1

    int-to-float v2, v2

    .line 41
    iget-object p0, p0, Lcom/meizu/widget/FlymeTextClockAlignBottom;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method
