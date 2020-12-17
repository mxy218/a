.class Lcom/flyme/systemui/statusbar/policy/PopNotificationView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PopNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->setUpAnimator()V
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

    .line 234
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$2;->this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 237
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 239
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$2;->this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->access$800(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 240
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$2;->this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->access$900(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->hidePopNotificationView()V

    .line 241
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$2;->this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->access$800(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->performClick()Z

    .line 242
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[foree] onAnimationEnd: performClick"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$2;->this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->access$1002(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;Z)Z

    :cond_30
    return-void
.end method
