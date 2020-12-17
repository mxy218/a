.class abstract Landroidx/leanback/widget/Grid;
.super Ljava/lang/Object;
.source "Grid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/Grid$Location;,
        Landroidx/leanback/widget/Grid$Provider;
    }
.end annotation


# instance fields
.field protected mFirstVisibleIndex:I

.field protected mLastVisibleIndex:I

.field protected mNumRows:I

.field protected mProvider:Landroidx/leanback/widget/Grid$Provider;

.field protected mReversedFlow:Z

.field protected mSpacing:I

.field protected mStartIndex:I

.field mTmpItem:[Ljava/lang/Object;

.field protected mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 48
    iput-object v0, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    const/4 v0, -0x1

    .line 133
    iput v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 134
    iput v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 139
    iput v0, p0, Landroidx/leanback/widget/Grid;->mStartIndex:I

    return-void
.end method

.method public static createGrid(I)Landroidx/leanback/widget/Grid;
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_9

    .line 147
    new-instance p0, Landroidx/leanback/widget/SingleRow;

    invoke-direct {p0}, Landroidx/leanback/widget/SingleRow;-><init>()V

    goto :goto_12

    .line 150
    :cond_9
    new-instance v0, Landroidx/leanback/widget/StaggeredGridDefault;

    invoke-direct {v0}, Landroidx/leanback/widget/StaggeredGridDefault;-><init>()V

    .line 151
    invoke-virtual {v0, p0}, Landroidx/leanback/widget/Grid;->setNumRows(I)V

    move-object p0, v0

    :goto_12
    return-object p0
.end method

.method private resetVisibleIndexIfEmpty()V
    .registers 3

    .line 450
    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    iget v1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-ge v0, v1, :cond_9

    .line 451
    invoke-virtual {p0}, Landroidx/leanback/widget/Grid;->resetVisibleIndex()V

    :cond_9
    return-void
.end method


# virtual methods
.method public appendOneColumnVisibleItems()Z
    .registers 3

    .line 389
    iget-boolean v0, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_8

    const v0, 0x7fffffff

    goto :goto_a

    :cond_8
    const/high16 v0, -0x80000000

    :goto_a
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/leanback/widget/Grid;->appendVisibleItems(IZ)Z

    move-result p0

    return p0
.end method

.method public final appendVisibleItems(I)V
    .registers 3

    const/4 v0, 0x0

    .line 397
    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/Grid;->appendVisibleItems(IZ)Z

    return-void
.end method

.method protected abstract appendVisibleItems(IZ)Z
.end method

.method protected final checkAppendOverLimit(I)Z
    .registers 6

    .line 318
    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    const/4 v1, 0x0

    if-gez v0, :cond_6

    return v1

    .line 321
    :cond_6
    iget-boolean v0, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_16

    invoke-virtual {p0, v3, v2}, Landroidx/leanback/widget/Grid;->findRowMin(Z[I)I

    move-result v0

    iget p0, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    add-int/2addr p1, p0

    if-gt v0, p1, :cond_20

    goto :goto_1f

    .line 322
    :cond_16
    invoke-virtual {p0, v1, v2}, Landroidx/leanback/widget/Grid;->findRowMax(Z[I)I

    move-result v0

    iget p0, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    sub-int/2addr p1, p0

    if-lt v0, p1, :cond_20

    :goto_1f
    move v1, v3

    :cond_20
    return v1
.end method

.method protected final checkPrependOverLimit(I)Z
    .registers 6

    .line 329
    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    const/4 v1, 0x0

    if-gez v0, :cond_6

    return v1

    .line 332
    :cond_6
    iget-boolean v0, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_16

    invoke-virtual {p0, v1, v2}, Landroidx/leanback/widget/Grid;->findRowMax(Z[I)I

    move-result v0

    iget p0, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    sub-int/2addr p1, p0

    if-lt v0, p1, :cond_20

    goto :goto_1f

    .line 333
    :cond_16
    invoke-virtual {p0, v3, v2}, Landroidx/leanback/widget/Grid;->findRowMin(Z[I)I

    move-result v0

    iget p0, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    add-int/2addr p1, p0

    if-gt v0, p1, :cond_20

    :goto_1f
    move v1, v3

    :cond_20
    return v1
.end method

.method public collectAdjacentPrefetchPositions(IILandroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 4
    .param p3  # Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public fillDisappearingItems([IILandroid/util/SparseIntArray;)V
    .registers 15

    .line 465
    invoke-virtual {p0}, Landroidx/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_c

    .line 467
    invoke-static {p1, v1, p2, v0}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v2

    goto :goto_d

    :cond_c
    move v2, v1

    :goto_d
    const/4 v3, 0x1

    if-gez v2, :cond_68

    neg-int v2, v2

    sub-int/2addr v2, v3

    .line 472
    iget-boolean v4, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v4, :cond_27

    .line 473
    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v4, v0}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v4

    iget-object v5, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v5, v0}, Landroidx/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v0

    sub-int/2addr v4, v0

    iget v0, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    sub-int/2addr v4, v0

    goto :goto_37

    .line 475
    :cond_27
    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v4, v0}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v4

    iget-object v5, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v5, v0}, Landroidx/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v0

    add-int/2addr v4, v0

    iget v0, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v4, v0

    :goto_37
    move v0, v4

    :goto_38
    if-ge v2, p2, :cond_68

    .line 478
    aget v6, p1, v2

    .line 479
    invoke-virtual {p3, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    if-gez v4, :cond_44

    move v8, v1

    goto :goto_45

    :cond_44
    move v8, v4

    .line 483
    :goto_45
    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget-object v5, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v4, v6, v3, v5, v3}, Landroidx/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v10

    .line 484
    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget-object v5, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    aget-object v5, v5, v1

    move v7, v10

    move v9, v0

    invoke-interface/range {v4 .. v9}, Landroidx/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    .line 485
    iget-boolean v4, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v4, :cond_61

    sub-int/2addr v0, v10

    .line 486
    iget v4, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    sub-int/2addr v0, v4

    goto :goto_65

    :cond_61
    add-int/2addr v0, v10

    .line 488
    iget v4, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v0, v4

    :goto_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 493
    :cond_68
    invoke-virtual {p0}, Landroidx/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v0

    if-ltz v0, :cond_73

    .line 495
    invoke-static {p1, v1, p2, v0}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result p2

    goto :goto_74

    :cond_73
    move p2, v1

    :goto_74
    if-gez p2, :cond_b9

    neg-int p2, p2

    add-int/lit8 p2, p2, -0x2

    .line 500
    iget-boolean v2, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v2, :cond_84

    .line 501
    iget-object v2, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v2, v0}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    goto :goto_8a

    .line 503
    :cond_84
    iget-object v2, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v2, v0}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    :goto_8a
    if-ltz p2, :cond_b9

    .line 506
    aget v6, p1, p2

    .line 507
    invoke-virtual {p3, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-gez v2, :cond_96

    move v8, v1

    goto :goto_97

    :cond_96
    move v8, v2

    .line 511
    :goto_97
    iget-object v2, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v2, v6, v1, v4, v3}, Landroidx/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v7

    .line 512
    iget-boolean v2, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v2, :cond_a8

    .line 513
    iget v2, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v0, v2

    add-int/2addr v0, v7

    goto :goto_ac

    .line 515
    :cond_a8
    iget v2, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    sub-int/2addr v0, v2

    sub-int/2addr v0, v7

    .line 517
    :goto_ac
    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget-object v2, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    aget-object v5, v2, v1

    move v9, v0

    invoke-interface/range {v4 .. v9}, Landroidx/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_8a

    :cond_b9
    return-void
.end method

.method protected abstract findRowMax(ZI[I)I
.end method

.method public final findRowMax(Z[I)I
    .registers 4
    .param p2  # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 304
    iget-boolean v0, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    goto :goto_9

    :cond_7
    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    :goto_9
    invoke-virtual {p0, p1, v0, p2}, Landroidx/leanback/widget/Grid;->findRowMax(ZI[I)I

    move-result p0

    return p0
.end method

.method protected abstract findRowMin(ZI[I)I
.end method

.method public final findRowMin(Z[I)I
    .registers 4
    .param p2  # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 289
    iget-boolean v0, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    goto :goto_9

    :cond_7
    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    :goto_9
    invoke-virtual {p0, p1, v0, p2}, Landroidx/leanback/widget/Grid;->findRowMin(ZI[I)I

    move-result p0

    return p0
.end method

.method public final getFirstVisibleIndex()I
    .registers 1

    .line 228
    iget p0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    return p0
.end method

.method public final getItemPositionsInRows()[Landroidx/collection/CircularIntArray;
    .registers 3

    .line 354
    invoke-virtual {p0}, Landroidx/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v0

    invoke-virtual {p0}, Landroidx/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/leanback/widget/Grid;->getItemPositionsInRows(II)[Landroidx/collection/CircularIntArray;

    move-result-object p0

    return-object p0
.end method

.method public abstract getItemPositionsInRows(II)[Landroidx/collection/CircularIntArray;
.end method

.method public final getLastVisibleIndex()I
    .registers 1

    .line 236
    iget p0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    return p0
.end method

.method public abstract getLocation(I)Landroidx/leanback/widget/Grid$Location;
.end method

.method public getNumRows()I
    .registers 1

    .line 199
    iget p0, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    return p0
.end method

.method public final getRowIndex(I)I
    .registers 2

    .line 272
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->getLocation(I)Landroidx/leanback/widget/Grid$Location;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 276
    :cond_8
    iget p0, p0, Landroidx/leanback/widget/Grid$Location;->row:I

    return p0
.end method

.method public invalidateItemsAfter(I)V
    .registers 3

    if-gez p1, :cond_3

    return-void

    .line 256
    :cond_3
    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    if-gez v0, :cond_8

    return-void

    :cond_8
    if-lt v0, p1, :cond_e

    add-int/lit8 v0, p1, -0x1

    .line 260
    iput v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 262
    :cond_e
    invoke-direct {p0}, Landroidx/leanback/widget/Grid;->resetVisibleIndexIfEmpty()V

    .line 263
    invoke-virtual {p0}, Landroidx/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v0

    if-gez v0, :cond_1a

    .line 264
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->setStart(I)V

    :cond_1a
    return-void
.end method

.method public isReversedFlow()Z
    .registers 1

    .line 174
    iget-boolean p0, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    return p0
.end method

.method public final prependOneColumnVisibleItems()Z
    .registers 3

    .line 363
    iget-boolean v0, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_7

    const/high16 v0, -0x80000000

    goto :goto_a

    :cond_7
    const v0, 0x7fffffff

    :goto_a
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/leanback/widget/Grid;->prependVisibleItems(IZ)Z

    move-result p0

    return p0
.end method

.method public final prependVisibleItems(I)V
    .registers 3

    const/4 v0, 0x0

    .line 371
    invoke-virtual {p0, p1, v0}, Landroidx/leanback/widget/Grid;->prependVisibleItems(IZ)Z

    return-void
.end method

.method protected abstract prependVisibleItems(IZ)Z
.end method

.method public removeInvisibleItemsAtEnd(II)V
    .registers 7

    .line 415
    :goto_0
    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    iget v1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-lt v0, v1, :cond_2f

    if-le v0, p1, :cond_2f

    .line 416
    iget-boolean v1, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_17

    iget-object v1, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v1, v0}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    if-lt v0, p2, :cond_20

    goto :goto_1f

    :cond_17
    iget-object v1, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    .line 417
    invoke-interface {v1, v0}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    if-gt v0, p2, :cond_20

    :goto_1f
    move v2, v3

    :cond_20
    if-eqz v2, :cond_2f

    .line 419
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget v1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    invoke-interface {v0, v1}, Landroidx/leanback/widget/Grid$Provider;->removeItem(I)V

    .line 420
    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    goto :goto_0

    .line 425
    :cond_2f
    invoke-direct {p0}, Landroidx/leanback/widget/Grid;->resetVisibleIndexIfEmpty()V

    return-void
.end method

.method public removeInvisibleItemsAtFront(II)V
    .registers 8

    .line 434
    :goto_0
    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    iget v1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-lt v0, v1, :cond_3b

    if-ge v1, p1, :cond_3b

    .line 435
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v0, v1}, Landroidx/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v0

    .line 436
    iget-boolean v1, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_20

    iget-object v1, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget v4, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 437
    invoke-interface {v1, v4}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v1

    add-int/2addr v1, v0

    if-gt v1, p2, :cond_2c

    goto :goto_2b

    :cond_20
    iget-object v1, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget v4, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 438
    invoke-interface {v1, v4}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v1

    sub-int/2addr v1, v0

    if-lt v1, p2, :cond_2c

    :goto_2b
    move v2, v3

    :cond_2c
    if-eqz v2, :cond_3b

    .line 440
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget v1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    invoke-interface {v0, v1}, Landroidx/leanback/widget/Grid$Provider;->removeItem(I)V

    .line 441
    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    add-int/2addr v0, v3

    iput v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    goto :goto_0

    .line 446
    :cond_3b
    invoke-direct {p0}, Landroidx/leanback/widget/Grid;->resetVisibleIndexIfEmpty()V

    return-void
.end method

.method public resetVisibleIndex()V
    .registers 2

    const/4 v0, -0x1

    .line 243
    iput v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    iput v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    return-void
.end method

.method setNumRows(I)V
    .registers 4

    if-lez p1, :cond_21

    .line 213
    iget v0, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    if-ne v0, p1, :cond_7

    return-void

    .line 216
    :cond_7
    iput p1, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    .line 217
    iget p1, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    new-array p1, p1, [Landroidx/collection/CircularIntArray;

    iput-object p1, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    const/4 p1, 0x0

    .line 218
    :goto_10
    iget v0, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    if-ge p1, v0, :cond_20

    .line 219
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    new-instance v1, Landroidx/collection/CircularIntArray;

    invoke-direct {v1}, Landroidx/collection/CircularIntArray;-><init>()V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_10

    :cond_20
    return-void

    .line 211
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public setProvider(Landroidx/leanback/widget/Grid$Provider;)V
    .registers 2

    .line 183
    iput-object p1, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    return-void
.end method

.method public final setReversedFlow(Z)V
    .registers 2

    .line 167
    iput-boolean p1, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    return-void
.end method

.method public final setSpacing(I)V
    .registers 2

    .line 160
    iput p1, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    return-void
.end method

.method public setStart(I)V
    .registers 2

    .line 192
    iput p1, p0, Landroidx/leanback/widget/Grid;->mStartIndex:I

    return-void
.end method
