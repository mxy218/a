.class Landroidx/leanback/widget/ViewsStateBundle;
.super Ljava/lang/Object;
.source "ViewsStateBundle.java"


# instance fields
.field private mChildStates:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLimitNumber:I

.field private mSavePolicy:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mSavePolicy:I

    const/16 v0, 0x64

    .line 56
    iput v0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mLimitNumber:I

    return-void
.end method

.method static getSaveStatesKey(I)Ljava/lang/String;
    .registers 1

    .line 222
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clear()V
    .registers 1

    .line 60
    iget-object p0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mChildStates:Landroidx/collection/LruCache;

    if-eqz p0, :cond_7

    .line 61
    invoke-virtual {p0}, Landroidx/collection/LruCache;->evictAll()V

    :cond_7
    return-void
.end method

.method public final loadFromBundle(Landroid/os/Bundle;)V
    .registers 6

    .line 89
    iget-object v0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mChildStates:Landroidx/collection/LruCache;

    if-eqz v0, :cond_27

    if-eqz p1, :cond_27

    .line 90
    invoke-virtual {v0}, Landroidx/collection/LruCache;->evictAll()V

    .line 91
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 93
    iget-object v2, p0, Landroidx/leanback/widget/ViewsStateBundle;->mChildStates:Landroidx/collection/LruCache;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_27
    return-void
.end method

.method public final loadView(Landroid/view/View;I)V
    .registers 4

    .line 154
    iget-object v0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mChildStates:Landroidx/collection/LruCache;

    if-eqz v0, :cond_15

    .line 155
    invoke-static {p2}, Landroidx/leanback/widget/ViewsStateBundle;->getSaveStatesKey(I)Ljava/lang/String;

    move-result-object p2

    .line 158
    iget-object p0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mChildStates:Landroidx/collection/LruCache;

    invoke-virtual {p0, p2}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-eqz p0, :cond_15

    .line 160
    invoke-virtual {p1, p0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_15
    return-void
.end method

.method public remove(I)V
    .registers 3

    .line 66
    iget-object v0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mChildStates:Landroidx/collection/LruCache;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroidx/collection/LruCache;->size()I

    move-result v0

    if-eqz v0, :cond_13

    .line 67
    iget-object p0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mChildStates:Landroidx/collection/LruCache;

    invoke-static {p1}, Landroidx/leanback/widget/ViewsStateBundle;->getSaveStatesKey(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/collection/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    return-void
.end method

.method public final saveAsBundle()Landroid/os/Bundle;
    .registers 4

    .line 75
    iget-object v0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mChildStates:Landroidx/collection/LruCache;

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Landroidx/collection/LruCache;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_3b

    .line 78
    :cond_b
    iget-object p0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mChildStates:Landroidx/collection/LruCache;

    invoke-virtual {p0}, Landroidx/collection/LruCache;->snapshot()Ljava/util/Map;

    move-result-object p0

    .line 79
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 81
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 82
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 83
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_1e

    :cond_3a
    return-object v0

    :cond_3b
    :goto_3b
    const/4 p0, 0x0

    return-object p0
.end method

.method public final saveOffscreenView(Landroid/view/View;I)V
    .registers 5

    .line 208
    iget v0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mSavePolicy:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    goto :goto_13

    .line 211
    :cond_c
    invoke-virtual {p0, p1, p2}, Landroidx/leanback/widget/ViewsStateBundle;->saveViewUnchecked(Landroid/view/View;I)V

    goto :goto_13

    .line 214
    :cond_10
    invoke-virtual {p0, p2}, Landroidx/leanback/widget/ViewsStateBundle;->remove(I)V

    :goto_13
    return-void
.end method

.method public final saveOnScreenView(Landroid/os/Bundle;Landroid/view/View;I)Landroid/os/Bundle;
    .registers 4

    .line 189
    iget p0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mSavePolicy:I

    if-eqz p0, :cond_1a

    .line 190
    invoke-static {p3}, Landroidx/leanback/widget/ViewsStateBundle;->getSaveStatesKey(I)Ljava/lang/String;

    move-result-object p0

    .line 191
    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    .line 192
    invoke-virtual {p2, p3}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    if-nez p1, :cond_17

    .line 194
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 196
    :cond_17
    invoke-virtual {p1, p0, p3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_1a
    return-object p1
.end method

.method protected final saveViewUnchecked(Landroid/view/View;I)V
    .registers 4

    .line 172
    iget-object v0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mChildStates:Landroidx/collection/LruCache;

    if-eqz v0, :cond_15

    .line 173
    invoke-static {p2}, Landroidx/leanback/widget/ViewsStateBundle;->getSaveStatesKey(I)Ljava/lang/String;

    move-result-object p2

    .line 174
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 175
    invoke-virtual {p1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 176
    iget-object p0, p0, Landroidx/leanback/widget/ViewsStateBundle;->mChildStates:Landroidx/collection/LruCache;

    invoke-virtual {p0, p2, v0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-void
.end method
