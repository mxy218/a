.class Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "HeaderRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;)V
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;->this$0:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;->this$0:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .registers 4

    .line 80
    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;->this$0:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    invoke-static {v0}, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->access$000(Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    add-int/lit8 p1, p1, 0x1

    .line 83
    :cond_a
    iget-object p0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;->this$0:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .registers 4

    .line 88
    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;->this$0:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    invoke-static {v0}, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->access$000(Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    add-int/lit8 p1, p1, 0x1

    .line 91
    :cond_a
    iget-object p0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;->this$0:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .registers 8

    .line 96
    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;->this$0:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    invoke-static {v0}, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->access$000(Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-ge v0, p3, :cond_1b

    .line 102
    iget-object v1, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;->this$0:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    add-int v2, p1, v0

    add-int v3, p2, v0

    invoke-virtual {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1b
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .registers 4

    .line 108
    iget-object v0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;->this$0:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    invoke-static {v0}, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;->access$000(Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    add-int/lit8 p1, p1, 0x1

    .line 111
    :cond_a
    iget-object p0, p0, Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter$1;->this$0:Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderAdapter;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method
