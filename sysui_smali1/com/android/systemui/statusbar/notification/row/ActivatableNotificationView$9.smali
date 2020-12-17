.class Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActivatableNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->startAppearAnimation(ZFJJLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mWasCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

.field final synthetic val$isAppearing:Z

.field final synthetic val$onFinishedRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Ljava/lang/Runnable;Z)V
    .registers 4

    .line 849
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$9;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$9;->val$onFinishedRunnable:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$9;->val$isAppearing:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const/4 p1, 0x1

    .line 870
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$9;->mWasCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 854
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$9;->val$onFinishedRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_7

    .line 855
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 857
    :cond_7
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$9;->mWasCancelled:Z

    if-nez p1, :cond_18

    .line 858
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$9;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->access$900(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Z)V

    .line 859
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$9;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$9;->val$isAppearing:Z

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->onAppearAnimationFinished(Z)V

    :cond_18
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    const/4 p1, 0x0

    .line 865
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView$9;->mWasCancelled:Z

    return-void
.end method
