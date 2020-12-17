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
    .param p1, "this$0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 1239
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$4;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 21
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 1242
    move-object/from16 v1, p0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1243
    .local v2, "action":Ljava/lang/String;
    if-nez v2, :cond_9

    .line 1244
    return-void

    .line 1246
    :cond_9
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1300()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1248
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$4;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1249
    :try_start_18
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$4;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string/jumbo v4, "key"
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_5a

    move-object/from16 v5, p2

    :try_start_1f
    invoke-virtual {v5, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    .line 1250
    .local v0, "record":Lcom/android/server/notification/NotificationRecord;
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_5f

    .line 1251
    if-eqz v0, :cond_63

    .line 1252
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$4;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v7

    iget-object v3, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v8

    iget-object v3, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1253
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v3, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v10

    iget-object v3, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1254
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v11

    const/4 v12, 0x0

    const/16 v13, 0x40

    const/4 v14, 0x1

    .line 1255
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v15

    const/16 v16, 0x13

    const/16 v17, 0x0

    .line 1252
    invoke-virtual/range {v6 .. v17}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    goto :goto_63

    .line 1250
    .end local v0  # "record":Lcom/android/server/notification/NotificationRecord;
    :catchall_5a
    move-exception v0

    move-object/from16 v5, p2

    :goto_5d
    :try_start_5d
    monitor-exit v3
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5f

    throw v0

    :catchall_5f
    move-exception v0

    goto :goto_5d

    .line 1246
    :cond_61
    move-object/from16 v5, p2

    .line 1259
    :cond_63
    :goto_63
    return-void
.end method
