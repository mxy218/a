.class Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExpandableNotificationRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getTranslateViewAnimator(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field final synthetic val$leftTarget:F


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;F)V
    .registers 3

    .line 2017
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$5;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$5;->val$leftTarget:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 2018
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$5;->cancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const/4 p1, 0x1

    .line 2022
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$5;->cancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 2027
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$5;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->access$1800(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 2028
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$5;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->access$1902(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)Z

    .line 2030
    :cond_e
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$5;->cancelled:Z

    if-nez p1, :cond_30

    iget p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$5;->val$leftTarget:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_30

    .line 2031
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$5;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->access$2000(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 2032
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$5;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->access$2000(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->resetMenu()V

    .line 2034
    :cond_2a
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow$5;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->access$2102(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/animation/Animator;)Landroid/animation/Animator;

    :cond_30
    return-void
.end method
