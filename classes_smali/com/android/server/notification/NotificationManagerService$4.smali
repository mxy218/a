.class Lcom/android/server/notification/NotificationManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    .line 1182
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$4;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15

    .line 1185
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1186
    if-nez p1, :cond_7

    .line 1187
    return-void

    .line 1189
    :cond_7
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1600()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_57

    .line 1191
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$4;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1192
    :try_start_16
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$4;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v1, "key"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object p2

    .line 1193
    monitor-exit p1
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_54

    .line 1194
    if-eqz p2, :cond_57

    .line 1195
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$4;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    iget-object p1, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v2

    iget-object p1, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1196
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1197
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x40

    const/4 v8, 0x1

    .line 1198
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v9

    const/16 v10, 0x13

    const/4 v11, 0x0

    .line 1195
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    goto :goto_57

    .line 1193
    :catchall_54
    move-exception p2

    :try_start_55
    monitor-exit p1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw p2

    .line 1202
    :cond_57
    :goto_57
    return-void
.end method
