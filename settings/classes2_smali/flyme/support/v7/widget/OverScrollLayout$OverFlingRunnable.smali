.class Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;
.super Ljava/lang/Object;
.source "OverScrollLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/OverScrollLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverFlingRunnable"
.end annotation


# instance fields
.field private mLastoffsize:I

.field private final mScroller:Lflyme/support/v7/util/OverScroller;

.field private mVelocity:I

.field final synthetic this$0:Lflyme/support/v7/widget/OverScrollLayout;


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/OverScrollLayout;)V
    .registers 4

    .line 728
    iput-object p1, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->this$0:Lflyme/support/v7/widget/OverScrollLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 729
    new-instance v0, Lflyme/support/v7/util/OverScroller;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lflyme/support/v7/widget/OverScrollLayout;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Lflyme/support/v7/util/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->mScroller:Lflyme/support/v7/util/OverScroller;

    return-void
.end method


# virtual methods
.method endFling()V
    .registers 2

    .line 748
    iget-object v0, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->this$0:Lflyme/support/v7/widget/OverScrollLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 749
    iget-object p0, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->mScroller:Lflyme/support/v7/util/OverScroller;

    invoke-virtual {p0}, Lflyme/support/v7/util/OverScroller;->abortAnimation()V

    return-void
.end method

.method fling(II)V
    .registers 12

    .line 740
    iput p2, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->mVelocity:I

    .line 741
    iget-object v0, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->mScroller:Lflyme/support/v7/util/OverScroller;

    iget-object v1, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->this$0:Lflyme/support/v7/widget/OverScrollLayout;

    iget v8, v1, Lflyme/support/v7/widget/OverScrollLayout;->mOverscrollDistance:I

    neg-int v5, v8

    neg-int v7, v8

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v6, v8

    invoke-virtual/range {v0 .. v8}, Lflyme/support/v7/util/OverScroller;->fling(IIIIIIII)V

    const/4 p1, 0x0

    .line 743
    iput p1, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->mLastoffsize:I

    .line 744
    iget-object p1, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->this$0:Lflyme/support/v7/widget/OverScrollLayout;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .registers 15

    .line 754
    iget-object v0, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->mScroller:Lflyme/support/v7/util/OverScroller;

    .line 755
    invoke-virtual {v0}, Lflyme/support/v7/util/OverScroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_100

    .line 757
    invoke-virtual {v0}, Lflyme/support/v7/util/OverScroller;->getCurrVelocity()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->mVelocity:I

    div-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_26

    .line 758
    invoke-virtual {p0}, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->endFling()V

    .line 759
    iget-object p0, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->this$0:Lflyme/support/v7/widget/OverScrollLayout;

    invoke-static {p0}, Lflyme/support/v7/widget/OverScrollLayout;->access$1000(Lflyme/support/v7/widget/OverScrollLayout;)V

    return-void

    .line 763
    :cond_26
    iget-object v1, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->this$0:Lflyme/support/v7/widget/OverScrollLayout;

    invoke-static {v1}, Lflyme/support/v7/widget/OverScrollLayout;->access$900(Lflyme/support/v7/widget/OverScrollLayout;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_98

    .line 764
    iget-object v1, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->this$0:Lflyme/support/v7/widget/OverScrollLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    .line 765
    invoke-virtual {v0}, Lflyme/support/v7/util/OverScroller;->getCurrY()I

    move-result v2

    .line 767
    iget v3, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->mLastoffsize:I

    sub-int v3, v2, v3

    .line 768
    iget-object v4, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->this$0:Lflyme/support/v7/widget/OverScrollLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v5

    invoke-static {v4, v3, v5}, Lflyme/support/v7/widget/OverScrollLayout;->access$1100(Lflyme/support/v7/widget/OverScrollLayout;II)I

    move-result v3

    .line 770
    iget-object v4, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->this$0:Lflyme/support/v7/widget/OverScrollLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v4

    sub-int v5, v4, v3

    if-gtz v5, :cond_53

    if-gtz v4, :cond_57

    :cond_53
    if-ltz v5, :cond_58

    if-gez v4, :cond_58

    :cond_57
    neg-int v3, v4

    :cond_58
    move v6, v3

    if-eqz v6, :cond_8c

    .line 781
    iget-object v4, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->this$0:Lflyme/support/v7/widget/OverScrollLayout;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v3, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->this$0:Lflyme/support/v7/widget/OverScrollLayout;

    iget v12, v3, Lflyme/support/v7/widget/OverScrollLayout;->mOverscrollDistance:I

    const/4 v13, 0x0

    invoke-static/range {v4 .. v13}, Lflyme/support/v7/widget/OverScrollLayout;->access$1200(Lflyme/support/v7/widget/OverScrollLayout;IIIIIIIIZ)Z

    move-result v3

    if-eqz v3, :cond_81

    if-gtz v1, :cond_75

    if-gtz v2, :cond_79

    :cond_75
    if-ltz v1, :cond_7d

    if-gez v2, :cond_7d

    .line 784
    :cond_79
    invoke-virtual {v0}, Lflyme/support/v7/util/OverScroller;->abortAnimation()V

    goto :goto_94

    .line 786
    :cond_7d
    invoke-virtual {p0}, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->startSpringback()V

    goto :goto_94

    .line 789
    :cond_81
    iget-object v0, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->this$0:Lflyme/support/v7/widget/OverScrollLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 790
    iget-object v0, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->this$0:Lflyme/support/v7/widget/OverScrollLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_94

    .line 793
    :cond_8c
    invoke-virtual {p0}, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->endFling()V

    .line 794
    iget-object v0, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->this$0:Lflyme/support/v7/widget/OverScrollLayout;

    invoke-static {v0}, Lflyme/support/v7/widget/OverScrollLayout;->access$1000(Lflyme/support/v7/widget/OverScrollLayout;)V

    .line 796
    :goto_94
    iput v2, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->mLastoffsize:I

    goto/16 :goto_108

    .line 798
    :cond_98
    iget-object v1, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->this$0:Lflyme/support/v7/widget/OverScrollLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v1

    .line 799
    invoke-virtual {v0}, Lflyme/support/v7/util/OverScroller;->getCurrX()I

    move-result v2

    .line 801
    iget v3, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->mLastoffsize:I

    sub-int v3, v2, v3

    .line 802
    iget-object v4, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->this$0:Lflyme/support/v7/widget/OverScrollLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v5

    invoke-static {v4, v3, v5}, Lflyme/support/v7/widget/OverScrollLayout;->access$1100(Lflyme/support/v7/widget/OverScrollLayout;II)I

    move-result v3

    .line 804
    iget-object v4, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->this$0:Lflyme/support/v7/widget/OverScrollLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v4

    sub-int v5, v4, v3

    if-gtz v5, :cond_bc

    if-gtz v4, :cond_c0

    :cond_bc
    if-ltz v5, :cond_c1

    if-gez v4, :cond_c1

    :cond_c0
    neg-int v3, v4

    :cond_c1
    move v5, v3

    if-eqz v5, :cond_f5

    .line 814
    iget-object v4, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->this$0:Lflyme/support/v7/widget/OverScrollLayout;

    const/4 v6, 0x0

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getScrollX()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v3, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->this$0:Lflyme/support/v7/widget/OverScrollLayout;

    iget v11, v3, Lflyme/support/v7/widget/OverScrollLayout;->mOverscrollDistance:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v4 .. v13}, Lflyme/support/v7/widget/OverScrollLayout;->access$1300(Lflyme/support/v7/widget/OverScrollLayout;IIIIIIIIZ)Z

    move-result v3

    if-eqz v3, :cond_ea

    if-gtz v1, :cond_de

    if-gtz v2, :cond_e2

    :cond_de
    if-ltz v1, :cond_e6

    if-gez v2, :cond_e6

    .line 817
    :cond_e2
    invoke-virtual {v0}, Lflyme/support/v7/util/OverScroller;->abortAnimation()V

    goto :goto_fd

    .line 819
    :cond_e6
    invoke-virtual {p0}, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->startSpringback()V

    goto :goto_fd

    .line 822
    :cond_ea
    iget-object v0, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->this$0:Lflyme/support/v7/widget/OverScrollLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 823
    iget-object v0, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->this$0:Lflyme/support/v7/widget/OverScrollLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_fd

    .line 826
    :cond_f5
    invoke-virtual {p0}, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->endFling()V

    .line 827
    iget-object v0, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->this$0:Lflyme/support/v7/widget/OverScrollLayout;

    invoke-static {v0}, Lflyme/support/v7/widget/OverScrollLayout;->access$1000(Lflyme/support/v7/widget/OverScrollLayout;)V

    .line 829
    :goto_fd
    iput v2, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->mLastoffsize:I

    goto :goto_108

    .line 832
    :cond_100
    invoke-virtual {p0}, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->endFling()V

    .line 833
    iget-object p0, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->this$0:Lflyme/support/v7/widget/OverScrollLayout;

    invoke-static {p0}, Lflyme/support/v7/widget/OverScrollLayout;->access$1000(Lflyme/support/v7/widget/OverScrollLayout;)V

    :goto_108
    return-void
.end method

.method startSpringback()V
    .registers 8

    .line 733
    iget-object v0, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->mScroller:Lflyme/support/v7/util/OverScroller;

    iget-object v1, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->this$0:Lflyme/support/v7/widget/OverScrollLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lflyme/support/v7/util/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 734
    iget-object v0, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->this$0:Lflyme/support/v7/widget/OverScrollLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 735
    iget-object v0, p0, Lflyme/support/v7/widget/OverScrollLayout$OverFlingRunnable;->this$0:Lflyme/support/v7/widget/OverScrollLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_1d
    return-void
.end method
