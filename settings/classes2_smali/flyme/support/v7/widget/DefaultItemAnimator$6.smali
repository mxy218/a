.class Lflyme/support/v7/widget/DefaultItemAnimator$6;
.super Lflyme/support/v7/widget/DefaultItemAnimator$VpaListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/widget/DefaultItemAnimator;->animateMoveImpl(Lflyme/support/v7/widget/RecyclerView$ViewHolder;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/widget/DefaultItemAnimator;

.field final synthetic val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

.field final synthetic val$deltaX:I

.field final synthetic val$deltaY:I

.field final synthetic val$holder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/DefaultItemAnimator;Lflyme/support/v7/widget/RecyclerView$ViewHolder;IILandroidx/core/view/ViewPropertyAnimatorCompat;)V
    .registers 6

    .line 291
    iput-object p1, p0, Lflyme/support/v7/widget/DefaultItemAnimator$6;->this$0:Lflyme/support/v7/widget/DefaultItemAnimator;

    iput-object p2, p0, Lflyme/support/v7/widget/DefaultItemAnimator$6;->val$holder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lflyme/support/v7/widget/DefaultItemAnimator$6;->val$deltaX:I

    iput p4, p0, Lflyme/support/v7/widget/DefaultItemAnimator$6;->val$deltaY:I

    iput-object p5, p0, Lflyme/support/v7/widget/DefaultItemAnimator$6;->val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    invoke-direct {p0}, Lflyme/support/v7/widget/DefaultItemAnimator$VpaListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .registers 4

    .line 298
    iget v0, p0, Lflyme/support/v7/widget/DefaultItemAnimator$6;->val$deltaX:I

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 299
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 301
    :cond_8
    iget p0, p0, Lflyme/support/v7/widget/DefaultItemAnimator$6;->val$deltaY:I

    if-eqz p0, :cond_f

    .line 302
    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    :cond_f
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .registers 3

    .line 307
    iget-object p1, p0, Lflyme/support/v7/widget/DefaultItemAnimator$6;->val$animation:Landroidx/core/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 308
    iget-object p1, p0, Lflyme/support/v7/widget/DefaultItemAnimator$6;->this$0:Lflyme/support/v7/widget/DefaultItemAnimator;

    iget-object v0, p0, Lflyme/support/v7/widget/DefaultItemAnimator$6;->val$holder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/SimpleItemAnimator;->dispatchMoveFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 309
    iget-object p1, p0, Lflyme/support/v7/widget/DefaultItemAnimator$6;->this$0:Lflyme/support/v7/widget/DefaultItemAnimator;

    iget-object p1, p1, Lflyme/support/v7/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    iget-object v0, p0, Lflyme/support/v7/widget/DefaultItemAnimator$6;->val$holder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 310
    iget-object p0, p0, Lflyme/support/v7/widget/DefaultItemAnimator$6;->this$0:Lflyme/support/v7/widget/DefaultItemAnimator;

    invoke-virtual {p0}, Lflyme/support/v7/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 2

    .line 294
    iget-object p1, p0, Lflyme/support/v7/widget/DefaultItemAnimator$6;->this$0:Lflyme/support/v7/widget/DefaultItemAnimator;

    iget-object p0, p0, Lflyme/support/v7/widget/DefaultItemAnimator$6;->val$holder:Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, p0}, Lflyme/support/v7/widget/SimpleItemAnimator;->dispatchMoveStarting(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
