.class public Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;
.super Lflyme/support/v7/widget/RecyclerView$Adapter;
.source "HeaderAndFooterWrapperAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lflyme/support/v7/widget/RecyclerView$Adapter<",
        "Lflyme/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static mFooterIndex:I = 0x30d40

.field private static mHeadIndex:I = 0x186a0


# instance fields
.field private final mDataObserver:Lflyme/support/v7/widget/RecyclerView$AdapterDataObserver;

.field private mFooterViews:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Lflyme/support/v7/widget/MzRecyclerView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderViews:Landroidx/collection/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SparseArrayCompat<",
            "Lflyme/support/v7/widget/MzRecyclerView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInnerAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;


# direct methods
.method public constructor <init>(Lflyme/support/v7/widget/RecyclerView$Adapter;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 24
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mHeaderViews:Landroidx/collection/SparseArrayCompat;

    .line 25
    new-instance v0, Landroidx/collection/SparseArrayCompat;

    invoke-direct {v0}, Landroidx/collection/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mFooterViews:Landroidx/collection/SparseArrayCompat;

    .line 353
    new-instance v0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter$2;

    invoke-direct {v0, p0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter$2;-><init>(Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;)V

    iput-object v0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mDataObserver:Lflyme/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 32
    iput-object p1, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mInnerAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    return-void
.end method

.method static synthetic access$000(Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;)Landroidx/collection/SparseArrayCompat;
    .registers 1

    .line 17
    iget-object p0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mHeaderViews:Landroidx/collection/SparseArrayCompat;

    return-object p0
.end method

.method static synthetic access$100(Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;)Landroidx/collection/SparseArrayCompat;
    .registers 1

    .line 17
    iget-object p0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mFooterViews:Landroidx/collection/SparseArrayCompat;

    return-object p0
.end method

.method static synthetic access$200(Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;)Lflyme/support/v7/widget/RecyclerView$Adapter;
    .registers 1

    .line 17
    iget-object p0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mInnerAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method private getRealItemCount()I
    .registers 1

    .line 65
    iget-object p0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mInnerAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz p0, :cond_9

    .line 66
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method private isFooterViewPos(I)Z
    .registers 5

    .line 187
    invoke-virtual {p0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_4e

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HeaderAndFooterWrapperAdapter isFooterViewPos : current index is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", but total itemcount is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->getItemCount()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", headers:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->getHeadersCount()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", items:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->getRealItemCount()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", footers:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->getFootersCount()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HeaderFooterAdapter"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 191
    :cond_4e
    invoke-virtual {p0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->getHeadersCount()I

    move-result v0

    invoke-direct {p0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->getRealItemCount()I

    move-result p0

    add-int/2addr v0, p0

    if-lt p1, v0, :cond_5a

    const/4 v1, 0x1

    :cond_5a
    return v1
.end method

.method private isHeaderViewPos(I)Z
    .registers 2

    .line 183
    invoke-virtual {p0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->getHeadersCount()I

    move-result p0

    if-ge p1, p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method


# virtual methods
.method public addFooterView(Lflyme/support/v7/widget/MzRecyclerView$FixedViewInfo;)V
    .registers 4

    .line 199
    iget-object p0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mFooterViews:Landroidx/collection/SparseArrayCompat;

    sget v0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mFooterIndex:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mFooterIndex:I

    invoke-virtual {p0, v0, p1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public addHeaderView(Lflyme/support/v7/widget/MzRecyclerView$FixedViewInfo;)V
    .registers 4

    .line 195
    iget-object p0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mHeaderViews:Landroidx/collection/SparseArrayCompat;

    sget v0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mHeadIndex:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mHeadIndex:I

    invoke-virtual {p0, v0, p1}, Landroidx/collection/SparseArrayCompat;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public getFootersCount()I
    .registers 1

    .line 241
    iget-object p0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mFooterViews:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result p0

    return p0
.end method

.method public getHeadersCount()I
    .registers 1

    .line 237
    iget-object p0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mHeaderViews:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result p0

    return p0
.end method

.method public getItemCount()I
    .registers 3

    .line 99
    invoke-virtual {p0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->getHeadersCount()I

    move-result v0

    invoke-virtual {p0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->getFootersCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->getRealItemCount()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getItemId(I)J
    .registers 4

    .line 315
    invoke-virtual {p0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->getHeadersCount()I

    move-result v0

    .line 316
    iget-object v1, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mInnerAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_18

    if-lt p1, v0, :cond_18

    sub-int/2addr p1, v0

    .line 318
    invoke-direct {p0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->getRealItemCount()I

    move-result v0

    if-ge p1, v0, :cond_18

    .line 320
    iget-object p0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mInnerAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide p0

    return-wide p0

    :cond_18
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public getItemViewType(I)I
    .registers 4

    .line 53
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->isHeaderViewPos(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 54
    iget-object p0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mHeaderViews:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p0, p1}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result p0

    return p0

    .line 55
    :cond_d
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->isFooterViewPos(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 56
    iget-object v0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mFooterViews:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->getHeadersCount()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-direct {p0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->getRealItemCount()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->keyAt(I)I

    move-result p0

    return p0

    .line 58
    :cond_24
    iget-object v0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mInnerAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_32

    .line 59
    invoke-virtual {p0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->getHeadersCount()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p0

    return p0

    :cond_32
    const/4 p0, -0x2

    return p0
.end method

.method public getWrappedAdapter()Lflyme/support/v7/widget/RecyclerView$Adapter;
    .registers 1

    .line 342
    iget-object p0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mInnerAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method public hasStableIds()Z
    .registers 2

    .line 347
    iget-object v0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mInnerAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_9

    .line 348
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result p0

    return p0

    .line 350
    :cond_9
    invoke-super {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result p0

    return p0
.end method

.method public isEnabled(I)Z
    .registers 6

    .line 266
    invoke-virtual {p0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->getHeadersCount()I

    move-result v0

    const/4 v1, 0x0

    if-ltz p1, :cond_17

    if-ge p1, v0, :cond_17

    .line 268
    iget-object p0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mHeaderViews:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p0, p1}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/widget/MzRecyclerView$FixedViewInfo;

    if-eqz p0, :cond_16

    .line 270
    iget-boolean p0, p0, Lflyme/support/v7/widget/MzRecyclerView$FixedViewInfo;->isSelectable:Z

    return p0

    :cond_16
    return v1

    :cond_17
    sub-int v2, p1, v0

    .line 277
    iget-object v3, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mInnerAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_2c

    if-lt p1, v0, :cond_2c

    .line 278
    invoke-direct {p0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->getRealItemCount()I

    move-result p1

    if-ge v2, p1, :cond_2d

    .line 280
    iget-object p0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mInnerAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/RecyclerView$Adapter;->isEnabled(I)Z

    move-result p0

    return p0

    :cond_2c
    move p1, v1

    :cond_2d
    sub-int/2addr v2, p1

    if-ltz v2, :cond_43

    .line 284
    invoke-virtual {p0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->getFootersCount()I

    move-result p1

    if-ge v2, p1, :cond_43

    .line 285
    iget-object p0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mFooterViews:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p0, v2}, Landroidx/collection/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/widget/MzRecyclerView$FixedViewInfo;

    if-eqz p0, :cond_43

    .line 287
    iget-boolean p0, p0, Lflyme/support/v7/widget/MzRecyclerView$FixedViewInfo;->isSelectable:Z

    return p0

    :cond_43
    return v1
.end method

.method public isSelectable(I)Z
    .registers 6

    .line 298
    invoke-virtual {p0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->getHeadersCount()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_8

    return v1

    :cond_8
    sub-int v2, p1, v0

    .line 304
    iget-object v3, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mInnerAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_1d

    if-lt p1, v0, :cond_1d

    .line 305
    invoke-direct {p0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->getRealItemCount()I

    move-result p1

    if-ge v2, p1, :cond_1d

    .line 307
    iget-object p0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mInnerAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/RecyclerView$Adapter;->isSelectable(I)Z

    move-result p0

    return p0

    :cond_1d
    return v1
.end method

.method public onAttachedToRecyclerView(Lflyme/support/v7/widget/RecyclerView;)V
    .registers 3

    .line 110
    iget-object v0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mInnerAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_7

    .line 111
    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Lflyme/support/v7/widget/RecyclerView;)V

    .line 113
    :cond_7
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->setHeaderAndFooterSpanForGridLayoutManager(Lflyme/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method public onBindViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 4

    .line 73
    invoke-direct {p0, p2}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->isHeaderViewPos(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 76
    :cond_7
    invoke-direct {p0, p2}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->isFooterViewPos(I)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 79
    :cond_e
    iget-object v0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mInnerAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1a

    .line 80
    invoke-virtual {p0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->getHeadersCount()I

    move-result p0

    sub-int/2addr p2, p0

    invoke-virtual {v0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)V

    :cond_1a
    return-void
.end method

.method public onBindViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lflyme/support/v7/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p2}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->isHeaderViewPos(I)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 89
    :cond_7
    invoke-direct {p0, p2}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->isFooterViewPos(I)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    .line 92
    :cond_e
    iget-object v0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mInnerAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1a

    .line 93
    invoke-virtual {p0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->getHeadersCount()I

    move-result p0

    sub-int/2addr p2, p0

    invoke-virtual {v0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    :cond_1a
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .line 37
    iget-object v0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mHeaderViews:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 38
    iget-object p0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mHeaderViews:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p0, p2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/widget/MzRecyclerView$FixedViewInfo;

    iget-object p0, p0, Lflyme/support/v7/widget/MzRecyclerView$FixedViewInfo;->viewHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    return-object p0

    .line 41
    :cond_13
    iget-object v0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mFooterViews:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 42
    iget-object p0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mFooterViews:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p0, p2}, Landroidx/collection/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/widget/MzRecyclerView$FixedViewInfo;

    iget-object p0, p0, Lflyme/support/v7/widget/MzRecyclerView$FixedViewInfo;->viewHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    return-object p0

    .line 45
    :cond_26
    iget-object p0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mInnerAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz p0, :cond_2f

    .line 46
    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p0

    return-object p0

    :cond_2f
    const/4 p0, 0x0

    return-object p0
.end method

.method public onDetachedFromRecyclerView(Lflyme/support/v7/widget/RecyclerView;)V
    .registers 2

    .line 149
    iget-object p0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mInnerAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz p0, :cond_7

    .line 150
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Lflyme/support/v7/widget/RecyclerView;)V

    :cond_7
    return-void
.end method

.method public onFailedToRecycleView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 3

    .line 335
    iget-object v0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mInnerAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_9

    .line 336
    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->onFailedToRecycleView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result p0

    return p0

    .line 338
    :cond_9
    invoke-super {p0, p1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->onFailedToRecycleView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result p0

    return p0
.end method

.method public onViewAttachedToWindow(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 4

    .line 162
    iget-object v0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mInnerAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_7

    .line 163
    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 165
    :cond_7
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    .line 166
    invoke-direct {p0, v0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->isHeaderViewPos(I)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-direct {p0, v0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->isFooterViewPos(I)Z

    move-result p0

    if-eqz p0, :cond_29

    .line 167
    :cond_17
    iget-object p0, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 168
    instance-of p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz p1, :cond_29

    .line 169
    check-cast p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    const/4 p1, 0x1

    .line 170
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    :cond_29
    return-void
.end method

.method public onViewDetachedFromWindow(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .line 177
    iget-object p0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mInnerAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz p0, :cond_7

    .line 178
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_7
    return-void
.end method

.method public onViewRecycled(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .line 328
    iget-object p0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mInnerAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz p0, :cond_7

    .line 329
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_7
    return-void
.end method

.method public registerAdapterDataObserver(Lflyme/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .registers 3

    .line 246
    iget-object v0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mInnerAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Lflyme/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 247
    iget-object p1, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mDataObserver:Lflyme/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-super {p0, p1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Lflyme/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method

.method public setHeaderAndFooterSpanForGridLayoutManager(Lflyme/support/v7/widget/RecyclerView;)V
    .registers 4

    .line 123
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView;->getLayoutManager()Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 124
    instance-of v0, p1, Lflyme/support/v7/widget/GridLayoutManager;

    if-eqz v0, :cond_1d

    .line 125
    check-cast p1, Lflyme/support/v7/widget/GridLayoutManager;

    .line 126
    invoke-virtual {p1}, Lflyme/support/v7/widget/GridLayoutManager;->getSpanSizeLookup()Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v0

    .line 128
    new-instance v1, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter$1;

    invoke-direct {v1, p0, p1, v0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter$1;-><init>(Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;Lflyme/support/v7/widget/GridLayoutManager;Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    invoke-virtual {p1, v1}, Lflyme/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Lflyme/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 143
    invoke-virtual {p1}, Lflyme/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result p0

    invoke-virtual {p1, p0}, Lflyme/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    :cond_1d
    return-void
.end method

.method public unregisterAdapterDataObserver(Lflyme/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .registers 3

    .line 252
    iget-object v0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mInnerAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Lflyme/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    .line 253
    iget-object p1, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->mDataObserver:Lflyme/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-super {p0, p1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Lflyme/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    return-void
.end method
