.class Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter$2;
.super Lflyme/support/v7/widget/RecyclerView$AdapterDataObserver;
.source "HeaderAndFooterWrapperAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;)V
    .registers 2

    .line 353
    iput-object p1, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter$2;->this$0:Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;

    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .line 357
    iget-object v0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter$2;->this$0:Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;

    invoke-static {v0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->access$200(Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 358
    iget-object p0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter$2;->this$0:Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;

    invoke-static {p0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->access$200(Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_11
    return-void
.end method

.method public onItemRangeChanged(II)V
    .registers 4

    .line 371
    iget-object v0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter$2;->this$0:Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;

    invoke-static {v0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->access$200(Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 372
    iget-object p0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter$2;->this$0:Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;

    invoke-static {p0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->access$200(Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_11
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .registers 5

    .line 378
    iget-object v0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter$2;->this$0:Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;

    invoke-static {v0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->access$200(Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 379
    iget-object p0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter$2;->this$0:Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;

    invoke-static {p0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->access$200(Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_11
    return-void
.end method

.method public onItemRangeInserted(II)V
    .registers 4

    .line 364
    iget-object v0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter$2;->this$0:Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;

    invoke-static {v0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->access$200(Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 365
    iget-object p0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter$2;->this$0:Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;

    invoke-static {p0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->access$200(Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    :cond_11
    return-void
.end method

.method public onItemRangeMoved(III)V
    .registers 4

    .line 392
    iget-object p3, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter$2;->this$0:Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;

    invoke-static {p3}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->access$200(Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object p3

    if-eqz p3, :cond_11

    .line 393
    iget-object p0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter$2;->this$0:Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;

    invoke-static {p0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->access$200(Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    :cond_11
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .registers 4

    .line 385
    iget-object v0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter$2;->this$0:Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;

    invoke-static {v0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->access$200(Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 386
    iget-object p0, p0, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter$2;->this$0:Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;

    invoke-static {p0}, Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;->access$200(Lflyme/support/v7/widget/HeaderAndFooterWrapperAdapter;)Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    :cond_11
    return-void
.end method
