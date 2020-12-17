.class Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$1;
.super Ljava/lang/Object;
.source "StatusBarNotificationPresenter.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationEntryListener;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)V
    .registers 2

    .line 194
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/internal/statusbar/NotificationVisibility;Z)V
    .registers 5

    .line 211
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->onNotificationRemoved(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    if-eqz p3, :cond_10

    .line 214
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->access$500(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)V

    :cond_10
    return-void
.end method

.method public onNotificationAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 2

    .line 198
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->access$400(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)Lcom/android/systemui/statusbar/phone/ShadeController;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->updateAreThereNotifications()V

    return-void
.end method

.method public onPostEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 2

    .line 203
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;->access$400(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;)Lcom/android/systemui/statusbar/phone/ShadeController;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->updateAreThereNotifications()V

    return-void
.end method
