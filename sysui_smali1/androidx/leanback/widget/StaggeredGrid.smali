.class abstract Landroidx/leanback/widget/StaggeredGrid;
.super Landroidx/leanback/widget/Grid;
.source "StaggeredGrid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/StaggeredGrid$Location;
    }
.end annotation


# instance fields
.field protected mFirstIndex:I

.field protected mLocations:Landroidx/collection/CircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/CircularArray<",
            "Landroidx/leanback/widget/StaggeredGrid$Location;",
            ">;"
        }
    .end annotation
.end field

.field protected mPendingItem:Ljava/lang/Object;

.field protected mPendingItemSize:I


# direct methods
.method constructor <init>()V
    .registers 3

    .line 39
    invoke-direct {p0}, Landroidx/leanback/widget/Grid;-><init>()V

    .line 64
    new-instance v0, Landroidx/collection/CircularArray;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroidx/collection/CircularArray;-><init>(I)V

    iput-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    return-void
.end method

.method private calculateOffsetAfterLastItem(I)I
    .registers 5

    .line 202
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v0

    .line 204
    :goto_4
    iget v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_16

    .line 205
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v1

    .line 206
    iget v1, v1, Landroidx/leanback/widget/Grid$Location;->row:I

    if-ne v1, p1, :cond_13

    move p1, v2

    goto :goto_17

    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_16
    const/4 p1, 0x0

    :goto_17
    if-nez p1, :cond_1d

    .line 213
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v0

    .line 218
    :cond_1d
    invoke-virtual {p0}, Landroidx/leanback/widget/Grid;->isReversedFlow()Z

    move-result p1

    if-eqz p1, :cond_2e

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object p1

    iget p1, p1, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    neg-int p1, p1

    iget v1, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    sub-int/2addr p1, v1

    goto :goto_37

    .line 219
    :cond_2e
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object p1

    iget p1, p1, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    iget v1, p0, Landroidx/leanback/widget/Grid;->mSpacing:I

    add-int/2addr p1, v1

    :goto_37
    add-int/2addr v0, v2

    .line 220
    :goto_38
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v1

    if-gt v0, v1, :cond_48

    .line 221
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v1

    iget v1, v1, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_48
    return p1
.end method


# virtual methods
.method protected final appendVisbleItemsWithCache(IZ)Z
    .registers 18

    move-object v0, p0

    .line 295
    iget-object v1, v0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v1}, Landroidx/collection/CircularArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_b

    return v2

    .line 298
    :cond_b
    iget-object v1, v0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v1}, Landroidx/leanback/widget/Grid$Provider;->getCount()I

    move-result v1

    .line 301
    iget v3, v0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    const v4, 0x7fffffff

    const/4 v5, 0x1

    if-ltz v3, :cond_22

    add-int/lit8 v6, v3, 0x1

    .line 304
    iget-object v7, v0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v7, v3}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v3

    goto :goto_40

    .line 308
    :cond_22
    iget v3, v0, Landroidx/leanback/widget/Grid;->mStartIndex:I

    const/4 v6, -0x1

    if-eq v3, v6, :cond_29

    move v6, v3

    goto :goto_2a

    :cond_29
    move v6, v2

    .line 309
    :goto_2a
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v3

    add-int/2addr v3, v5

    if-gt v6, v3, :cond_99

    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getFirstIndex()I

    move-result v3

    if-ge v6, v3, :cond_38

    goto :goto_99

    .line 313
    :cond_38
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v3

    if-le v6, v3, :cond_3f

    return v2

    :cond_3f
    move v3, v4

    .line 318
    :goto_40
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v7

    :goto_44
    if-ge v6, v1, :cond_98

    if-gt v6, v7, :cond_98

    .line 320
    invoke-virtual {p0, v6}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v8

    if-eq v3, v4, :cond_51

    .line 322
    iget v9, v8, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v3, v9

    .line 324
    :cond_51
    iget v14, v8, Landroidx/leanback/widget/Grid$Location;->row:I

    .line 325
    iget-object v9, v0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget-object v10, v0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v9, v6, v5, v10, v2}, Landroidx/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v11

    .line 326
    iget v9, v8, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    if-eq v11, v9, :cond_68

    .line 327
    iput v11, v8, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    .line 328
    iget-object v8, v0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    sub-int/2addr v7, v6

    invoke-virtual {v8, v7}, Landroidx/collection/CircularArray;->removeFromEnd(I)V

    move v7, v6

    .line 331
    :cond_68
    iput v6, v0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 332
    iget v8, v0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-gez v8, :cond_70

    .line 333
    iput v6, v0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 335
    :cond_70
    iget-object v8, v0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget-object v9, v0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    aget-object v9, v9, v2

    move v10, v6

    move v12, v14

    move v13, v3

    invoke-interface/range {v8 .. v13}, Landroidx/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    if-nez p2, :cond_85

    .line 336
    invoke-virtual/range {p0 .. p1}, Landroidx/leanback/widget/Grid;->checkAppendOverLimit(I)Z

    move-result v8

    if-eqz v8, :cond_85

    return v5

    :cond_85
    if-ne v3, v4, :cond_8d

    .line 340
    iget-object v3, v0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v3, v6}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v3

    .line 343
    :cond_8d
    iget v8, v0, Landroidx/leanback/widget/Grid;->mNumRows:I

    sub-int/2addr v8, v5

    if-ne v14, v8, :cond_95

    if-eqz p2, :cond_95

    return v5

    :cond_95
    add-int/lit8 v6, v6, 0x1

    goto :goto_44

    :cond_98
    return v2

    .line 311
    :cond_99
    :goto_99
    iget-object v0, v0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v0}, Landroidx/collection/CircularArray;->clear()V

    return v2
.end method

.method protected final appendVisibleItemToRow(III)I
    .registers 14

    .line 364
    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    if-ltz v0, :cond_17

    .line 365
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v1

    if-ne v0, v1, :cond_11

    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    add-int/lit8 v1, p1, -0x1

    if-ne v0, v1, :cond_11

    goto :goto_17

    .line 367
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 370
    :cond_17
    :goto_17
    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_33

    .line 373
    iget-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    if-lez v0, :cond_31

    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v0

    add-int/2addr v0, v2

    if-ne p1, v0, :cond_31

    .line 374
    invoke-direct {p0, p2}, Landroidx/leanback/widget/StaggeredGrid;->calculateOffsetAfterLastItem(I)I

    move-result v0

    goto :goto_3b

    :cond_31
    move v0, v1

    goto :goto_3b

    .line 379
    :cond_33
    iget-object v3, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v3, v0}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    sub-int v0, p3, v0

    .line 381
    :goto_3b
    new-instance v3, Landroidx/leanback/widget/StaggeredGrid$Location;

    invoke-direct {v3, p2, v0, v1}, Landroidx/leanback/widget/StaggeredGrid$Location;-><init>(III)V

    .line 382
    iget-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v0, v3}, Landroidx/collection/CircularArray;->addLast(Ljava/lang/Object;)V

    .line 384
    iget-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    if-eqz v0, :cond_51

    .line 385
    iget v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItemSize:I

    iput v1, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    const/4 v1, 0x0

    .line 387
    iput-object v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    goto :goto_5f

    .line 389
    :cond_51
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v0, p1, v2, v4, v1}, Landroidx/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v0

    iput v0, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    .line 390
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    aget-object v0, v0, v1

    :goto_5f
    move-object v5, v0

    .line 392
    iget-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    if-ne v0, v2, :cond_6f

    .line 393
    iput p1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    iput p1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    iput p1, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    goto :goto_7b

    .line 395
    :cond_6f
    iget v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    if-gez v0, :cond_78

    .line 396
    iput p1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    iput p1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    goto :goto_7b

    :cond_78
    add-int/2addr v0, v2

    .line 398
    iput v0, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 401
    :goto_7b
    iget-object v4, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget v7, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    move v6, p1

    move v8, p2

    move v9, p3

    invoke-interface/range {v4 .. v9}, Landroidx/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    .line 402
    iget p0, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    return p0
.end method

.method protected final appendVisibleItems(IZ)Z
    .registers 6

    .line 272
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroidx/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    if-nez p2, :cond_13

    .line 275
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkAppendOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    const/4 v0, 0x0

    .line 279
    :try_start_14
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/StaggeredGrid;->appendVisbleItemsWithCache(IZ)Z

    move-result v2
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_2b

    if-eqz v2, :cond_22

    const/4 p1, 0x1

    .line 284
    iget-object p2, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    aput-object v0, p2, v1

    .line 285
    :goto_1f
    iput-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    return p1

    .line 282
    :cond_22
    :try_start_22
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/StaggeredGrid;->appendVisibleItemsWithoutCache(IZ)Z

    move-result p1
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_2b

    .line 284
    iget-object p2, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    aput-object v0, p2, v1

    goto :goto_1f

    :catchall_2b
    move-exception p1

    iget-object p2, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    aput-object v0, p2, v1

    .line 285
    iput-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    throw p1
.end method

.method protected abstract appendVisibleItemsWithoutCache(IZ)Z
.end method

.method public final getFirstIndex()I
    .registers 1

    .line 78
    iget p0, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    return p0
.end method

.method public final getItemPositionsInRows(II)[Landroidx/collection/CircularIntArray;
    .registers 6

    const/4 v0, 0x0

    .line 407
    :goto_1
    iget v1, p0, Landroidx/leanback/widget/Grid;->mNumRows:I

    if-ge v0, v1, :cond_f

    .line 408
    iget-object v1, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/collection/CircularIntArray;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    if-ltz p1, :cond_3b

    :goto_11
    if-gt p1, p2, :cond_3b

    .line 412
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    invoke-virtual {p0, p1}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v1

    iget v1, v1, Landroidx/leanback/widget/Grid$Location;->row:I

    aget-object v0, v0, v1

    .line 413
    invoke-virtual {v0}, Landroidx/collection/CircularIntArray;->size()I

    move-result v1

    if-lez v1, :cond_32

    invoke-virtual {v0}, Landroidx/collection/CircularIntArray;->getLast()I

    move-result v1

    add-int/lit8 v2, p1, -0x1

    if-ne v1, v2, :cond_32

    .line 415
    invoke-virtual {v0}, Landroidx/collection/CircularIntArray;->popLast()I

    .line 416
    invoke-virtual {v0, p1}, Landroidx/collection/CircularIntArray;->addLast(I)V

    goto :goto_38

    .line 419
    :cond_32
    invoke-virtual {v0, p1}, Landroidx/collection/CircularIntArray;->addLast(I)V

    .line 420
    invoke-virtual {v0, p1}, Landroidx/collection/CircularIntArray;->addLast(I)V

    :goto_38
    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    .line 424
    :cond_3b
    iget-object p0, p0, Landroidx/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroidx/collection/CircularIntArray;

    return-object p0
.end method

.method public final getLastIndex()I
    .registers 2

    .line 86
    iget v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    iget-object p0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    move-result p0

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public bridge synthetic getLocation(I)Landroidx/leanback/widget/Grid$Location;
    .registers 2

    .line 39
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object p0

    return-object p0
.end method

.method public final getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;
    .registers 3

    .line 98
    iget v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    sub-int/2addr p1, v0

    if-ltz p1, :cond_17

    .line 99
    iget-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_e

    goto :goto_17

    .line 102
    :cond_e
    iget-object p0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {p0, p1}, Landroidx/collection/CircularArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/leanback/widget/StaggeredGrid$Location;

    return-object p0

    :cond_17
    :goto_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public invalidateItemsAfter(I)V
    .registers 4

    .line 429
    invoke-super {p0, p1}, Landroidx/leanback/widget/Grid;->invalidateItemsAfter(I)V

    .line 430
    iget-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/collection/CircularArray;->removeFromEnd(I)V

    .line 431
    iget-object p1, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {p1}, Landroidx/collection/CircularArray;->size()I

    move-result p1

    if-nez p1, :cond_1a

    const/4 p1, -0x1

    .line 432
    iput p1, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    :cond_1a
    return-void
.end method

.method protected final prependVisbleItemsWithCache(IZ)Z
    .registers 18

    move-object v0, p0

    .line 139
    iget-object v1, v0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v1}, Landroidx/collection/CircularArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_b

    return v2

    .line 145
    :cond_b
    iget v1, v0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    const/4 v3, 0x1

    if-ltz v1, :cond_22

    .line 147
    iget-object v4, v0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v4, v1}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v1

    .line 148
    iget v4, v0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    invoke-virtual {p0, v4}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v4

    iget v4, v4, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    .line 149
    iget v5, v0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    sub-int/2addr v5, v3

    goto :goto_44

    :cond_22
    const v1, 0x7fffffff

    .line 154
    iget v4, v0, Landroidx/leanback/widget/Grid;->mStartIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2c

    move v5, v4

    goto :goto_2d

    :cond_2c
    move v5, v2

    .line 155
    :goto_2d
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v4

    if-gt v5, v4, :cond_a9

    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getFirstIndex()I

    move-result v4

    sub-int/2addr v4, v3

    if-ge v5, v4, :cond_3c

    goto/16 :goto_a9

    .line 159
    :cond_3c
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getFirstIndex()I

    move-result v4

    if-ge v5, v4, :cond_43

    return v2

    :cond_43
    move v4, v2

    .line 164
    :goto_44
    iget-object v6, v0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v6}, Landroidx/leanback/widget/Grid$Provider;->getMinIndex()I

    move-result v6

    iget v7, v0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    :goto_50
    if-lt v5, v6, :cond_a8

    .line 166
    invoke-virtual {p0, v5}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v13

    .line 167
    iget v14, v13, Landroidx/leanback/widget/Grid$Location;->row:I

    .line 168
    iget-object v7, v0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget-object v8, v0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v7, v5, v2, v8, v2}, Landroidx/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v10

    .line 169
    iget v7, v13, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    if-eq v10, v7, :cond_7a

    .line 170
    iget-object v1, v0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    add-int/2addr v5, v3

    iget v3, v0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    sub-int/2addr v5, v3

    invoke-virtual {v1, v5}, Landroidx/collection/CircularArray;->removeFromStart(I)V

    .line 171
    iget v1, v0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    iput v1, v0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    .line 173
    iget-object v1, v0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    aget-object v1, v1, v2

    iput-object v1, v0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 174
    iput v10, v0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItemSize:I

    return v2

    .line 177
    :cond_7a
    iput v5, v0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 178
    iget v7, v0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    if-gez v7, :cond_82

    .line 179
    iput v5, v0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 181
    :cond_82
    iget-object v7, v0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget-object v8, v0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    aget-object v8, v8, v2

    sub-int v12, v1, v4

    move v9, v5

    move v11, v14

    invoke-interface/range {v7 .. v12}, Landroidx/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    if-nez p2, :cond_98

    .line 182
    invoke-virtual/range {p0 .. p1}, Landroidx/leanback/widget/Grid;->checkPrependOverLimit(I)Z

    move-result v1

    if-eqz v1, :cond_98

    return v3

    .line 185
    :cond_98
    iget-object v1, v0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v1, v5}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v1

    .line 186
    iget v4, v13, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    if-nez v14, :cond_a5

    if-eqz p2, :cond_a5

    return v3

    :cond_a5
    add-int/lit8 v5, v5, -0x1

    goto :goto_50

    :cond_a8
    return v2

    .line 157
    :cond_a9
    :goto_a9
    iget-object v0, v0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v0}, Landroidx/collection/CircularArray;->clear()V

    return v2
.end method

.method protected final prependVisibleItemToRow(III)I
    .registers 16

    .line 239
    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-ltz v0, :cond_17

    .line 240
    invoke-virtual {p0}, Landroidx/leanback/widget/StaggeredGrid;->getFirstIndex()I

    move-result v1

    if-ne v0, v1, :cond_11

    iget v0, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    add-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_11

    goto :goto_17

    .line 242
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 245
    :cond_17
    :goto_17
    iget v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    const/4 v1, 0x0

    if-ltz v0, :cond_21

    invoke-virtual {p0, v0}, Landroidx/leanback/widget/StaggeredGrid;->getLocation(I)Landroidx/leanback/widget/StaggeredGrid$Location;

    move-result-object v0

    goto :goto_22

    :cond_21
    move-object v0, v1

    .line 246
    :goto_22
    iget-object v2, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget v3, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    invoke-interface {v2, v3}, Landroidx/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v2

    .line 247
    new-instance v3, Landroidx/leanback/widget/StaggeredGrid$Location;

    const/4 v4, 0x0

    invoke-direct {v3, p2, v4, v4}, Landroidx/leanback/widget/StaggeredGrid$Location;-><init>(III)V

    .line 248
    iget-object v5, p0, Landroidx/leanback/widget/StaggeredGrid;->mLocations:Landroidx/collection/CircularArray;

    invoke-virtual {v5, v3}, Landroidx/collection/CircularArray;->addFirst(Ljava/lang/Object;)V

    .line 250
    iget-object v5, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    if-eqz v5, :cond_40

    .line 251
    iget v4, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItemSize:I

    iput v4, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    .line 253
    iput-object v1, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    goto :goto_4e

    .line 255
    :cond_40
    iget-object v1, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget-object v5, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v1, p1, v4, v5, v4}, Landroidx/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v1

    iput v1, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    .line 256
    iget-object v1, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    aget-object v5, v1, v4

    :goto_4e
    move-object v7, v5

    .line 258
    iput p1, p0, Landroidx/leanback/widget/Grid;->mFirstVisibleIndex:I

    iput p1, p0, Landroidx/leanback/widget/StaggeredGrid;->mFirstIndex:I

    .line 259
    iget v1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    if-gez v1, :cond_59

    .line 260
    iput p1, p0, Landroidx/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 262
    :cond_59
    iget-boolean v1, p0, Landroidx/leanback/widget/Grid;->mReversedFlow:Z

    if-nez v1, :cond_61

    iget v1, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    sub-int/2addr p3, v1

    goto :goto_64

    :cond_61
    iget v1, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    add-int/2addr p3, v1

    :goto_64
    move v11, p3

    if-eqz v0, :cond_6a

    sub-int/2addr v2, v11

    .line 264
    iput v2, v0, Landroidx/leanback/widget/StaggeredGrid$Location;->offset:I

    .line 266
    :cond_6a
    iget-object v6, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    iget v9, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    move v8, p1

    move v10, p2

    invoke-interface/range {v6 .. v11}, Landroidx/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    .line 267
    iget p0, v3, Landroidx/leanback/widget/StaggeredGrid$Location;->size:I

    return p0
.end method

.method protected final prependVisibleItems(IZ)Z
    .registers 6

    .line 117
    iget-object v0, p0, Landroidx/leanback/widget/Grid;->mProvider:Landroidx/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroidx/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    if-nez p2, :cond_13

    .line 120
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/Grid;->checkPrependOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    :cond_13
    const/4 v0, 0x0

    .line 124
    :try_start_14
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/StaggeredGrid;->prependVisbleItemsWithCache(IZ)Z

    move-result v2
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_2b

    if-eqz v2, :cond_22

    const/4 p1, 0x1

    .line 129
    iget-object p2, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    aput-object v0, p2, v1

    .line 130
    :goto_1f
    iput-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    return p1

    .line 127
    :cond_22
    :try_start_22
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/StaggeredGrid;->prependVisibleItemsWithoutCache(IZ)Z

    move-result p1
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_2b

    .line 129
    iget-object p2, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    aput-object v0, p2, v1

    goto :goto_1f

    :catchall_2b
    move-exception p1

    iget-object p2, p0, Landroidx/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    aput-object v0, p2, v1

    .line 130
    iput-object v0, p0, Landroidx/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    throw p1
.end method

.method protected abstract prependVisibleItemsWithoutCache(IZ)Z
.end method
