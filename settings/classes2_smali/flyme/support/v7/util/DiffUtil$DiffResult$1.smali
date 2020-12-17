.class Lflyme/support/v7/util/DiffUtil$DiffResult$1;
.super Ljava/lang/Object;
.source "DiffUtil.java"

# interfaces
.implements Lflyme/support/v7/util/ListUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/util/DiffUtil$DiffResult;->dispatchUpdatesTo(Lflyme/support/v7/widget/RecyclerView$Adapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/util/DiffUtil$DiffResult;

.field final synthetic val$adapter:Lflyme/support/v7/widget/RecyclerView$Adapter;


# direct methods
.method constructor <init>(Lflyme/support/v7/util/DiffUtil$DiffResult;Lflyme/support/v7/widget/RecyclerView$Adapter;)V
    .registers 3

    .line 661
    iput-object p1, p0, Lflyme/support/v7/util/DiffUtil$DiffResult$1;->this$0:Lflyme/support/v7/util/DiffUtil$DiffResult;

    iput-object p2, p0, Lflyme/support/v7/util/DiffUtil$DiffResult$1;->val$adapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(IILjava/lang/Object;)V
    .registers 4

    .line 679
    iget-object p0, p0, Lflyme/support/v7/util/DiffUtil$DiffResult$1;->val$adapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onInserted(II)V
    .registers 3

    .line 664
    iget-object p0, p0, Lflyme/support/v7/util/DiffUtil$DiffResult$1;->val$adapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onMoved(II)V
    .registers 3

    .line 674
    iget-object p0, p0, Lflyme/support/v7/util/DiffUtil$DiffResult$1;->val$adapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onRemoved(II)V
    .registers 3

    .line 669
    iget-object p0, p0, Lflyme/support/v7/util/DiffUtil$DiffResult$1;->val$adapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method
