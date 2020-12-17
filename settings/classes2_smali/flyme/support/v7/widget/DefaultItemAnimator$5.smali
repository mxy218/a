.class Lflyme/support/v7/widget/DefaultItemAnimator$5;
.super Lflyme/support/v7/widget/DefaultItemAnimator$VpaListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/widget/DefaultItemAnimator;->animateAddImpl(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/widget/DefaultItemAnimator;

.field final synthetic val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

.field final synthetic val$holder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/DefaultItemAnimator;Lflyme/support/v7/widget/RecyclerView$ViewHolder;Landroidx/core/view/ViewPropertyAnimatorCompat;)V
    .registers 4

    .line 233
    iput-object p1, p0, Lflyme/support/v7/widget/DefaultItemAnimator$5;->this$0:Lflyme/support/v7/widget/DefaultItemAnimator;

    iput-object p2, p0, Lflyme/support/v7/widget/DefaultItemAnimator$5;->val$holder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lflyme/support/v7/widget/DefaultItemAnimator$5;->val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-direct {p0}, Lflyme/support/v7/widget/DefaultItemAnimator$VpaListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .registers 2

    const/high16 p0, 0x3f800000  # 1.0f

    .line 240
    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .registers 3

    .line 245
    iget-object p1, p0, Lflyme/support/v7/widget/DefaultItemAnimator$5;->val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 246
    iget-object p1, p0, Lflyme/support/v7/widget/DefaultItemAnimator$5;->this$0:Lflyme/support/v7/widget/DefaultItemAnimator;

    iget-object v0, p0, Lflyme/support/v7/widget/DefaultItemAnimator$5;->val$holder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/SimpleItemAnimator;->dispatchAddFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 247
    iget-object p1, p0, Lflyme/support/v7/widget/DefaultItemAnimator$5;->this$0:Lflyme/support/v7/widget/DefaultItemAnimator;

    iget-object p1, p1, Lflyme/support/v7/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lflyme/support/v7/widget/DefaultItemAnimator$5;->val$holder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 248
    iget-object p0, p0, Lflyme/support/v7/widget/DefaultItemAnimator$5;->this$0:Lflyme/support/v7/widget/DefaultItemAnimator;

    invoke-virtual {p0}, Lflyme/support/v7/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 2

    .line 236
    iget-object p1, p0, Lflyme/support/v7/widget/DefaultItemAnimator$5;->this$0:Lflyme/support/v7/widget/DefaultItemAnimator;

    iget-object p0, p0, Lflyme/support/v7/widget/DefaultItemAnimator$5;->val$holder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, p0}, Lflyme/support/v7/widget/SimpleItemAnimator;->dispatchAddStarting(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
