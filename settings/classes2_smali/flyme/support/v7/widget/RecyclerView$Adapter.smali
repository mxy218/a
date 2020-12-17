.class public abstract Lflyme/support/v7/widget/RecyclerView$Adapter;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Lflyme/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mHasStableIds:Z

.field private final mObservable:Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 6373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6374
    new-instance v0, Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-direct {v0}, Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Adapter;->mObservable:Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;

    const/4 v0, 0x0

    .line 6375
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$Adapter;->mHasStableIds:Z

    return-void
.end method


# virtual methods
.method public final bindViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 6477
    iput p2, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 6478
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 6479
    invoke-virtual {p0, p2}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mItemId:J

    :cond_e
    const/16 v0, 0x207

    const/4 v1, 0x1

    .line 6481
    invoke-virtual {p1, v1, v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->setFlags(II)V

    const-string v0, "RV OnBindView"

    .line 6484
    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 6485
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 6486
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->clearPayload()V

    .line 6487
    iget-object p0, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 6488
    instance-of p1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz p1, :cond_31

    .line 6489
    check-cast p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    iput-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 6491
    :cond_31
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    return-void
.end method

.method public final createViewHolder(Landroid/view/ViewGroup;I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    const-string v0, "RV CreateView"

    .line 6462
    invoke-static {v0}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 6463
    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p0

    .line 6464
    iput p2, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 6465
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    return-object p0
.end method

.method public abstract getItemCount()I
.end method

.method public getItemId(I)J
    .registers 2

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public getItemViewType(I)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public final hasObservers()Z
    .registers 1

    .line 6645
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$Adapter;->mObservable:Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;->hasObservers()Z

    move-result p0

    return p0
.end method

.method public hasStableIds()Z
    .registers 1

    .line 6553
    iget-boolean p0, p0, Lflyme/support/v7/widget/RecyclerView$Adapter;->mHasStableIds:Z

    return p0
.end method

.method public isEnabled(I)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public isSelectable(I)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public final notifyDataSetChanged()V
    .registers 1

    .line 6732
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$Adapter;->mObservable:Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyChanged()V

    return-void
.end method

.method public final notifyItemChanged(I)V
    .registers 3

    .line 6748
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$Adapter;->mObservable:Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final notifyItemInserted(I)V
    .registers 3

    .line 6841
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$Adapter;->mObservable:Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public final notifyItemMoved(II)V
    .registers 3

    .line 6856
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$Adapter;->mObservable:Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemMoved(II)V

    return-void
.end method

.method public final notifyItemRangeChanged(II)V
    .registers 3

    .line 6794
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$Adapter;->mObservable:Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public final notifyItemRangeChanged(IILjava/lang/Object;)V
    .registers 4

    .line 6824
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$Adapter;->mObservable:Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {p0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public final notifyItemRangeInserted(II)V
    .registers 3

    .line 6875
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$Adapter;->mObservable:Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public final notifyItemRangeRemoved(II)V
    .registers 3

    .line 6909
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$Adapter;->mObservable:Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public final notifyItemRemoved(I)V
    .registers 3

    .line 6892
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$Adapter;->mObservable:Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public onAttachedToRecyclerView(Lflyme/support/v7/widget/RecyclerView;)V
    .registers 2

    return-void
.end method

.method public abstract onBindViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public onBindViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 6452
    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$Adapter;->onBindViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method

.method public onDetachedFromRecyclerView(Lflyme/support/v7/widget/RecyclerView;)V
    .registers 2

    return-void
.end method

.method public onFailedToRecycleView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public onViewAttachedToWindow(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public onViewDetachedFromWindow(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public onViewRecycled(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    return-void
.end method

.method public registerAdapterDataObserver(Lflyme/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .registers 2

    .line 6665
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$Adapter;->mObservable:Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {p0, p1}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method public setHasStableIds(Z)V
    .registers 3

    .line 6519
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasObservers()Z

    move-result v0

    if-nez v0, :cond_9

    .line 6523
    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView$Adapter;->mHasStableIds:Z

    return-void

    .line 6520
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot change whether this adapter has stable IDs while the adapter has registered observers."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterAdapterDataObserver(Lflyme/support/v7/widget/RecyclerView$AdapterDataObserver;)V
    .registers 2

    .line 6679
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$Adapter;->mObservable:Lflyme/support/v7/widget/RecyclerView$AdapterDataObservable;

    invoke-virtual {p0, p1}, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method
