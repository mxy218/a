.class Lflyme/support/v7/widget/RecyclerView$5;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lflyme/support/v7/widget/ChildHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/widget/RecyclerView;->initChildrenHelper()V
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

    .line 735
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$5;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;I)V
    .registers 4

    .line 746
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$5;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 750
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$5;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->dispatchChildAttached(Landroid/view/View;)V

    return-void
.end method

.method public attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6

    .line 795
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 797
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-nez v1, :cond_2a

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_2a

    .line 798
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Called attach on a child which is not detached: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 804
    :cond_2a
    :goto_2a
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    .line 806
    :cond_2d
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$5;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-static {p0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView;->access$000(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public detachViewFromParent(I)V
    .registers 4

    .line 811
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$5;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 813
    invoke-static {v0}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 815
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_30

    .line 816
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "called detach on an already detached child "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_30
    :goto_30
    const/16 v1, 0x100

    .line 822
    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 825
    :cond_35
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$5;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-static {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->access$100(Lflyme/support/v7/widget/RecyclerView;I)V

    return-void
.end method

.method public getChildAt(I)Landroid/view/View;
    .registers 2

    .line 775
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$5;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getChildCount()I
    .registers 1

    .line 738
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$5;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getChildViewHolder(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .registers 2

    .line 789
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public indexOfChild(Landroid/view/View;)I
    .registers 2

    .line 755
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$5;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public onEnteredHiddenState(Landroid/view/View;)V
    .registers 2

    .line 830
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 832
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$5;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-static {p1, p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->access$200(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView;)V

    :cond_b
    return-void
.end method

.method public onLeftHiddenState(Landroid/view/View;)V
    .registers 2

    .line 838
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 840
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$5;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-static {p1, p0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->access$300(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView;)V

    :cond_b
    return-void
.end method

.method public removeAllViews()V
    .registers 5

    .line 780
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$5;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_13

    .line 782
    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$5;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/RecyclerView$5;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lflyme/support/v7/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 784
    :cond_13
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$5;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public removeViewAt(I)V
    .registers 4

    .line 760
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$5;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 762
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$5;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lflyme/support/v7/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 767
    :cond_d
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$5;->this$0:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    return-void
.end method
