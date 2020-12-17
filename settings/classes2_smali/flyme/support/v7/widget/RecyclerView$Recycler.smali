.class public final Lflyme/support/v7/widget/RecyclerView$Recycler;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Recycler"
.end annotation


# instance fields
.field final mAttachedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lflyme/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field final mCachedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lflyme/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mChangedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lflyme/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mRecyclerPool:Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;

.field private mRequestedCacheMax:I

.field private final mUnmodifiableAttachedScrap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lflyme/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mViewCacheExtension:Lflyme/support/v7/widget/RecyclerView$ViewCacheExtension;

.field mViewCacheMax:I

.field final synthetic this$0:Lflyme/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lflyme/support/v7/widget/RecyclerView;)V
    .registers 2

    .line 5313
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5314
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 5315
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 5317
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    .line 5319
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    .line 5320
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    const/4 p1, 0x2

    .line 5322
    iput p1, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    .line 5323
    iput p1, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mViewCacheMax:I

    return-void
.end method

.method private attachAccessibilityDelegate(Landroid/view/View;)V
    .registers 3

    .line 5714
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 5715
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    .line 5717
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 5720
    :cond_12
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 5721
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mAccessibilityDelegate:Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;

    .line 5722
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerViewAccessibilityDelegate;->getItemDelegate()Landroidx/core/view/AccessibilityDelegateCompat;

    move-result-object p0

    .line 5721
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :cond_23
    return-void
.end method

.method private invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V
    .registers 7

    .line 5734
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_18

    .line 5735
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5736
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_15

    .line 5737
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_18
    if-nez p2, :cond_1b

    return-void

    .line 5744
    :cond_1b
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    const/4 p2, 0x4

    if-ne p0, p2, :cond_2a

    const/4 p0, 0x0

    .line 5745
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5746
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_34

    .line 5748
    :cond_2a
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    .line 5749
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5750
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_34
    return-void
.end method

.method private invalidateDisplayListInt(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 3

    .line 5728
    iget-object p1, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_c

    .line 5729
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    :cond_c
    return-void
.end method

.method private tryBindViewHolderByDeadline(Lflyme/support/v7/widget/RecyclerView$ViewHolder;IIJ)Z
    .registers 15

    .line 5419
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iput-object v0, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    .line 5420
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    .line 5421
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v7

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p4, v0

    if-eqz v0, :cond_23

    .line 5422
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;

    move-wide v3, v7

    move-wide v5, p4

    .line 5423
    invoke-virtual/range {v1 .. v6}, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->willBindInTime(IJJ)Z

    move-result p4

    if-nez p4, :cond_23

    const/4 p0, 0x0

    return p0

    .line 5427
    :cond_23
    iget-object p4, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object p4, p4, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p4, p1, p2}, Lflyme/support/v7/widget/RecyclerView$Adapter;->bindViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 5428
    iget-object p2, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {p2}, Lflyme/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide p4

    .line 5429
    iget-object p2, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    sub-long/2addr p4, v7

    invoke-virtual {p2, v0, p4, p5}, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->factorInBindTime(IJ)V

    .line 5430
    iget-object p2, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p2}, Lflyme/support/v7/widget/RecyclerView$Recycler;->attachAccessibilityDelegate(Landroid/view/View;)V

    .line 5431
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result p0

    if-eqz p0, :cond_4b

    .line 5432
    iput p3, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    :cond_4b
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method addViewHolderToRecycledViewPool(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Z)V
    .registers 5

    .line 5920
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView;->clearNestedRecyclerViewIfNotNested(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5921
    iget-object v0, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    if-eqz p2, :cond_e

    .line 5923
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->dispatchViewRecycled(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 5925
    :cond_e
    iput-object v1, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    .line 5926
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->getRecycledViewPool()Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object p0

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->putRecycledView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public clear()V
    .registers 2

    .line 5336
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5337
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    return-void
.end method

.method clearOldPositions()V
    .registers 5

    .line 6304
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_18

    .line 6306
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 6307
    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 6309
    :cond_18
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_1f
    if-ge v2, v0, :cond_2f

    .line 6311
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 6313
    :cond_2f
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v0, :cond_47

    .line 6314
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_37
    if-ge v1, v0, :cond_47

    .line 6316
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    :cond_47
    return-void
.end method

.method clearScrap()V
    .registers 2

    .line 5997
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5998
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz p0, :cond_c

    .line 5999
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_c
    return-void
.end method

.method public convertPreLayoutPositionToPostLayout(I)I
    .registers 5

    if-ltz p1, :cond_20

    .line 5503
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_20

    .line 5507
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_17

    return p1

    .line 5510
    :cond_17
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/AdapterHelper;->findPositionOffset(I)I

    move-result p0

    return p0

    .line 5504
    :cond_20
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". State item count is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    .line 5505
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dispatchViewRecycled(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 3

    .line 6148
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mRecyclerListener:Lflyme/support/v7/widget/RecyclerView$RecyclerListener;

    if-eqz v0, :cond_9

    .line 6149
    invoke-interface {v0, p1}, Lflyme/support/v7/widget/RecyclerView$RecyclerListener;->onViewRecycled(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 6151
    :cond_9
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_12

    .line 6152
    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 6154
    :cond_12
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    if-eqz v0, :cond_1d

    .line 6155
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ViewInfoStore;->removeViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_1d
    return-void
.end method

.method getChangedScrapViewForPosition(I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .registers 11

    .line 6006
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_72

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_72

    :cond_c
    const/4 v2, 0x0

    move v3, v2

    :goto_e
    const/16 v4, 0x20

    if-ge v3, v0, :cond_2d

    .line 6011
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 6012
    invoke-virtual {v5}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v6

    if-nez v6, :cond_2a

    invoke-virtual {v5}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v6

    if-ne v6, p1, :cond_2a

    .line 6013
    invoke-virtual {v5, v4}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    return-object v5

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 6018
    :cond_2d
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v3, v3, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_72

    .line 6019
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v3, v3, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {v3, p1}, Lflyme/support/v7/widget/AdapterHelper;->findPositionOffset(I)I

    move-result p1

    if-lez p1, :cond_72

    .line 6020
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v3, v3, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-ge p1, v3, :cond_72

    .line 6021
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v3, v3, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3, p1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v5

    :goto_53
    if-ge v2, v0, :cond_72

    .line 6023
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 6024
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v3

    if-nez v3, :cond_6f

    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v7

    cmp-long v3, v7, v5

    if-nez v3, :cond_6f

    .line 6025
    invoke-virtual {p1, v4}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    return-object p1

    :cond_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    :cond_72
    :goto_72
    return-object v1
.end method

.method getRecycledViewPool()Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;
    .registers 2

    .line 6252
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;

    if-nez v0, :cond_b

    .line 6253
    new-instance v0, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;

    .line 6255
    :cond_b
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;

    return-object p0
.end method

.method getScrapCount()I
    .registers 1

    .line 5989
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getScrapList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lflyme/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 5367
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    return-object p0
.end method

.method getScrapOrCachedViewForId(JIZ)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .registers 10

    .line 6096
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_59

    .line 6098
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 6099
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_56

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v2

    if-nez v2, :cond_56

    .line 6100
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    if-ne p3, v2, :cond_42

    const/16 p1, 0x20

    .line 6101
    invoke-virtual {v1, p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6102
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result p1

    if-eqz p1, :cond_41

    .line 6111
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result p0

    if-nez p0, :cond_41

    const/4 p0, 0x2

    const/16 p1, 0xe

    .line 6112
    invoke-virtual {v1, p0, p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->setFlags(II)V

    :cond_41
    return-object v1

    :cond_42
    if-nez p4, :cond_56

    .line 6121
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6122
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v3, v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lflyme/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 6123
    iget-object v1, v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    :cond_56
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 6129
    :cond_59
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_61
    const/4 v1, 0x0

    if-ltz v0, :cond_8b

    .line 6131
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 6132
    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_88

    .line 6133
    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-ne p3, v3, :cond_82

    if-nez p4, :cond_81

    .line 6135
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_81
    return-object v2

    :cond_82
    if-nez p4, :cond_88

    .line 6139
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    return-object v1

    :cond_88
    add-int/lit8 v0, v0, -0x1

    goto :goto_61

    :cond_8b
    return-object v1
.end method

.method getScrapOrHiddenOrCachedHolderForPosition(IZ)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .registers 8

    .line 6042
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_3b

    .line 6046
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 6047
    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v4

    if-nez v4, :cond_38

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_38

    .line 6048
    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_38

    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v4, v4, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget-boolean v4, v4, Lflyme/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    if-nez v4, :cond_32

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_38

    :cond_32
    const/16 p0, 0x20

    .line 6049
    invoke-virtual {v3, p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    return-object v3

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_3b
    if-nez p2, :cond_84

    .line 6055
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/ChildHelper;->findHiddenNonRemovedView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_84

    .line 6059
    invoke-static {v0}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 6060
    iget-object p2, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object p2, p2, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {p2, v0}, Lflyme/support/v7/widget/ChildHelper;->unhide(Landroid/view/View;)V

    .line 6061
    iget-object p2, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object p2, p2, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {p2, v0}, Lflyme/support/v7/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_6d

    .line 6066
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v1, p2}, Lflyme/support/v7/widget/ChildHelper;->detachViewFromParent(I)V

    .line 6067
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    const/16 p0, 0x2020

    .line 6068
    invoke-virtual {p1, p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    return-object p1

    .line 6063
    :cond_6d
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6075
    :cond_84
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_8a
    if-ge v1, v0, :cond_ab

    .line 6077
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 6080
    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_a8

    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    if-ne v3, p1, :cond_a8

    if-nez p2, :cond_a7

    .line 6082
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_a7
    return-object v2

    :cond_a8
    add-int/lit8 v1, v1, 0x1

    goto :goto_8a

    :cond_ab
    const/4 p0, 0x0

    return-object p0
.end method

.method getScrapViewAt(I)Landroid/view/View;
    .registers 2

    .line 5993
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object p0
.end method

.method public getViewForPosition(I)Landroid/view/View;
    .registers 3

    const/4 v0, 0x0

    .line 5530
    invoke-virtual {p0, p1, v0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(IZ)Landroid/view/View;

    move-result-object v0

    .line 5531
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0, p1}, Lflyme/support/v7/widget/RecyclerView;->setupChild(Landroid/view/View;I)V

    return-object v0
.end method

.method getViewForPosition(IZ)Landroid/view/View;
    .registers 5

    const-wide v0, 0x7fffffffffffffffL

    .line 5536
    invoke-virtual {p0, p1, p2, v0, v1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(IZJ)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p0

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object p0
.end method

.method markItemDecorInsetsDirty()V
    .registers 5

    .line 6322
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_21

    .line 6324
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 6325
    iget-object v2, v2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v2, :cond_1e

    const/4 v3, 0x1

    .line 6327
    iput-boolean v3, v2, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_21
    return-void
.end method

.method markKnownViewsInvalid()V
    .registers 5

    .line 6288
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 6289
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_2d

    .line 6291
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_27

    const/4 v3, 0x6

    .line 6293
    invoke-virtual {v2, v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    const/4 v3, 0x0

    .line 6294
    invoke-virtual {v2, v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 6299
    :cond_2a
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    :cond_2d
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .registers 7

    .line 6196
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1e

    .line 6198
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_1b

    .line 6199
    iget v3, v2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v3, p1, :cond_1b

    const/4 v3, 0x1

    .line 6204
    invoke-virtual {v2, p2, v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1e
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .registers 11

    if-ge p1, p2, :cond_7

    const/4 v0, -0x1

    move v1, p2

    move v2, v0

    move v0, p1

    goto :goto_b

    :cond_7
    const/4 v0, 0x1

    move v1, p1

    move v2, v0

    move v0, p2

    .line 6177
    :goto_b
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_13
    if-ge v5, v3, :cond_34

    .line 6179
    iget-object v6, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v6, :cond_31

    .line 6180
    iget v7, v6, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v7, v0, :cond_31

    if-le v7, v1, :cond_26

    goto :goto_31

    :cond_26
    if-ne v7, p1, :cond_2e

    sub-int v7, p2, p1

    .line 6184
    invoke-virtual {v6, v7, v4}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_31

    .line 6186
    :cond_2e
    invoke-virtual {v6, v2, v4}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    :cond_31
    :goto_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_34
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .registers 8

    add-int v0, p1, p2

    .line 6217
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_a
    if-ltz v1, :cond_2c

    .line 6219
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_29

    .line 6221
    iget v3, v2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v3, v0, :cond_1f

    neg-int v3, p2

    .line 6227
    invoke-virtual {v2, v3, p3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_29

    :cond_1f
    if-lt v3, p1, :cond_29

    const/16 v3, 0x8

    .line 6230
    invoke-virtual {v2, v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6231
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    :cond_29
    :goto_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_2c
    return-void
.end method

.method onAdapterChanged(Lflyme/support/v7/widget/RecyclerView$Adapter;Lflyme/support/v7/widget/RecyclerView$Adapter;Z)V
    .registers 4

    .line 6162
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->clear()V

    .line 6163
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->getRecycledViewPool()Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->onAdapterChanged(Lflyme/support/v7/widget/RecyclerView$Adapter;Lflyme/support/v7/widget/RecyclerView$Adapter;Z)V

    return-void
.end method

.method quickRecycleScrapView(Landroid/view/View;)V
    .registers 3

    .line 5935
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    const/4 v0, 0x0

    .line 5936
    invoke-static {p1, v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->access$802(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$Recycler;)Lflyme/support/v7/widget/RecyclerView$Recycler;

    const/4 v0, 0x0

    .line 5937
    invoke-static {p1, v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->access$902(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Z)Z

    .line 5938
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 5939
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method recycleAndClearCachedViews()V
    .registers 2

    .line 5789
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_10

    .line 5791
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 5793
    :cond_10
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5794
    invoke-static {}, Lflyme/support/v7/widget/RecyclerView;->access$600()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 5795
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mPrefetchRegistry:Lflyme/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {p0}, Lflyme/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->clearPrefetchPositions()V

    :cond_22
    return-void
.end method

.method recycleCachedViewAt(I)V
    .registers 4

    .line 5814
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x1

    .line 5818
    invoke-virtual {p0, v0, v1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 5819
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public recycleView(Landroid/view/View;)V
    .registers 5

    .line 5767
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 5768
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 5769
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lflyme/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 5771
    :cond_10
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 5772
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->unScrap()V

    goto :goto_23

    .line 5773
    :cond_1a
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result p1

    if-eqz p1, :cond_23

    .line 5774
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 5776
    :cond_23
    :goto_23
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method recycleViewHolderInternal(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 8

    .line 5828
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_ca

    iget-object v0, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_12

    goto/16 :goto_ca

    .line 5835
    :cond_12
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v0

    if-nez v0, :cond_b3

    .line 5840
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 5846
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->access$700(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    .line 5847
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v3, v3, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_32

    if-eqz v0, :cond_32

    .line 5849
    invoke-virtual {v3, p1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->onFailedToRecycleView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v3

    if-eqz v3, :cond_32

    move v3, v2

    goto :goto_33

    :cond_32
    move v3, v1

    :goto_33
    if-nez v3, :cond_3e

    .line 5856
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v3

    if-eqz v3, :cond_3c

    goto :goto_3e

    :cond_3c
    move v3, v1

    goto :goto_9a

    .line 5857
    :cond_3e
    :goto_3e
    iget v3, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-lez v3, :cond_93

    const/16 v3, 0x20e

    .line 5858
    invoke-virtual {p1, v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v3

    if-nez v3, :cond_93

    .line 5863
    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5864
    iget v4, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-lt v3, v4, :cond_5b

    if-lez v3, :cond_5b

    .line 5865
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    add-int/lit8 v3, v3, -0x1

    .line 5870
    :cond_5b
    invoke-static {}, Lflyme/support/v7/widget/RecyclerView;->access$600()Z

    move-result v4

    if-eqz v4, :cond_8c

    if-lez v3, :cond_8c

    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v4, v4, Lflyme/support/v7/widget/RecyclerView;->mPrefetchRegistry:Lflyme/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    iget v5, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 5872
    invoke-virtual {v4, v5}, Lflyme/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->lastPrefetchIncludedPosition(I)Z

    move-result v4

    if-nez v4, :cond_8c

    add-int/lit8 v3, v3, -0x1

    :goto_71
    if-ltz v3, :cond_8b

    .line 5876
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    iget v4, v4, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 5877
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v5, v5, Lflyme/support/v7/widget/RecyclerView;->mPrefetchRegistry:Lflyme/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v5, v4}, Lflyme/support/v7/widget/GapWorker$LayoutPrefetchRegistryImpl;->lastPrefetchIncludedPosition(I)Z

    move-result v4

    if-nez v4, :cond_88

    goto :goto_8b

    :cond_88
    add-int/lit8 v3, v3, -0x1

    goto :goto_71

    :cond_8b
    :goto_8b
    add-int/2addr v3, v2

    .line 5884
    :cond_8c
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v3, v2

    goto :goto_94

    :cond_93
    move v3, v1

    :goto_94
    if-nez v3, :cond_9a

    .line 5888
    invoke-virtual {p0, p1, v2}, Lflyme/support/v7/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Z)V

    move v1, v2

    .line 5905
    :cond_9a
    :goto_9a
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ViewInfoStore;->removeViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    if-nez v3, :cond_aa

    if-nez v1, :cond_aa

    if-eqz v0, :cond_aa

    const/4 p0, 0x0

    .line 5907
    iput-object p0, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    :cond_aa
    return-void

    .line 5841
    :cond_ab
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5836
    :cond_b3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5829
    :cond_ca
    :goto_ca
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5831
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isAttached:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 5832
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_eb

    move v1, v2

    :cond_eb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method scrapView(Landroid/view/View;)V
    .registers 3

    .line 5952
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    const/16 v0, 0xc

    .line 5953
    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_30

    .line 5954
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView;->canReuseUpdatedViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_30

    .line 5963
    :cond_1b
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-nez v0, :cond_26

    .line 5964
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    :cond_26
    const/4 v0, 0x1

    .line 5966
    invoke-virtual {p1, p0, v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->setScrapContainer(Lflyme/support/v7/widget/RecyclerView$Recycler;Z)V

    .line 5967
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 5955
    :cond_30
    :goto_30
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_47

    goto :goto_4f

    .line 5956
    :cond_47
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4f
    :goto_4f
    const/4 v0, 0x0

    .line 5960
    invoke-virtual {p1, p0, v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->setScrapContainer(Lflyme/support/v7/widget/RecyclerView$Recycler;Z)V

    .line 5961
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_58
    return-void
.end method

.method setAdapterPositionsAsUnknown()V
    .registers 5

    .line 6278
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1b

    .line 6280
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_18

    const/16 v3, 0x200

    .line 6282
    invoke-virtual {v2, v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1b
    return-void
.end method

.method setRecycledViewPool(Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;)V
    .registers 3

    .line 6242
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;

    if-eqz v0, :cond_7

    .line 6243
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->detach()V

    .line 6245
    :cond_7
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;

    if-eqz p1, :cond_16

    .line 6247
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getAdapter()Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p1, p0}, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->attach(Lflyme/support/v7/widget/RecyclerView$Adapter;)V

    :cond_16
    return-void
.end method

.method setViewCacheExtension(Lflyme/support/v7/widget/RecyclerView$ViewCacheExtension;)V
    .registers 2

    .line 6238
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mViewCacheExtension:Lflyme/support/v7/widget/RecyclerView$ViewCacheExtension;

    return-void
.end method

.method public setViewCacheSize(I)V
    .registers 2

    .line 5346
    iput p1, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    .line 5347
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    return-void
.end method

.method tryGetViewHolderForPositionByDeadline(IZJ)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .registers 21
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v6, p0

    move/from16 v3, p1

    move/from16 v0, p2

    if-ltz v3, :cond_1fd

    .line 5560
    iget-object v1, v6, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    if-ge v3, v1, :cond_1fd

    .line 5567
    iget-object v1, v6, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_27

    .line 5568
    invoke-virtual/range {p0 .. p1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->getChangedScrapViewForPosition(I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_28

    move v4, v7

    goto :goto_29

    :cond_27
    move-object v1, v2

    :cond_28
    move v4, v8

    :goto_29
    if-nez v1, :cond_5d

    .line 5573
    invoke-virtual/range {p0 .. p2}, Lflyme/support/v7/widget/RecyclerView$Recycler;->getScrapOrHiddenOrCachedHolderForPosition(IZ)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_5d

    .line 5575
    invoke-virtual {v6, v1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->validateViewHolderForOffsetPosition(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v5

    if-nez v5, :cond_5c

    if-nez v0, :cond_5a

    const/4 v5, 0x4

    .line 5580
    invoke-virtual {v1, v5}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5581
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 5582
    iget-object v5, v6, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v9, v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v9, v8}, Lflyme/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 5583
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->unScrap()V

    goto :goto_57

    .line 5584
    :cond_4e
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v5

    if-eqz v5, :cond_57

    .line 5585
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 5587
    :cond_57
    :goto_57
    invoke-virtual {v6, v1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_5a
    move-object v1, v2

    goto :goto_5d

    :cond_5c
    move v4, v7

    :cond_5d
    :goto_5d
    if-nez v1, :cond_14f

    .line 5596
    iget-object v5, v6, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v5, v5, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {v5, v3}, Lflyme/support/v7/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v5

    if-ltz v5, :cond_120

    .line 5597
    iget-object v9, v6, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v9, v9, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v9}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v9

    if-ge v5, v9, :cond_120

    .line 5603
    iget-object v9, v6, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v9, v9, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v9, v5}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v9

    .line 5605
    iget-object v10, v6, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v10, v10, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v10}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_96

    .line 5606
    iget-object v1, v6, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v5}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v10

    invoke-virtual {v6, v10, v11, v9, v0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->getScrapOrCachedViewForId(JIZ)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_96

    .line 5610
    iput v5, v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    move v4, v7

    :cond_96
    if-nez v1, :cond_c1

    .line 5614
    iget-object v0, v6, Lflyme/support/v7/widget/RecyclerView$Recycler;->mViewCacheExtension:Lflyme/support/v7/widget/RecyclerView$ViewCacheExtension;

    if-eqz v0, :cond_c1

    .line 5618
    invoke-virtual {v0, v6, v3, v9}, Lflyme/support/v7/widget/RecyclerView$ViewCacheExtension;->getViewForPositionAndType(Lflyme/support/v7/widget/RecyclerView$Recycler;II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c1

    .line 5620
    iget-object v1, v6, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_b9

    .line 5624
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_b1

    goto :goto_c1

    .line 5625
    :cond_b1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5622
    :cond_b9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c1
    :goto_c1
    if-nez v1, :cond_d7

    .line 5636
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->getRecycledViewPool()Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, v9}, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->getRecycledView(I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-eqz v1, :cond_d7

    .line 5638
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 5639
    sget-boolean v0, Lflyme/support/v7/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    if-eqz v0, :cond_d7

    .line 5640
    invoke-direct {v6, v1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_d7
    if-nez v1, :cond_14f

    .line 5645
    iget-object v0, v6, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v5, p3, v10

    if-eqz v5, :cond_f5

    .line 5646
    iget-object v10, v6, Lflyme/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;

    move v11, v9

    move-wide v12, v0

    move-wide/from16 v14, p3

    .line 5647
    invoke-virtual/range {v10 .. v15}, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->willCreateInTime(IJJ)Z

    move-result v5

    if-nez v5, :cond_f5

    return-object v2

    .line 5651
    :cond_f5
    iget-object v2, v6, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v5, v2, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v5, v2, v9}, Lflyme/support/v7/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 5652
    invoke-static {}, Lflyme/support/v7/widget/RecyclerView;->access$600()Z

    move-result v5

    if-eqz v5, :cond_112

    .line 5654
    iget-object v5, v2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v5}, Lflyme/support/v7/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView;

    move-result-object v5

    if-eqz v5, :cond_112

    .line 5656
    new-instance v10, Ljava/lang/ref/WeakReference;

    invoke-direct {v10, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v10, v2, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 5660
    :cond_112
    iget-object v5, v6, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Lflyme/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v10

    .line 5661
    iget-object v5, v6, Lflyme/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;

    sub-long/2addr v10, v0

    invoke-virtual {v5, v9, v10, v11}, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->factorInCreateTime(IJ)V

    move-object v10, v2

    goto :goto_150

    .line 5598
    :cond_120
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "(offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ").state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v2, v2, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    .line 5600
    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14f
    move-object v10, v1

    :goto_150
    move v9, v4

    if-eqz v9, :cond_189

    .line 5671
    iget-object v0, v6, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_189

    const/16 v0, 0x2000

    .line 5672
    invoke-virtual {v10, v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v1

    if-eqz v1, :cond_189

    .line 5673
    invoke-virtual {v10, v8, v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 5674
    iget-object v0, v6, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget-boolean v0, v0, Lflyme/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_189

    .line 5676
    invoke-static {v10}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v0

    or-int/lit16 v0, v0, 0x1000

    .line 5678
    iget-object v1, v6, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v2, v1, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    iget-object v1, v1, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    .line 5679
    invoke-virtual {v10}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v4

    .line 5678
    invoke-virtual {v2, v1, v10, v0, v4}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    .line 5680
    iget-object v1, v6, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v10, v0}, Lflyme/support/v7/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 5685
    :cond_189
    iget-object v0, v6, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-eqz v0, :cond_19c

    invoke-virtual {v10}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-eqz v0, :cond_19c

    .line 5687
    iput v3, v10, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    goto :goto_1af

    .line 5688
    :cond_19c
    invoke-virtual {v10}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-eqz v0, :cond_1b1

    invoke-virtual {v10}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v0

    if-nez v0, :cond_1b1

    invoke-virtual {v10}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_1af

    goto :goto_1b1

    :cond_1af
    :goto_1af
    move v0, v8

    goto :goto_1c4

    .line 5693
    :cond_1b1
    :goto_1b1
    iget-object v0, v6, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {v0, v3}, Lflyme/support/v7/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v2

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v3, p1

    move-wide/from16 v4, p3

    .line 5694
    invoke-direct/range {v0 .. v5}, Lflyme/support/v7/widget/RecyclerView$Recycler;->tryBindViewHolderByDeadline(Lflyme/support/v7/widget/RecyclerView$ViewHolder;IIJ)Z

    move-result v0

    .line 5697
    :goto_1c4
    iget-object v1, v10, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_1da

    .line 5700
    iget-object v1, v6, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .line 5701
    iget-object v2, v10, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1f2

    .line 5702
    :cond_1da
    iget-object v2, v6, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Lflyme/support/v7/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_1f0

    .line 5703
    iget-object v2, v6, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Lflyme/support/v7/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .line 5704
    iget-object v2, v10, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1f2

    .line 5706
    :cond_1f0
    check-cast v1, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .line 5708
    :goto_1f2
    iput-object v10, v1, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mViewHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v9, :cond_1f9

    if-eqz v0, :cond_1f9

    goto :goto_1fa

    :cond_1f9
    move v7, v8

    .line 5709
    :goto_1fa
    iput-boolean v7, v1, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    return-object v10

    .line 5561
    :cond_1fd
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid item position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "). Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v2, v2, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    .line 5562
    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method unscrapView(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 3

    .line 5978
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->access$900(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5979
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_11

    .line 5981
    :cond_c
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_11
    const/4 p0, 0x0

    .line 5983
    invoke-static {p1, p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->access$802(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$Recycler;)Lflyme/support/v7/widget/RecyclerView$Recycler;

    const/4 p0, 0x0

    .line 5984
    invoke-static {p1, p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->access$902(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Z)Z

    .line 5985
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    return-void
.end method

.method updateViewCacheSize()V
    .registers 4

    .line 5351
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_9

    iget v0, v0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 5352
    :goto_a
    iget v1, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mRequestedCacheMax:I

    add-int/2addr v1, v0

    iput v1, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mViewCacheMax:I

    .line 5355
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_17
    if-ltz v0, :cond_29

    .line 5356
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-le v1, v2, :cond_29

    .line 5357
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    :cond_29
    return-void
.end method

.method validateViewHolderForOffsetPosition(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 7

    .line 5381
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 5386
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result p0

    return p0

    .line 5388
    :cond_f
    iget v0, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ltz v0, :cond_59

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_59

    .line 5392
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_39

    .line 5394
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    iget v2, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, v2}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    .line 5395
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    if-eq v0, v2, :cond_39

    return v1

    .line 5399
    :cond_39
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_58

    .line 5400
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v3

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    iget p1, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide p0

    cmp-long p0, v3, p0

    if-nez p0, :cond_57

    move v1, v2

    :cond_57
    return v1

    :cond_58
    return v2

    .line 5389
    :cond_59
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method viewRangeUpdate(II)V
    .registers 6

    add-int/2addr p2, p1

    .line 6260
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_26

    .line 6262
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v1, :cond_16

    goto :goto_23

    .line 6267
    :cond_16
    iget v2, v1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v2, p1, :cond_23

    if-ge v2, p2, :cond_23

    const/4 v2, 0x2

    .line 6269
    invoke-virtual {v1, v2}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 6270
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    :cond_23
    :goto_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_26
    return-void
.end method
