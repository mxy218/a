.class Lflyme/support/v7/widget/RecyclerView$6;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lflyme/support/v7/widget/AdapterHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/widget/RecyclerView;->initAdapterManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/RecyclerView;)V
    .registers 2

    .line 847
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method dispatchUpdate(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 5

    .line 890
    iget v0, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_36

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2a

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1c

    const/16 v2, 0x8

    if-eq v0, v2, :cond_10

    goto :goto_41

    .line 902
    :cond_10
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget v2, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, p0, v2, p1, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onItemsMoved(Lflyme/support/v7/widget/RecyclerView;III)V

    goto :goto_41

    .line 898
    :cond_1c
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget v1, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object p1, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onItemsUpdated(Lflyme/support/v7/widget/RecyclerView;IILjava/lang/Object;)V

    goto :goto_41

    .line 895
    :cond_2a
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget v1, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, p0, v1, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onItemsRemoved(Lflyme/support/v7/widget/RecyclerView;II)V

    goto :goto_41

    .line 892
    :cond_36
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    iget v1, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Lflyme/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, p0, v1, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onItemsAdded(Lflyme/support/v7/widget/RecyclerView;II)V

    :goto_41
    return-void
.end method

.method public findViewHolder(I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    .line 850
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lflyme/support/v7/widget/RecyclerView;->findViewHolderForPosition(IZ)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_b

    return-object v0

    .line 856
    :cond_b
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    iget-object v1, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_18

    return-object v0

    :cond_18
    return-object p1
.end method

.method public markViewHoldersUpdated(IILjava/lang/Object;)V
    .registers 5

    .line 880
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    .line 881
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView;->mItemsChanged:Z

    return-void
.end method

.method public offsetPositionsForAdd(II)V
    .registers 4

    .line 914
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Lflyme/support/v7/widget/RecyclerView;->offsetPositionRecordsForInsert(II)V

    .line 915
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    return-void
.end method

.method public offsetPositionsForMove(II)V
    .registers 4

    .line 920
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Lflyme/support/v7/widget/RecyclerView;->offsetPositionRecordsForMove(II)V

    .line 922
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    return-void
.end method

.method public offsetPositionsForRemovingInvisible(II)V
    .registers 5

    .line 867
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lflyme/support/v7/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 868
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iput-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 869
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget p1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    add-int/2addr p1, p2

    iput p1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    return-void
.end method

.method public offsetPositionsForRemovingLaidOutOrNewView(II)V
    .registers 5

    .line 874
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lflyme/support/v7/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 875
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$6;->this$0:Lflyme/support/v7/widget/RecyclerView;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    return-void
.end method

.method public onDispatchFirstPass(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 2

    .line 886
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$6;->dispatchUpdate(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    return-void
.end method

.method public onDispatchSecondPass(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V
    .registers 2

    .line 909
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$6;->dispatchUpdate(Lflyme/support/v7/widget/AdapterHelper$UpdateOp;)V

    return-void
.end method
