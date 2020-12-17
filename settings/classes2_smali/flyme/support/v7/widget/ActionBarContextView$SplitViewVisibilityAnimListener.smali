.class public Lflyme/support/v7/widget/ActionBarContextView$SplitViewVisibilityAnimListener;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Landroidx/core/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/ActionBarContextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SplitViewVisibilityAnimListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field mFinalVisibility:I

.field final synthetic this$0:Lflyme/support/v7/widget/ActionBarContextView;


# direct methods
.method protected constructor <init>(Lflyme/support/v7/widget/ActionBarContextView;)V
    .registers 2

    .line 613
    iput-object p1, p0, Lflyme/support/v7/widget/ActionBarContextView$SplitViewVisibilityAnimListener;->this$0:Lflyme/support/v7/widget/ActionBarContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 614
    iput-boolean p1, p0, Lflyme/support/v7/widget/ActionBarContextView$SplitViewVisibilityAnimListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x1

    .line 648
    iput-boolean p1, p0, Lflyme/support/v7/widget/ActionBarContextView$SplitViewVisibilityAnimListener;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .registers 3

    .line 634
    iget-boolean p1, p0, Lflyme/support/v7/widget/ActionBarContextView$SplitViewVisibilityAnimListener;->mCanceled:Z

    if-eqz p1, :cond_5

    return-void

    .line 635
    :cond_5
    iget-object p1, p0, Lflyme/support/v7/widget/ActionBarContextView$SplitViewVisibilityAnimListener;->this$0:Lflyme/support/v7/widget/ActionBarContextView;

    invoke-static {p1}, Lflyme/support/v7/widget/ActionBarContextView;->access$000(Lflyme/support/v7/widget/ActionBarContextView;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_13

    .line 636
    iget-object p1, p0, Lflyme/support/v7/widget/ActionBarContextView$SplitViewVisibilityAnimListener;->this$0:Lflyme/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Lflyme/support/v7/widget/ActionBarContextView;->killMode()V

    .line 638
    :cond_13
    iget-object p1, p0, Lflyme/support/v7/widget/ActionBarContextView$SplitViewVisibilityAnimListener;->this$0:Lflyme/support/v7/widget/ActionBarContextView;

    iget-object p1, p1, Lflyme/support/v7/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1d

    const/4 v0, 0x0

    .line 639
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 641
    :cond_1d
    iget-object p1, p0, Lflyme/support/v7/widget/ActionBarContextView$SplitViewVisibilityAnimListener;->this$0:Lflyme/support/v7/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lflyme/support/v7/widget/ActionBarContextView;->access$002(Lflyme/support/v7/widget/ActionBarContextView;I)I

    .line 643
    iget-object p0, p0, Lflyme/support/v7/widget/ActionBarContextView$SplitViewVisibilityAnimListener;->this$0:Lflyme/support/v7/widget/ActionBarContextView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lflyme/support/v7/widget/ActionBarContextView;->access$202(Lflyme/support/v7/widget/ActionBarContextView;Landroidx/core/view/ViewPropertyAnimatorCompat;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 3

    .line 626
    iget-object p1, p0, Lflyme/support/v7/widget/ActionBarContextView$SplitViewVisibilityAnimListener;->this$0:Lflyme/support/v7/widget/ActionBarContextView;

    iget-object p1, p1, Lflyme/support/v7/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 627
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 629
    :cond_a
    iput-boolean v0, p0, Lflyme/support/v7/widget/ActionBarContextView$SplitViewVisibilityAnimListener;->mCanceled:Z

    return-void
.end method

.method public withFinalVisibility(Landroidx/core/view/ViewPropertyAnimatorCompat;I)Lflyme/support/v7/widget/ActionBarContextView$SplitViewVisibilityAnimListener;
    .registers 4

    .line 619
    iget-object v0, p0, Lflyme/support/v7/widget/ActionBarContextView$SplitViewVisibilityAnimListener;->this$0:Lflyme/support/v7/widget/ActionBarContextView;

    invoke-static {v0, p1}, Lflyme/support/v7/widget/ActionBarContextView;->access$202(Lflyme/support/v7/widget/ActionBarContextView;Landroidx/core/view/ViewPropertyAnimatorCompat;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 620
    iput p2, p0, Lflyme/support/v7/widget/ActionBarContextView$SplitViewVisibilityAnimListener;->mFinalVisibility:I

    return-object p0
.end method
