.class Lflyme/support/v7/widget/DefaultItemAnimator$8;
.super Lflyme/support/v7/widget/DefaultItemAnimator$VpaListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/widget/DefaultItemAnimator;->animateChangeImpl(Lflyme/support/v7/widget/DefaultItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/widget/DefaultItemAnimator;

.field final synthetic val$changeInfo:Lflyme/support/v7/widget/DefaultItemAnimator$ChangeInfo;

.field final synthetic val$newView:Landroid/view/View;

.field final synthetic val$newViewAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/DefaultItemAnimator;Lflyme/support/v7/widget/DefaultItemAnimator$ChangeInfo;Landroidx/core/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .registers 5

    .line 377
    iput-object p1, p0, Lflyme/support/v7/widget/DefaultItemAnimator$8;->this$0:Lflyme/support/v7/widget/DefaultItemAnimator;

    iput-object p2, p0, Lflyme/support/v7/widget/DefaultItemAnimator$8;->val$changeInfo:Lflyme/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    iput-object p3, p0, Lflyme/support/v7/widget/DefaultItemAnimator$8;->val$newViewAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    iput-object p4, p0, Lflyme/support/v7/widget/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    invoke-direct {p0}, Lflyme/support/v7/widget/DefaultItemAnimator$VpaListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .registers 4

    .line 384
    iget-object p1, p0, Lflyme/support/v7/widget/DefaultItemAnimator$8;->val$newViewAnimation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 385
    iget-object p1, p0, Lflyme/support/v7/widget/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 386
    iget-object p1, p0, Lflyme/support/v7/widget/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 387
    iget-object p1, p0, Lflyme/support/v7/widget/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 388
    iget-object p1, p0, Lflyme/support/v7/widget/DefaultItemAnimator$8;->this$0:Lflyme/support/v7/widget/DefaultItemAnimator;

    iget-object v0, p0, Lflyme/support/v7/widget/DefaultItemAnimator$8;->val$changeInfo:Lflyme/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v0, v0, Lflyme/support/v7/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lflyme/support/v7/widget/SimpleItemAnimator;->dispatchChangeFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 389
    iget-object p1, p0, Lflyme/support/v7/widget/DefaultItemAnimator$8;->this$0:Lflyme/support/v7/widget/DefaultItemAnimator;

    iget-object p1, p1, Lflyme/support/v7/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lflyme/support/v7/widget/DefaultItemAnimator$8;->val$changeInfo:Lflyme/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v0, v0, Lflyme/support/v7/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 390
    iget-object p0, p0, Lflyme/support/v7/widget/DefaultItemAnimator$8;->this$0:Lflyme/support/v7/widget/DefaultItemAnimator;

    invoke-virtual {p0}, Lflyme/support/v7/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 3

    .line 380
    iget-object p1, p0, Lflyme/support/v7/widget/DefaultItemAnimator$8;->this$0:Lflyme/support/v7/widget/DefaultItemAnimator;

    iget-object p0, p0, Lflyme/support/v7/widget/DefaultItemAnimator$8;->val$changeInfo:Lflyme/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    iget-object p0, p0, Lflyme/support/v7/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lflyme/support/v7/widget/SimpleItemAnimator;->dispatchChangeStarting(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method
