.class public Lcom/meizu/common/widget/LabelItem;
.super Landroid/widget/RelativeLayout;
.source "LabelItem.java"


# instance fields
.field private mIconMarginBottom:I

.field private mIconMarginLeft:I

.field private mImagePlayer:Lcom/meizu/common/widget/LabelLayout$ImagePlayer;

.field private mImageView:Landroid/widget/ImageView;

.field private mInnerSpace:I

.field private mTextView:Landroid/widget/TextView;

.field private mTextViewHeight:I


# virtual methods
.method public getTextView()Landroid/widget/TextView;
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/meizu/common/widget/LabelItem;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method protected onMeasure(II)V
    .registers 8

    const/4 p1, 0x0

    .line 105
    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 106
    iget v0, p0, Lcom/meizu/common/widget/LabelItem;->mTextViewHeight:I

    const/high16 v1, 0x40000000  # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 107
    iget-object v2, p0, Lcom/meizu/common/widget/LabelItem;->mImagePlayer:Lcom/meizu/common/widget/LabelLayout$ImagePlayer;

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/meizu/common/widget/LabelItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 108
    iget-object v2, p0, Lcom/meizu/common/widget/LabelItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, p2, p2}, Landroid/widget/ImageView;->measure(II)V

    .line 109
    iget v2, p0, Lcom/meizu/common/widget/LabelItem;->mIconMarginLeft:I

    mul-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/meizu/common/widget/LabelItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 110
    iget-object v3, p0, Lcom/meizu/common/widget/LabelItem;->mTextView:Landroid/widget/TextView;

    iget v4, p0, Lcom/meizu/common/widget/LabelItem;->mInnerSpace:I

    invoke-virtual {v3, v4, p1, v2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 111
    iget-object p1, p0, Lcom/meizu/common/widget/LabelItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->measure(II)V

    .line 113
    iget-object p1, p0, Lcom/meizu/common/widget/LabelItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 114
    iget p2, p0, Lcom/meizu/common/widget/LabelItem;->mIconMarginBottom:I

    iget-object v0, p0, Lcom/meizu/common/widget/LabelItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p2, v0

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_6d

    .line 116
    :cond_4d
    iget-object v2, p0, Lcom/meizu/common/widget/LabelItem;->mTextView:Landroid/widget/TextView;

    iget v3, p0, Lcom/meizu/common/widget/LabelItem;->mInnerSpace:I

    invoke-virtual {v2, v3, p1, v3, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 117
    iget-object p1, p0, Lcom/meizu/common/widget/LabelItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->measure(II)V

    .line 119
    iget-object p1, p0, Lcom/meizu/common/widget/LabelItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 120
    iget-object p2, p0, Lcom/meizu/common/widget/LabelItem;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 122
    :goto_6d
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method
