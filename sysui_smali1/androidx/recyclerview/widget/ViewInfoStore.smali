.class Landroidx/recyclerview/widget/ViewInfoStore;
.super Ljava/lang/Object;
.source "ViewInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;,
        Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;
    }
.end annotation


# instance fields
.field final mLayoutHolderMap:Landroidx/collection/ArrayMap;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;",
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
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    .line 45
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-direct {v0}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    return-void
.end method

.method private popFromLayoutStep(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .registers 7

    .line 99
    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_a

    return-object v0

    .line 103
    :cond_a
    iget-object v1, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    if-eqz v1, :cond_41

    .line 104
    iget v2, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int v3, v2, p2

    if-eqz v3, :cond_41

    not-int v0, p2

    and-int/2addr v0, v2

    .line 105
    iput v0, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_24

    .line 108
    iget-object p2, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    goto :goto_2a

    :cond_24
    const/16 v0, 0x8

    if-ne p2, v0, :cond_39

    .line 110
    iget-object p2, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 115
    :goto_2a
    iget v0, v1, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_38

    .line 116
    iget-object p0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 117
    invoke-static {v1}, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->recycle(Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;)V

    :cond_38
    return-object p2

    .line 112
    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must provide flag PRE or POST"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_41
    return-object v0
.end method


# virtual methods
.method addToAppearedInPreLayoutHolders(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 4

    .line 143
    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    if-nez v0, :cond_13

    .line 145
    invoke-static {}, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->obtain()Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    .line 146
    iget-object p0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_13
    iget p0, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 p0, p0, 0x2

    iput p0, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 149
    iput-object p2, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    return-void
.end method

.method addToDisappearedInLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 3

    .line 196
    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    if-nez v0, :cond_13

    .line 198
    invoke-static {}, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->obtain()Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    .line 199
    iget-object p0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_13
    iget p0, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 p0, p0, 0x1

    iput p0, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    return-void
.end method

.method addToOldChangeHolders(JLandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 4

    .line 130
    iget-object p0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method addToPostLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 4

    .line 180
    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    if-nez v0, :cond_13

    .line 182
    invoke-static {}, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->obtain()Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    .line 183
    iget-object p0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_13
    iput-object p2, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 186
    iget p0, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 p0, p0, 0x8

    iput p0, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    return-void
.end method

.method addToPreLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 4

    .line 62
    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    if-nez v0, :cond_13

    .line 64
    invoke-static {}, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->obtain()Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    .line 65
    iget-object p0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_13
    iput-object p2, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 68
    iget p0, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 p0, p0, 0x4

    iput p0, v0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    return-void
.end method

.method clear()V
    .registers 2

    .line 52
    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 53
    iget-object p0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0}, Landroidx/collection/LongSparseArray;->clear()V

    return-void
.end method

.method getFromOldChangeHolders(J)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 171
    iget-object p0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p0
.end method

.method isDisappearing(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 2

    .line 72
    iget-object p0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    const/4 p1, 0x1

    if-eqz p0, :cond_11

    .line 73
    iget p0, p0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_11

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return p1
.end method

.method isInPreLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 2

    .line 159
    iget-object p0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    if-eqz p0, :cond_12

    .line 160
    iget p0, p0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

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

    .line 271
    invoke-static {}, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->drainCache()V

    return-void
.end method

.method public onViewDetached(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .line 275
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ViewInfoStore;->removeFromDisappearedInLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method popFromPostLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/16 v0, 0x8

    .line 95
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/ViewInfoStore;->popFromLayoutStep(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object p0

    return-object p0
.end method

.method popFromPreLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x4

    .line 84
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/ViewInfoStore;->popFromLayoutStep(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object p0

    return-object p0
.end method

.method process(Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;)V
    .registers 8

    .line 217
    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_6f

    .line 218
    iget-object v1, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v1, v0}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 219
    iget-object v2, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {v2, v0}, Landroidx/collection/SimpleArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    .line 220
    iget v3, v2, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v4, v3, 0x3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_25

    .line 222
    invoke-interface {p1, v1}, Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;->unused(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_69

    :cond_25
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_37

    .line 225
    iget-object v3, v2, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    if-nez v3, :cond_31

    .line 228
    invoke-interface {p1, v1}, Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;->unused(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_69

    .line 230
    :cond_31
    iget-object v4, v2, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v1, v3, v4}, Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;->processDisappeared(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_69

    :cond_37
    and-int/lit8 v4, v3, 0xe

    const/16 v5, 0xe

    if-ne v4, v5, :cond_45

    .line 234
    iget-object v3, v2, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v2, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v1, v3, v4}, Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;->processAppeared(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_69

    :cond_45
    and-int/lit8 v4, v3, 0xc

    const/16 v5, 0xc

    if-ne v4, v5, :cond_53

    .line 237
    iget-object v3, v2, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v2, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v1, v3, v4}, Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;->processPersistent(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_69

    :cond_53
    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_5e

    .line 240
    iget-object v3, v2, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    const/4 v4, 0x0

    invoke-interface {p1, v1, v3, v4}, Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;->processDisappeared(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_69

    :cond_5e
    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_69

    .line 243
    iget-object v3, v2, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->preInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v2, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->postInfo:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v1, v3, v4}, Landroidx/recyclerview/widget/ViewInfoStore$ProcessCallback;->processAppeared(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 249
    :cond_69
    :goto_69
    invoke-static {v2}, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->recycle(Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_6f
    return-void
.end method

.method removeFromDisappearedInLayout(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .line 209
    iget-object p0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    if-nez p0, :cond_b

    return-void

    .line 213
    :cond_b
    iget p1, p0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->flags:I

    return-void
.end method

.method removeViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 4

    .line 258
    iget-object v0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1b

    .line 259
    iget-object v1, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v0}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_18

    .line 260
    iget-object v1, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mOldChangedHolders:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1, v0}, Landroidx/collection/LongSparseArray;->removeAt(I)V

    goto :goto_1b

    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 264
    :cond_1b
    :goto_1b
    iget-object p0, p0, Landroidx/recyclerview/widget/ViewInfoStore;->mLayoutHolderMap:Landroidx/collection/ArrayMap;

    invoke-virtual {p0, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;

    if-eqz p0, :cond_28

    .line 266
    invoke-static {p0}, Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;->recycle(Landroidx/recyclerview/widget/ViewInfoStore$InfoRecord;)V

    :cond_28
    return-void
.end method
