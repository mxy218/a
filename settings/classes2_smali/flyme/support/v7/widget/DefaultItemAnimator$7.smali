.class Lflyme/support/v7/widget/DefaultItemAnimator$7;
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

.field final synthetic val$oldViewAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/DefaultItemAnimator;Lflyme/support/v7/widget/DefaultItemAnimator$ChangeInfo;Landroidx/core/view/ViewPropertyAnimatorCompat;)V
    .registers 4

    .line 355
    iput-object p1, p0, Lflyme/support/v7/widget/DefaultItemAnimator$7;->this$0:Lflyme/support/v7/widget/DefaultItemAnimator;

    iput-object p2, p0, Lflyme/support/v7/widget/DefaultItemAnimator$7;->val$changeInfo:Lflyme/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    iput-object p3, p0, Lflyme/support/v7/widget/DefaultItemAnimator$7;->val$oldViewAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-direct {p0}, Lflyme/support/v7/widget/DefaultItemAnimator$VpaListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .registers 4

    .line 363
    iget-object v0, p0, Lflyme/support/v7/widget/DefaultItemAnimator$7;->val$oldViewAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/high16 v0, 0x3f800000  # 1.0f

    .line 364
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    const/4 v0, 0x0

    .line 365
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 366
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 367
    iget-object p1, p0, Lflyme/support/v7/widget/DefaultItemAnimator$7;->this$0:Lflyme/support/v7/widget/DefaultItemAnimator;

    iget-object v0, p0, Lflyme/support/v7/widget/DefaultItemAnimator$7;->val$changeInfo:Lflyme/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v0, v0, Lflyme/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lflyme/support/v7/widget/SimpleItemAnimator;->dispatchChangeFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 368
    iget-object p1, p0, Lflyme/support/v7/widget/DefaultItemAnimator$7;->this$0:Lflyme/support/v7/widget/DefaultItemAnimator;

    iget-object p1, p1, Lflyme/support/v7/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lflyme/support/v7/widget/DefaultItemAnimator$7;->val$changeInfo:Lflyme/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v0, v0, Lflyme/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 369
    iget-object p0, p0, Lflyme/support/v7/widget/DefaultItemAnimator$7;->this$0:Lflyme/support/v7/widget/DefaultItemAnimator;

    invoke-virtual {p0}, Lflyme/support/v7/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 3

    .line 358
    iget-object p1, p0, Lflyme/support/v7/widget/DefaultItemAnimator$7;->this$0:Lflyme/support/v7/widget/DefaultItemAnimator;

    iget-object p0, p0, Lflyme/support/v7/widget/DefaultItemAnimator$7;->val$changeInfo:Lflyme/support/v7/widget/DefaultItemAnimator$ChangeInfo;

    iget-object p0, p0, Lflyme/support/v7/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lflyme/support/v7/widget/SimpleItemAnimator;->dispatchChangeStarting(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method
