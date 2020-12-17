.class Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener$1;
.super Ljava/lang/Object;
.source "MzRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;)V
    .registers 2

    .line 778
    iput-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener$1;->this$1:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 781
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener$1;->this$1:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

    invoke-static {v0}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->access$1300(Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 782
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener$1;->this$1:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

    iget-object v0, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPressed(Z)V

    .line 783
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener$1;->this$1:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

    invoke-static {v0}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->access$1300(Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 784
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener$1;->this$1:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

    iget-object v2, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-static {v0}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->access$1300(Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;)Landroid/view/View;

    move-result-object v0

    invoke-static {v2, v0}, Lflyme/support/v7/widget/MzRecyclerView;->access$900(Lflyme/support/v7/widget/MzRecyclerView;Landroid/view/View;)I

    move-result v6

    if-ltz v6, :cond_5c

    .line 785
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener$1;->this$1:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

    iget-object v0, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$State;->didStructureChange()Z

    move-result v0

    if-nez v0, :cond_5c

    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener$1;->this$1:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

    iget-object v0, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 786
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener$1;->this$1:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

    iget-object v0, v0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView;->getAdapter()Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, v6}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 787
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener$1;->this$1:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

    iget-object v4, v3, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-static {v3}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->access$1300(Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static/range {v3 .. v8}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->access$1400(Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;IJ)Z

    .line 789
    :cond_5c
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener$1;->this$1:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->access$1302(Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;Landroid/view/View;)Landroid/view/View;

    .line 790
    iget-object p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener$1;->this$1:Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;

    invoke-static {p0, v1}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->access$1502(Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;Z)Z

    :cond_67
    return-void
.end method
