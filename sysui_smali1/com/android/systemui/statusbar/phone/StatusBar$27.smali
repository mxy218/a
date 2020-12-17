.class Lcom/android/systemui/statusbar/phone/StatusBar$27;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/NotificationEntryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->initEntryListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .registers 2

    .line 5683
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/internal/statusbar/NotificationVisibility;Z)V
    .registers 4

    .line 5703
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4100(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/flyme/systemui/statusbar/phone/FlymeMarqueeTicker;

    move-result-object p2

    iget-object p3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2, p3}, Lcom/flyme/systemui/statusbar/phone/MarqueeTicker;->removeEntry(Landroid/service/notification/StatusBarNotification;)V

    .line 5705
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4200(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;

    move-result-object p0

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/phone/AdvertSwitcherView;->removeNotification(Ljava/lang/String;)V

    return-void
.end method

.method public onNotificationAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 3

    .line 5686
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3800(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/service/notification/StatusBarNotification;Z)V

    return-void
.end method

.method public onPostEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 4

    .line 5691
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3900(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 5695
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4000(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 5696
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4002(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 5697
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$27;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-static {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3800(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/service/notification/StatusBarNotification;Z)V

    :cond_20
    return-void
.end method
