.class public abstract Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;
.super Lcom/meizu/common/widget/MultiArrayPartitionAdapter;
.source "PinnedHeaderArrayAdapter.java"

# interfaces
.implements Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/meizu/common/widget/MultiArrayPartitionAdapter<",
        "TT;>;",
        "Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;"
    }
.end annotation


# instance fields
.field private mHeaderVisibility:[Z

.field private mPinnedPartitionHeadersEnabled:Z


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;[Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;-><init>(Landroid/content/Context;[Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public configurePinnedHeaders(Lcom/meizu/common/widget/PinnedHeaderListView;)V
    .registers 13

    .line 91
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mPinnedPartitionHeadersEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 95
    :cond_5
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->getPartitionCount()I

    move-result v0

    .line 98
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mHeaderVisibility:[Z

    if-eqz v1, :cond_10

    array-length v1, v1

    if-eq v1, v0, :cond_14

    .line 99
    :cond_10
    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mHeaderVisibility:[Z

    :cond_14
    const/4 v1, 0x0

    move v2, v1

    :goto_16
    const/4 v3, 0x1

    if-ge v2, v0, :cond_29

    .line 102
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->isPinnedPartitionHeaderVisible(I)Z

    move-result v4

    .line 103
    iget-object v5, p0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mHeaderVisibility:[Z

    aput-boolean v4, v5, v2

    if-nez v4, :cond_26

    .line 105
    invoke-virtual {p1, v2, v3}, Lcom/meizu/common/widget/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 109
    :cond_29
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    const/4 v4, -0x1

    move v5, v1

    move v6, v5

    move v7, v4

    :goto_31
    if-ge v5, v0, :cond_51

    .line 115
    iget-object v8, p0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mHeaderVisibility:[Z

    aget-boolean v8, v8, v5

    if-eqz v8, :cond_4e

    .line 116
    invoke-virtual {p1, v6}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPositionAt(I)I

    move-result v8

    sub-int/2addr v8, v2

    .line 117
    invoke-virtual {p0, v8}, Lcom/meizu/common/widget/BasePartitionAdapter;->getPartitionForPosition(I)I

    move-result v8

    if-le v5, v8, :cond_45

    goto :goto_51

    .line 122
    :cond_45
    invoke-virtual {p1, v5, v6, v1}, Lcom/meizu/common/widget/PinnedHeaderListView;->setHeaderPinnedAtTop(IIZ)V

    .line 123
    invoke-virtual {p1, v5}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPinnedHeaderHeight(I)I

    move-result v7

    add-int/2addr v6, v7

    move v7, v5

    :cond_4e
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 131
    :cond_51
    :goto_51
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeight()I

    move-result v5

    move v8, v0

    move v6, v1

    :cond_57
    :goto_57
    add-int/2addr v0, v4

    if-le v0, v7, :cond_8a

    .line 133
    iget-object v9, p0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mHeaderVisibility:[Z

    aget-boolean v9, v9, v0

    if-eqz v9, :cond_57

    sub-int v9, v5, v6

    .line 134
    invoke-virtual {p1, v9}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPositionAt(I)I

    move-result v9

    sub-int/2addr v9, v2

    if-gez v9, :cond_6a

    goto :goto_8a

    :cond_6a
    add-int/lit8 v10, v9, -0x1

    .line 140
    invoke-virtual {p0, v10}, Lcom/meizu/common/widget/BasePartitionAdapter;->getPartitionForPosition(I)I

    move-result v10

    if-eq v10, v4, :cond_8a

    if-gt v0, v10, :cond_75

    goto :goto_8a

    .line 145
    :cond_75
    invoke-virtual {p1, v0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPinnedHeaderHeight(I)I

    move-result v8

    add-int/2addr v6, v8

    .line 149
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BasePartitionAdapter;->getPositionForPartition(I)I

    move-result v8

    if-ge v9, v8, :cond_82

    move v8, v3

    goto :goto_83

    :cond_82
    move v8, v1

    :goto_83
    sub-int v9, v5, v6

    .line 151
    invoke-virtual {p1, v0, v9, v8}, Lcom/meizu/common/widget/PinnedHeaderListView;->setHeaderPinnedAtBottom(IIZ)V

    move v8, v0

    goto :goto_57

    :cond_8a
    :goto_8a
    add-int/2addr v7, v3

    :goto_8b
    if-ge v7, v8, :cond_9d

    .line 158
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mHeaderVisibility:[Z

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_9a

    .line 159
    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/BasePartitionAdapter;->isPartitionEmpty(I)Z

    move-result v0

    invoke-virtual {p1, v7, v0}, Lcom/meizu/common/widget/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    :cond_9a
    add-int/lit8 v7, v7, 0x1

    goto :goto_8b

    :cond_9d
    return-void
.end method

.method public getPinnedHeaderCount()I
    .registers 2

    .line 49
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mPinnedPartitionHeadersEnabled:Z

    if-eqz v0, :cond_9

    .line 50
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->getPartitionCount()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    .line 67
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->hasHeader(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    if-eqz p2, :cond_18

    .line 70
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_18

    .line 71
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_18

    goto :goto_19

    :cond_18
    move-object p2, v1

    .line 75
    :goto_19
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->getPositionForPartition(I)I

    move-result v0

    if-nez p2, :cond_33

    .line 77
    iget-object p2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2, v0, p1, p3}, Lcom/meizu/common/widget/BasePartitionAdapter;->newHeaderView(Landroid/content/Context;IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    .line 78
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p2, p3}, Landroid/view/View;->setFocusable(Z)V

    .line 80
    invoke-virtual {p2, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 82
    :cond_33
    iget-object p3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2, p3, v0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->bindHeaderView(Landroid/view/View;Landroid/content/Context;II)V

    return-object p2

    :cond_39
    return-object v1
.end method

.method protected isPinnedPartitionHeaderVisible(I)Z
    .registers 3

    .line 57
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderArrayAdapter;->mPinnedPartitionHeadersEnabled:Z

    if-eqz v0, :cond_12

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->hasHeader(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 58
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->isPartitionEmpty(I)Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method
