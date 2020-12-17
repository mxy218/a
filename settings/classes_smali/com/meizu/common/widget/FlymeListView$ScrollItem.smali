.class Lcom/meizu/common/widget/FlymeListView$ScrollItem;
.super Ljava/lang/Object;
.source "FlymeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/FlymeListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScrollItem"
.end annotation


# instance fields
.field private mCurrentOffset:F

.field private mDownScrollOffsetRatio:F

.field private mDownThreshold:F

.field private mOffsetAfterSmoothBack:F

.field private mOffsetBeforeSmoothBack:F

.field private mOriginalTransilationY:F

.field private mTranslateView:Landroid/view/View;

.field private mUpScrollOffsetRatio:F

.field private mUpThreshold:F


# virtual methods
.method public getCurrentOffset()F
    .registers 1

    .line 715
    iget p0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mCurrentOffset:F

    return p0
.end method

.method public getDownScrollOffsetRatio()F
    .registers 1

    .line 623
    iget p0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mDownScrollOffsetRatio:F

    return p0
.end method

.method public getDownThreshold()F
    .registers 1

    .line 661
    iget p0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mDownThreshold:F

    return p0
.end method

.method public getOffsetAfterSmoothBack()F
    .registers 1

    .line 706
    iget p0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mOffsetAfterSmoothBack:F

    return p0
.end method

.method public getOffsetBeforeSmoothBack()F
    .registers 1

    .line 697
    iget p0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mOffsetBeforeSmoothBack:F

    return p0
.end method

.method public getUpScrollOffsetRatio()F
    .registers 1

    .line 619
    iget p0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mUpScrollOffsetRatio:F

    return p0
.end method

.method public getUpThreshold()F
    .registers 1

    .line 670
    iget p0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mUpThreshold:F

    return p0
.end method

.method public setOffsetAfterSmoothBack(F)V
    .registers 2

    .line 688
    iput p1, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mOffsetAfterSmoothBack:F

    return-void
.end method

.method public setOffsetBeforeSmoothBack(F)V
    .registers 2

    .line 679
    iput p1, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mOffsetBeforeSmoothBack:F

    return-void
.end method

.method public setOriginalTransilationY(F)V
    .registers 2

    .line 724
    iput p1, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mOriginalTransilationY:F

    return-void
.end method

.method public translateItemY(F)V
    .registers 4

    .line 627
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mTranslateView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 630
    :cond_5
    iget v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mOriginalTransilationY:F

    invoke-static {}, Lcom/meizu/common/widget/FlymeListView;->access$300()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_17

    .line 631
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mTranslateView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mOriginalTransilationY:F

    .line 633
    :cond_17
    iput p1, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mCurrentOffset:F

    .line 634
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mTranslateView:Landroid/view/View;

    iget p0, p0, Lcom/meizu/common/widget/FlymeListView$ScrollItem;->mOriginalTransilationY:F

    add-float/2addr p0, p1

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
