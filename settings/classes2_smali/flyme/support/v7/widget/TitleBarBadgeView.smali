.class public Lflyme/support/v7/widget/TitleBarBadgeView;
.super Landroid/view/View;
.source "TitleBarBadgeView.java"


# static fields
.field private static DEFAULT_HEIGHT:I = 0x10

.field private static DEFAULT_WIDTH:I = 0x10


# instance fields
.field private mBadgeColor:I

.field private mBadgeRadius:I

.field private mHeight:I

.field private mIsShow:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lflyme/support/v7/widget/TitleBarBadgeView;->mIsShow:Z

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lflyme/support/v7/widget/TitleBarBadgeView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lflyme/support/v7/widget/TitleBarBadgeView;->mIsShow:Z

    .line 34
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/TitleBarBadgeView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 20
    iput-boolean p3, p0, Lflyme/support/v7/widget/TitleBarBadgeView;->mIsShow:Z

    .line 39
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/TitleBarBadgeView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getMeasure(III)I
    .registers 4

    const/high16 p0, -0x80000000

    if-eq p2, p0, :cond_8

    const/high16 p0, 0x40000000  # 2.0f

    if-eq p2, p0, :cond_9

    :cond_8
    move p1, p3

    :cond_9
    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/TitleBarBadgeView;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-direct {p0}, Lflyme/support/v7/widget/TitleBarBadgeView;->initPaint()V

    return-void
.end method

.method private initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 48
    sget-object v0, Lflyme/support/v7/appcompat/R$styleable;->TitleBarBadgeView:[I

    invoke-virtual {p0, p1, p2, v0}, Lflyme/support/v7/widget/TitleBarBadgeView;->getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    .line 52
    :cond_9
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->TitleBarBadgeView_mcTBBadgeColor:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lflyme/support/v7/appcompat/R$color;->mz_tab_view_dot_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lflyme/support/v7/widget/TitleBarBadgeView;->mBadgeColor:I

    .line 53
    sget p2, Lflyme/support/v7/appcompat/R$styleable;->TitleBarBadgeView_mcTBBadgeRadius:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lflyme/support/v7/appcompat/R$dimen;->mz_title_bar_badge_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lflyme/support/v7/widget/TitleBarBadgeView;->mBadgeRadius:I

    return-void
.end method

.method private initPaint()V
    .registers 3

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/TitleBarBadgeView;->mPaint:Landroid/graphics/Paint;

    .line 62
    iget-object v0, p0, Lflyme/support/v7/widget/TitleBarBadgeView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lflyme/support/v7/widget/TitleBarBadgeView;->mBadgeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget-object p0, p0, Lflyme/support/v7/widget/TitleBarBadgeView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public getBadgeColor()I
    .registers 1

    .line 111
    iget p0, p0, Lflyme/support/v7/widget/TitleBarBadgeView;->mBadgeColor:I

    return p0
.end method

.method public getBadgeRadius()I
    .registers 1

    .line 130
    iget p0, p0, Lflyme/support/v7/widget/TitleBarBadgeView;->mBadgeRadius:I

    return p0
.end method

.method protected getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .registers 4

    const/4 p0, 0x0

    .line 57
    invoke-virtual {p1, p2, p3, p0, p0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 68
    iget-boolean v0, p0, Lflyme/support/v7/widget/TitleBarBadgeView;->mIsShow:Z

    if-eqz v0, :cond_1c

    .line 71
    iget v0, p0, Lflyme/support/v7/widget/TitleBarBadgeView;->mWidth:I

    add-int/lit8 v0, v0, 0x0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lflyme/support/v7/widget/TitleBarBadgeView;->mBadgeRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lflyme/support/v7/widget/TitleBarBadgeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 73
    :cond_1c
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    .line 79
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 80
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 82
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 83
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 84
    sget v2, Lflyme/support/v7/widget/TitleBarBadgeView;->DEFAULT_WIDTH:I

    invoke-direct {p0, p1, v0, v2}, Lflyme/support/v7/widget/TitleBarBadgeView;->getMeasure(III)I

    move-result p1

    iput p1, p0, Lflyme/support/v7/widget/TitleBarBadgeView;->mWidth:I

    .line 85
    sget p1, Lflyme/support/v7/widget/TitleBarBadgeView;->DEFAULT_HEIGHT:I

    invoke-direct {p0, p2, v1, p1}, Lflyme/support/v7/widget/TitleBarBadgeView;->getMeasure(III)I

    move-result p1

    iput p1, p0, Lflyme/support/v7/widget/TitleBarBadgeView;->mHeight:I

    .line 86
    iget p1, p0, Lflyme/support/v7/widget/TitleBarBadgeView;->mWidth:I

    iget p2, p0, Lflyme/support/v7/widget/TitleBarBadgeView;->mHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBadgeColor(I)V
    .registers 2

    .line 120
    iput p1, p0, Lflyme/support/v7/widget/TitleBarBadgeView;->mBadgeColor:I

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBadgeRadius(I)V
    .registers 2

    .line 139
    iput p1, p0, Lflyme/support/v7/widget/TitleBarBadgeView;->mBadgeRadius:I

    .line 140
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setShow(Z)V
    .registers 2

    .line 161
    iput-boolean p1, p0, Lflyme/support/v7/widget/TitleBarBadgeView;->mIsShow:Z

    return-void
.end method
