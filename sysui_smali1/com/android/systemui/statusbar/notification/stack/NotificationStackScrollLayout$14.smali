.class Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$14;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayout.java"

# interfaces
.implements Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .registers 2

    .line 6536
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$14;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDragDownAnywhereEnabled()Z
    .registers 3

    .line 6624
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$14;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$4200(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$14;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 6625
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$4400(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p0

    if-nez p0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method public isDragDownEnabledForView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z
    .registers 4

    .line 6606
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$14;->isDragDownAnywhereEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 6609
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$14;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->access$4100(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isInLockedDownShade()Z

    move-result p0

    if-eqz p0, :cond_26

    if-nez p1, :cond_17

    return v1

    .line 6614
    :cond_17
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_26

    .line 6616
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isSensitive()Z

    move-result p0

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method
