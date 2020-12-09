.class public Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;
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
    name = "PostNotificationRunnable"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .registers 3

    .line 5608
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5609
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    .line 5610
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 5614
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5616
    nop

    .line 5617
    const/4 v1, 0x0

    :try_start_7
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5618
    move v3, v1

    :goto_10
    const/4 v4, 0x0

    if-ge v3, v2, :cond_2e

    .line 5619
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 5620
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 5621
    nop

    .line 5622
    goto :goto_2f

    .line 5618
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_2e
    move-object v5, v4

    .line 5625
    :goto_2f
    if-nez v5, :cond_77

    .line 5626
    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find enqueued record for key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_7 .. :try_end_49} :catchall_239

    .line 5712
    :try_start_49
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5713
    nop

    :goto_52
    if-ge v1, v2, :cond_75

    .line 5714
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 5715
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    .line 5716
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5717
    goto :goto_75

    .line 5713
    :cond_72
    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    .line 5720
    :cond_75
    :goto_75
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_49 .. :try_end_76} :catchall_266

    .line 5627
    return-void

    .line 5630
    :cond_77
    :try_start_77
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2, v5}, Lcom/android/server/notification/NotificationManagerService;->access$7600(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 5631
    const-string v2, "NotificationService"

    const-string/jumbo v3, "notification blocked by assistant request"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catchall {:try_start_77 .. :try_end_87} :catchall_239

    .line 5712
    :try_start_87
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5713
    nop

    :goto_90
    if-ge v1, v2, :cond_b3

    .line 5714
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 5715
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 5716
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5717
    goto :goto_b3

    .line 5713
    :cond_b0
    add-int/lit8 v1, v1, 0x1

    goto :goto_90

    .line 5720
    :cond_b3
    :goto_b3
    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_87 .. :try_end_b4} :catchall_266

    .line 5632
    return-void

    .line 5635
    :cond_b5
    :try_start_b5
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 5636
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v6

    invoke-virtual {v2, v3, v6}, Lcom/android/server/notification/NotificationManagerService;->isPackagePausedOrSuspended(Ljava/lang/String;I)Z

    move-result v2

    .line 5637
    invoke-virtual {v5, v2}, Lcom/android/server/notification/NotificationRecord;->setHidden(Z)V

    .line 5638
    if-eqz v2, :cond_d3

    .line 5639
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$6500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/server/notification/NotificationUsageStats;->registerSuspendedByAdmin(Lcom/android/server/notification/NotificationRecord;)V

    .line 5641
    :cond_d3
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 5642
    iget-object v3, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 5643
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    .line 5644
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/notification/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;)I

    move-result v7

    .line 5645
    if-gez v7, :cond_10b

    .line 5646
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v7, v7, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5647
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->access$6500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/server/notification/NotificationUsageStats;->registerPostedByApp(Lcom/android/server/notification/NotificationRecord;)V

    .line 5648
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v7, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->isVisuallyInterruptive(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/server/notification/NotificationRecord;->setInterruptive(Z)V

    goto :goto_141

    .line 5650
    :cond_10b
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 5651
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v8, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5652
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->access$6500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v7

    invoke-virtual {v7, v5, v2}, Lcom/android/server/notification/NotificationUsageStats;->registerUpdatedByApp(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    .line 5654
    iget v7, v6, Landroid/app/Notification;->flags:I

    .line 5655
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget v8, v8, Landroid/app/Notification;->flags:I

    and-int/lit8 v8, v8, 0x40

    or-int/2addr v7, v8

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 5656
    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    .line 5657
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v7, v2, v5}, Lcom/android/server/notification/NotificationManagerService;->isVisuallyInterruptive(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v7

    .line 5658
    invoke-virtual {v5, v7}, Lcom/android/server/notification/NotificationRecord;->setTextChanged(Z)V

    .line 5659
    invoke-virtual {v5, v7}, Lcom/android/server/notification/NotificationRecord;->setInterruptive(Z)V

    .line 5662
    :goto_141
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v7, v7, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5666
    iget v7, v6, Landroid/app/Notification;->flags:I

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_158

    .line 5667
    iget v7, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x22

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 5671
    :cond_158
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->access$5900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    .line 5672
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->access$5900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v8, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 5674
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->isHidden()Z

    move-result v7

    if-nez v7, :cond_179

    .line 5675
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v7, v5}, Lcom/android/server/notification/NotificationManagerService;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 5678
    :cond_179
    invoke-virtual {v6}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v7

    if-eqz v7, :cond_1b3

    .line 5679
    if-eqz v2, :cond_183

    iget-object v4, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 5680
    :cond_183
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    .line 5681
    if-eqz v4, :cond_19c

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b2

    :cond_19c
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 5682
    invoke-static {v2, v5}, Lcom/android/server/notification/NotificationManagerService;->access$7700(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v2

    if-nez v2, :cond_1b2

    .line 5683
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$2100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v2

    new-instance v4, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$1;

    invoke-direct {v4, p0, v3}, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$1;-><init>(Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v2, v4}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 5691
    :cond_1b2
    goto :goto_205

    .line 5692
    :cond_1b3
    const-string v4, "NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not posting notification without small icon: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5693
    if-eqz v2, :cond_1eb

    iget-boolean v2, v2, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    if-nez v2, :cond_1eb

    .line 5694
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v2

    const/4 v4, 0x4

    .line 5695
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getStats()Landroid/service/notification/NotificationStats;

    move-result-object v6

    .line 5694
    invoke-virtual {v2, v5, v4, v6}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Lcom/android/server/notification/NotificationRecord;ILandroid/service/notification/NotificationStats;)V

    .line 5696
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$2100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v2

    new-instance v4, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$2;

    invoke-direct {v4, p0, v3}, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$2;-><init>(Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v2, v4}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 5706
    :cond_1eb
    const-string v2, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING: In a future release this will crash the app: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5707
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5706
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5710
    :goto_205
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2, v5}, Lcom/android/server/notification/NotificationManagerService;->maybeRecordInterruptionLocked(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_20a
    .catchall {:try_start_b5 .. :try_end_20a} :catchall_239

    .line 5712
    :try_start_20a
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5713
    nop

    :goto_213
    if-ge v1, v2, :cond_236

    .line 5714
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 5715
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_233

    .line 5716
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5717
    goto :goto_236

    .line 5713
    :cond_233
    add-int/lit8 v1, v1, 0x1

    goto :goto_213

    .line 5720
    :cond_236
    :goto_236
    nop

    .line 5721
    monitor-exit v0

    .line 5722
    return-void

    .line 5712
    :catchall_239
    move-exception v2

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5713
    nop

    :goto_243
    if-ge v1, v3, :cond_265

    .line 5714
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 5715
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25e

    .line 5713
    add-int/lit8 v1, v1, 0x1

    goto :goto_243

    .line 5716
    :cond_25e
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5720
    :cond_265
    throw v2

    .line 5721
    :catchall_266
    move-exception v1

    monitor-exit v0
    :try_end_268
    .catchall {:try_start_20a .. :try_end_268} :catchall_266

    throw v1
.end method
