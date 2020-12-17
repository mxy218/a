.class public abstract Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.super Ljava/lang/Object;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SpanSizeLookup"
.end annotation


# instance fields
.field private mCacheSpanIndices:Z

.field final mSpanIndexCache:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 830
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    .line 834
    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    return-void
.end method


# virtual methods
.method getCachedSpanIndex(II)I
    .registers 5

    .line 873
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-nez v0, :cond_9

    .line 874
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result p0

    return p0

    .line 876
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_13

    return v0

    .line 880
    :cond_13
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result p2

    .line 881
    iget-object p0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return p2
.end method

.method public getSpanGroupIndex(II)I
    .registers 9

    .line 972
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_8
    if-ge v2, p1, :cond_1d

    .line 974
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v5

    add-int/2addr v3, v5

    if-ne v3, p2, :cond_15

    add-int/lit8 v4, v4, 0x1

    move v3, v1

    goto :goto_1a

    :cond_15
    if-le v3, p2, :cond_1a

    add-int/lit8 v4, v4, 0x1

    move v3, v5

    :cond_1a
    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1d
    add-int/2addr v3, v0

    if-le v3, p2, :cond_22

    add-int/lit8 v4, v4, 0x1

    :cond_22
    return v4
.end method

.method public abstract getSpanIndex(II)I
.end method

.method public abstract getSpanSize(I)I
.end method

.method public invalidateSpanIndexCache()V
    .registers 1

    .line 860
    iget-object p0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method
