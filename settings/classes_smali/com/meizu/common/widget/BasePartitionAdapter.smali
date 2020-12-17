.class public abstract Lcom/meizu/common/widget/BasePartitionAdapter;
.super Lcom/meizu/common/widget/AbsBasePartitionAdapter;
.source "BasePartitionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;,
        Lcom/meizu/common/widget/BasePartitionAdapter$Partition;
    }
.end annotation


# instance fields
.field protected mCacheValid:Z

.field protected final mContext:Landroid/content/Context;

.field protected mCount:I

.field protected mItemCounts:I

.field private mNotificationNeeded:Z

.field private mNotificationsEnabled:Z

.field protected mPartitionCount:I

.field protected mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/16 v0, 0xa

    .line 144
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/BasePartitionAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 153
    invoke-direct {p0}, Lcom/meizu/common/widget/AbsBasePartitionAdapter;-><init>()V

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mNotificationsEnabled:Z

    .line 154
    iput-object p1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mContext:Landroid/content/Context;

    .line 155
    new-array p1, p2, [Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iput-object p1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    return-void
.end method

.method private areAllPartitionFixedViewsSelectable(Ljava/util/ArrayList;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    .line 693
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    .line 694
    iget-boolean p1, p1, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->isSelectable:Z

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_16
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected addPartition(Lcom/meizu/common/widget/BasePartitionAdapter$Partition;)I
    .registers 6

    .line 166
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    array-length v2, v1

    if-lt v0, v2, :cond_11

    add-int/lit8 v2, v0, 0xa

    .line 168
    new-array v2, v2, [Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    const/4 v3, 0x0

    .line 169
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    iput-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    .line 172
    :cond_11
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    iget v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    aput-object p1, v0, v1

    .line 173
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->invalidate()V

    .line 174
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->notifyDataSetChanged()V

    .line 175
    iget p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public areAllItemsEnabled()Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 703
    :goto_2
    iget v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge v1, v2, :cond_2a

    .line 704
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v3, v2, v1

    iget-boolean v3, v3, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-eqz v3, :cond_f

    return v0

    .line 708
    :cond_f
    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/meizu/common/widget/BasePartitionAdapter;->areAllPartitionFixedViewsSelectable(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 709
    invoke-direct {p0, v2}, Lcom/meizu/common/widget/BasePartitionAdapter;->areAllPartitionFixedViewsSelectable(Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_29

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_29
    :goto_29
    return v0

    :cond_2a
    const/4 p0, 0x1

    return p0
.end method

.method protected bindHeaderView(Landroid/view/View;Landroid/content/Context;II)V
    .registers 5

    return-void
.end method

.method protected canSelect(II)Z
    .registers 3

    const/4 p0, 0x1

    return p0
.end method

.method protected ensureCacheValid()V
    .registers 6

    .line 273
    iget-boolean v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mCacheValid:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 277
    iput v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mCount:I

    .line 278
    iput v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mItemCounts:I

    .line 279
    :goto_a
    iget v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge v0, v1, :cond_69

    .line 280
    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v1, v0

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    .line 281
    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v1, v0

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    .line 282
    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v1, v0

    aget-object v3, v1, v0

    iget v3, v3, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    aget-object v4, v1, v0

    iget v4, v4, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    add-int/2addr v3, v4

    aget-object v4, v1, v0

    iget v4, v4, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    .line 285
    aget-object v2, v1, v0

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    .line 286
    aget-object v3, v1, v0

    iget-boolean v3, v3, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-eqz v3, :cond_52

    if-nez v2, :cond_50

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mShowIfEmpty:Z

    if-eqz v1, :cond_52

    :cond_50
    add-int/lit8 v2, v2, 0x1

    .line 289
    :cond_52
    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v3, v1, v0

    iput v2, v3, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    .line 290
    iget v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mCount:I

    .line 291
    iget v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mItemCounts:I

    aget-object v1, v1, v0

    iget v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mItemCounts:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_69
    const/4 v0, 0x1

    .line 294
    iput-boolean v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mCacheValid:Z

    return-void
.end method

.method public getCount()I
    .registers 1

    .line 301
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    .line 302
    iget p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mCount:I

    return p0
.end method

.method public getCountForPartition(I)I
    .registers 3

    .line 326
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge p1, v0, :cond_e

    .line 329
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    .line 330
    iget-object p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object p0, p0, p1

    iget p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    return p0

    .line 327
    :cond_e
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0
.end method

.method protected getHeaderView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    if-eqz p3, :cond_3

    goto :goto_9

    .line 927
    :cond_3
    iget-object p3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mContext:Landroid/content/Context;

    .line 929
    invoke-virtual {p0, p3, p1, p2, p4}, Lcom/meizu/common/widget/BasePartitionAdapter;->newHeaderView(Landroid/content/Context;IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 930
    :goto_9
    iget-object p4, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p3, p4, p1, p2}, Lcom/meizu/common/widget/BasePartitionAdapter;->bindHeaderView(Landroid/view/View;Landroid/content/Context;II)V

    return-object p3
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 7

    .line 760
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    const/4 v0, 0x0

    move v1, v0

    .line 762
    :goto_5
    iget v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_5f

    .line 763
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v4, v2, v0

    iget v4, v4, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int/2addr v4, v1

    if-lt p1, v1, :cond_5b

    if-ge p1, v4, :cond_5b

    sub-int/2addr p1, v1

    .line 766
    aget-object v1, v2, v0

    iget-boolean v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-eqz v1, :cond_1e

    add-int/lit8 p1, p1, -0x1

    :cond_1e
    const/4 v1, -0x1

    if-ne p1, v1, :cond_22

    return-object v3

    .line 772
    :cond_22
    invoke-virtual {p0, v0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->isHeaderView(II)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 773
    iget-object p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object p0, p0, v0

    iget-object p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    iget-object p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->data:Ljava/lang/Object;

    return-object p0

    .line 774
    :cond_37
    invoke-virtual {p0, v0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->isFooterView(II)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 775
    iget-object p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, p0, v0

    iget v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    aget-object v2, p0, v0

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    sub-int/2addr v1, v2

    .line 776
    aget-object p0, p0, v0

    iget-object p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    iget-object p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->data:Ljava/lang/Object;

    return-object p0

    .line 778
    :cond_56
    invoke-virtual {p0, v0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5b
    add-int/lit8 v0, v0, 0x1

    move v1, v4

    goto :goto_5

    :cond_5f
    return-object v3
.end method

.method protected abstract getItem(II)Ljava/lang/Object;
.end method

.method protected getItemBackgroundType(II)I
    .registers 5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    const/4 p0, 0x0

    return p0

    :cond_5
    const/4 v0, 0x1

    if-nez p2, :cond_12

    .line 681
    iget-object v1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    if-ne v1, v0, :cond_12

    const/4 p0, 0x4

    return p0

    :cond_12
    if-nez p2, :cond_15

    return v0

    .line 685
    :cond_15
    iget-object p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object p0, p0, p1

    iget p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    sub-int/2addr p0, v0

    if-ne p2, p0, :cond_20

    const/4 p0, 0x3

    return p0

    :cond_20
    const/4 p0, 0x2

    return p0
.end method

.method public getItemId(I)J
    .registers 8

    .line 791
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    const/4 v0, 0x0

    move v1, v0

    .line 793
    :goto_5
    iget v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    const-wide/16 v3, 0x0

    if-ge v0, v2, :cond_3c

    .line 794
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v5, v2, v0

    iget v5, v5, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int/2addr v5, v1

    if-lt p1, v1, :cond_38

    if-ge p1, v5, :cond_38

    sub-int/2addr p1, v1

    .line 797
    aget-object v1, v2, v0

    iget-boolean v1, v1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-eqz v1, :cond_1f

    add-int/lit8 p1, p1, -0x1

    :cond_1f
    const/4 v1, -0x1

    if-ne p1, v1, :cond_23

    return-wide v3

    .line 803
    :cond_23
    invoke-virtual {p0, v0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->isHeaderView(II)Z

    move-result v1

    if-nez v1, :cond_35

    invoke-virtual {p0, v0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->isFooterView(II)Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_35

    .line 806
    :cond_30
    invoke-virtual {p0, v0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->getItemId(II)J

    move-result-wide p0

    return-wide p0

    :cond_35
    :goto_35
    const-wide/16 p0, -0x1

    return-wide p0

    :cond_38
    add-int/lit8 v0, v0, 0x1

    move v1, v5

    goto :goto_5

    :cond_3c
    return-wide v3
.end method

.method protected abstract getItemId(II)J
.end method

.method public getItemViewType(I)I
    .registers 7

    .line 642
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 644
    :goto_6
    iget v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge v1, v3, :cond_3b

    .line 645
    iget-object v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v4, v3, v1

    iget v4, v4, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int/2addr v4, v2

    if-lt p1, v2, :cond_37

    if-ge p1, v4, :cond_37

    sub-int v2, p1, v2

    .line 648
    aget-object v3, v3, v1

    iget-boolean v3, v3, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-eqz v3, :cond_1f

    add-int/lit8 v2, v2, -0x1

    :cond_1f
    const/4 v3, -0x1

    if-ne v2, v3, :cond_23

    return v0

    .line 654
    :cond_23
    invoke-virtual {p0, v1, v2}, Lcom/meizu/common/widget/BasePartitionAdapter;->isHeaderView(II)Z

    move-result v0

    if-nez v0, :cond_35

    invoke-virtual {p0, v1, v2}, Lcom/meizu/common/widget/BasePartitionAdapter;->isFooterView(II)Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_35

    .line 657
    :cond_30
    invoke-virtual {p0, v1, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->getItemViewType(II)I

    move-result p0

    return p0

    :cond_35
    :goto_35
    const/4 p0, -0x2

    return p0

    :cond_37
    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_6

    .line 663
    :cond_3b
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0
.end method

.method protected getItemViewType(II)I
    .registers 3

    const/4 p0, 0x1

    return p0
.end method

.method public getItemViewTypeCount()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public getOffsetInPartition(I)I
    .registers 6

    .line 389
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    const/4 v0, 0x0

    move v1, v0

    .line 391
    :goto_5
    iget v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge v0, v2, :cond_22

    .line 392
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v3, v2, v0

    iget v3, v3, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int/2addr v3, v1

    if-lt p1, v1, :cond_1e

    if-ge p1, v3, :cond_1e

    sub-int/2addr p1, v1

    .line 395
    aget-object p0, v2, v0

    iget-boolean p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-eqz p0, :cond_1d

    add-int/lit8 p1, p1, -0x1

    :cond_1d
    return p1

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_5

    .line 403
    :cond_22
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0
.end method

.method public getPartition(I)Lcom/meizu/common/widget/BasePartitionAdapter$Partition;
    .registers 3

    .line 214
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge p1, v0, :cond_9

    .line 217
    iget-object p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object p0, p0, p1

    return-object p0

    .line 215
    :cond_9
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0
.end method

.method public getPartitionCount()I
    .registers 1

    .line 317
    iget p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    return p0
.end method

.method public getPartitionForPosition(I)I
    .registers 5

    .line 370
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    const/4 v0, 0x0

    move v1, v0

    .line 372
    :goto_5
    iget v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge v0, v2, :cond_19

    .line 373
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int/2addr v2, v1

    if-lt p1, v1, :cond_15

    if-ge p1, v2, :cond_15

    return v0

    :cond_15
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_5

    :cond_19
    const/4 p0, -0x1

    return p0
.end method

.method public getPositionForPartition(I)I
    .registers 5

    .line 414
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge p1, v0, :cond_16

    .line 418
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    const/4 v0, 0x0

    move v1, v0

    :goto_9
    if-ge v0, p1, :cond_15

    .line 421
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_15
    return v1

    .line 415
    :cond_16
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0
.end method

.method protected abstract getView(IIIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12

    .line 879
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    const/4 v0, 0x0

    move v1, v0

    .line 881
    :goto_5
    iget v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge v0, v2, :cond_8f

    .line 882
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v3, v2, v0

    iget v3, v3, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int/2addr v3, v1

    if-lt p1, v1, :cond_8a

    if-ge p1, v3, :cond_8a

    sub-int v1, p1, v1

    .line 885
    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-eqz v2, :cond_1e

    add-int/lit8 v1, v1, -0x1

    :cond_1e
    move v4, v1

    .line 889
    invoke-virtual {p0, v0, v4}, Lcom/meizu/common/widget/BasePartitionAdapter;->getItemBackgroundType(II)I

    move-result v5

    const/4 v1, -0x1

    if-ne v4, v1, :cond_2b

    .line 892
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/meizu/common/widget/BasePartitionAdapter;->getHeaderView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    goto :goto_68

    .line 893
    :cond_2b
    invoke-virtual {p0, v0, v4}, Lcom/meizu/common/widget/BasePartitionAdapter;->isHeaderView(II)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 894
    iget-object p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object p0, p0, v0

    iget-object p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    iget-object p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->view:Landroid/view/View;

    goto :goto_68

    .line 895
    :cond_40
    invoke-virtual {p0, v0, v4}, Lcom/meizu/common/widget/BasePartitionAdapter;->isFooterView(II)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 896
    iget-object p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object p2, p0, v0

    iget p2, p2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    aget-object p3, p0, v0

    iget p3, p3, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    sub-int/2addr p2, p3

    .line 897
    aget-object p0, p0, v0

    iget-object p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int/2addr v4, p2

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    iget-object p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->view:Landroid/view/View;

    goto :goto_68

    :cond_5f
    move-object v1, p0

    move v2, p1

    move v3, v0

    move-object v6, p2

    move-object v7, p3

    .line 899
    invoke-virtual/range {v1 .. v7}, Lcom/meizu/common/widget/BasePartitionAdapter;->getView(IIIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    :goto_68
    if-eqz p0, :cond_6b

    return-object p0

    .line 903
    :cond_6b
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "View should not be null, partition: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " position: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8a
    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto/16 :goto_5

    .line 919
    :cond_8f
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0
.end method

.method public getViewTypeCount()I
    .registers 1

    .line 628
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->getItemViewTypeCount()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hasHeader(I)Z
    .registers 2

    .line 239
    iget-object p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object p0, p0, p1

    iget-boolean p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    return p0
.end method

.method protected invalidate()V
    .registers 2

    const/4 v0, 0x0

    .line 265
    iput-boolean v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mCacheValid:Z

    return-void
.end method

.method public isEnabled(I)Z
    .registers 7

    .line 721
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 723
    :goto_6
    iget v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge v1, v3, :cond_66

    .line 724
    iget-object v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v4, v3, v1

    iget v4, v4, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mSize:I

    add-int/2addr v4, v2

    if-lt p1, v2, :cond_62

    if-ge p1, v4, :cond_62

    sub-int/2addr p1, v2

    .line 727
    aget-object v2, v3, v1

    iget-boolean v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    if-eqz v2, :cond_1e

    add-int/lit8 p1, p1, -0x1

    :cond_1e
    const/4 v2, -0x1

    if-ne p1, v2, :cond_22

    return v0

    .line 733
    :cond_22
    invoke-virtual {p0, v1, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->isHeaderView(II)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 734
    iget-object p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object p0, p0, v1

    iget-object p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    iget-boolean p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->isSelectable:Z

    return p0

    .line 735
    :cond_37
    invoke-virtual {p0, v1, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->isFooterView(II)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 736
    iget-object p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, p0, v1

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    aget-object v2, p0, v1

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    sub-int/2addr v0, v2

    .line 737
    aget-object p0, p0, v1

    iget-object p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;

    iget-boolean p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter$PartitionFixedViewInfo;->isSelectable:Z

    return p0

    .line 738
    :cond_56
    invoke-virtual {p0, v1, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->canSelect(II)Z

    move-result v2

    if-nez v2, :cond_5d

    return v0

    .line 741
    :cond_5d
    invoke-virtual {p0, v1, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->isEnabled(II)Z

    move-result p0

    return p0

    :cond_62
    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_6

    :cond_66
    return v0
.end method

.method protected isEnabled(II)Z
    .registers 3

    const/4 p0, 0x1

    return p0
.end method

.method protected isFooterView(II)Z
    .registers 4

    .line 623
    iget-object p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v0, p0, p1

    iget v0, v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    aget-object p0, p0, p1

    iget p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mFooterViewsCount:I

    sub-int/2addr v0, p0

    if-lt p2, v0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method protected isHeaderView(II)Z
    .registers 3

    if-ltz p2, :cond_c

    .line 592
    iget-object p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object p0, p0, p1

    iget p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    if-ge p2, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isPartitionEmpty(I)Z
    .registers 3

    .line 339
    iget v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitionCount:I

    if-ge p1, v0, :cond_13

    .line 342
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->ensureCacheValid()V

    .line 343
    iget-object p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object p0, p0, p1

    iget p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mCount:I

    if-nez p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0

    .line 340
    :cond_13
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0
.end method

.method protected newHeaderView(Landroid/content/Context;IILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    const/4 p0, 0x0

    return-object p0
.end method

.method public notifyDataSetChanged()V
    .registers 2

    .line 833
    iget-boolean v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mNotificationsEnabled:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    .line 834
    iput-boolean v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mNotificationNeeded:Z

    .line 835
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_e

    :cond_b
    const/4 v0, 0x1

    .line 837
    iput-boolean v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mNotificationNeeded:Z

    :goto_e
    return-void
.end method

.method public setHasHeader(IZ)V
    .registers 4

    .line 246
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object p1, v0, p1

    iput-boolean p2, p1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHasHeader:Z

    .line 247
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->invalidate()V

    return-void
.end method

.method public setNotificationsEnabled(Z)V
    .registers 2

    .line 825
    iput-boolean p1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mNotificationsEnabled:Z

    if-eqz p1, :cond_b

    .line 826
    iget-boolean p1, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mNotificationNeeded:Z

    if-eqz p1, :cond_b

    .line 827
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->notifyDataSetChanged()V

    :cond_b
    return-void
.end method
