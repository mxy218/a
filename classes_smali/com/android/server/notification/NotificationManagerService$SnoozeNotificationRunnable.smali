.class public Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;
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
    name = "SnoozeNotificationRunnable"
.end annotation


# instance fields
.field private final mDuration:J

.field private final mKey:Ljava/lang/String;

.field private final mSnoozeCriterionId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;JLjava/lang/String;)V
    .registers 6
    .param p1, "this$0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "key"  # Ljava/lang/String;
    .param p3, "duration"  # J
    .param p5, "snoozeCriterionId"  # Ljava/lang/String;

    .line 5513
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5514
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mKey:Ljava/lang/String;

    .line 5515
    iput-wide p3, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mDuration:J

    .line 5516
    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mSnoozeCriterionId:Ljava/lang/String;

    .line 5517
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 5521
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5522
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mKey:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v1

    .line 5523
    .local v1, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v1, :cond_12

    .line 5524
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->snoozeLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 5526
    .end local v1  # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_12
    monitor-exit v0

    .line 5527
    return-void

    .line 5526
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v1
.end method

.method snoozeLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 6
    .param p1, "r"  # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 5531
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 5532
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 5533
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    .line 5532
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->findGroupNotificationsLocked(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 5534
    .local v0, "groupNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 5536
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3d

    .line 5537
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->snoozeNotificationLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 5536
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .end local v1  # "i":I
    :cond_3d
    goto :goto_70

    .line 5542
    :cond_3e
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 5543
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_59

    .line 5544
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->snoozeNotificationLocked(Lcom/android/server/notification/NotificationRecord;)V

    goto :goto_70

    .line 5547
    :cond_59
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_5a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6c

    .line 5548
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->snoozeNotificationLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 5547
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .end local v1  # "i":I
    :cond_6c
    goto :goto_70

    .line 5552
    :cond_6d
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->snoozeNotificationLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 5555
    .end local v0  # "groupNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    :goto_70
    goto :goto_74

    .line 5557
    :cond_71
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->snoozeNotificationLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 5559
    :goto_74
    return-void
.end method

.method snoozeNotificationLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 9
    .param p1, "r"  # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 5563
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v0

    .line 5564
    const/16 v1, 0x33f

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 5565
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mDuration:J

    .line 5567
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 5566
    const/16 v2, 0x473

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 5569
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mSnoozeCriterionId:Ljava/lang/String;

    if-nez v1, :cond_21

    const/4 v1, 0x0

    goto :goto_22

    :cond_21
    const/4 v1, 0x1

    :goto_22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 5568
    const/16 v2, 0x340

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 5563
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 5570
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->reportUserInteraction(Lcom/android/server/notification/NotificationRecord;)V

    .line 5571
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$7000(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    .line 5572
    .local v0, "wasPosted":Z
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x0

    const/16 v4, 0x12

    const/4 v6, 0x0

    move-object v2, p1

    move v5, v0

    invoke-static/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService;->access$7100(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;)V

    .line 5573
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 5574
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mSnoozeCriterionId:Ljava/lang/String;

    if-eqz v1, :cond_65

    .line 5575
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mSnoozeCriterionId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->access$7200(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    .line 5576
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$4300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SnoozeHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/notification/SnoozeHelper;->snooze(Lcom/android/server/notification/NotificationRecord;)V

    goto :goto_70

    .line 5578
    :cond_65
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$4300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SnoozeHelper;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mDuration:J

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/notification/SnoozeHelper;->snooze(Lcom/android/server/notification/NotificationRecord;J)V

    .line 5580
    :goto_70
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->recordSnoozed()V

    .line 5581
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 5582
    return-void
.end method
