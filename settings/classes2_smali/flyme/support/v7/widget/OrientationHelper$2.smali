.class final Lflyme/support/v7/widget/OrientationHelper$2;
.super Lflyme/support/v7/widget/OrientationHelper;
.source "OrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/widget/OrientationHelper;->createVerticalHelper(Lflyme/support/v7/widget/RecyclerView$LayoutManager;)Lflyme/support/v7/widget/OrientationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/RecyclerView$LayoutManager;)V
    .registers 3

    const/4 v0, 0x0

    .line 349
    invoke-direct {p0, p1, v0}, Lflyme/support/v7/widget/OrientationHelper;-><init>(Lflyme/support/v7/widget/RecyclerView$LayoutManager;Lflyme/support/v7/widget/OrientationHelper$1;)V

    return-void
.end method


# virtual methods
.method public getDecoratedEnd(Landroid/view/View;)I
    .registers 3

    .line 389
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .line 390
    iget-object p0, p0, Lflyme/support/v7/widget/OrientationHelper;->mLayoutManager:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p0

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, p1

    return p0
.end method

.method public getDecoratedMeasurement(Landroid/view/View;)I
    .registers 3

    .line 373
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .line 374
    iget-object p0, p0, Lflyme/support/v7/widget/OrientationHelper;->mLayoutManager:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result p0

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p0, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, p1

    return p0
.end method

.method public getDecoratedMeasurementInOther(Landroid/view/View;)I
    .registers 3

    .line 381
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .line 382
    iget-object p0, p0, Lflyme/support/v7/widget/OrientationHelper;->mLayoutManager:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result p0

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p0, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p0, p1

    return p0
.end method

.method public getDecoratedStart(Landroid/view/View;)I
    .registers 3

    .line 396
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .line 397
    iget-object p0, p0, Lflyme/support/v7/widget/OrientationHelper;->mLayoutManager:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result p0

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public getEnd()I
    .registers 1

    .line 357
    iget-object p0, p0, Lflyme/support/v7/widget/OrientationHelper;->mLayoutManager:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result p0

    return p0
.end method

.method public getEndAfterPadding()I
    .registers 2

    .line 352
    iget-object v0, p0, Lflyme/support/v7/widget/OrientationHelper;->mLayoutManager:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    iget-object p0, p0, Lflyme/support/v7/widget/OrientationHelper;->mLayoutManager:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getEndPadding()I
    .registers 1

    .line 425
    iget-object p0, p0, Lflyme/support/v7/widget/OrientationHelper;->mLayoutManager:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result p0

    return p0
.end method

.method public getMode()I
    .registers 1

    .line 430
    iget-object p0, p0, Lflyme/support/v7/widget/OrientationHelper;->mLayoutManager:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result p0

    return p0
.end method

.method public getModeInOther()I
    .registers 1

    .line 435
    iget-object p0, p0, Lflyme/support/v7/widget/OrientationHelper;->mLayoutManager:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result p0

    return p0
.end method

.method public getStartAfterPadding()I
    .registers 1

    .line 367
    iget-object p0, p0, Lflyme/support/v7/widget/OrientationHelper;->mLayoutManager:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result p0

    return p0
.end method

.method public getTotalSpace()I
    .registers 3

    .line 414
    iget-object v0, p0, Lflyme/support/v7/widget/OrientationHelper;->mLayoutManager:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    iget-object v1, p0, Lflyme/support/v7/widget/OrientationHelper;->mLayoutManager:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object p0, p0, Lflyme/support/v7/widget/OrientationHelper;->mLayoutManager:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    .line 415
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getTransformedEndWithDecoration(Landroid/view/View;)I
    .registers 5

    .line 402
    iget-object v0, p0, Lflyme/support/v7/widget/OrientationHelper;->mLayoutManager:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lflyme/support/v7/widget/OrientationHelper;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 403
    iget-object p0, p0, Lflyme/support/v7/widget/OrientationHelper;->mTmpRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    return p0
.end method

.method public getTransformedStartWithDecoration(Landroid/view/View;)I
    .registers 5

    .line 408
    iget-object v0, p0, Lflyme/support/v7/widget/OrientationHelper;->mLayoutManager:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lflyme/support/v7/widget/OrientationHelper;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 409
    iget-object p0, p0, Lflyme/support/v7/widget/OrientationHelper;->mTmpRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method public offsetChildren(I)V
    .registers 2

    .line 362
    iget-object p0, p0, Lflyme/support/v7/widget/OrientationHelper;->mLayoutManager:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    return-void
.end method
