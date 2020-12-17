.class public abstract Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;
.super Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;
.source "PinnedHeaderIndexerArrayAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/meizu/common/widget/PinnedHeaderArrayAdapter<",
        "TT;>;",
        "Landroid/widget/SectionIndexer;"
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mHeader:Landroid/view/View;

.field private mHeaderMap:Landroid/util/SparseIntArray;

.field private mIndexedPartition:I

.field private mIndexer:Landroid/widget/SectionIndexer;

.field private mLastSection:I

.field private mLastSectionOverScrollDistance:I

.field private mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

.field private mSectionHeaderDisplayEnabled:Z

.field private mShowSectionHeaders:Z


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;[Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;-><init>(Landroid/content/Context;[Ljava/util/List;)V

    const/4 p2, 0x0

    .line 28
    iput p2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    .line 52
    new-instance v0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    invoke-direct {v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    const/4 v0, -0x1

    .line 252
    iput v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mLastSection:I

    .line 253
    iput p2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mLastSectionOverScrollDistance:I

    .line 65
    iput-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mContext:Landroid/content/Context;

    .line 66
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSections()[Ljava/lang/Object;

    move-result-object p2

    array-length p2, p2

    invoke-direct {p1, p2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    return-void
.end method

.method private ensureSectionHeaders()V
    .registers 6

    .line 474
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 475
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    aget-object v2, v0, v1

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    if-lez v2, :cond_69

    .line 477
    aget-object v0, v0, v1

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 479
    :goto_1d
    iget-object v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    aget-object v3, v3, v4

    iget v3, v3, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    if-ge v2, v3, :cond_4c

    .line 480
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v3, v2}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v3

    if-eq v1, v3, :cond_4c

    if-le v3, v1, :cond_4c

    add-int v1, v2, v0

    .line 485
    iget-object v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    add-int/2addr v1, v4

    .line 486
    iget-object v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 492
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v4, v3, 0x1

    invoke-interface {v1, v4}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v1

    if-eq v2, v1, :cond_4c

    move v2, v1

    move v1, v3

    goto :goto_1d

    .line 500
    :cond_4c
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 501
    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    aget-object v3, v1, v2

    iget v4, v3, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    add-int/2addr v4, v0

    iput v4, v3, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    .line 502
    aget-object v1, v1, v2

    iget v2, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    .line 503
    iget v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mCount:I

    :cond_69
    return-void
.end method

.method private getSectionPosition(I)I
    .registers 4

    .line 348
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BasePartitionAdapter;->getPositionForPartition(I)I

    move-result v0

    .line 349
    iget v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/BasePartitionAdapter;->hasHeader(I)Z

    move-result v1

    if-eqz v1, :cond_10

    add-int/lit8 v0, v0, 0x1

    .line 354
    :cond_10
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getPositionForSection(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .line 526
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->ensureCacheValid()V

    .line 527
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_11

    const/4 p0, 0x0

    return p0

    .line 530
    :cond_11
    invoke-super {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->areAllItemsEnabled()Z

    move-result p0

    return p0
.end method

.method protected bindSectionHeaderView(Landroid/view/View;Landroid/content/Context;II)V
    .registers 6

    const/4 v0, 0x0

    .line 623
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 624
    sget v0, Lcom/meizu/common/R$id;->mc_header_text1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 625
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSections()[Ljava/lang/Object;

    move-result-object p0

    aget-object p0, p0, p4

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p3, :cond_27

    .line 628
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/meizu/common/R$dimen;->mz_pinned_top_header_minHeight:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_34

    .line 631
    :cond_27
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcom/meizu/common/R$dimen;->mz_pinned_interval_header_minHeight:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setMinimumHeight(I)V

    :goto_34
    return-void
.end method

.method protected canSelect(II)Z
    .registers 4

    .line 545
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    if-ne v0, p1, :cond_12

    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    .line 546
    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    if-ltz v0, :cond_12

    const/4 p0, 0x0

    return p0

    .line 549
    :cond_12
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/BasePartitionAdapter;->canSelect(II)Z

    move-result p0

    return p0
.end method

.method protected configureItemHeader(Landroid/widget/ListView;IIZ)V
    .registers 5

    return-void
.end method

.method public configurePinnedHeaders(Lcom/meizu/common/widget/PinnedHeaderListView;)V
    .registers 11

    .line 257
    invoke-super {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->configurePinnedHeaders(Lcom/meizu/common/widget/PinnedHeaderListView;)V

    .line 259
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 263
    :cond_a
    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getCurrentOverScrollDistance()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_1a

    .line 265
    invoke-virtual {p1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    if-nez v3, :cond_1a

    move v3, v1

    goto :goto_1b

    :cond_1a
    move v3, v2

    :goto_1b
    if-eqz v3, :cond_2d

    .line 267
    iget v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mLastSectionOverScrollDistance:I

    if-ltz v4, :cond_2d

    .line 269
    invoke-direct {p0, v2}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSectionPosition(I)I

    move-result v4

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    add-int/2addr v4, v5

    .line 268
    invoke-virtual {p0, p1, v4, v2, v1}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->configureItemHeader(Landroid/widget/ListView;IIZ)V

    .line 271
    :cond_2d
    iput v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mLastSectionOverScrollDistance:I

    .line 273
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getPinnedHeaderCount()I

    move-result v0

    sub-int/2addr v0, v1

    .line 274
    iget-object v4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    const/4 v5, -0x1

    if-eqz v4, :cond_fc

    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->getCount()I

    move-result v4

    if-eqz v4, :cond_fc

    if-eqz v3, :cond_43

    goto/16 :goto_fc

    .line 278
    :cond_43
    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getTotalTopPinnedHeaderHeight()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPositionAt(I)I

    move-result v3

    .line 279
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    sub-int v4, v3, v4

    .line 281
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_83

    .line 282
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->getHeaderPaddingTop()I

    move-result v7

    if-gt v6, v7, :cond_83

    .line 283
    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/BasePartitionAdapter;->getPartitionForPosition(I)I

    move-result v6

    .line 284
    iget v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    if-ne v6, v7, :cond_83

    .line 285
    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/BasePartitionAdapter;->getOffsetInPartition(I)I

    move-result v7

    .line 286
    iget-object v8, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v6, v8, v6

    iget v6, v6, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    if-lt v7, v6, :cond_83

    .line 287
    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSectionForPosition(I)I

    move-result v6

    goto :goto_84

    :cond_83
    move v6, v5

    .line 292
    :goto_84
    iget v7, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mLastSection:I

    if-ne v7, v6, :cond_93

    if-eq v6, v5, :cond_93

    invoke-direct {p0, v6}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSectionPosition(I)I

    move-result v7

    if-ne v7, v4, :cond_93

    .line 293
    invoke-virtual {p0, p1, v3, v6, v2}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->configureItemHeader(Landroid/widget/ListView;IIZ)V

    .line 304
    :cond_93
    iget v3, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mLastSection:I

    if-le v3, v6, :cond_a8

    :goto_97
    if-le v3, v6, :cond_bc

    .line 308
    invoke-direct {p0, v3}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSectionPosition(I)I

    move-result v7

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v8

    add-int/2addr v7, v8

    .line 307
    invoke-virtual {p0, p1, v7, v3, v1}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->configureItemHeader(Landroid/widget/ListView;IIZ)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_97

    :cond_a8
    if-ge v3, v6, :cond_bc

    add-int/2addr v3, v1

    :goto_ab
    if-gt v3, v6, :cond_bc

    .line 314
    invoke-direct {p0, v3}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSectionPosition(I)I

    move-result v7

    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v8

    add-int/2addr v7, v8

    .line 313
    invoke-virtual {p0, p1, v7, v3, v2}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->configureItemHeader(Landroid/widget/ListView;IIZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_ab

    .line 317
    :cond_bc
    iput v6, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mLastSection:I

    if-eq v6, v5, :cond_f8

    .line 319
    invoke-virtual {p0, v6}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->isPinnedSectionHeaderVisible(I)Z

    move-result v3

    if-nez v3, :cond_c7

    goto :goto_f8

    .line 323
    :cond_c7
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeader:Landroid/view/View;

    invoke-virtual {p0, v3, v6}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->setPinnedSectionHeaderView(Landroid/view/View;I)V

    add-int/2addr v6, v1

    .line 326
    invoke-direct {p0, v6}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSectionPosition(I)I

    move-result p0

    sub-int/2addr p0, v1

    if-ne v4, p0, :cond_d5

    goto :goto_d6

    :cond_d5
    move v1, v2

    :goto_d6
    if-eqz v1, :cond_f4

    .line 333
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    invoke-virtual {p1, v0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPinnedHeaderHeight(I)I

    move-result v1

    if-ge p0, v1, :cond_f4

    .line 334
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    invoke-virtual {p1, v0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPinnedHeaderHeight(I)I

    move-result v1

    sub-int v2, p0, v1

    .line 337
    :cond_f4
    invoke-virtual {p1, v0, v2}, Lcom/meizu/common/widget/PinnedHeaderListView;->setTranslateHeader(II)V

    goto :goto_101

    .line 320
    :cond_f8
    :goto_f8
    invoke-virtual {p1, v0, v2}, Lcom/meizu/common/widget/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    goto :goto_101

    .line 275
    :cond_fc
    :goto_fc
    invoke-virtual {p1, v0, v2}, Lcom/meizu/common/widget/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    .line 276
    iput v5, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mLastSection:I

    :goto_101
    return-void
.end method

.method protected abstract createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected ensureCacheValid()V
    .registers 2

    .line 465
    iget-boolean v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mCacheValid:Z

    if-eqz v0, :cond_5

    return-void

    .line 469
    :cond_5
    invoke-super {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    .line 470
    invoke-direct {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->ensureSectionHeaders()V

    return-void
.end method

.method protected getDataPosition(II)I
    .registers 5

    .line 554
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    if-ne v0, p1, :cond_34

    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_34

    .line 555
    iget-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result p1

    if-ltz p1, :cond_12

    const/4 p0, -0x1

    return p0

    .line 560
    :cond_12
    iget-object p1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    aget-object p1, p1, v0

    iget p1, p1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    sub-int p1, p2, p1

    const/4 v0, 0x0

    .line 561
    :goto_1d
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 562
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    if-le v1, p2, :cond_2e

    goto :goto_33

    :cond_2e
    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_33
    :goto_33
    return p1

    .line 570
    :cond_34
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->getDataPosition(II)I

    move-result p0

    return p0
.end method

.method public getIndexer()Landroid/widget/SectionIndexer;
    .registers 1

    .line 141
    iget-object p0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    return-object p0
.end method

.method protected getItemBackgroundType(II)I
    .registers 10

    .line 402
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    if-ne v0, p1, :cond_7b

    if-ltz p2, :cond_7b

    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_7b

    .line 404
    invoke-virtual {p0, v0, p2}, Lcom/meizu/common/widget/BasePartitionAdapter;->isHeaderView(II)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eqz v0, :cond_27

    .line 405
    iget-object p1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget p0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    aget-object p0, p1, p0

    iget p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    if-ne p0, v4, :cond_1f

    return v3

    :cond_1f
    if-nez p2, :cond_22

    return v4

    :cond_22
    sub-int/2addr p0, v4

    if-ne p2, p0, :cond_26

    return v1

    :cond_26
    return v2

    .line 418
    :cond_27
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v0, p2}, Lcom/meizu/common/widget/BasePartitionAdapter;->isFooterView(II)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 419
    iget-object p1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget p0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    aget-object v0, p1, p0

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    .line 420
    aget-object p0, p1, p0

    iget p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    sub-int/2addr p0, v0

    if-ne v0, v4, :cond_3f

    return v3

    :cond_3f
    if-ne p2, p0, :cond_42

    return v4

    :cond_42
    sub-int/2addr p2, p0

    sub-int/2addr v0, v4

    if-ne p2, v0, :cond_47

    return v1

    :cond_47
    return v2

    .line 432
    :cond_48
    invoke-virtual {p0, p2}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSectionForPosition(I)I

    move-result v0

    .line 433
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getPositionForSection(I)I

    move-result v5

    .line 435
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v6

    array-length v6, v6

    sub-int/2addr v6, v4

    if-ne v0, v6, :cond_5d

    .line 436
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->getCountForPartition(I)I

    move-result p1

    goto :goto_62

    :cond_5d
    add-int/2addr v0, v4

    .line 438
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getPositionForSection(I)I

    move-result p1

    .line 441
    :goto_62
    iget-boolean p0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    if-eqz p0, :cond_6c

    if-ne p2, v5, :cond_6a

    const/4 p0, 0x0

    return p0

    :cond_6a
    add-int/lit8 v5, v5, 0x1

    :cond_6c
    if-ne p2, v5, :cond_73

    sub-int p0, p1, v5

    if-ne p0, v4, :cond_73

    return v3

    :cond_73
    if-ne p2, v5, :cond_76

    return v4

    :cond_76
    sub-int/2addr p1, v4

    if-ne p2, p1, :cond_7a

    return v1

    :cond_7a
    return v2

    .line 459
    :cond_7b
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/BasePartitionAdapter;->getItemBackgroundType(II)I

    move-result p0

    return p0
.end method

.method protected getItemViewType(II)I
    .registers 5

    .line 514
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    if-ne v0, p1, :cond_23

    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    .line 515
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_23

    .line 516
    invoke-virtual {p0, p2}, Lcom/meizu/common/widget/BasePartitionAdapter;->getOffsetInPartition(I)I

    move-result v0

    .line 517
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    if-ltz v0, :cond_23

    .line 518
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getViewTypeCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0

    .line 521
    :cond_23
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/BasePartitionAdapter;->getItemViewType(II)I

    move-result p0

    return p0
.end method

.method public getPinnedHeaderCount()I
    .registers 2

    .line 233
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 234
    invoke-super {p0}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->getPinnedHeaderCount()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    .line 236
    :cond_d
    invoke-super {p0}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->getPinnedHeaderCount()I

    move-result p0

    return p0
.end method

.method public getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 242
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getPinnedHeaderCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1d

    .line 243
    iget-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeader:Landroid/view/View;

    if-nez p1, :cond_1a

    .line 244
    iget-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p3}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeader:Landroid/view/View;

    .line 246
    :cond_1a
    iget-object p0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeader:Landroid/view/View;

    return-object p0

    .line 248
    :cond_1d
    invoke-super {p0, p1, p2, p3}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getPositionForSection(I)I
    .registers 6

    .line 175
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    const/4 v1, 0x0

    if-gez p1, :cond_a

    return v1

    .line 183
    :cond_a
    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    .line 184
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v3, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    add-int/2addr v0, v2

    .line 185
    iget-boolean v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    if-eqz v2, :cond_2a

    :goto_1b
    if-ge v1, p1, :cond_2a

    .line 187
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_27

    add-int/lit8 v0, v0, 0x1

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2a
    return v0
.end method

.method public getSectionForPosition(I)I
    .registers 6

    .line 202
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 207
    :cond_6
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->isFooterView(II)Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    aget-object v3, v0, v2

    iget v3, v3, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    add-int/lit8 v3, v3, -0x1

    if-le p1, v3, :cond_1b

    goto :goto_46

    .line 212
    :cond_1b
    aget-object v0, v0, v2

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    sub-int v0, p1, v0

    if-gez v0, :cond_24

    return v1

    .line 218
    :cond_24
    iget-boolean v1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    if-eqz v1, :cond_3f

    const/4 v1, 0x0

    .line 219
    :goto_29
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3f

    .line 220
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-lt v2, p1, :cond_3a

    goto :goto_3f

    :cond_3a
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 228
    :cond_3f
    :goto_3f
    iget-object p0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {p0, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result p0

    return p0

    .line 209
    :cond_46
    :goto_46
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSections()[Ljava/lang/Object;

    move-result-object p0

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method protected getSectionHeaderView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    if-eqz p3, :cond_3

    goto :goto_9

    .line 593
    :cond_3
    iget-object p3, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mContext:Landroid/content/Context;

    .line 595
    invoke-virtual {p0, p3, p1, p2, p4}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->newSectionHeaderView(Landroid/content/Context;IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 596
    :goto_9
    iget-object p4, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p3, p4, p1, p2}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->bindSectionHeaderView(Landroid/view/View;Landroid/content/Context;II)V

    return-object p3
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 1

    .line 162
    iget-object p0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez p0, :cond_b

    const-string p0, " "

    .line 163
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 165
    :cond_b
    invoke-interface {p0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected getView(IIIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    .line 577
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    if-ne v0, p2, :cond_1b

    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_1b

    .line 578
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    if-ltz v0, :cond_1b

    .line 580
    iget-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p1

    .line 581
    invoke-virtual {p0, p3, p1, p5, p6}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSectionHeaderView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 585
    :cond_1b
    invoke-super/range {p0 .. p6}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->getView(IIIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getViewTypeCount()I
    .registers 1

    .line 509
    invoke-super {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->getViewTypeCount()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected isEnabled(II)Z
    .registers 4

    .line 536
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexedPartition:I

    if-ne v0, p1, :cond_12

    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mHeaderMap:Landroid/util/SparseIntArray;

    .line 537
    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    if-ltz v0, :cond_12

    const/4 p0, 0x0

    return p0

    .line 540
    :cond_12
    invoke-super {p0, p1, p2}, Lcom/meizu/common/widget/BasePartitionAdapter;->isEnabled(II)Z

    move-result p0

    return p0
.end method

.method protected isPinnedSectionHeaderVisible(I)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public isSectionHeaderDisplayEnabled()Z
    .registers 1

    .line 107
    iget-boolean p0, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mSectionHeaderDisplayEnabled:Z

    return p0
.end method

.method protected abstract newSectionHeaderView(Landroid/content/Context;IILandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public setIndexer(Landroid/widget/SectionIndexer;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    .line 150
    iget-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mPlacementCache:Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;

    invoke-virtual {p1}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter$Placement;->invalidate()V

    .line 151
    iget-boolean p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    if-eqz p1, :cond_e

    .line 152
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->invalidate()V

    :cond_e
    return-void
.end method

.method protected setPinnedSectionHeaderView(Landroid/view/View;I)V
    .registers 4

    if-eqz p1, :cond_15

    .line 97
    sget v0, Lcom/meizu/common/R$id;->mc_header_text1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 98
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->getSections()[Ljava/lang/Object;

    move-result-object p0

    aget-object p0, p0, p2

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_15
    return-void
.end method

.method public setSectionHeaderDisplayEnabled(Z)V
    .registers 2

    .line 114
    iput-boolean p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mSectionHeaderDisplayEnabled:Z

    return-void
.end method

.method public showSectionHeaders(Z)V
    .registers 2

    .line 73
    iput-boolean p1, p0, Lcom/meizu/common/widget/PinnedHeaderIndexerArrayAdapter;->mShowSectionHeaders:Z

    .line 74
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->invalidate()V

    return-void
.end method
