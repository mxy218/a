.class Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/AutoScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollAnimationRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/widget/AutoScrollHelper;


# direct methods
.method constructor <init>(Landroidx/core/widget/AutoScrollHelper;)V
    .registers 2

    .line 695
    iput-object p1, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 700
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    iget-boolean v1, v0, Landroidx/core/widget/AutoScrollHelper;->mAnimating:Z

    if-nez v1, :cond_7

    return-void

    .line 704
    :cond_7
    iget-boolean v1, v0, Landroidx/core/widget/AutoScrollHelper;->mNeedsReset:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 705
    iput-boolean v2, v0, Landroidx/core/widget/AutoScrollHelper;->mNeedsReset:Z

    .line 706
    iget-object v0, v0, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->start()V

    .line 709
    :cond_13
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    iget-object v0, v0, Landroidx/core/widget/AutoScrollHelper;->mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    .line 710
    invoke-virtual {v0}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_49

    iget-object v1, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    invoke-virtual {v1}, Landroidx/core/widget/AutoScrollHelper;->shouldAnimate()Z

    move-result v1

    if-nez v1, :cond_26

    goto :goto_49

    .line 715
    :cond_26
    iget-object v1, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    iget-boolean v3, v1, Landroidx/core/widget/AutoScrollHelper;->mNeedsCancel:Z

    if-eqz v3, :cond_31

    .line 716
    iput-boolean v2, v1, Landroidx/core/widget/AutoScrollHelper;->mNeedsCancel:Z

    .line 717
    invoke-virtual {v1}, Landroidx/core/widget/AutoScrollHelper;->cancelTargetTouch()V

    .line 720
    :cond_31
    invoke-virtual {v0}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->computeScrollDelta()V

    .line 722
    invoke-virtual {v0}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->getDeltaX()I

    move-result v1

    .line 723
    invoke-virtual {v0}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->getDeltaY()I

    move-result v0

    .line 724
    iget-object v2, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    invoke-virtual {v2, v1, v0}, Landroidx/core/widget/AutoScrollHelper;->scrollTargetBy(II)V

    .line 727
    iget-object v0, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    iget-object v0, v0, Landroidx/core/widget/AutoScrollHelper;->mTarget:Landroid/view/View;

    invoke-static {v0, p0}, Landroidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    .line 711
    :cond_49
    :goto_49
    iget-object p0, p0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;->this$0:Landroidx/core/widget/AutoScrollHelper;

    iput-boolean v2, p0, Landroidx/core/widget/AutoScrollHelper;->mAnimating:Z

    return-void
.end method
