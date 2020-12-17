.class public abstract Lcom/meizu/common/widget/MultiCursorPartitionAdapter;
.super Lcom/meizu/common/widget/BasePartitionAdapter;
.source "MultiCursorPartitionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;
    }
.end annotation


# virtual methods
.method protected abstract bindView(Landroid/view/View;Landroid/content/Context;IILandroid/database/Cursor;II)V
.end method

.method protected getDataPosition(II)I
    .registers 3

    .line 152
    iget-object p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mPartitions:[Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    aget-object p0, p0, p1

    iget p0, p0, Lcom/meizu/common/widget/BasePartitionAdapter$Partition;->mHeaderViewsCount:I

    sub-int/2addr p2, p0

    return p2
.end method

.method protected getItem(II)Ljava/lang/Object;
    .registers 6

    .line 252
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;

    move-result-object v0

    iget-object v0, v0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 253
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_1e

    .line 257
    :cond_10
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->getDataPosition(II)I

    move-result p0

    if-ltz p0, :cond_1e

    .line 258
    invoke-interface {v0, p0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p0

    if-nez p0, :cond_1d

    goto :goto_1e

    :cond_1d
    return-object v0

    :cond_1e
    :goto_1e
    return-object v1
.end method

.method protected getItemId(II)J
    .registers 8

    .line 269
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;

    move-result-object v0

    .line 270
    iget v1, v0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mRowIDColumnIndex:I

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    if-ne v1, v4, :cond_c

    return-wide v2

    .line 274
    :cond_c
    iget-object v1, v0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2b

    .line 275
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_17

    goto :goto_2b

    .line 279
    :cond_17
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->getDataPosition(II)I

    move-result p0

    if-ltz p0, :cond_2b

    .line 280
    invoke-interface {v1, p0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p0

    if-nez p0, :cond_24

    goto :goto_2b

    .line 284
    :cond_24
    iget p0, v0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mRowIDColumnIndex:I

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    return-wide p0

    :cond_2b
    :goto_2b
    return-wide v2
.end method

.method public getPartition(I)Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;
    .registers 2

    .line 109
    invoke-super {p0, p1}, Lcom/meizu/common/widget/BasePartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/BasePartitionAdapter$Partition;

    move-result-object p0

    check-cast p0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;

    return-object p0
.end method

.method protected getView(IIIILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 16

    .line 197
    invoke-virtual {p0, p2}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->getPartition(I)Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;

    move-result-object v0

    iget-object v0, v0, Lcom/meizu/common/widget/MultiCursorPartitionAdapter$CursorPartition;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_45

    .line 202
    invoke-virtual {p0, p2, p3}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->getDataPosition(II)I

    move-result v1

    .line 203
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    if-nez p5, :cond_21

    .line 209
    iget-object v2, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mContext:Landroid/content/Context;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, v0

    move v6, p3

    move v7, p4

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->newView(Landroid/content/Context;IILandroid/database/Cursor;IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p5

    .line 214
    :cond_21
    iget-object v3, p0, Lcom/meizu/common/widget/BasePartitionAdapter;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v2, p5

    move v4, p1

    move v5, p2

    move-object v6, v0

    move v7, p3

    move v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/meizu/common/widget/MultiCursorPartitionAdapter;->bindView(Landroid/view/View;Landroid/content/Context;IILandroid/database/Cursor;II)V

    return-object p5

    .line 204
    :cond_2e
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t move cursor to position "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 199
    :cond_45
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "the partition "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " cursor is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected abstract newView(Landroid/content/Context;IILandroid/database/Cursor;IILandroid/view/ViewGroup;)Landroid/view/View;
.end method
