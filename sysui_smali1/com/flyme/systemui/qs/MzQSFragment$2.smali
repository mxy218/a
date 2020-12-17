.class Lcom/flyme/systemui/qs/MzQSFragment$2;
.super Ljava/lang/Object;
.source "MzQSFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/MzQSFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/qs/MzQSFragment;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/qs/MzQSFragment;)V
    .registers 2

    .line 380
    iput-object p1, p0, Lcom/flyme/systemui/qs/MzQSFragment$2;->this$0:Lcom/flyme/systemui/qs/MzQSFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 4

    .line 383
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSFragment$2;->this$0:Lcom/flyme/systemui/qs/MzQSFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 384
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSFragment$2;->this$0:Lcom/flyme/systemui/qs/MzQSFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 385
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSFragment$2;->this$0:Lcom/flyme/systemui/qs/MzQSFragment;

    .line 386
    invoke-static {v1}, Lcom/flyme/systemui/qs/MzQSFragment;->access$300(Lcom/flyme/systemui/qs/MzQSFragment;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1c0

    .line 387
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 388
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSFragment$2;->this$0:Lcom/flyme/systemui/qs/MzQSFragment;

    .line 389
    invoke-static {v1}, Lcom/flyme/systemui/qs/MzQSFragment;->access$200(Lcom/flyme/systemui/qs/MzQSFragment;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 390
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 391
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSFragment$2;->this$0:Lcom/flyme/systemui/qs/MzQSFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSFragment$2;->this$0:Lcom/flyme/systemui/qs/MzQSFragment;

    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mHeader:Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    const/4 p0, 0x1

    return p0
.end method
