.class Lflyme/support/v7/widget/ViewInfoStore;
.super Ljava/lang/Object;
.source "ViewInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;,
        Lflyme/support/v7/widget/ViewInfoStore$ProcessCallback;
    }
.end annotation


# instance fields
.field final mLayoutHolderMap:Landroidx/collection/ArrayMap;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Lflyme/support/v7/widget/RecyclerView$ViewHolder;",
            "Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mOldChangedHolders:Landroidx/collection/LongSparseArray;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Lflyme/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    .line 49
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    return-void
.end method

.method private popFromLayoutStep(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .registers 7

    .line 103
    iget-object v0, p0, Lflyme/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_a

    return-object v0

    .line 107
    :cond_a
    iget-object v1, p0, Lflyme/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;

    if-eqz v1, :cond_41

    .line 108
    iget v2, v1, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int v3, v2, p2

    if-eqz v3, :cond_41

    not-int v0, p2

    and-int/2addr v0, v2

    .line 109
    iput v0, v1, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_24

    .line 112
    iget-object p2, v1, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    goto :goto_2a

    :cond_24
    const/16 v0, 0x8

    if-ne p2, v0, :cond_39

    .line 114
    iget-object p2, v1, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo:Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 119
    :goto_2a
    iget v0, v1, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_38

    .line 120
    iget-object p0, p0, Lflyme/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 121
    invoke-static {v1}, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->recycle(Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;)V

    :cond_38
    return-object p2

    .line 116
    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must provide flag PRE or POST"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_41
    return-object v0
.end method


# virtual methods
.method addToAppearedInPreLayoutHolders(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 4

    .line 147
    iget-object v0, p0, Lflyme/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;

    if-nez v0, :cond_13

    .line 149
    invoke-static {}, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->obtain()Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    .line 150
    iget-object p0, p0, Lflyme/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_13
    iget p0, v0, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 p0, p0, 0x2

    iput p0, v0, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 153
    iput-object p2, v0, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    return-void
.end method

.method addToDisappearedInLayout(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 3

    .line 200
    iget-object v0, p0, Lflyme/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;

    if-nez v0, :cond_13

    .line 202
    invoke-static {}, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->obtain()Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    .line 203
    iget-object p0, p0, Lflyme/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_13
    iget p0, v0, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 p0, p0, 0x1

    iput p0, v0, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    return-void
.end method

.method addToOldChangeHolders(JLflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 4

    .line 134
    iget-object p0, p0, Lflyme/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method addToPostLayout(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 4

    .line 184
    iget-object v0, p0, Lflyme/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;

    if-nez v0, :cond_13

    .line 186
    invoke-static {}, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->obtain()Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    .line 187
    iget-object p0, p0, Lflyme/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_13
    iput-object p2, v0, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo:Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 190
    iget p0, v0, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 p0, p0, 0x8

    iput p0, v0, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    return-void
.end method

.method addToPreLayout(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 4

    .line 66
    iget-object v0, p0, Lflyme/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;

    if-nez v0, :cond_13

    .line 68
    invoke-static {}, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->obtain()Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    .line 69
    iget-object p0, p0, Lflyme/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_13
    iput-object p2, v0, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 72
    iget p0, v0, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 p0, p0, 0x4

    iput p0, v0, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    return-void
.end method

.method clear()V
    .registers 2

    .line 56
    iget-object v0, p0, Lflyme/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 57
    iget-object p0, p0, Lflyme/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0}, Landroidx/collection/LongSparseArray;->clear()V

    return-void
.end method

.method getFromOldChangeHolders(J)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 175
    iget-object p0, p0, Lflyme/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    return-object p0
.end method

.method isDisappearing(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 2

    .line 76
    iget-object p0, p0, Lflyme/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;

    const/4 p1, 0x1

    if-eqz p0, :cond_11

    .line 77
    iget p0, p0, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_11

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return p1
.end method

.method isInPreLayout(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 2

    .line 163
    iget-object p0, p0, Lflyme/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;

    if-eqz p0, :cond_12

    .line 164
    iget p0, p0, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method onDetach()V
    .registers 1

    .line 275
    invoke-static {}, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->drainCache()V

    return-void
.end method

.method public onViewDetached(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .line 279
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ViewInfoStore;->removeFromDisappearedInLayout(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method popFromPostLayout(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/16 v0, 0x8

    .line 99
    invoke-direct {p0, p1, v0}, Lflyme/support/v7/widget/ViewInfoStore;->popFromLayoutStep(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object p0

    return-object p0
.end method

.method popFromPreLayout(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x4

    .line 88
    invoke-direct {p0, p1, v0}, Lflyme/support/v7/widget/ViewInfoStore;->popFromLayoutStep(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object p0

    return-object p0
.end method

.method process(Lflyme/support/v7/widget/ViewInfoStore$ProcessCallback;)V
    .registers 8

    .line 221
    iget-object v0, p0, Lflyme/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_6f

    .line 222
    iget-object v1, p0, Lflyme/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 223
    iget-object v2, p0, Lflyme/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, v0}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;

    .line 224
    iget v3, v2, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v4, v3, 0x3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_25

    .line 226
    invoke-interface {p1, v1}, Lflyme/support/v7/widget/ViewInfoStore$ProcessCallback;->unused(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_69

    :cond_25
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_37

    .line 229
    iget-object v3, v2, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    if-nez v3, :cond_31

    .line 232
    invoke-interface {p1, v1}, Lflyme/support/v7/widget/ViewInfoStore$ProcessCallback;->unused(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_69

    .line 234
    :cond_31
    iget-object v4, v2, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo:Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v1, v3, v4}, Lflyme/support/v7/widget/ViewInfoStore$ProcessCallback;->processDisappeared(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_69

    :cond_37
    and-int/lit8 v4, v3, 0xe

    const/16 v5, 0xe

    if-ne v4, v5, :cond_45

    .line 238
    iget-object v3, v2, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v2, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo:Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v1, v3, v4}, Lflyme/support/v7/widget/ViewInfoStore$ProcessCallback;->processAppeared(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_69

    :cond_45
    and-int/lit8 v4, v3, 0xc

    const/16 v5, 0xc

    if-ne v4, v5, :cond_53

    .line 241
    iget-object v3, v2, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v2, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo:Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v1, v3, v4}, Lflyme/support/v7/widget/ViewInfoStore$ProcessCallback;->processPersistent(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_69

    :cond_53
    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_5e

    .line 244
    iget-object v3, v2, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    const/4 v4, 0x0

    invoke-interface {p1, v1, v3, v4}, Lflyme/support/v7/widget/ViewInfoStore$ProcessCallback;->processDisappeared(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_69

    :cond_5e
    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_69

    .line 247
    iget-object v3, v2, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->preInfo:Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v2, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->postInfo:Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v1, v3, v4}, Lflyme/support/v7/widget/ViewInfoStore$ProcessCallback;->processAppeared(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 253
    :cond_69
    :goto_69
    invoke-static {v2}, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->recycle(Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_6f
    return-void
.end method

.method removeFromDisappearedInLayout(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .line 213
    iget-object p0, p0, Lflyme/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;

    if-nez p0, :cond_b

    return-void

    .line 217
    :cond_b
    iget p1, p0, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->flags:I

    return-void
.end method

.method removeViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 4

    .line 262
    iget-object v0, p0, Lflyme/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1b

    .line 263
    iget-object v1, p0, Lflyme/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_18

    .line 264
    iget-object v1, p0, Lflyme/support/v7/widget/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v0}, Landroidx/collection/LongSparseArray;->removeAt(I)V

    goto :goto_1b

    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 268
    :cond_1b
    :goto_1b
    iget-object p0, p0, Lflyme/support/v7/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;

    if-eqz p0, :cond_28

    .line 270
    invoke-static {p0}, Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;->recycle(Lflyme/support/v7/widget/ViewInfoStore$InfoRecord;)V

    :cond_28
    return-void
.end method
