.class Lcom/android/systemui/qs/customize/TileAdapter$6;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "TileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/TileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/TileAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/TileAdapter;)V
    .registers 2

    .line 557
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 6

    .line 600
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_34

    const/4 v0, -0x1

    if-ne p1, v0, :cond_b

    goto :goto_34

    .line 604
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/TileAdapter;->access$500(Lcom/android/systemui/qs/customize/TileAdapter;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2a

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/TileAdapter;->access$400(Lcom/android/systemui/qs/customize/TileAdapter;)I

    move-result v0

    if-ge p2, v0, :cond_2a

    .line 605
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->access$400(Lcom/android/systemui/qs/customize/TileAdapter;)I

    move-result p0

    if-ge p1, p0, :cond_29

    move p3, v1

    :cond_29
    return p3

    .line 607
    :cond_2a
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {p0}, Lcom/android/systemui/qs/customize/TileAdapter;->access$400(Lcom/android/systemui/qs/customize/TileAdapter;)I

    move-result p0

    add-int/2addr p0, v1

    if-gt p1, p0, :cond_34

    move p3, v1

    :cond_34
    :goto_34
    return p3
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .registers 3

    .line 612
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p0

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eq p0, p1, :cond_15

    const/4 p1, 0x3

    if-eq p0, p1, :cond_15

    const/4 p1, 0x4

    if-eq p0, p1, :cond_15

    const/16 p0, 0xf

    .line 621
    invoke-static {p0, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    return p0

    .line 617
    :cond_15
    invoke-static {p2, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p0

    return p0
.end method

.method public isItemViewSwipeEnabled()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isLongPressDragEnabled()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 5

    .line 627
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 628
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    if-eqz p1, :cond_1b

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1b

    if-eqz p2, :cond_1b

    if-ne p2, v0, :cond_12

    goto :goto_1b

    .line 633
    :cond_12
    iget-object p0, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/qs/customize/TileAdapter;->access$1000(Lcom/android/systemui/qs/customize/TileAdapter;IILandroid/view/View;)Z

    move-result p0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x0

    return p0
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 7

    .line 571
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_8

    move-object p1, v0

    .line 575
    :cond_8
    iget-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {p2}, Lcom/android/systemui/qs/customize/TileAdapter;->access$1100(Lcom/android/systemui/qs/customize/TileAdapter;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    move-result-object p2

    if-ne p1, p2, :cond_11

    return-void

    .line 576
    :cond_11
    iget-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {p2}, Lcom/android/systemui/qs/customize/TileAdapter;->access$1100(Lcom/android/systemui/qs/customize/TileAdapter;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    move-result-object p2

    if-eqz p2, :cond_5d

    .line 577
    iget-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {p2}, Lcom/android/systemui/qs/customize/TileAdapter;->access$1100(Lcom/android/systemui/qs/customize/TileAdapter;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_27

    return-void

    .line 579
    :cond_27
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/TileAdapter;->access$1200(Lcom/android/systemui/qs/customize/TileAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    .line 580
    iget-object v2, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/TileAdapter;->access$1100(Lcom/android/systemui/qs/customize/TileAdapter;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->access$100(Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/CustomizeTileView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    .line 581
    invoke-static {v3}, Lcom/android/systemui/qs/customize/TileAdapter;->access$400(Lcom/android/systemui/qs/customize/TileAdapter;)I

    move-result v3

    if-le p2, v3, :cond_4b

    iget-boolean p2, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    if-nez p2, :cond_4b

    const/4 p2, 0x1

    goto :goto_4c

    :cond_4b
    const/4 p2, 0x0

    .line 580
    :goto_4c
    invoke-virtual {v2, p2}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setShowAppLabel(Z)V

    .line 582
    iget-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {p2}, Lcom/android/systemui/qs/customize/TileAdapter;->access$1100(Lcom/android/systemui/qs/customize/TileAdapter;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->stopDrag()V

    .line 583
    iget-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {p2, v0}, Lcom/android/systemui/qs/customize/TileAdapter;->access$1102(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    :cond_5d
    if-eqz p1, :cond_6f

    .line 586
    iget-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    check-cast p1, Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    invoke-static {p2, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->access$1102(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    .line 587
    iget-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter;->access$1100(Lcom/android/systemui/qs/customize/TileAdapter;)Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->startDrag()V

    .line 589
    :cond_6f
    iget-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$6;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {p1}, Lcom/android/systemui/qs/customize/TileAdapter;->access$1300(Lcom/android/systemui/qs/customize/TileAdapter;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/qs/customize/TileAdapter$6$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/customize/TileAdapter$6$1;-><init>(Lcom/android/systemui/qs/customize/TileAdapter$6;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    return-void
.end method
