.class public Lflyme/support/v7/widget/GridLayoutManager;
.super Lflyme/support/v7/widget/LinearLayoutManager;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;,
        Lflyme/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;,
        Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    }
.end annotation


# instance fields
.field mCachedBorders:[I

.field final mDecorInsets:Landroid/graphics/Rect;

.field mPendingSpanCountChange:Z

.field final mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

.field final mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

.field mSet:[Landroid/view/View;

.field mSpanCount:I

.field mSpanSizeLookup:Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lflyme/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Lflyme/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Lflyme/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    .line 72
    invoke-static {p1, p2, p3, p4}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lflyme/support/v7/widget/RecyclerView$LayoutManager$Properties;

    move-result-object p1

    .line 73
    iget p1, p1, Lflyme/support/v7/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    return-void
.end method

.method private assignSpans(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;IIZ)V
    .registers 9

    const/4 p4, 0x0

    const/4 v0, -0x1

    if-eqz p5, :cond_9

    const/4 v0, 0x1

    move p5, v0

    move v0, p3

    move p3, p4

    goto :goto_c

    :cond_9
    add-int/lit8 p3, p3, -0x1

    move p5, v0

    :goto_c
    if-eq p3, v0, :cond_29

    .line 781
    iget-object v1, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v1, v1, p3

    .line 782
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 783
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0, p1, p2, v1}, Lflyme/support/v7/widget/GridLayoutManager;->getSpanSize(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;I)I

    move-result v1

    iput v1, v2, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    .line 784
    iput p4, v2, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 785
    iget v1, v2, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int/2addr p4, v1

    add-int/2addr p3, p5

    goto :goto_c

    :cond_29
    return-void
.end method

.method private cachePreLayoutSpanMapping()V
    .registers 7

    .line 189
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_2a

    .line 191
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 192
    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v3

    .line 193
    iget-object v4, p0, Lflyme/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 194
    iget-object v4, p0, Lflyme/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v2

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2a
    return-void
.end method

.method private calculateItemBorders(I)V
    .registers 4

    .line 309
    iget-object v0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget v1, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-static {v0, v1, p1}, Lflyme/support/v7/widget/GridLayoutManager;->calculateItemBorders([III)[I

    move-result-object p1

    iput-object p1, p0, Lflyme/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    return-void
.end method

.method static calculateItemBorders([III)[I
    .registers 8

    const/4 v0, 0x1

    if-eqz p0, :cond_e

    .line 320
    array-length v1, p0

    add-int/lit8 v2, p1, 0x1

    if-ne v1, v2, :cond_e

    array-length v1, p0

    sub-int/2addr v1, v0

    aget v1, p0, v1

    if-eq v1, p2, :cond_12

    :cond_e
    add-int/lit8 p0, p1, 0x1

    .line 322
    new-array p0, p0, [I

    :cond_12
    const/4 v1, 0x0

    .line 324
    aput v1, p0, v1

    .line 325
    div-int v2, p2, p1

    .line 326
    rem-int/2addr p2, p1

    move v3, v1

    :goto_19
    if-gt v0, p1, :cond_2d

    add-int/2addr v1, p2

    if-lez v1, :cond_26

    sub-int v4, p1, v1

    if-ge v4, p2, :cond_26

    add-int/lit8 v4, v2, 0x1

    sub-int/2addr v1, p1

    goto :goto_27

    :cond_26
    move v4, v2

    :goto_27
    add-int/2addr v3, v4

    .line 337
    aput v3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_2d
    return-object p0
.end method

.method private clearPreLayoutSpanMappingCache()V
    .registers 2

    .line 184
    iget-object v0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 185
    iget-object p0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method private ensureAnchorIsInCorrectSpan(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V
    .registers 9

    const/4 v0, 0x1

    if-ne p4, v0, :cond_5

    move p4, v0

    goto :goto_6

    :cond_5
    const/4 p4, 0x0

    .line 388
    :goto_6
    iget v1, p3, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, v1}, Lflyme/support/v7/widget/GridLayoutManager;->getSpanIndex(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;I)I

    move-result v1

    if-eqz p4, :cond_1f

    :goto_e
    if-lez v1, :cond_35

    .line 391
    iget p4, p3, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    if-lez p4, :cond_35

    add-int/lit8 p4, p4, -0x1

    .line 392
    iput p4, p3, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 393
    iget p4, p3, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1, p2, p4}, Lflyme/support/v7/widget/GridLayoutManager;->getSpanIndex(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;I)I

    move-result v1

    goto :goto_e

    .line 397
    :cond_1f
    invoke-virtual {p2}, Lflyme/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p4

    sub-int/2addr p4, v0

    .line 398
    iget v0, p3, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    :goto_26
    if-ge v0, p4, :cond_33

    add-int/lit8 v2, v0, 0x1

    .line 401
    invoke-direct {p0, p1, p2, v2}, Lflyme/support/v7/widget/GridLayoutManager;->getSpanIndex(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;I)I

    move-result v3

    if-le v3, v1, :cond_33

    move v0, v2

    move v1, v3

    goto :goto_26

    .line 409
    :cond_33
    iput v0, p3, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    :cond_35
    return-void
.end method

.method private ensureViewSet()V
    .registers 3

    .line 363
    iget-object v0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    if-eqz v0, :cond_9

    array-length v0, v0

    iget v1, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-eq v0, v1, :cond_f

    .line 364
    :cond_9
    iget v0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanCount:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    :cond_f
    return-void
.end method

.method private getSpanGroupIndex(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;I)I
    .registers 4

    .line 450
    invoke-virtual {p2}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-nez p2, :cond_f

    .line 451
    iget-object p1, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget p0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p1, p3, p0}, Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result p0

    return p0

    .line 453
    :cond_f
    invoke-virtual {p1, p3}, Lflyme/support/v7/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2e

    .line 459
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot find span size for pre layout position. "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GridLayoutManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 462
    :cond_2e
    iget-object p2, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget p0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p2, p1, p0}, Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result p0

    return p0
.end method

.method private getSpanIndex(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;I)I
    .registers 5

    .line 466
    invoke-virtual {p2}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-nez p2, :cond_f

    .line 467
    iget-object p1, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget p0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p1, p3, p0}, Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result p0

    return p0

    .line 469
    :cond_f
    iget-object p2, p0, Lflyme/support/v7/widget/GridLayoutManager;->mPreLayoutSpanIndexCache:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-eq p2, v0, :cond_19

    return p2

    .line 473
    :cond_19
    invoke-virtual {p1, p3}, Lflyme/support/v7/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result p1

    if-ne p1, v0, :cond_37

    .line 479
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GridLayoutManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 483
    :cond_37
    iget-object p2, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget p0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {p2, p1, p0}, Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getCachedSpanIndex(II)I

    move-result p0

    return p0
.end method

.method private getSpanSize(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;I)I
    .registers 5

    .line 487
    invoke-virtual {p2}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-nez p2, :cond_d

    .line 488
    iget-object p0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0, p3}, Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result p0

    return p0

    .line 490
    :cond_d
    iget-object p2, p0, Lflyme/support/v7/widget/GridLayoutManager;->mPreLayoutSpanSizeCache:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    if-eq p2, v0, :cond_17

    return p2

    .line 494
    :cond_17
    invoke-virtual {p1, p3}, Lflyme/support/v7/widget/RecyclerView$Recycler;->convertPreLayoutPositionToPostLayout(I)I

    move-result p1

    if-ne p1, v0, :cond_35

    .line 500
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GridLayoutManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 504
    :cond_35
    iget-object p0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result p0

    return p0
.end method

.method private guessMeasurement(FI)V
    .registers 4

    .line 745
    iget v0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanCount:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 747
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p1}, Lflyme/support/v7/widget/GridLayoutManager;->calculateItemBorders(I)V

    return-void
.end method

.method private measureChild(Landroid/view/View;IZ)V
    .registers 12

    .line 711
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 712
    iget-object v1, v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 713
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 715
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v1

    .line 717
    iget v1, v0, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v4, v0, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    invoke-virtual {p0, v1, v4}, Lflyme/support/v7/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v1

    .line 720
    iget v4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_43

    .line 721
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1, p2, v3, v4, v5}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    .line 723
    iget-object v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Lflyme/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v1

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v3

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v1, v3, v2, v0, v6}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    goto :goto_5c

    .line 726
    :cond_43
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v1, p2, v2, v4, v5}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    .line 728
    iget-object v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Lflyme/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v1

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v2

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1, v2, v3, v0, v6}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    move v7, v0

    move v0, p2

    move p2, v7

    .line 731
    :goto_5c
    invoke-direct {p0, p1, p2, v0, p3}, Lflyme/support/v7/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    return-void
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .registers 6

    .line 752
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz p4, :cond_d

    .line 755
    invoke-virtual {p0, p1, p2, p3, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->shouldReMeasureChild(Landroid/view/View;IILflyme/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result p0

    goto :goto_11

    .line 757
    :cond_d
    invoke-virtual {p0, p1, p2, p3, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILflyme/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result p0

    :goto_11
    if-eqz p0, :cond_16

    .line 760
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_16
    return-void
.end method

.method private updateMeasurements()V
    .registers 3

    .line 275
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 276
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    goto :goto_22

    .line 278
    :cond_15
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    :goto_22
    sub-int/2addr v0, v1

    .line 280
    invoke-direct {p0, v0}, Lflyme/support/v7/widget/GridLayoutManager;->calculateItemBorders(I)V

    return-void
.end method


# virtual methods
.method public checkLayoutParams(Lflyme/support/v7/widget/RecyclerView$LayoutParams;)Z
    .registers 2

    .line 251
    instance-of p0, p1, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;

    return p0
.end method

.method collectPrefetchPositionsForLayoutState(Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;Lflyme/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 9

    .line 510
    iget v0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanCount:I

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .line 512
    :goto_5
    iget v3, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ge v0, v3, :cond_2d

    invoke-virtual {p2, p1}, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->hasMore(Lflyme/support/v7/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_2d

    if-lez v2, :cond_2d

    .line 513
    iget v3, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 514
    iget v4, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-interface {p3, v3, v4}, Lflyme/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 515
    iget-object v4, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v4, v3}, Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 517
    iget v3, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v4, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v3, v4

    iput v3, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_2d
    return-void
.end method

.method findReferenceChild(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;III)Landroid/view/View;
    .registers 13

    .line 416
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 419
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    .line 420
    iget-object v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    if-le p4, p3, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, -0x1

    :goto_14
    const/4 v3, 0x0

    move-object v4, v3

    :goto_16
    if-eq p3, p4, :cond_52

    .line 424
    invoke-virtual {p0, p3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 425
    invoke-virtual {p0, v5}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    if-ltz v6, :cond_50

    if-ge v6, p5, :cond_50

    .line 427
    invoke-direct {p0, p1, p2, v6}, Lflyme/support/v7/widget/GridLayoutManager;->getSpanIndex(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;I)I

    move-result v6

    if-eqz v6, :cond_2b

    goto :goto_50

    .line 431
    :cond_2b
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v6}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v6

    if-eqz v6, :cond_3b

    if-nez v4, :cond_50

    move-object v4, v5

    goto :goto_50

    .line 435
    :cond_3b
    iget-object v6, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v6, v5}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    if-ge v6, v1, :cond_4d

    iget-object v6, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    .line 436
    invoke-virtual {v6, v5}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    if-ge v6, v0, :cond_4c

    goto :goto_4d

    :cond_4c
    return-object v5

    :cond_4d
    :goto_4d
    if-nez v3, :cond_50

    move-object v3, v5

    :cond_50
    :goto_50
    add-int/2addr p3, v2

    goto :goto_16

    :cond_52
    if-eqz v3, :cond_55

    goto :goto_56

    :cond_55
    move-object v3, v4

    :goto_56
    return-object v3
.end method

.method public generateDefaultLayoutParams()Lflyme/support/v7/widget/RecyclerView$LayoutParams;
    .registers 3

    .line 226
    iget p0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v0, -0x2

    const/4 v1, -0x1

    if-nez p0, :cond_c

    .line 227
    new-instance p0, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {p0, v0, v1}, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object p0

    .line 230
    :cond_c
    new-instance p0, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {p0, v1, v0}, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lflyme/support/v7/widget/RecyclerView$LayoutParams;
    .registers 3

    .line 237
    new-instance p0, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lflyme/support/v7/widget/RecyclerView$LayoutParams;
    .registers 2

    .line 242
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_c

    .line 243
    new-instance p0, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    .line 245
    :cond_c
    new-instance p0, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {p0, p1}, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getColumnCountForAccessibility(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 5

    .line 131
    iget v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 132
    iget p0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanCount:I

    return p0

    .line 134
    :cond_8
    invoke-virtual {p2}, Lflyme/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge v0, v1, :cond_10

    const/4 p0, 0x0

    return p0

    .line 139
    :cond_10
    invoke-virtual {p2}, Lflyme/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Lflyme/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;I)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public getRowCountForAccessibility(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 5

    .line 117
    iget v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_7

    .line 118
    iget p0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanCount:I

    return p0

    .line 120
    :cond_7
    invoke-virtual {p2}, Lflyme/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_10

    const/4 p0, 0x0

    return p0

    .line 125
    :cond_10
    invoke-virtual {p2}, Lflyme/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, p2, v0}, Lflyme/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;I)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method getSpaceForSpanRange(II)I
    .registers 5

    .line 343
    iget v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 344
    iget-object v0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget p0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanCount:I

    sub-int v1, p0, p1

    aget v1, v0, v1

    sub-int/2addr p0, p1

    sub-int/2addr p0, p2

    aget p0, v0, p0

    sub-int/2addr v1, p0

    return v1

    .line 347
    :cond_19
    iget-object p0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    add-int/2addr p2, p1

    aget p2, p0, p2

    aget p0, p0, p1

    sub-int/2addr p2, p0

    return p2
.end method

.method public getSpanCount()I
    .registers 1

    .line 796
    iget p0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanCount:I

    return p0
.end method

.method public getSpanSizeLookup()Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    .registers 1

    .line 270
    iget-object p0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    return-object p0
.end method

.method layoutChunk(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;)V
    .registers 23

    move-object/from16 v6, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 525
    iget-object v0, v6, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/OrientationHelper;->getModeInOther()I

    move-result v9

    const/high16 v10, 0x40000000  # 2.0f

    const/4 v11, 0x1

    if-eq v9, v10, :cond_17

    move v13, v11

    goto :goto_18

    :cond_17
    const/4 v13, 0x0

    .line 527
    :goto_18
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_26

    iget-object v0, v6, Lflyme/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget v3, v6, Lflyme/support/v7/widget/GridLayoutManager;->mSpanCount:I

    aget v0, v0, v3

    move v14, v0

    goto :goto_27

    :cond_26
    const/4 v14, 0x0

    :goto_27
    if-eqz v13, :cond_2c

    .line 532
    invoke-direct/range {p0 .. p0}, Lflyme/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    .line 534
    :cond_2c
    iget v0, v7, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    if-ne v0, v11, :cond_32

    move v15, v11

    goto :goto_33

    :cond_32
    const/4 v15, 0x0

    .line 538
    :goto_33
    iget v0, v6, Lflyme/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-nez v15, :cond_44

    .line 540
    iget v0, v7, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-direct {v6, v1, v2, v0}, Lflyme/support/v7/widget/GridLayoutManager;->getSpanIndex(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;I)I

    move-result v0

    .line 541
    iget v3, v7, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    invoke-direct {v6, v1, v2, v3}, Lflyme/support/v7/widget/GridLayoutManager;->getSpanSize(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;I)I

    move-result v3

    add-int/2addr v0, v3

    :cond_44
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 544
    :goto_46
    iget v3, v6, Lflyme/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ge v5, v3, :cond_9f

    invoke-virtual {v7, v2}, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->hasMore(Lflyme/support/v7/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_9f

    if-lez v0, :cond_9f

    .line 545
    iget v3, v7, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 546
    invoke-direct {v6, v1, v2, v3}, Lflyme/support/v7/widget/GridLayoutManager;->getSpanSize(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;I)I

    move-result v10

    .line 547
    iget v12, v6, Lflyme/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-gt v10, v12, :cond_71

    sub-int/2addr v0, v10

    if-gez v0, :cond_60

    goto :goto_9f

    .line 556
    :cond_60
    invoke-virtual {v7, v1}, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->next(Lflyme/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_67

    goto :goto_9f

    :cond_67
    add-int/2addr v4, v10

    .line 561
    iget-object v10, v6, Lflyme/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aput-object v3, v10, v5

    add-int/lit8 v5, v5, 0x1

    const/high16 v10, 0x40000000  # 2.0f

    goto :goto_46

    .line 548
    :cond_71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Item at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " spans but GridLayoutManager has only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lflyme/support/v7/widget/GridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " spans."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9f
    :goto_9f
    if-nez v5, :cond_a4

    .line 566
    iput-boolean v11, v8, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    return-void

    :cond_a4
    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v5

    move v12, v5

    move v5, v15

    .line 574
    invoke-direct/range {v0 .. v5}, Lflyme/support/v7/widget/GridLayoutManager;->assignSpans(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;IIZ)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_b3
    if-ge v0, v12, :cond_100

    .line 576
    iget-object v2, v6, Lflyme/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v2, v2, v0

    .line 577
    iget-object v3, v7, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v3, :cond_c9

    if-eqz v15, :cond_c4

    .line 579
    invoke-virtual {v6, v2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    const/4 v3, 0x0

    goto :goto_d3

    :cond_c4
    const/4 v3, 0x0

    .line 581
    invoke-virtual {v6, v2, v3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_d3

    :cond_c9
    const/4 v3, 0x0

    if-eqz v15, :cond_d0

    .line 585
    invoke-virtual {v6, v2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_d3

    .line 587
    :cond_d0
    invoke-virtual {v6, v2, v3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 590
    :goto_d3
    iget-object v4, v6, Lflyme/support/v7/widget/GridLayoutManager;->mDecorInsets:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v4}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 592
    invoke-direct {v6, v2, v9, v3}, Lflyme/support/v7/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    .line 593
    iget-object v3, v6, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    if-le v3, v1, :cond_e4

    move v1, v3

    .line 597
    :cond_e4
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;

    const/high16 v4, 0x3f800000  # 1.0f

    .line 598
    iget-object v5, v6, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v5, v2}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    iget v3, v3, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v3, v2, v10

    if-lez v3, :cond_fd

    move v10, v2

    :cond_fd
    add-int/lit8 v0, v0, 0x1

    goto :goto_b3

    :cond_100
    if-eqz v13, :cond_11e

    .line 606
    invoke-direct {v6, v10, v14}, Lflyme/support/v7/widget/GridLayoutManager;->guessMeasurement(FI)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_107
    if-ge v0, v12, :cond_11e

    .line 610
    iget-object v2, v6, Lflyme/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v2, v2, v0

    const/high16 v3, 0x40000000  # 2.0f

    .line 611
    invoke-direct {v6, v2, v3, v11}, Lflyme/support/v7/widget/GridLayoutManager;->measureChild(Landroid/view/View;IZ)V

    .line 612
    iget-object v3, v6, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    if-le v2, v1, :cond_11b

    move v1, v2

    :cond_11b
    add-int/lit8 v0, v0, 0x1

    goto :goto_107

    :cond_11e
    const/4 v0, 0x0

    :goto_11f
    if-ge v0, v12, :cond_181

    .line 622
    iget-object v2, v6, Lflyme/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v2, v2, v0

    .line 623
    iget-object v3, v6, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v3

    if-eq v3, v1, :cond_17b

    .line 624
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 625
    iget-object v4, v3, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 626
    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v9

    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v9

    iget v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v9

    .line 628
    iget v9, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v4

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v9, v4

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v9, v4

    .line 630
    iget v4, v3, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    iget v10, v3, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    invoke-virtual {v6, v4, v10}, Lflyme/support/v7/widget/GridLayoutManager;->getSpaceForSpanRange(II)I

    move-result v4

    .line 633
    iget v10, v6, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne v10, v11, :cond_167

    .line 634
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/high16 v10, 0x40000000  # 2.0f

    const/4 v13, 0x0

    invoke-static {v4, v10, v9, v3, v13}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v3

    sub-int v4, v1, v5

    .line 636
    invoke-static {v4, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_177

    :cond_167
    const/high16 v10, 0x40000000  # 2.0f

    const/4 v13, 0x0

    sub-int v9, v1, v9

    .line 639
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 641
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v4, v10, v5, v3, v13}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v4

    move v3, v9

    .line 644
    :goto_177
    invoke-direct {v6, v2, v3, v4, v11}, Lflyme/support/v7/widget/GridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_17e

    :cond_17b
    const/high16 v10, 0x40000000  # 2.0f

    const/4 v13, 0x0

    :goto_17e
    add-int/lit8 v0, v0, 0x1

    goto :goto_11f

    :cond_181
    const/4 v13, 0x0

    .line 648
    iput v1, v8, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 651
    iget v0, v6, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v2, -0x1

    if-ne v0, v11, :cond_19c

    .line 652
    iget v0, v7, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v0, v2, :cond_194

    .line 653
    iget v0, v7, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    sub-int v1, v0, v1

    move v3, v0

    move v2, v1

    goto :goto_199

    .line 656
    :cond_194
    iget v0, v7, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    add-int/2addr v1, v0

    move v2, v0

    move v3, v1

    :goto_199
    move v0, v13

    move v1, v0

    goto :goto_1b1

    .line 660
    :cond_19c
    iget v0, v7, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v0, v2, :cond_1ac

    .line 661
    iget v0, v7, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    sub-int v1, v0, v1

    move v2, v13

    move v3, v2

    move/from16 v17, v1

    move v1, v0

    move/from16 v0, v17

    goto :goto_1b1

    .line 664
    :cond_1ac
    iget v0, v7, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    add-int/2addr v1, v0

    move v2, v13

    move v3, v2

    :goto_1b1
    if-ge v13, v12, :cond_236

    .line 669
    iget-object v4, v6, Lflyme/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    aget-object v7, v4, v13

    .line 670
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 671
    iget v4, v6, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne v4, v11, :cond_1f4

    .line 672
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_1e1

    .line 673
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    iget-object v1, v6, Lflyme/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget v4, v6, Lflyme/support/v7/widget/GridLayoutManager;->mSpanCount:I

    iget v5, v9, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    sub-int/2addr v4, v5

    aget v1, v1, v4

    add-int/2addr v0, v1

    .line 674
    iget-object v1, v6, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, v7}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v1

    sub-int v1, v0, v1

    move v15, v0

    move v10, v1

    goto :goto_208

    .line 676
    :cond_1e1
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    iget-object v1, v6, Lflyme/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget v4, v9, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    aget v1, v1, v4

    add-int/2addr v0, v1

    .line 677
    iget-object v1, v6, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, v7}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_206

    .line 680
    :cond_1f4
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v2

    iget-object v3, v6, Lflyme/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    iget v4, v9, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    aget v3, v3, v4

    add-int/2addr v2, v3

    .line 681
    iget-object v3, v6, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v7}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v2

    :goto_206
    move v10, v0

    move v15, v1

    :goto_208
    move v14, v2

    move/from16 v16, v3

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v10

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    .line 685
    invoke-virtual/range {v0 .. v5}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 693
    invoke-virtual {v9}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v0

    if-nez v0, :cond_222

    invoke-virtual {v9}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_224

    .line 694
    :cond_222
    iput-boolean v11, v8, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 696
    :cond_224
    iget-boolean v0, v8, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    invoke-virtual {v7}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, v8, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    add-int/lit8 v13, v13, 0x1

    move v0, v10

    move v2, v14

    move v1, v15

    move/from16 v3, v16

    goto/16 :goto_1b1

    .line 698
    :cond_236
    iget-object v0, v6, Lflyme/support/v7/widget/GridLayoutManager;->mSet:[Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method onAnchorReady(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V
    .registers 6

    .line 354
    invoke-super {p0, p1, p2, p3, p4}, Lflyme/support/v7/widget/LinearLayoutManager;->onAnchorReady(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 355
    invoke-direct {p0}, Lflyme/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    .line 356
    invoke-virtual {p2}, Lflyme/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-lez v0, :cond_15

    invoke-virtual {p2}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_15

    .line 357
    invoke-direct {p0, p1, p2, p3, p4}, Lflyme/support/v7/widget/GridLayoutManager;->ensureAnchorIsInCorrectSpan(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 359
    :cond_15
    invoke-direct {p0}, Lflyme/support/v7/widget/GridLayoutManager;->ensureViewSet()V

    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 994
    invoke-virtual/range {p0 .. p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_e

    return-object v4

    .line 998
    :cond_e
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 999
    iget v6, v5, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1000
    iget v5, v5, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int/2addr v5, v6

    .line 1001
    invoke-super/range {p0 .. p4}, Lflyme/support/v7/widget/LinearLayoutManager;->onFocusSearchFailed(Landroid/view/View;ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_20

    return-object v4

    :cond_20
    move/from16 v7, p2

    .line 1007
    invoke-virtual {v0, v7}, Lflyme/support/v7/widget/LinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_2b

    move v7, v9

    goto :goto_2c

    :cond_2b
    const/4 v7, 0x0

    .line 1008
    :goto_2c
    iget-boolean v10, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v7, v10, :cond_32

    move v7, v9

    goto :goto_33

    :cond_32
    const/4 v7, 0x0

    :goto_33
    const/4 v10, -0x1

    if-eqz v7, :cond_3e

    .line 1011
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v9

    move v11, v10

    move v12, v11

    goto :goto_45

    .line 1017
    :cond_3e
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v7

    move v11, v7

    move v12, v9

    const/4 v7, 0x0

    .line 1019
    :goto_45
    iget v13, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne v13, v9, :cond_51

    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v13

    if-eqz v13, :cond_51

    move v13, v9

    goto :goto_52

    :cond_51
    const/4 v13, 0x0

    .line 1043
    :goto_52
    invoke-direct {v0, v1, v2, v7}, Lflyme/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;I)I

    move-result v14

    move v8, v10

    move/from16 v17, v8

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v4

    :goto_5d
    if-eq v7, v11, :cond_147

    .line 1045
    invoke-direct {v0, v1, v2, v7}, Lflyme/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;I)I

    move-result v9

    .line 1046
    invoke-virtual {v0, v7}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, v3, :cond_6b

    goto/16 :goto_147

    .line 1051
    :cond_6b
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v18

    if-eqz v18, :cond_85

    if-eq v9, v14, :cond_85

    if-eqz v4, :cond_77

    goto/16 :goto_147

    :cond_77
    move-object/from16 v18, v3

    move/from16 v19, v8

    move-object/from16 v21, v10

    move/from16 v20, v11

    move/from16 v8, v16

    move/from16 v10, v17

    goto/16 :goto_133

    .line 1062
    :cond_85
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 1063
    iget v2, v9, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    move-object/from16 v18, v3

    .line 1064
    iget v3, v9, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanSize:I

    add-int/2addr v3, v2

    .line 1065
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_9d

    if-ne v2, v6, :cond_9d

    if-ne v3, v5, :cond_9d

    return-object v1

    .line 1070
    :cond_9d
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_a5

    if-eqz v4, :cond_ad

    .line 1071
    :cond_a5
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-nez v19, :cond_b9

    if-nez v10, :cond_b9

    :cond_ad
    move/from16 v19, v8

    move-object/from16 v21, v10

    :goto_b1
    move/from16 v20, v11

    move/from16 v8, v16

    move/from16 v10, v17

    :goto_b7
    const/4 v11, 0x1

    goto :goto_103

    .line 1074
    :cond_b9
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 1075
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v20

    move-object/from16 v21, v10

    sub-int v10, v20, v19

    .line 1077
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v19

    if-eqz v19, :cond_da

    if-le v10, v15, :cond_d0

    :goto_cd
    move/from16 v19, v8

    goto :goto_b1

    :cond_d0
    if-ne v10, v15, :cond_fa

    if-le v2, v8, :cond_d6

    const/4 v10, 0x1

    goto :goto_d7

    :cond_d6
    const/4 v10, 0x0

    :goto_d7
    if-ne v13, v10, :cond_fa

    goto :goto_cd

    :cond_da
    if-nez v4, :cond_fa

    move/from16 v19, v8

    move/from16 v20, v11

    const/4 v8, 0x0

    const/4 v11, 0x1

    .line 1086
    invoke-virtual {v0, v1, v8, v11}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->isViewPartiallyVisible(Landroid/view/View;ZZ)Z

    move-result v22

    move/from16 v8, v16

    if-eqz v22, :cond_100

    if-le v10, v8, :cond_ef

    move/from16 v10, v17

    goto :goto_103

    :cond_ef
    if-ne v10, v8, :cond_100

    move/from16 v10, v17

    if-le v2, v10, :cond_f6

    goto :goto_f7

    :cond_f6
    const/4 v11, 0x0

    :goto_f7
    if-ne v13, v11, :cond_102

    goto :goto_b7

    :cond_fa
    move/from16 v19, v8

    move/from16 v20, v11

    move/from16 v8, v16

    :cond_100
    move/from16 v10, v17

    :cond_102
    const/4 v11, 0x0

    :goto_103
    if-eqz v11, :cond_133

    .line 1098
    invoke-virtual {v1}, Landroid/view/View;->hasFocusable()Z

    move-result v11

    if-eqz v11, :cond_120

    .line 1100
    iget v4, v9, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1101
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1102
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v3, v2

    move v15, v3

    move/from16 v16, v8

    move/from16 v17, v10

    move-object/from16 v10, v21

    move v8, v4

    move-object v4, v1

    goto :goto_13b

    .line 1105
    :cond_120
    iget v8, v9, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;->mSpanIndex:I

    .line 1106
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1107
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v3, v2

    move-object v10, v1

    move/from16 v16, v3

    move/from16 v17, v8

    move/from16 v8, v19

    goto :goto_13b

    :cond_133
    :goto_133
    move/from16 v16, v8

    move/from16 v17, v10

    move/from16 v8, v19

    move-object/from16 v10, v21

    :goto_13b
    add-int/2addr v7, v12

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, v18

    move/from16 v11, v20

    const/4 v9, 0x1

    goto/16 :goto_5d

    :cond_147
    :goto_147
    move-object/from16 v21, v10

    if-eqz v4, :cond_14c

    goto :goto_14e

    :cond_14c
    move-object/from16 v4, v21

    :goto_14e
    return-object v4
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 12

    .line 145
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 146
    instance-of v1, v0, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;

    if-nez v1, :cond_c

    .line 147
    invoke-super {p0, p3, p4}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void

    .line 150
    :cond_c
    check-cast v0, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;

    .line 151
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lflyme/support/v7/widget/GridLayoutManager;->getSpanGroupIndex(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;I)I

    move-result p1

    .line 152
    iget p2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 p3, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_3f

    .line 154
    invoke-virtual {v0}, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result p2

    invoke-virtual {v0}, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v2

    const/4 v4, 0x1

    iget v3, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-le v3, v1, :cond_33

    .line 156
    invoke-virtual {v0}, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v0

    iget p0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ne v0, p0, :cond_33

    move v5, v1

    goto :goto_34

    :cond_33
    move v5, p3

    :goto_34
    const/4 v6, 0x0

    move v1, p2

    move v3, p1

    .line 153
    invoke-static/range {v1 .. v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_60

    :cond_3f
    const/4 v2, 0x1

    .line 160
    invoke-virtual {v0}, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v3

    invoke-virtual {v0}, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result v4

    iget p2, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-le p2, v1, :cond_56

    .line 161
    invoke-virtual {v0}, Lflyme/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result p2

    iget p0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ne p2, p0, :cond_56

    move v5, v1

    goto :goto_57

    :cond_56
    move v5, p3

    :goto_57
    const/4 v6, 0x0

    move v1, p1

    .line 158
    invoke-static/range {v1 .. v6}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    :goto_60
    return-void
.end method

.method public onItemsAdded(Lflyme/support/v7/widget/RecyclerView;II)V
    .registers 4

    .line 200
    iget-object p0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0}, Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onItemsChanged(Lflyme/support/v7/widget/RecyclerView;)V
    .registers 2

    .line 205
    iget-object p0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0}, Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onItemsMoved(Lflyme/support/v7/widget/RecyclerView;III)V
    .registers 5

    .line 221
    iget-object p0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0}, Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onItemsRemoved(Lflyme/support/v7/widget/RecyclerView;II)V
    .registers 4

    .line 210
    iget-object p0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0}, Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onItemsUpdated(Lflyme/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .registers 5

    .line 216
    iget-object p0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p0}, Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    return-void
.end method

.method public onLayoutChildren(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)V
    .registers 4

    .line 167
    invoke-virtual {p2}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 168
    invoke-direct {p0}, Lflyme/support/v7/widget/GridLayoutManager;->cachePreLayoutSpanMapping()V

    .line 170
    :cond_9
    invoke-super {p0, p1, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->onLayoutChildren(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)V

    .line 174
    invoke-direct {p0}, Lflyme/support/v7/widget/GridLayoutManager;->clearPreLayoutSpanMappingCache()V

    return-void
.end method

.method public onLayoutCompleted(Lflyme/support/v7/widget/RecyclerView$State;)V
    .registers 2

    .line 179
    invoke-super {p0, p1}, Lflyme/support/v7/widget/LinearLayoutManager;->onLayoutCompleted(Lflyme/support/v7/widget/RecyclerView$State;)V

    const/4 p1, 0x0

    .line 180
    iput-boolean p1, p0, Lflyme/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    return-void
.end method

.method public scrollHorizontallyBy(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 4

    .line 371
    invoke-direct {p0}, Lflyme/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    .line 372
    invoke-direct {p0}, Lflyme/support/v7/widget/GridLayoutManager;->ensureViewSet()V

    .line 373
    invoke-super {p0, p1, p2, p3}, Lflyme/support/v7/widget/LinearLayoutManager;->scrollHorizontallyBy(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public scrollVerticallyBy(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 4

    .line 379
    invoke-direct {p0}, Lflyme/support/v7/widget/GridLayoutManager;->updateMeasurements()V

    .line 380
    invoke-direct {p0}, Lflyme/support/v7/widget/GridLayoutManager;->ensureViewSet()V

    .line 381
    invoke-super {p0, p1, p2, p3}, Lflyme/support/v7/widget/LinearLayoutManager;->scrollVerticallyBy(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .registers 8

    .line 285
    iget-object v0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    if-nez v0, :cond_7

    .line 286
    invoke-super {p0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    .line 289
    :cond_7
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 290
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 291
    iget v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3b

    .line 292
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v1

    .line 293
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getMinimumHeight()I

    move-result v1

    invoke-static {p3, p1, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result p1

    .line 294
    iget-object p3, p0, Lflyme/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v1, p3

    sub-int/2addr v1, v3

    aget p3, p3, v1

    add-int/2addr p3, v0

    .line 295
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getMinimumWidth()I

    move-result v0

    .line 294
    invoke-static {p2, p3, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result p2

    goto :goto_57

    .line 297
    :cond_3b
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v0

    .line 298
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getMinimumWidth()I

    move-result v0

    invoke-static {p2, p1, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result p2

    .line 299
    iget-object p1, p0, Lflyme/support/v7/widget/GridLayoutManager;->mCachedBorders:[I

    array-length v0, p1

    sub-int/2addr v0, v3

    aget p1, p1, v0

    add-int/2addr p1, v1

    .line 300
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getMinimumHeight()I

    move-result v0

    .line 299
    invoke-static {p3, p1, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result p1

    .line 302
    :goto_57
    invoke-virtual {p0, p2, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->setMeasuredDimension(II)V

    return-void
.end method

.method public setSpanCount(I)V
    .registers 4

    .line 809
    iget v0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanCount:I

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 812
    iput-boolean v0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    if-lt p1, v0, :cond_15

    .line 817
    iput p1, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanCount:I

    .line 818
    iget-object p1, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {p1}, Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;->invalidateSpanIndexCache()V

    .line 819
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void

    .line 814
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Span count should be at least 1. Provided "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSpanSizeLookup(Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V
    .registers 2

    .line 261
    iput-object p1, p0, Lflyme/support/v7/widget/GridLayoutManager;->mSpanSizeLookup:Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    return-void
.end method

.method public setStackFromEnd(Z)V
    .registers 2

    if-nez p1, :cond_7

    const/4 p1, 0x0

    .line 111
    invoke-super {p0, p1}, Lflyme/support/v7/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    return-void

    .line 107
    :cond_7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public supportsPredictiveItemAnimations()Z
    .registers 2

    .line 1116
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_a

    iget-boolean p0, p0, Lflyme/support/v7/widget/GridLayoutManager;->mPendingSpanCountChange:Z

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method