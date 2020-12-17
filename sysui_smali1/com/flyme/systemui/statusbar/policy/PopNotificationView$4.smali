.class Lcom/flyme/systemui/statusbar/policy/PopNotificationView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PopNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->releasePopWithAnimation(ZLandroid/animation/Animator$AnimatorListener;)V
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

    .line 420
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$4;->this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 423
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 424
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onAnimationEnd: mAllout setOffset end"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$4;->this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->access$1100(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;F)V

    .line 426
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$4;->this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->access$1002(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;Z)Z

    return-void
.end method
