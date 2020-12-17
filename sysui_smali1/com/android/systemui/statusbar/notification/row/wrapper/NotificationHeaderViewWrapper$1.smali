.class Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper$1;
.super Lcom/android/systemui/statusbar/notification/CustomInterpolatorTransformation;
.source "NotificationHeaderViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;I)V
    .registers 3

    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper$1;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/CustomInterpolatorTransformation;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getCustomInterpolator(IZ)Landroid/view/animation/Interpolator;
    .registers 4

    .line 81
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper$1;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    instance-of p0, p0, Landroid/view/NotificationHeaderView;

    const/16 v0, 0x10

    if-ne p1, v0, :cond_1a

    if-eqz p0, :cond_e

    if-eqz p2, :cond_12

    :cond_e
    if-nez p0, :cond_15

    if-eqz p2, :cond_15

    .line 85
    :cond_12
    sget-object p0, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    return-object p0

    .line 87
    :cond_15
    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->access$000()Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method protected hasCustomTransformation()Z
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper$1;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->access$100(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper$1;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->access$200(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method
