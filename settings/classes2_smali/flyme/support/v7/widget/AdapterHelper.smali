.class Lflyme/support/v7/widget/AdapterHelper;
.super Ljava/lang/Object;
.source "AdapterHelper.java"

# interfaces
.implements Lflyme/support/v7/widget/OpReorderer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/widget/AdapterHelper$Callback;,
        Lflyme/support/v7/widget/AdapterHelper$UpdateOp;
    }
.end annotation


# instance fields
.field final mCallback:Lflyme/support/v7/widget/AdapterHelper$Callback;

.field final mDisableRecycler:Z

.field private mExistingUpdateTypes:I

.field mOnItemProcessedCallback:Ljava/lang/Runnable;

.field final mOpReorderer:Lflyme/support/v7/widget/OpReorderer;

.field final mPendingUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lflyme/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field final mPostponedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lflyme/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateOpPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lflyme/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/AdapterHelper$Callback;)V
    .registers 3

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0}, Lflyme/support/v7/widget/AdapterHelper;-><init>(Lflyme/support/v7/widget/AdapterHelper$Callback;Z)V

    return-void
.end method

.method constructor <init>(Lflyme/support/v7/widget/AdapterHelper$Callback;Z)V
    .registers 5

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroidx/core/util/Pools$SimplePool;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lflyme/support/v7/widget/AdapterHelper;->mUpdateOpPool:Landroidx/core/util/Pools$Pool;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lflyme/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 75
    iput-object p1, p0, Lflyme/support/v7/widget/AdapterHelper;->mCallback:Lflyme/support/v7/widget/AdapterHelper$Callback;

    .line 76
    iput-boolean p2, p0, Lflyme/support/v7/widget/AdapterHelper;->mDisableRecycler:Z

    .line 77
    new-instance p1, Lflyme/support/v7/widget/OpReorderer;

    invoke-direct {p1, p0}, Lflyme/support/v7/widget/OpReorderer;-><init>(Lflyme/support/v7/widget/OpReorderer$Callback;)V

    iput-object p1, p0, Lflyme/support/v7/widget/AdapterHelper;->mOpReorderer:Lflyme/support/v7/widget/OpReorderer;

    return-void
.end method

.method private applyAdd(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 2

    .line 431
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    return-void
.end method

.method private applyMove(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 2

    .line 129
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    return-void
.end method

.method private applyRemove(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 12

    .line 133
    iget v0, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 135
    iget v1, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v4, v2

    move v5, v3

    move v3, v1

    move v1, v0

    :goto_b
    const/4 v6, 0x0

    const/4 v7, 0x2

    if-ge v1, v3, :cond_45

    .line 139
    iget-object v8, p0, Lflyme/support/v7/widget/AdapterHelper;->mCallback:Lflyme/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v8, v1}, Lflyme/support/v7/widget/AdapterHelper$Callback;->findViewHolder(I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v8

    const/4 v9, 0x1

    if-nez v8, :cond_2d

    .line 140
    invoke-direct {p0, v1}, Lflyme/support/v7/widget/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v8

    if-eqz v8, :cond_1f

    goto :goto_2d

    :cond_1f
    if-ne v5, v9, :cond_2a

    .line 161
    invoke-virtual {p0, v7, v0, v4, v6}, Lflyme/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lflyme/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v5

    .line 162
    invoke-direct {p0, v5}, Lflyme/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    move v5, v9

    goto :goto_2b

    :cond_2a
    move v5, v2

    :goto_2b
    move v6, v2

    goto :goto_3a

    :cond_2d
    :goto_2d
    if-nez v5, :cond_38

    .line 150
    invoke-virtual {p0, v7, v0, v4, v6}, Lflyme/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lflyme/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v5

    .line 151
    invoke-direct {p0, v5}, Lflyme/support/v7/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    move v5, v9

    goto :goto_39

    :cond_38
    move v5, v2

    :goto_39
    move v6, v9

    :goto_3a
    if-eqz v5, :cond_40

    sub-int/2addr v1, v4

    sub-int/2addr v3, v4

    move v4, v9

    goto :goto_42

    :cond_40
    add-int/lit8 v4, v4, 0x1

    :goto_42
    add-int/2addr v1, v9

    move v5, v6

    goto :goto_b

    .line 175
    :cond_45
    iget v1, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v4, v1, :cond_50

    .line 176
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/AdapterHelper;->recycleUpdateOp(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 177
    invoke-virtual {p0, v7, v0, v4, v6}, Lflyme/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lflyme/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    :cond_50
    if-nez v5, :cond_56

    .line 180
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_59

    .line 182
    :cond_56
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    :goto_59
    return-void
.end method

.method private applyUpdate(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 11

    .line 187
    iget v0, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 189
    iget v1, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v4, v0

    move v5, v3

    move v3, v2

    :goto_a
    const/4 v6, 0x4

    if-ge v0, v1, :cond_3e

    .line 192
    iget-object v7, p0, Lflyme/support/v7/widget/AdapterHelper;->mCallback:Lflyme/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v7, v0}, Lflyme/support/v7/widget/AdapterHelper$Callback;->findViewHolder(I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    const/4 v8, 0x1

    if-nez v7, :cond_2c

    .line 193
    invoke-direct {p0, v0}, Lflyme/support/v7/widget/AdapterHelper;->canFindInPreLayout(I)Z

    move-result v7

    if-eqz v7, :cond_1d

    goto :goto_2c

    :cond_1d
    if-ne v5, v8, :cond_2a

    .line 204
    iget-object v5, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v6, v4, v3, v5}, Lflyme/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lflyme/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v3

    .line 206
    invoke-direct {p0, v3}, Lflyme/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    move v4, v0

    move v3, v2

    :cond_2a
    move v5, v2

    goto :goto_3a

    :cond_2c
    :goto_2c
    if-nez v5, :cond_39

    .line 195
    iget-object v5, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v6, v4, v3, v5}, Lflyme/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lflyme/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v3

    .line 197
    invoke-direct {p0, v3}, Lflyme/support/v7/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    move v4, v0

    move v3, v2

    :cond_39
    move v5, v8

    :goto_3a
    add-int/2addr v3, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 214
    :cond_3e
    iget v0, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v3, v0, :cond_4b

    .line 215
    iget-object v0, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 216
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/AdapterHelper;->recycleUpdateOp(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 217
    invoke-virtual {p0, v6, v4, v3, v0}, Lflyme/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lflyme/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    :cond_4b
    if-nez v5, :cond_51

    .line 220
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/AdapterHelper;->dispatchAndUpdateViewHolders(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_54

    .line 222
    :cond_51
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/AdapterHelper;->postponeAndUpdateViewHolders(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    :goto_54
    return-void
.end method

.method private canFindInPreLayout(I)Z
    .registers 9

    .line 410
    iget-object v0, p0, Lflyme/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_3c

    .line 412
    iget-object v3, p0, Lflyme/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;

    .line 413
    iget v4, v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v5, 0x8

    const/4 v6, 0x1

    if-ne v4, v5, :cond_24

    .line 414
    iget v3, v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v3, v4}, Lflyme/support/v7/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v3

    if-ne v3, p1, :cond_39

    return v6

    :cond_24
    if-ne v4, v6, :cond_39

    .line 419
    iget v4, v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v4

    :goto_2b
    if-ge v4, v3, :cond_39

    add-int/lit8 v5, v2, 0x1

    .line 421
    invoke-virtual {p0, v4, v5}, Lflyme/support/v7/widget/AdapterHelper;->findPositionOffset(II)I

    move-result v5

    if-ne v5, p1, :cond_36

    return v6

    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_3c
    return v1
.end method

.method private dispatchAndUpdateViewHolders(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 14

    .line 230
    iget v0, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_89

    const/16 v2, 0x8

    if-eq v0, v2, :cond_89

    .line 244
    iget v2, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    invoke-direct {p0, v2, v0}, Lflyme/support/v7/widget/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v0

    .line 249
    iget v2, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 251
    iget v3, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eq v3, v4, :cond_33

    if-ne v3, v5, :cond_1c

    move v3, v1

    goto :goto_34

    .line 259
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "op should be remove or update."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    move v3, v6

    :goto_34
    move v7, v0

    move v0, v1

    move v8, v2

    move v2, v0

    .line 261
    :goto_38
    iget v9, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v0, v9, :cond_75

    .line 262
    iget v9, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    mul-int v10, v3, v0

    add-int/2addr v9, v10

    .line 263
    iget v10, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-direct {p0, v9, v10}, Lflyme/support/v7/widget/AdapterHelper;->updatePositionWithPostponed(II)I

    move-result v9

    .line 268
    iget v10, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-eq v10, v4, :cond_55

    if-eq v10, v5, :cond_4f

    :cond_4d
    move v10, v6

    goto :goto_58

    :cond_4f
    add-int/lit8 v10, v7, 0x1

    if-ne v9, v10, :cond_4d

    :goto_53
    move v10, v1

    goto :goto_58

    :cond_55
    if-ne v9, v7, :cond_4d

    goto :goto_53

    :goto_58
    if-eqz v10, :cond_5d

    add-int/lit8 v2, v2, 0x1

    goto :goto_72

    .line 280
    :cond_5d
    iget v10, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    iget-object v11, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {p0, v10, v7, v2, v11}, Lflyme/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lflyme/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object v7

    .line 284
    invoke-virtual {p0, v7, v8}, Lflyme/support/v7/widget/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;I)V

    .line 285
    invoke-virtual {p0, v7}, Lflyme/support/v7/widget/AdapterHelper;->recycleUpdateOp(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 286
    iget v7, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v7, v5, :cond_70

    add-int/2addr v8, v2

    :cond_70
    move v2, v1

    move v7, v9

    :goto_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 293
    :cond_75
    iget-object v0, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 294
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/AdapterHelper;->recycleUpdateOp(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    if-lez v2, :cond_88

    .line 296
    iget p1, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    invoke-virtual {p0, p1, v7, v2, v0}, Lflyme/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lflyme/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    .line 300
    invoke-virtual {p0, p1, v8}, Lflyme/support/v7/widget/AdapterHelper;->dispatchFirstPassAndUpdateViewHolders(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;I)V

    .line 301
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/AdapterHelper;->recycleUpdateOp(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    :cond_88
    return-void

    .line 231
    :cond_89
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "should not dispatch add or move for pre layout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private postponeAndUpdateViewHolders(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 4

    .line 438
    iget-object v0, p0, Lflyme/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    iget v0, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_41

    const/4 v1, 0x4

    if-eq v0, v1, :cond_35

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1e

    .line 444
    iget-object p0, p0, Lflyme/support/v7/widget/AdapterHelper;->mCallback:Lflyme/support/v7/widget/AdapterHelper$Callback;

    iget v0, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {p0, v0, p1}, Lflyme/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_54

    .line 454
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown update op type for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 451
    :cond_35
    iget-object p0, p0, Lflyme/support/v7/widget/AdapterHelper;->mCallback:Lflyme/support/v7/widget/AdapterHelper$Callback;

    iget v0, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v1, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object p1, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {p0, v0, v1, p1}, Lflyme/support/v7/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_54

    .line 447
    :cond_41
    iget-object p0, p0, Lflyme/support/v7/widget/AdapterHelper;->mCallback:Lflyme/support/v7/widget/AdapterHelper$Callback;

    iget v0, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {p0, v0, p1}, Lflyme/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForRemovingLaidOutOrNewView(II)V

    goto :goto_54

    .line 441
    :cond_4b
    iget-object p0, p0, Lflyme/support/v7/widget/AdapterHelper;->mCallback:Lflyme/support/v7/widget/AdapterHelper$Callback;

    iget v0, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {p0, v0, p1}, Lflyme/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    :goto_54
    return-void
.end method

.method private updatePositionWithPostponed(II)I
    .registers 10

    .line 329
    iget-object v0, p0, Lflyme/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    const/16 v2, 0x8

    if-ltz v0, :cond_8a

    .line 331
    iget-object v3, p0, Lflyme/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;

    .line 332
    iget v4, v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v5, 0x2

    if-ne v4, v2, :cond_69

    .line 334
    iget v2, v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ge v2, v4, :cond_20

    goto :goto_23

    :cond_20
    move v6, v4

    move v4, v2

    move v2, v6

    :goto_23
    if-lt p1, v2, :cond_4d

    if-gt p1, v4, :cond_4d

    .line 343
    iget v4, v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v2, v4, :cond_3d

    if-ne p2, v1, :cond_33

    .line 345
    iget v2, v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v2, v1

    iput v2, v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_3a

    :cond_33
    if-ne p2, v5, :cond_3a

    .line 347
    iget v2, v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v2, v1

    iput v2, v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    :cond_3a
    :goto_3a
    add-int/lit8 p1, p1, 0x1

    goto :goto_86

    :cond_3d
    if-ne p2, v1, :cond_44

    add-int/lit8 v4, v4, 0x1

    .line 353
    iput v4, v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_4a

    :cond_44
    if-ne p2, v5, :cond_4a

    add-int/lit8 v4, v4, -0x1

    .line 355
    iput v4, v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_4a
    :goto_4a
    add-int/lit8 p1, p1, -0x1

    goto :goto_86

    .line 360
    :cond_4d
    iget v2, v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ge p1, v2, :cond_86

    if-ne p2, v1, :cond_5d

    add-int/lit8 v2, v2, 0x1

    .line 363
    iput v2, v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 364
    iget v2, v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v2, v1

    iput v2, v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_86

    :cond_5d
    if-ne p2, v5, :cond_86

    add-int/lit8 v2, v2, -0x1

    .line 366
    iput v2, v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 367
    iget v2, v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr v2, v1

    iput v2, v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_86

    .line 371
    :cond_69
    iget v2, v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v2, p1, :cond_79

    if-ne v4, v1, :cond_73

    .line 373
    iget v2, v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    sub-int/2addr p1, v2

    goto :goto_86

    :cond_73
    if-ne v4, v5, :cond_86

    .line 375
    iget v2, v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v2

    goto :goto_86

    :cond_79
    if-ne p2, v1, :cond_80

    add-int/lit8 v2, v2, 0x1

    .line 379
    iput v2, v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    goto :goto_86

    :cond_80
    if-ne p2, v5, :cond_86

    add-int/lit8 v2, v2, -0x1

    .line 381
    iput v2, v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    :cond_86
    :goto_86
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_8

    .line 394
    :cond_8a
    iget-object p2, p0, Lflyme/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_91
    if-ltz p2, :cond_bf

    .line 395
    iget-object v0, p0, Lflyme/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;

    .line 396
    iget v1, v0, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-ne v1, v2, :cond_b0

    .line 397
    iget v1, v0, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v3, v0, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-eq v1, v3, :cond_a7

    if-gez v1, :cond_bc

    .line 398
    :cond_a7
    iget-object v1, p0, Lflyme/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 399
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/AdapterHelper;->recycleUpdateOp(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_bc

    .line 401
    :cond_b0
    iget v1, v0, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gtz v1, :cond_bc

    .line 402
    iget-object v1, p0, Lflyme/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 403
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/AdapterHelper;->recycleUpdateOp(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    :cond_bc
    :goto_bc
    add-int/lit8 p2, p2, -0x1

    goto :goto_91

    :cond_bf
    return p1
.end method


# virtual methods
.method public applyPendingUpdatesToPosition(I)I
    .registers 7

    .line 587
    iget-object v0, p0, Lflyme/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_47

    .line 589
    iget-object v2, p0, Lflyme/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;

    .line 590
    iget v3, v2, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3d

    const/4 v4, 0x2

    if-eq v3, v4, :cond_30

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1e

    goto :goto_44

    .line 606
    :cond_1e
    iget v3, v2, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, p1, :cond_25

    .line 607
    iget p1, v2, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_44

    :cond_25
    if-ge v3, p1, :cond_29

    add-int/lit8 p1, p1, -0x1

    .line 612
    :cond_29
    iget v2, v2, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v2, p1, :cond_44

    add-int/lit8 p1, p1, 0x1

    goto :goto_44

    .line 597
    :cond_30
    iget v3, v2, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, p1, :cond_44

    .line 598
    iget v2, v2, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v2

    if-le v3, p1, :cond_3b

    const/4 p0, -0x1

    return p0

    :cond_3b
    sub-int/2addr p1, v2

    goto :goto_44

    .line 592
    :cond_3d
    iget v3, v2, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, p1, :cond_44

    .line 593
    iget v2, v2, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v2

    :cond_44
    :goto_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_47
    return p1
.end method

.method consumePostponedUpdates()V
    .registers 6

    .line 118
    iget-object v0, p0, Lflyme/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1a

    .line 120
    iget-object v3, p0, Lflyme/support/v7/widget/AdapterHelper;->mCallback:Lflyme/support/v7/widget/AdapterHelper$Callback;

    iget-object v4, p0, Lflyme/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;

    invoke-interface {v3, v4}, Lflyme/support/v7/widget/AdapterHelper$Callback;->onDispatchSecondPass(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 122
    :cond_1a
    iget-object v0, p0, Lflyme/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 123
    iput v1, p0, Lflyme/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    return-void
.end method

.method consumeUpdatesInOnePass()V
    .registers 8

    .line 556
    invoke-virtual {p0}, Lflyme/support/v7/widget/AdapterHelper;->consumePostponedUpdates()V

    .line 557
    iget-object v0, p0, Lflyme/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_6c

    .line 559
    iget-object v3, p0, Lflyme/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;

    .line 560
    iget v4, v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_54

    const/4 v5, 0x2

    if-eq v4, v5, :cond_45

    const/4 v5, 0x4

    if-eq v4, v5, :cond_34

    const/16 v5, 0x8

    if-eq v4, v5, :cond_25

    goto :goto_62

    .line 574
    :cond_25
    iget-object v4, p0, Lflyme/support/v7/widget/AdapterHelper;->mCallback:Lflyme/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v4, v3}, Lflyme/support/v7/widget/AdapterHelper$Callback;->onDispatchSecondPass(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 575
    iget-object v4, p0, Lflyme/support/v7/widget/AdapterHelper;->mCallback:Lflyme/support/v7/widget/AdapterHelper$Callback;

    iget v5, v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v4, v5, v3}, Lflyme/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForMove(II)V

    goto :goto_62

    .line 570
    :cond_34
    iget-object v4, p0, Lflyme/support/v7/widget/AdapterHelper;->mCallback:Lflyme/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v4, v3}, Lflyme/support/v7/widget/AdapterHelper$Callback;->onDispatchSecondPass(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 571
    iget-object v4, p0, Lflyme/support/v7/widget/AdapterHelper;->mCallback:Lflyme/support/v7/widget/AdapterHelper$Callback;

    iget v5, v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v6, v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v3, v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v3}, Lflyme/support/v7/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_62

    .line 566
    :cond_45
    iget-object v4, p0, Lflyme/support/v7/widget/AdapterHelper;->mCallback:Lflyme/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v4, v3}, Lflyme/support/v7/widget/AdapterHelper$Callback;->onDispatchSecondPass(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 567
    iget-object v4, p0, Lflyme/support/v7/widget/AdapterHelper;->mCallback:Lflyme/support/v7/widget/AdapterHelper$Callback;

    iget v5, v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v4, v5, v3}, Lflyme/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    goto :goto_62

    .line 562
    :cond_54
    iget-object v4, p0, Lflyme/support/v7/widget/AdapterHelper;->mCallback:Lflyme/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v4, v3}, Lflyme/support/v7/widget/AdapterHelper$Callback;->onDispatchSecondPass(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 563
    iget-object v4, p0, Lflyme/support/v7/widget/AdapterHelper;->mCallback:Lflyme/support/v7/widget/AdapterHelper$Callback;

    iget v5, v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, v3, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {v4, v5, v3}, Lflyme/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForAdd(II)V

    .line 578
    :goto_62
    iget-object v3, p0, Lflyme/support/v7/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v3, :cond_69

    .line 579
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 582
    :cond_6c
    iget-object v0, p0, Lflyme/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 583
    iput v1, p0, Lflyme/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    return-void
.end method

.method dispatchFirstPassAndUpdateViewHolders(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;I)V
    .registers 5

    .line 314
    iget-object v0, p0, Lflyme/support/v7/widget/AdapterHelper;->mCallback:Lflyme/support/v7/widget/AdapterHelper$Callback;

    invoke-interface {v0, p1}, Lflyme/support/v7/widget/AdapterHelper$Callback;->onDispatchFirstPass(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 315
    iget v0, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    .line 320
    iget-object p0, p0, Lflyme/support/v7/widget/AdapterHelper;->mCallback:Lflyme/support/v7/widget/AdapterHelper$Callback;

    iget v0, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object p1, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-interface {p0, p2, v0, p1}, Lflyme/support/v7/widget/AdapterHelper$Callback;->markViewHoldersUpdated(IILjava/lang/Object;)V

    goto :goto_26

    .line 323
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "only remove and update ops can be dispatched in first pass"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 317
    :cond_1f
    iget-object p0, p0, Lflyme/support/v7/widget/AdapterHelper;->mCallback:Lflyme/support/v7/widget/AdapterHelper$Callback;

    iget p1, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-interface {p0, p2, p1}, Lflyme/support/v7/widget/AdapterHelper$Callback;->offsetPositionsForRemovingInvisible(II)V

    :goto_26
    return-void
.end method

.method findPositionOffset(I)I
    .registers 3

    const/4 v0, 0x0

    .line 467
    invoke-virtual {p0, p1, v0}, Lflyme/support/v7/widget/AdapterHelper;->findPositionOffset(II)I

    move-result p0

    return p0
.end method

.method findPositionOffset(II)I
    .registers 8

    .line 471
    iget-object v0, p0, Lflyme/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_6
    if-ge p2, v0, :cond_41

    .line 473
    iget-object v1, p0, Lflyme/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;

    .line 474
    iget v2, v1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_28

    .line 475
    iget v2, v1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v2, p1, :cond_1d

    .line 476
    iget p1, v1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    goto :goto_3e

    :cond_1d
    if-ge v2, p1, :cond_21

    add-int/lit8 p1, p1, -0x1

    .line 481
    :cond_21
    iget v1, v1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-gt v1, p1, :cond_3e

    add-int/lit8 p1, p1, 0x1

    goto :goto_3e

    .line 485
    :cond_28
    iget v3, v1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-gt v3, p1, :cond_3e

    const/4 v4, 0x2

    if-ne v2, v4, :cond_38

    .line 487
    iget v1, v1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v3, v1

    if-ge p1, v3, :cond_36

    const/4 p0, -0x1

    return p0

    :cond_36
    sub-int/2addr p1, v1

    goto :goto_3e

    :cond_38
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3e

    .line 492
    iget v1, v1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr p1, v1

    :cond_3e
    :goto_3e
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_41
    return p1
.end method

.method hasAnyUpdateTypes(I)Z
    .registers 2

    .line 463
    iget p0, p0, Lflyme/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method hasPendingUpdates()Z
    .registers 1

    .line 459
    iget-object p0, p0, Lflyme/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method hasUpdates()Z
    .registers 2

    .line 623
    iget-object v0, p0, Lflyme/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object p0, p0, Lflyme/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public obtainUpdateOp(IIILjava/lang/Object;)Lflyme/support/v7/widget/AdapterHelper$UpdateOp;
    .registers 5

    .line 721
    iget-object p0, p0, Lflyme/support/v7/widget/AdapterHelper;->mUpdateOpPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {p0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;

    if-nez p0, :cond_10

    .line 723
    new-instance p0, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;

    invoke-direct {p0, p1, p2, p3, p4}, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;-><init>(IIILjava/lang/Object;)V

    goto :goto_18

    .line 725
    :cond_10
    iput p1, p0, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 726
    iput p2, p0, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 727
    iput p3, p0, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 728
    iput-object p4, p0, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    :goto_18
    return-object p0
.end method

.method onItemRangeChanged(IILjava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_5

    return v0

    .line 506
    :cond_5
    iget-object v2, p0, Lflyme/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-virtual {p0, v3, p1, p2, p3}, Lflyme/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lflyme/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    iget p1, p0, Lflyme/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/2addr p1, v3

    iput p1, p0, Lflyme/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 508
    iget-object p0, p0, Lflyme/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ne p0, v1, :cond_1d

    move v0, v1

    :cond_1d
    return v0
.end method

.method onItemRangeInserted(II)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_5

    return v0

    .line 518
    :cond_5
    iget-object v2, p0, Lflyme/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, p1, p2, v3}, Lflyme/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lflyme/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    iget p1, p0, Lflyme/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/2addr p1, v1

    iput p1, p0, Lflyme/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 520
    iget-object p0, p0, Lflyme/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ne p0, v1, :cond_1d

    move v0, v1

    :cond_1d
    return v0
.end method

.method onItemRangeMoved(III)Z
    .registers 8

    const/4 v0, 0x0

    if-ne p1, p2, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-ne p3, v1, :cond_22

    .line 545
    iget-object p3, p0, Lflyme/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {p0, v3, p1, p2, v2}, Lflyme/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lflyme/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    iget p1, p0, Lflyme/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/2addr p1, v3

    iput p1, p0, Lflyme/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 547
    iget-object p0, p0, Lflyme/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ne p0, v1, :cond_21

    move v0, v1

    :cond_21
    return v0

    .line 543
    :cond_22
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Moving more than 1 item is not supported yet"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method onItemRangeRemoved(II)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_5

    return v0

    .line 530
    :cond_5
    iget-object v2, p0, Lflyme/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {p0, v4, p1, p2, v3}, Lflyme/support/v7/widget/AdapterHelper;->obtainUpdateOp(IIILjava/lang/Object;)Lflyme/support/v7/widget/AdapterHelper$UpdateOp;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    iget p1, p0, Lflyme/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    or-int/2addr p1, v4

    iput p1, p0, Lflyme/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    .line 532
    iget-object p0, p0, Lflyme/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ne p0, v1, :cond_1e

    move v0, v1

    :cond_1e
    return v0
.end method

.method preProcess()V
    .registers 6

    .line 92
    iget-object v0, p0, Lflyme/support/v7/widget/AdapterHelper;->mOpReorderer:Lflyme/support/v7/widget/OpReorderer;

    iget-object v1, p0, Lflyme/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/OpReorderer;->reorderOps(Ljava/util/List;)V

    .line 93
    iget-object v0, p0, Lflyme/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_41

    .line 95
    iget-object v2, p0, Lflyme/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;

    .line 96
    iget v3, v2, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_34

    const/4 v4, 0x2

    if-eq v3, v4, :cond_30

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2c

    const/16 v4, 0x8

    if-eq v3, v4, :cond_28

    goto :goto_37

    .line 107
    :cond_28
    invoke-direct {p0, v2}, Lflyme/support/v7/widget/AdapterHelper;->applyMove(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_37

    .line 104
    :cond_2c
    invoke-direct {p0, v2}, Lflyme/support/v7/widget/AdapterHelper;->applyUpdate(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_37

    .line 101
    :cond_30
    invoke-direct {p0, v2}, Lflyme/support/v7/widget/AdapterHelper;->applyRemove(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    goto :goto_37

    .line 98
    :cond_34
    invoke-direct {p0, v2}, Lflyme/support/v7/widget/AdapterHelper;->applyAdd(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    .line 110
    :goto_37
    iget-object v2, p0, Lflyme/support/v7/widget/AdapterHelper;->mOnItemProcessedCallback:Ljava/lang/Runnable;

    if-eqz v2, :cond_3e

    .line 111
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 114
    :cond_41
    iget-object p0, p0, Lflyme/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public recycleUpdateOp(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 3

    .line 735
    iget-boolean v0, p0, Lflyme/support/v7/widget/AdapterHelper;->mDisableRecycler:Z

    if-nez v0, :cond_c

    const/4 v0, 0x0

    .line 736
    iput-object v0, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 737
    iget-object p0, p0, Lflyme/support/v7/widget/AdapterHelper;->mUpdateOpPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {p0, p1}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_c
    return-void
.end method

.method recycleUpdateOpsAndClearList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lflyme/support/v7/widget/AdapterHelper$UpdateOp;",
            ">;)V"
        }
    .end annotation

    .line 742
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_13

    .line 744
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;

    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/AdapterHelper;->recycleUpdateOp(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 746
    :cond_13
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method reset()V
    .registers 2

    .line 86
    iget-object v0, p0, Lflyme/support/v7/widget/AdapterHelper;->mPendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    .line 87
    iget-object v0, p0, Lflyme/support/v7/widget/AdapterHelper;->mPostponedList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/AdapterHelper;->recycleUpdateOpsAndClearList(Ljava/util/List;)V

    const/4 v0, 0x0

    .line 88
    iput v0, p0, Lflyme/support/v7/widget/AdapterHelper;->mExistingUpdateTypes:I

    return-void
.end method
