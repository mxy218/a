.class Lcom/android/server/job/controllers/QuotaController$UserPackageMap;
.super Ljava/lang/Object;
.source "QuotaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserPackageMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 119
    .local p0, "this":Lcom/android/server/job/controllers/QuotaController$UserPackageMap;, "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/job/controllers/QuotaController$1;)V
    .registers 2
    .param p1, "x0"  # Lcom/android/server/job/controllers/QuotaController$1;

    .line 119
    .local p0, "this":Lcom/android/server/job/controllers/QuotaController$UserPackageMap;, "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<TT;>;"
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;-><init>()V

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "userId"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 123
    .local p0, "this":Lcom/android/server/job/controllers/QuotaController$UserPackageMap;, "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<TT;>;"
    .local p3, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 124
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;TT;>;"
    if-nez v0, :cond_15

    .line 125
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 126
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    :cond_15
    invoke-virtual {v0, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-void
.end method

.method public clear()V
    .registers 3

    .line 132
    .local p0, "this":Lcom/android/server/job/controllers/QuotaController$UserPackageMap;, "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 133
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    .end local v0  # "i":I
    :cond_17
    return-void
.end method

.method public delete(I)V
    .registers 3
    .param p1, "userId"  # I

    .line 139
    .local p0, "this":Lcom/android/server/job/controllers/QuotaController$UserPackageMap;, "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<TT;>;"
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 140
    return-void
.end method

.method public delete(ILjava/lang/String;)V
    .registers 4
    .param p1, "userId"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 144
    .local p0, "this":Lcom/android/server/job/controllers/QuotaController$UserPackageMap;, "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<TT;>;"
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 145
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;TT;>;"
    if-eqz v0, :cond_d

    .line 146
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_d
    return-void
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 192
    .local p0, "this":Lcom/android/server/job/controllers/QuotaController$UserPackageMap;, "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numUsers()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_25

    .line 193
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 194
    .local v1, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;TT;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_16
    if-ltz v2, :cond_22

    .line 195
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 194
    add-int/lit8 v2, v2, -0x1

    goto :goto_16

    .line 192
    .end local v1  # "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;TT;>;"
    .end local v2  # "j":I
    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 198
    .end local v0  # "i":I
    :cond_25
    return-void
.end method

.method public get(ILjava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p1, "userId"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 152
    .local p0, "this":Lcom/android/server/job/controllers/QuotaController$UserPackageMap;, "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<TT;>;"
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 153
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;TT;>;"
    if-eqz v0, :cond_f

    .line 154
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 156
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public indexOfKey(I)I
    .registers 3
    .param p1, "userId"  # I

    .line 161
    .local p0, "this":Lcom/android/server/job/controllers/QuotaController$UserPackageMap;, "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<TT;>;"
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    return v0
.end method

.method public keyAt(I)I
    .registers 3
    .param p1, "index"  # I

    .line 166
    .local p0, "this":Lcom/android/server/job/controllers/QuotaController$UserPackageMap;, "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<TT;>;"
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public keyAt(II)Ljava/lang/String;
    .registers 4
    .param p1, "userIndex"  # I
    .param p2, "packageIndex"  # I

    .line 172
    .local p0, "this":Lcom/android/server/job/controllers/QuotaController$UserPackageMap;, "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<TT;>;"
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public numPackagesForUser(I)I
    .registers 4
    .param p1, "userId"  # I

    .line 181
    .local p0, "this":Lcom/android/server/job/controllers/QuotaController$UserPackageMap;, "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<TT;>;"
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 182
    .local v0, "data":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;TT;>;"
    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    :goto_10
    return v1
.end method

.method public numUsers()I
    .registers 2

    .line 177
    .local p0, "this":Lcom/android/server/job/controllers/QuotaController$UserPackageMap;, "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<TT;>;"
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public valueAt(II)Ljava/lang/Object;
    .registers 4
    .param p1, "userIndex"  # I
    .param p2, "packageIndex"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .line 188
    .local p0, "this":Lcom/android/server/job/controllers/QuotaController$UserPackageMap;, "Lcom/android/server/job/controllers/QuotaController$UserPackageMap<TT;>;"
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
