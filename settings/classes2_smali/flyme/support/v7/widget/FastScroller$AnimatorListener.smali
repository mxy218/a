.class Lflyme/support/v7/widget/FastScroller$AnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lflyme/support/v7/widget/FastScroller;


# direct methods
.method private constructor <init>(Lflyme/support/v7/widget/FastScroller;)V
    .registers 2

    .line 643
    iput-object p1, p0, Lflyme/support/v7/widget/FastScroller$AnimatorListener;->this$0:Lflyme/support/v7/widget/FastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 645
    iput-boolean p1, p0, Lflyme/support/v7/widget/FastScroller$AnimatorListener;->mCanceled:Z

    return-void
.end method

.method synthetic constructor <init>(Lflyme/support/v7/widget/FastScroller;Lflyme/support/v7/widget/FastScroller$1;)V
    .registers 3

    .line 643
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/FastScroller$AnimatorListener;-><init>(Lflyme/support/v7/widget/FastScroller;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const/4 p1, 0x1

    .line 668
    iput-boolean p1, p0, Lflyme/support/v7/widget/FastScroller$AnimatorListener;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 6

    .line 650
    iget-boolean p1, p0, Lflyme/support/v7/widget/FastScroller$AnimatorListener;->mCanceled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 651
    iput-boolean v0, p0, Lflyme/support/v7/widget/FastScroller$AnimatorListener;->mCanceled:Z

    return-void

    .line 654
    :cond_8
    iget-object p1, p0, Lflyme/support/v7/widget/FastScroller$AnimatorListener;->this$0:Lflyme/support/v7/widget/FastScroller;

    invoke-static {p1}, Lflyme/support/v7/widget/FastScroller;->access$300(Lflyme/support/v7/widget/FastScroller;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_28

    .line 655
    iget-object p1, p0, Lflyme/support/v7/widget/FastScroller$AnimatorListener;->this$0:Lflyme/support/v7/widget/FastScroller;

    invoke-static {p1, v0}, Lflyme/support/v7/widget/FastScroller;->access$402(Lflyme/support/v7/widget/FastScroller;I)I

    .line 656
    iget-object p0, p0, Lflyme/support/v7/widget/FastScroller$AnimatorListener;->this$0:Lflyme/support/v7/widget/FastScroller;

    invoke-static {p0, v0}, Lflyme/support/v7/widget/FastScroller;->access$000(Lflyme/support/v7/widget/FastScroller;I)V

    goto :goto_57

    .line 657
    :cond_28
    iget-object p1, p0, Lflyme/support/v7/widget/FastScroller$AnimatorListener;->this$0:Lflyme/support/v7/widget/FastScroller;

    invoke-static {p1}, Lflyme/support/v7/widget/FastScroller;->access$300(Lflyme/support/v7/widget/FastScroller;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L  # 0.5

    cmpl-double p1, v0, v2

    if-nez p1, :cond_4c

    .line 658
    iget-object p1, p0, Lflyme/support/v7/widget/FastScroller$AnimatorListener;->this$0:Lflyme/support/v7/widget/FastScroller;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lflyme/support/v7/widget/FastScroller;->access$402(Lflyme/support/v7/widget/FastScroller;I)I

    .line 659
    iget-object p0, p0, Lflyme/support/v7/widget/FastScroller$AnimatorListener;->this$0:Lflyme/support/v7/widget/FastScroller;

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lflyme/support/v7/widget/FastScroller;->access$000(Lflyme/support/v7/widget/FastScroller;I)V

    goto :goto_57

    .line 661
    :cond_4c
    iget-object p1, p0, Lflyme/support/v7/widget/FastScroller$AnimatorListener;->this$0:Lflyme/support/v7/widget/FastScroller;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lflyme/support/v7/widget/FastScroller;->access$402(Lflyme/support/v7/widget/FastScroller;I)I

    .line 662
    iget-object p0, p0, Lflyme/support/v7/widget/FastScroller$AnimatorListener;->this$0:Lflyme/support/v7/widget/FastScroller;

    invoke-static {p0}, Lflyme/support/v7/widget/FastScroller;->access$500(Lflyme/support/v7/widget/FastScroller;)V

    :goto_57
    return-void
.end method
