.class Lcom/android/systemui/stackdivider/DividerView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DividerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/DividerView;->getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerView;

.field final synthetic val$endAction:Ljava/lang/Runnable;

.field final synthetic val$endDelay:J

.field final synthetic val$notCancelledEndAction:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerView;JLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 6

    .line 647
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    iput-wide p2, p0, Lcom/android/systemui/stackdivider/DividerView$4;->val$endDelay:J

    iput-object p4, p0, Lcom/android/systemui/stackdivider/DividerView$4;->val$notCancelledEndAction:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/android/systemui/stackdivider/DividerView$4;->val$endAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 653
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {p1}, Lcom/android/systemui/stackdivider/DividerView;->access$1200(Lcom/android/systemui/stackdivider/DividerView;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, 0x1

    .line 654
    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView$4;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    .line 660
    iget-wide v0, p0, Lcom/android/systemui/stackdivider/DividerView$4;->val$endDelay:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_9

    goto :goto_28

    .line 662
    :cond_9
    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView$4;->mCancelled:Z

    if-eqz p1, :cond_e

    goto :goto_27

    .line 664
    :cond_e
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {p1}, Lcom/android/systemui/stackdivider/DividerView;->access$1300(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;->getSurfaceFlingerOffsetMs()J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-lez p1, :cond_27

    .line 665
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {p1}, Lcom/android/systemui/stackdivider/DividerView;->access$1300(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;->getSurfaceFlingerOffsetMs()J

    move-result-wide v0

    goto :goto_28

    :cond_27
    :goto_27
    move-wide v0, v2

    :goto_28
    cmp-long p1, v0, v2

    if-nez p1, :cond_3b

    .line 668
    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView$4;->mCancelled:Z

    if-nez p1, :cond_35

    .line 669
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$4;->val$notCancelledEndAction:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 671
    :cond_35
    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerView$4;->val$endAction:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_55

    .line 673
    :cond_3b
    iget-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerView$4;->mCancelled:Z

    if-nez p1, :cond_4a

    .line 674
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {p1}, Lcom/android/systemui/stackdivider/DividerView;->access$1200(Lcom/android/systemui/stackdivider/DividerView;)Landroid/os/Handler;

    move-result-object p1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView$4;->val$notCancelledEndAction:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 676
    :cond_4a
    iget-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$4;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {p1}, Lcom/android/systemui/stackdivider/DividerView;->access$1200(Lcom/android/systemui/stackdivider/DividerView;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/stackdivider/DividerView$4;->val$endAction:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_55
    return-void
.end method
