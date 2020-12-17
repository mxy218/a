.class public abstract Lcom/meizu/common/widget/SingleArrayPartitionAdapter;
.super Lcom/meizu/common/widget/BasePartitionAdapter;
.source "SingleArrayPartitionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/meizu/common/widget/BasePartitionAdapter;"
    }
.end annotation


# instance fields
.field protected mObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Ljava/util/List;[I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;[I)V"
        }
    .end annotation

    if-eqz p3, :cond_7

    .line 38
    array-length v0, p3

    if-lez v0, :cond_7

    array-length v0, p3

    goto :goto_9

    :cond_7
    const/16 v0, 0xa

    :goto_9
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/BasePartitionAdapter;-><init>(Landroid/content/Context;I)V

    .line 39
    iput-object p2, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    .line 40
    invoke-direct {p0, p3}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->addPartitions([I)V

    return-void
.end method

.method private addPartitions([I)V
    .registers 6

    if-eqz p1, :cond_19

    .line 47
    array-length v0, p1

    if-lez v0, :cond_19

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BasePartitionAdapter;->setNotificationsEnabled(Z)V

    move v1, v0

    .line 49
    :goto_a
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v1, v2, :cond_16

    .line 50
    aget v2, p1, v1

    invoke-virtual {p0, v0, v3, v2}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->addPartition(ZZI)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 52
    :cond_16
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/BasePartitionAdapter;->setNotificationsEnabled(Z)V

    :cond_19
    return-void
.end method


# virtual methods
.method public addPartition(Lcom/meizu/common/widget/BasePartitionAdapter$Partition;)I
    .registers 2

    .line 70
    invoke-super {p0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->addPartition(Lcom/meizu/common/widget/BasePartitionAdapter$Partition;)I

    move-result p0

    return p0
.end method

.method public addPartition(ZZI)I
    .registers 5

    .line 65
    new-instance v0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    invoke-direct {v0, p1, p2, p3}, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;-><init>(ZZI)V

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->addPartition(Lcom/meizu/common/widget/BasePartitionAdapter$Partition;)I

    move-result p0

    return p0
.end method

.method protected abstract bindView(Landroid/view/View;Landroid/content/Context;IILjava/lang/Object;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/content/Context;",
            "IITT;II)V"
        }
    .end annotation
.end method

.method protected getDataPosition(II)I
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v0, p1, :cond_e

    .line 217
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mItemCount:I

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 219
    :cond_e
    iget-object v0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object p1, v0, p1

    iget p1, p1, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    sub-int/2addr p2, p1

    add-int/2addr v1, p2

    .line 221
    iget-object p1, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    if-eqz p1, :cond_5e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt v1, p1, :cond_5e

    .line 223
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Different data source: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    if-nez v0, :cond_33

    const-string v0, "mObjects null"

    goto :goto_4a

    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mObjects.size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    .line 224
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4a
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    .line 225
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5e
    return v1
.end method

.method protected getItem(II)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 240
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->getDataPosition(II)I

    move-result p1

    .line 241
    iget-object p0, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected getItemId(II)J
    .registers 4

    .line 250
    iget-object v0, p0, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    if-nez v0, :cond_7

    const-wide/16 p0, 0x0

    return-wide p0

    .line 253
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->getDataPosition(II)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method protected getView(IIIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 20

    move-object v8, p0

    .line 260
    iget-object v0, v8, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    if-eqz v0, :cond_37

    move v9, p2

    move/from16 v10, p3

    .line 264
    invoke-virtual {p0, p2, v10}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->getDataPosition(II)I

    move-result v0

    .line 265
    iget-object v1, v8, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-nez p5, :cond_26

    .line 269
    iget-object v1, v8, Lcom/meizu/common/widget/BasePartitionAdapter;->mContext:Landroid/content/Context;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, v11

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->newView(Landroid/content/Context;IILjava/lang/Object;IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    goto :goto_28

    :cond_26
    move-object/from16 v12, p5

    .line 274
    :goto_28
    iget-object v2, v8, Lcom/meizu/common/widget/BasePartitionAdapter;->mContext:Landroid/content/Context;

    move-object v0, p0

    move-object v1, v12

    move v3, p1

    move v4, p2

    move-object v5, v11

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;->bindView(Landroid/view/View;Landroid/content/Context;IILjava/lang/Object;II)V

    return-object v12

    .line 261
    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "the list is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract newView(Landroid/content/Context;IILjava/lang/Object;IILandroid/view/ViewGroup;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IITT;II",
            "Landroid/view/ViewGroup;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation
.end method
