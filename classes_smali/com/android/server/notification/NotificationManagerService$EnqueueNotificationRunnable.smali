.class public Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EnqueueNotificationRunnable"
.end annotation


# instance fields
.field private final r:Lcom/android/server/notification/NotificationRecord;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field private final userId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;)V
    .registers 4

    .line 5527
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5528
    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->userId:I

    .line 5529
    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    .line 5530
    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 5534
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5535
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5536
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationManagerService;->scheduleTimeoutLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 5538
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    iget-object v1, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 5539
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v2, :cond_37

    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EnqueueNotificationRunnable.run for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5540
    :cond_37
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 5541
    if-eqz v2, :cond_4c

    .line 5543
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v3, v2}, Lcom/android/server/notification/NotificationRecord;->copyRankingInformation(Lcom/android/server/notification/NotificationRecord;)V

    .line 5546
    :cond_4c
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v3

    .line 5547
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v4

    .line 5548
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    .line 5549
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 5550
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    .line 5551
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v8

    .line 5554
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-static {v9, v10, v6, v3, v2}, Lcom/android/server/notification/NotificationManagerService;->access$7300(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;ILcom/android/server/notification/NotificationRecord;)V

    .line 5558
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-static {v9, v10, v2, v3, v4}, Lcom/android/server/notification/NotificationManagerService;->access$7400(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V

    .line 5561
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v9

    if-eqz v9, :cond_91

    invoke-virtual {v5}, Landroid/app/Notification;->isGroupChild()Z

    move-result v9

    if-eqz v9, :cond_91

    .line 5562
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v9}, Lcom/android/server/notification/NotificationManagerService;->access$4100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SnoozeHelper;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v10}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v10

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v6, v10, v1}, Lcom/android/server/notification/SnoozeHelper;->repostGroupSummary(Ljava/lang/String;ILjava/lang/String;)V

    .line 5567
    :cond_91
    const-string v1, "com.android.providers.downloads"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a2

    const-string v1, "DownloadManager"

    const/4 v9, 0x2

    .line 5568
    invoke-static {v1, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 5569
    :cond_a2
    const/4 v1, 0x0

    .line 5570
    if-eqz v2, :cond_a8

    .line 5571
    const/4 v1, 0x1

    move v9, v1

    goto :goto_a9

    .line 5570
    :cond_a8
    move v9, v1

    .line 5573
    :goto_a9
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->userId:I

    .line 5574
    invoke-virtual {v5}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v10

    .line 5573
    move v2, v3

    move v3, v4

    move-object v4, v6

    move v5, v7

    move-object v6, v8

    move v7, v1

    move-object v8, v10

    invoke-static/range {v2 .. v9}, Lcom/android/server/EventLogTags;->writeNotificationEnqueue(IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V

    .line 5579
    :cond_b9
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_e9

    .line 5580
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-static {v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->access$7500(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/NotificationRecord;)V

    .line 5581
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$2100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v1

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_ff

    .line 5584
    :cond_e9
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$2100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v1

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 5586
    :goto_ff
    monitor-exit v0

    .line 5587
    return-void

    .line 5586
    :catchall_101
    move-exception v1

    monitor-exit v0
    :try_end_103
    .catchall {:try_start_5 .. :try_end_103} :catchall_101

    throw v1
.end method
