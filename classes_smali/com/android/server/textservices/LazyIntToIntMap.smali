.class final Lcom/android/server/textservices/LazyIntToIntMap;
.super Ljava/lang/Object;
.source "LazyIntToIntMap.java"


# instance fields
.field private final mMap:Landroid/util/SparseIntArray;

.field private final mMappingFunction:Ljava/util/function/IntUnaryOperator;


# direct methods
.method public constructor <init>(Ljava/util/function/IntUnaryOperator;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/textservices/LazyIntToIntMap;->mMap:Landroid/util/SparseIntArray;

    .line 39
    iput-object p1, p0, Lcom/android/server/textservices/LazyIntToIntMap;->mMappingFunction:Ljava/util/function/IntUnaryOperator;

    .line 40
    return-void
.end method


# virtual methods
.method public delete(I)V
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/android/server/textservices/LazyIntToIntMap;->mMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 48
    return-void
.end method

.method public get(I)I
    .registers 4

    .line 56
    iget-object v0, p0, Lcom/android/server/textservices/LazyIntToIntMap;->mMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 57
    if-ltz v0, :cond_f

    .line 58
    iget-object p1, p0, Lcom/android/server/textservices/LazyIntToIntMap;->mMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    return p1

    .line 60
    :cond_f
    iget-object v0, p0, Lcom/android/server/textservices/LazyIntToIntMap;->mMappingFunction:Ljava/util/function/IntUnaryOperator;

    invoke-interface {v0, p1}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v0

    .line 61
    iget-object v1, p0, Lcom/android/server/textservices/LazyIntToIntMap;->mMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 62
    return v0
.end method
