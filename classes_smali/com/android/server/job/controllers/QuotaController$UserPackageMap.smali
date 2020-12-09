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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/job/controllers/QuotaController$1;)V
    .registers 2

    .line 119
    invoke-direct {p0}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;-><init>()V

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 124
    if-nez v0, :cond_14

    .line 125
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 126
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    :cond_14
    invoke-virtual {v0, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-void
.end method

.method public clear()V
    .registers 3

    .line 132
    const/4 v0, 0x0

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
    :cond_17
    return-void
.end method

.method public delete(I)V
    .registers 3

    .line 139
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 140
    return-void
.end method

.method public delete(ILjava/lang/String;)V
    .registers 4

    .line 144
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    .line 145
    if-eqz p1, :cond_d

    .line 146
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->numUsers()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_25

    .line 193
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 194
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

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
    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 198
    :cond_25
    return-void
.end method

.method public get(ILjava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    .line 153
    if-eqz p1, :cond_f

    .line 154
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 156
    :cond_f
    const/4 p1, 0x0

    return-object p1
.end method

.method public indexOfKey(I)I
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    return p1
.end method

.method public keyAt(I)I
    .registers 3

    .line 166
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    return p1
.end method

.method public keyAt(II)Ljava/lang/String;
    .registers 4

    .line 172
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public numPackagesForUser(I)I
    .registers 3

    .line 181
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    .line 182
    if-nez p1, :cond_c

    const/4 p1, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    :goto_10
    return p1
.end method

.method public numUsers()I
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public valueAt(II)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
