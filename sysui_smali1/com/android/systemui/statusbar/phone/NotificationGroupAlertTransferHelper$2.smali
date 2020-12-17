.class Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$2;
.super Ljava/lang/Object;
.source "NotificationGroupAlertTransferHelper.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationEntryListener;


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

    .line 182
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEntryReinflated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 4

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->access$700(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$PendingAlertInfo;

    if-eqz v0, :cond_31

    .line 200
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$PendingAlertInfo;->access$000(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$PendingAlertInfo;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 201
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->access$200(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->access$500(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/AlertingNotificationManager;)V

    goto :goto_31

    .line 204
    :cond_20
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->access$200(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getContentFlag()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->freeContentViewWhenSafe(I)V

    :cond_31
    :goto_31
    return-void
.end method

.method public onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/internal/statusbar/NotificationVisibility;Z)V
    .registers 4

    .line 217
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->access$700(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;)Landroid/util/ArrayMap;

    move-result-object p0

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onPendingEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->access$400(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object v0

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p1

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->access$100(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;

    if-eqz p1, :cond_1f

    .line 190
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->access$600(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;)V

    :cond_1f
    return-void
.end method
