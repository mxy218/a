.class Landroidx/recyclerview/widget/ItemTouchHelper$3;
.super Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/ItemTouchHelper;->select(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

.field final synthetic val$prevSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic val$swipeDir:I


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/ItemTouchHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIFFFFILandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 19

    move-object v0, p0

    move-object v1, p1

    .line 635
    iput-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    move/from16 v1, p9

    iput v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->val$swipeDir:I

    move-object/from16 v1, p10

    iput-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->val$prevSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIFFFF)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 638
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 639
    iget-boolean p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    if-eqz p1, :cond_8

    return-void

    .line 642
    :cond_8
    iget p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->val$swipeDir:I

    if-gtz p1, :cond_18

    .line 644
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object p1, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->val$prevSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_2f

    .line 648
    :cond_18
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object p1, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->val$prevSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 649
    iput-boolean p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mIsPendingCleanup:Z

    .line 650
    iget p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->val$swipeDir:I

    if-lez p1, :cond_2f

    .line 653
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v0, p0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->postDispatchSwipe(Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;I)V

    .line 657
    :cond_2f
    :goto_2f
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, p1, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    iget-object p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->val$prevSelected:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v0, p0, :cond_3c

    .line 658
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    :cond_3c
    return-void
.end method
