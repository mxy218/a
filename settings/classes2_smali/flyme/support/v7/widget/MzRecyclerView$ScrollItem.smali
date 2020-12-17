.class Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;
.super Ljava/lang/Object;
.source "MzRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/MzRecyclerView;
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

    .line 3300
    iget p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->mCurrentOffset:F

    return p0
.end method

.method public getDownScrollOffsetRatio()F
    .registers 1

    .line 3204
    iget p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->mDownScrollOffsetRatio:F

    return p0
.end method

.method public getDownThreshold()F
    .registers 1

    .line 3246
    iget p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->mDownThreshold:F

    return p0
.end method

.method public getOffsetAfterSmoothBack()F
    .registers 1

    .line 3291
    iget p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->mOffsetAfterSmoothBack:F

    return p0
.end method

.method public getOffsetBeforeSmoothBack()F
    .registers 1

    .line 3282
    iget p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->mOffsetBeforeSmoothBack:F

    return p0
.end method

.method public getUpScrollOffsetRatio()F
    .registers 1

    .line 3200
    iget p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->mUpScrollOffsetRatio:F

    return p0
.end method

.method public getUpThreshold()F
    .registers 1

    .line 3255
    iget p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->mUpThreshold:F

    return p0
.end method

.method public setOffsetAfterSmoothBack(F)V
    .registers 2

    .line 3273
    iput p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->mOffsetAfterSmoothBack:F

    return-void
.end method

.method public setOffsetBeforeSmoothBack(F)V
    .registers 2

    .line 3264
    iput p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->mOffsetBeforeSmoothBack:F

    return-void
.end method

.method public setOriginalTransilationY(F)V
    .registers 2

    .line 3309
    iput p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->mOriginalTransilationY:F

    return-void
.end method

.method public translateItemY(F)V
    .registers 4

    .line 3208
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->mTranslateView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 3211
    :cond_5
    iget v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->mOriginalTransilationY:F

    invoke-static {}, Lflyme/support/v7/widget/MzRecyclerView;->access$3500()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_17

    .line 3212
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->mTranslateView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->mOriginalTransilationY:F

    .line 3214
    :cond_17
    iput p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->mCurrentOffset:F

    .line 3215
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->mTranslateView:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_25

    const/4 p0, 0x0

    float-to-int p1, p1

    .line 3216
    invoke-virtual {v0, p0, p1}, Landroid/view/View;->scrollBy(II)V

    goto :goto_2b

    .line 3218
    :cond_25
    iget p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->mOriginalTransilationY:F

    add-float/2addr p0, p1

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    :goto_2b
    return-void
.end method
