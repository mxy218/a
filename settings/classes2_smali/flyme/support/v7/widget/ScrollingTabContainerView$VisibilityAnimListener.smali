.class public Lflyme/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroidx/core/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field private mFinalVisibility:I

.field final synthetic this$0:Lflyme/support/v7/widget/ScrollingTabContainerView;


# direct methods
.method protected constructor <init>(Lflyme/support/v7/widget/ScrollingTabContainerView;)V
    .registers 2

    .line 899
    iput-object p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lflyme/support/v7/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 900
    iput-boolean p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .registers 2

    const/4 p1, 0x1

    .line 926
    iput-boolean p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .registers 3

    .line 918
    iget-boolean p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    if-eqz p1, :cond_5

    return-void

    .line 920
    :cond_5
    iget-object p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lflyme/support/v7/widget/ScrollingTabContainerView;

    const/4 v0, 0x0

    iput-object v0, p1, Lflyme/support/v7/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 921
    iget p0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-virtual {p1, p0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 3

    .line 912
    iget-object p1, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lflyme/support/v7/widget/ScrollingTabContainerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 913
    iput-boolean v0, p0, Lflyme/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method
