.class Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$1;
.super Ljava/lang/Object;
.source "NotificationGroupAlertTransferHelper.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;)V
    .registers 2

    .line 130
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupCreated(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;Ljava/lang/String;)V
    .registers 4

    .line 133
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->access$100(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;)Landroid/util/ArrayMap;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;-><init>(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V

    invoke-virtual {p0, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onGroupRemoved(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;Ljava/lang/String;)V
    .registers 3

    .line 138
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->access$100(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onGroupSuppressionChanged(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;Z)V
    .registers 5

    if-eqz p2, :cond_1e

    .line 144
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->access$200(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object p2

    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_65

    .line 145
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->access$200(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->access$300(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/AlertingNotificationManager;)V

    goto :goto_65

    .line 150
    :cond_1e
    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-nez p2, :cond_23

    return-void

    .line 153
    :cond_23
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->access$100(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;)Landroid/util/ArrayMap;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->access$400(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;

    .line 157
    iget-boolean v0, p2, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;->mAlertSummaryOnNextAddition:Z

    if-eqz v0, :cond_60

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->access$200(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 159
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->access$200(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->access$500(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/AlertingNotificationManager;)V

    :cond_5c
    const/4 p0, 0x0

    .line 161
    iput-boolean p0, p2, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;->mAlertSummaryOnNextAddition:Z

    goto :goto_65

    .line 163
    :cond_60
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    invoke-static {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->access$600(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;)V

    :cond_65
    :goto_65
    return-void
.end method
