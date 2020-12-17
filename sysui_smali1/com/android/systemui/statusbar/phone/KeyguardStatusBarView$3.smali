.class Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;
.super Ljava/lang/Object;
.source "KeyguardStatusBarView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->animateNextLayoutChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field final synthetic val$systemIconsCurrentX:I

.field final synthetic val$userSwitcherVisible:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;ZI)V
    .registers 4

    .line 503
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->val$userSwitcherVisible:Z

    iput p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->val$systemIconsCurrentX:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onPreDraw$0$KeyguardStatusBarView$3()V
    .registers 3

    .line 524
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 525
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    return-void
.end method

.method public onPreDraw()Z
    .registers 11

    .line 506
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 507
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->val$userSwitcherVisible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 508
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$400(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/view/ViewGroup;

    move-result-object v2

    if-eq v0, v2, :cond_22

    move v0, v1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 509
    :goto_23
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->val$systemIconsCurrentX:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 510
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    .line 511
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x190

    .line 512
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x12c

    if-eqz v0, :cond_4c

    move-wide v8, v6

    goto :goto_4d

    :cond_4c
    move-wide v8, v4

    .line 513
    :goto_4d
    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v8, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 514
    invoke-virtual {v2, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 515
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    if-eqz v0, :cond_94

    .line 517
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 518
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 519
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 520
    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 521
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 522
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardStatusBarView$3$B4ARAVqyPExjnXcMxjw5AoKKICU;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$KeyguardStatusBarView$3$B4ARAVqyPExjnXcMxjw5AoKKICU;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;)V

    .line 523
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 527
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_bc

    .line 530
    :cond_94
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 531
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000  # 1.0f

    .line 532
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 533
    invoke-virtual {p0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v2, 0xc8

    .line 534
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 535
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    :goto_bc
    return v1
.end method
