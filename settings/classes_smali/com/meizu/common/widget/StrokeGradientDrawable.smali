.class Lcom/meizu/common/widget/StrokeGradientDrawable;
.super Ljava/lang/Object;
.source "Switch.java"


# instance fields
.field private mAlpha:I

.field private mColor:I

.field private mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mHeight:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mRadius:F

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/GradientDrawable;)V
    .registers 2

    .line 1570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1571
    iput-object p1, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method


# virtual methods
.method public getColor()I
    .registers 1

    .line 1603
    iget p0, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mColor:I

    return p0
.end method

.method public getGradientDrawable()Landroid/graphics/drawable/GradientDrawable;
    .registers 1

    .line 1629
    iget-object p0, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method public getHeight()I
    .registers 1

    .line 1611
    iget p0, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mHeight:I

    return p0
.end method

.method public getPaddingLeft()I
    .registers 1

    .line 1633
    iget p0, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mPaddingLeft:I

    return p0
.end method

.method public getPaddingRight()I
    .registers 1

    .line 1641
    iget p0, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mPaddingRight:I

    return p0
.end method

.method public getWidth()I
    .registers 1

    .line 1620
    iget p0, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mWidth:I

    return p0
.end method

.method public setAlpha(I)V
    .registers 3

    .line 1653
    iget v0, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mAlpha:I

    if-ne v0, p1, :cond_5

    return-void

    .line 1656
    :cond_5
    iput p1, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mAlpha:I

    .line 1657
    iget-object p0, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    return-void
.end method

.method public setColor(I)V
    .registers 2

    .line 1598
    iput p1, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mColor:I

    .line 1599
    iget-object p0, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method public setCornerRadius(F)V
    .registers 2

    .line 1593
    iput p1, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mRadius:F

    .line 1594
    iget-object p0, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-void
.end method

.method public setHeight(I)V
    .registers 3

    .line 1615
    iput p1, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mHeight:I

    .line 1616
    iget-object v0, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget p0, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mWidth:I

    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    return-void
.end method

.method public setPaddingLeft(I)V
    .registers 2

    .line 1637
    iput p1, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mPaddingLeft:I

    return-void
.end method

.method public setPaddingRight(I)V
    .registers 2

    .line 1645
    iput p1, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mPaddingRight:I

    return-void
.end method

.method public setWidth(I)V
    .registers 3

    .line 1624
    iput p1, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mWidth:I

    .line 1625
    iget-object v0, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget p0, p0, Lcom/meizu/common/widget/StrokeGradientDrawable;->mHeight:I

    invoke-virtual {v0, p1, p0}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    return-void
.end method
