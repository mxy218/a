.class Lcom/android/server/notification/NotificationManagerService$TrimCache;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrimCache"
.end annotation


# instance fields
.field heavy:Landroid/service/notification/StatusBarNotification;

.field sbnClone:Landroid/service/notification/StatusBarNotification;

.field sbnCloneLight:Landroid/service/notification/StatusBarNotification;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;)V
    .registers 3

    .line 7713
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7714
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->heavy:Landroid/service/notification/StatusBarNotification;

    .line 7715
    return-void
.end method


# virtual methods
.method ForListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/StatusBarNotification;
    .registers 3

    .line 7718
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getOnNotificationPostedTrim(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1c

    .line 7719
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->sbnCloneLight:Landroid/service/notification/StatusBarNotification;

    if-nez p1, :cond_19

    .line 7720
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->heavy:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->sbnCloneLight:Landroid/service/notification/StatusBarNotification;

    .line 7722
    :cond_19
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->sbnCloneLight:Landroid/service/notification/StatusBarNotification;

    return-object p1

    .line 7724
    :cond_1c
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->sbnClone:Landroid/service/notification/StatusBarNotification;

    if-nez p1, :cond_28

    .line 7725
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->heavy:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->clone()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->sbnClone:Landroid/service/notification/StatusBarNotification;

    .line 7727
    :cond_28
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$TrimCache;->sbnClone:Landroid/service/notification/StatusBarNotification;

    return-object p1
.end method
