.class Lcom/flyme/systemui/qs/MzQSFragment$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MzQSFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/qs/MzQSFragment;->animateHeaderSlidingOut()V
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

    .line 317
    iput-object p1, p0, Lcom/flyme/systemui/qs/MzQSFragment$1;->this$0:Lcom/flyme/systemui/qs/MzQSFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 320
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSFragment$1;->this$0:Lcom/flyme/systemui/qs/MzQSFragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 323
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSFragment$1;->this$0:Lcom/flyme/systemui/qs/MzQSFragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 325
    :cond_16
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSFragment$1;->this$0:Lcom/flyme/systemui/qs/MzQSFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/flyme/systemui/qs/MzQSFragment;->access$002(Lcom/flyme/systemui/qs/MzQSFragment;Z)Z

    .line 326
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSFragment$1;->this$0:Lcom/flyme/systemui/qs/MzQSFragment;

    invoke-static {p0}, Lcom/flyme/systemui/qs/MzQSFragment;->access$100(Lcom/flyme/systemui/qs/MzQSFragment;)V

    return-void
.end method
