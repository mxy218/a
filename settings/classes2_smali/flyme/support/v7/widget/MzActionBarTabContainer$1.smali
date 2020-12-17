.class Lflyme/support/v7/widget/MzActionBarTabContainer$1;
.super Ljava/lang/Object;
.source "MzActionBarTabContainer.java"

# interfaces
.implements Landroidx/core/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/MzActionBarTabContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/widget/MzActionBarTabContainer;


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/MzActionBarTabContainer;)V
    .registers 2

    .line 479
    iput-object p1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer$1;->this$0:Lflyme/support/v7/widget/MzActionBarTabContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .registers 2

    .line 489
    iget-object p1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer$1;->this$0:Lflyme/support/v7/widget/MzActionBarTabContainer;

    invoke-static {p1}, Lflyme/support/v7/widget/MzActionBarTabContainer;->access$000(Lflyme/support/v7/widget/MzActionBarTabContainer;)Lflyme/support/v7/app/ActionBar$OnScrollTabsVisibilityChangeListener;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    .line 490
    :cond_9
    iget-object p1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer$1;->this$0:Lflyme/support/v7/widget/MzActionBarTabContainer;

    invoke-static {p1}, Lflyme/support/v7/widget/MzActionBarTabContainer;->access$000(Lflyme/support/v7/widget/MzActionBarTabContainer;)Lflyme/support/v7/app/ActionBar$OnScrollTabsVisibilityChangeListener;

    iget-object p0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer$1;->this$0:Lflyme/support/v7/widget/MzActionBarTabContainer;

    iget-object p0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScollTabsVisibleAnim:Lflyme/support/v7/widget/AnimationUtils$AlphaVisibilityAnimator;

    invoke-virtual {p0}, Lflyme/support/v7/widget/AnimationUtils$AlphaVisibilityAnimator;->getFinalVisibility()I

    const/4 p0, 0x0

    throw p0
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 2

    .line 482
    iget-object p1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer$1;->this$0:Lflyme/support/v7/widget/MzActionBarTabContainer;

    invoke-static {p1}, Lflyme/support/v7/widget/MzActionBarTabContainer;->access$000(Lflyme/support/v7/widget/MzActionBarTabContainer;)Lflyme/support/v7/app/ActionBar$OnScrollTabsVisibilityChangeListener;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    .line 483
    :cond_9
    iget-object p1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer$1;->this$0:Lflyme/support/v7/widget/MzActionBarTabContainer;

    invoke-static {p1}, Lflyme/support/v7/widget/MzActionBarTabContainer;->access$000(Lflyme/support/v7/widget/MzActionBarTabContainer;)Lflyme/support/v7/app/ActionBar$OnScrollTabsVisibilityChangeListener;

    iget-object p0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer$1;->this$0:Lflyme/support/v7/widget/MzActionBarTabContainer;

    iget-object p0, p0, Lflyme/support/v7/widget/MzActionBarTabContainer;->mScollTabsVisibleAnim:Lflyme/support/v7/widget/AnimationUtils$AlphaVisibilityAnimator;

    invoke-virtual {p0}, Lflyme/support/v7/widget/AnimationUtils$AlphaVisibilityAnimator;->getFinalVisibility()I

    const/4 p0, 0x0

    throw p0
.end method
