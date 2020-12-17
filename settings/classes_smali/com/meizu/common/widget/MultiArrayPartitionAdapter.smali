.class public abstract Lcom/meizu/common/widget/MultiArrayPartitionAdapter;
.super Lcom/meizu/common/widget/BasePartitionAdapter;
.source "MultiArrayPartitionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/meizu/common/widget/BasePartitionAdapter;"
    }
.end annotation


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

    if-eqz p2, :cond_7

    .line 49
    array-length v0, p2

    if-lez v0, :cond_7

    array-length v0, p2

    goto :goto_9

    :cond_7
    const/16 v0, 0xa

    :goto_9
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/BasePartitionAdapter;-><init>(Landroid/content/Context;I)V

    .line 50
    invoke-virtual {p0, p2}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->addPartitions([Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public addPartition(Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;)I
    .registers 2

    .line 81
    invoke-super {p0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->addPartition(Lcom/meizu/common/widget/BasePartitionAdapter$Partition;)I

    move-result p0

    return p0
.end method

.method public addPartition(ZZLjava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List<",
            "TT;>;)I"
        }
    .end annotation

    .line 77
    new-instance v0, Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;

    invoke-direct {v0, p1, p2, p3}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;-><init>(ZZLjava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->addPartition(Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;)I

    move-result p0

    return p0
.end method

.method public varargs addPartitions([Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_19

    .line 59
    array-length v0, p1

    if-lez v0, :cond_19

    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BasePartitionAdapter;->setNotificationsEnabled(Z)V

    move v1, v0

    .line 61
    :goto_a
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v1, v2, :cond_16

    .line 62
    aget-object v2, p1, v1

    invoke-virtual {p0, v0, v3, v2}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->addPartition(ZZLjava/util/List;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 64
    :cond_16
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/BasePartitionAdapter;->setNotificationsEnabled(Z)V

    :cond_19
    return-void
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
    .registers 3

    .line 127
    iget-object p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object p0, p0, p1

    iget p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    sub-int/2addr p2, p0

    return p2
.end method

.method protected getItem(II)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .line 150
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;

    move-result-object v0

    iget-object v0, v0, Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;->mObjects:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 155
    :cond_a
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->getDataPosition(II)I

    move-result p0

    if-gez p0, :cond_11

    return-object v1

    .line 159
    :cond_11
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected getItemId(II)J
    .registers 6

    .line 168
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;

    move-result-object v0

    iget-object v0, v0, Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;->mObjects:Ljava/util/List;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_b

    return-wide v1

    .line 171
    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->getDataPosition(II)I

    move-result p0

    if-gez p0, :cond_12

    return-wide v1

    :cond_12
    int-to-long p0, p0

    return-wide p0
.end method

.method public getPartition(I)Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;
    .registers 2

    .line 86
    invoke-super {p0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    move-result-object p0

    check-cast p0, Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;

    return-object p0
.end method

.method protected getView(IIIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 20

    move-object v8, p0

    move v9, p2

    .line 182
    invoke-virtual {p0, p2}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;

    move-result-object v0

    iget-object v0, v0, Lcom/meizu/common/widget/MultiArrayPartitionAdapter$ArrayPartition;->mObjects:Ljava/util/List;

    if-eqz v0, :cond_bb

    .line 187
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "MultiArrayPartitionAdapter getView exception, List partition item size :"

    const-string v3, "IndexOutOfBounds"

    if-lez v1, :cond_9d

    move/from16 v10, p3

    .line 192
    invoke-virtual {p0, p2, v10}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->getDataPosition(II)I

    move-result v1

    .line 193
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_49

    .line 198
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    if-nez p5, :cond_38

    .line 202
    iget-object v1, v8, Lcom/meizu/common/widget/BasePartitionAdapter;->mContext:Landroid/content/Context;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, v11

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->newView(Landroid/content/Context;IILjava/lang/Object;IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    goto :goto_3a

    :cond_38
    move-object/from16 v12, p5

    .line 207
    :goto_3a
    iget-object v2, v8, Lcom/meizu/common/widget/BasePartitionAdapter;->mContext:Landroid/content/Context;

    move-object v0, p0

    move-object v1, v12

    move v3, p1

    move v4, p2

    move-object v5, v11

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/meizu/common/widget/MultiArrayPartitionAdapter;->bindView(Landroid/view/View;Landroid/content/Context;IILjava/lang/Object;II)V

    return-object v12

    .line 194
    :cond_49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", listIndex :"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APP越界操作:当前数据集大小为:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",有效访问范围为:0~"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",当前访问序号为:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",非法,请处理！"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 188
    :cond_9d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "APP数据集为空:请先检查数据集中书否有数据,然后再访问!"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_bb
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the partition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " list is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

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
