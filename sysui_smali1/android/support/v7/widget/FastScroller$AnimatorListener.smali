.class Landroid/support/v7/widget/FastScroller$AnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Landroid/support/v7/widget/FastScroller;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/FastScroller;)V
    .registers 2

    .line 551
    iput-object p1, p0, Landroid/support/v7/widget/FastScroller$AnimatorListener;->this$0:Landroid/support/v7/widget/FastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 553
    iput-boolean p1, p0, Landroid/support/v7/widget/FastScroller$AnimatorListener;->mCanceled:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/FastScroller;Landroid/support/v7/widget/FastScroller$1;)V
    .registers 3

    .line 551
    invoke-direct {p0, p1}, Landroid/support/v7/widget/FastScroller$AnimatorListener;-><init>(Landroid/support/v7/widget/FastScroller;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const/4 p1, 0x1

    .line 573
    iput-boolean p1, p0, Landroid/support/v7/widget/FastScroller$AnimatorListener;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 558
    iget-boolean p1, p0, Landroid/support/v7/widget/FastScroller$AnimatorListener;->mCanceled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 559
    iput-boolean v0, p0, Landroid/support/v7/widget/FastScroller$AnimatorListener;->mCanceled:Z

    return-void

    .line 562
    :cond_8
    iget-object p1, p0, Landroid/support/v7/widget/FastScroller$AnimatorListener;->this$0:Landroid/support/v7/widget/FastScroller;

    invoke-static {p1}, Landroid/support/v7/widget/FastScroller;->access$200(Landroid/support/v7/widget/FastScroller;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_28

    .line 563
    iget-object p1, p0, Landroid/support/v7/widget/FastScroller$AnimatorListener;->this$0:Landroid/support/v7/widget/FastScroller;

    invoke-static {p1, v0}, Landroid/support/v7/widget/FastScroller;->access$302(Landroid/support/v7/widget/FastScroller;I)I

    .line 564
    iget-object p0, p0, Landroid/support/v7/widget/FastScroller$AnimatorListener;->this$0:Landroid/support/v7/widget/FastScroller;

    invoke-static {p0, v0}, Landroid/support/v7/widget/FastScroller;->access$400(Landroid/support/v7/widget/FastScroller;I)V

    goto :goto_33

    .line 566
    :cond_28
    iget-object p1, p0, Landroid/support/v7/widget/FastScroller$AnimatorListener;->this$0:Landroid/support/v7/widget/FastScroller;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/support/v7/widget/FastScroller;->access$302(Landroid/support/v7/widget/FastScroller;I)I

    .line 567
    iget-object p0, p0, Landroid/support/v7/widget/FastScroller$AnimatorListener;->this$0:Landroid/support/v7/widget/FastScroller;

    invoke-static {p0}, Landroid/support/v7/widget/FastScroller;->access$500(Landroid/support/v7/widget/FastScroller;)V

    :goto_33
    return-void
.end method
