.class Lcom/android/server/notification/NotificationManagerService$8;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/android/server/notification/SnoozeHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->onStart()V
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

    .line 1810
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public repost(ILcom/android/server/notification/NotificationRecord;)V
    .registers 13

    .line 1814
    const-string v0, "NotificationService"

    :try_start_2
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_1e

    .line 1815
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reposting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    :cond_1e
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$8;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1818
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    iget-object v5, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v5

    iget-object v6, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    iget-object p2, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1819
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    .line 1817
    move v9, p1

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/notification/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;I)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4e} :catch_4f

    .line 1822
    goto :goto_55

    .line 1820
    :catch_4f
    move-exception p1

    .line 1821
    const-string p2, "Cannot un-snooze notification"

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1823
    :goto_55
    return-void
.end method
