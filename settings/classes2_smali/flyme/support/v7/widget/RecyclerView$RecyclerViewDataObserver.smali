.class Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;
.super Lflyme/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerViewDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/RecyclerView;)V
    .registers 2

    .line 5019
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 4

    .line 5024
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lflyme/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5025
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v1, v0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lflyme/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    .line 5027
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView;->setDataSetChangedAfterLayout()V

    .line 5028
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 5029
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_1f
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .registers 6

    .line 5035
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lflyme/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5036
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2, p3}, Lflyme/support/v7/widget/AdapterHelper;->onItemRangeChanged(IILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 5037
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    :cond_13
    return-void
.end method

.method public onItemRangeInserted(II)V
    .registers 5

    .line 5043
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lflyme/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5044
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2}, Lflyme/support/v7/widget/AdapterHelper;->onItemRangeInserted(II)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 5045
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    :cond_13
    return-void
.end method

.method public onItemRangeMoved(III)V
    .registers 6

    .line 5059
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lflyme/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5060
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2, p3}, Lflyme/support/v7/widget/AdapterHelper;->onItemRangeMoved(III)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 5061
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    :cond_13
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .registers 5

    .line 5051
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lflyme/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 5052
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mAdapterHelper:Lflyme/support/v7/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2}, Lflyme/support/v7/widget/AdapterHelper;->onItemRangeRemoved(II)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 5053
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    :cond_13
    return-void
.end method

.method triggerUpdateProcessor()V
    .registers 3

    .line 5066
    sget-boolean v0, Lflyme/support/v7/widget/RecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lflyme/support/v7/widget/RecyclerView;

    iget-boolean v1, v0, Lflyme/support/v7/widget/RecyclerView;->mHasFixedSize:Z

    if-eqz v1, :cond_14

    iget-boolean v1, v0, Lflyme/support/v7/widget/RecyclerView;->mIsAttached:Z

    if-eqz v1, :cond_14

    .line 5067
    iget-object p0, v0, Lflyme/support/v7/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_1c

    .line 5069
    :cond_14
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lflyme/support/v7/widget/RecyclerView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 5070
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->requestLayout()V

    :goto_1c
    return-void
.end method
