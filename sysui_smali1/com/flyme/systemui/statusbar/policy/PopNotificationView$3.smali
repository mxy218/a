.class Lcom/flyme/systemui/statusbar/policy/PopNotificationView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PopNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->startFlipOutAnimation(Landroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)V
    .registers 2

    .line 262
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$3;->this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    .line 265
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 266
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$3;->this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 267
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$3;->this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->access$100(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)Landroid/widget/LinearLayout;

    move-result-object p1

    new-instance v0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$3$1;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$3$1;-><init>(Lcom/flyme/systemui/statusbar/policy/PopNotificationView$3;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
