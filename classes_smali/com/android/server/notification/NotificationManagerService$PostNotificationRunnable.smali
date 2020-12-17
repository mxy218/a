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
    .param p1, "this$0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "key"  # Ljava/lang/String;

    .line 5757
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5758
    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    .line 5759
    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 5763
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5765
    const/4 v1, 0x0

    .line 5766
    .local v1, "r":Lcom/android/server/notification/NotificationRecord;
    :try_start_6
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5767
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_2c

    .line 5768
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 5769
    .local v4, "enqueued":Lcom/android/server/notification/NotificationRecord;
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 5770
    move-object v1, v4

    .line 5771
    goto :goto_2c

    .line 5767
    .end local v4  # "enqueued":Lcom/android/server/notification/NotificationRecord;
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 5774
    .end local v3  # "i":I
    :cond_2c
    :goto_2c
    if-nez v1, :cond_74

    .line 5775
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find enqueued record for key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catchall {:try_start_6 .. :try_end_46} :catchall_27c

    .line 5875
    :try_start_46
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5876
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4f
    if-ge v4, v3, :cond_72

    .line 5877
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 5878
    .local v5, "enqueued":Lcom/android/server/notification/NotificationRecord;
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 5879
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5880
    goto :goto_72

    .line 5876
    .end local v5  # "enqueued":Lcom/android/server/notification/NotificationRecord;
    :cond_6f
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    .line 5883
    .end local v3  # "N":I
    .end local v4  # "i":I
    :cond_72
    :goto_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_46 .. :try_end_73} :catchall_2aa

    .line 5776
    return-void

    .line 5779
    :cond_74
    :try_start_74
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3, v1}, Lcom/android/server/notification/NotificationManagerService;->access$7900(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 5780
    const-string v3, "NotificationService"

    const-string/jumbo v4, "notification blocked by assistant request"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_74 .. :try_end_84} :catchall_27c

    .line 5875
    :try_start_84
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5876
    .restart local v3  # "N":I
    const/4 v4, 0x0

    .restart local v4  # "i":I
    :goto_8d
    if-ge v4, v3, :cond_b0

    .line 5877
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 5878
    .restart local v5  # "enqueued":Lcom/android/server/notification/NotificationRecord;
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ad

    .line 5879
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5880
    goto :goto_b0

    .line 5876
    .end local v5  # "enqueued":Lcom/android/server/notification/NotificationRecord;
    :cond_ad
    add-int/lit8 v4, v4, 0x1

    goto :goto_8d

    .line 5883
    .end local v3  # "N":I
    .end local v4  # "i":I
    :cond_b0
    :goto_b0
    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_84 .. :try_end_b1} :catchall_2aa

    .line 5781
    return-void

    .line 5784
    :cond_b2
    :try_start_b2
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 5785
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->isPackagePausedOrSuspended(Ljava/lang/String;I)Z

    move-result v3

    .line 5786
    .local v3, "isPackageSuspended":Z
    invoke-virtual {v1, v3}, Lcom/android/server/notification/NotificationRecord;->setHidden(Z)V

    .line 5787
    if-eqz v3, :cond_d0

    .line 5788
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$7300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/notification/NotificationUsageStats;->registerSuspendedByAdmin(Lcom/android/server/notification/NotificationRecord;)V

    .line 5790
    :cond_d0
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 5791
    .local v4, "old":Lcom/android/server/notification/NotificationRecord;
    iget-object v5, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 5794
    .local v5, "n":Landroid/service/notification/StatusBarNotification;
    const-string/jumbo v6, "trust"

    .line 5795
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 5794
    invoke-static {v6}, Landroid/app/trust/ITrustManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;

    move-result-object v6

    .line 5797
    .local v6, "trustManager":Landroid/app/trust/ITrustManager;
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->access$8000(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/KeyguardManager;

    move-result-object v7

    if-nez v7, :cond_107

    if-eqz v6, :cond_107

    .line 5798
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v8}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "keyguard"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/KeyguardManager;

    invoke-static {v7, v8}, Lcom/android/server/notification/NotificationManagerService;->access$8002(Lcom/android/server/notification/NotificationManagerService;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;

    .line 5801
    :cond_107
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->access$8000(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/KeyguardManager;

    move-result-object v7

    if-eqz v7, :cond_11a

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->access$8000(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/KeyguardManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v7

    goto :goto_11b

    :cond_11a
    const/4 v7, 0x0

    :goto_11b
    invoke-virtual {v5, v7}, Landroid/service/notification/StatusBarNotification;->setKeyguardPeriodNotification(Z)V

    .line 5804
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    .line 5805
    .local v7, "notification":Landroid/app/Notification;
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/notification/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;)I

    move-result v8

    .line 5806
    .local v8, "index":I
    const/4 v9, 0x0

    if-gez v8, :cond_149

    .line 5807
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v10, v10, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5808
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->access$7300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/android/server/notification/NotificationUsageStats;->registerPostedByApp(Lcom/android/server/notification/NotificationRecord;)V

    .line 5809
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v10, v9, v1}, Lcom/android/server/notification/NotificationManagerService;->isVisuallyInterruptive(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v10

    invoke-virtual {v1, v10}, Lcom/android/server/notification/NotificationRecord;->setInterruptive(Z)V

    goto :goto_17d

    .line 5811
    :cond_149
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v10, v10, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/notification/NotificationRecord;

    move-object v4, v10

    .line 5812
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v10, v10, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v10, v8, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 5813
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->access$7300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v10

    invoke-virtual {v10, v1, v4}, Lcom/android/server/notification/NotificationUsageStats;->registerUpdatedByApp(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    .line 5815
    iget v10, v7, Landroid/app/Notification;->flags:I

    .line 5816
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v11

    iget v11, v11, Landroid/app/Notification;->flags:I

    and-int/lit8 v11, v11, 0x40

    or-int/2addr v10, v11

    iput v10, v7, Landroid/app/Notification;->flags:I

    .line 5817
    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    .line 5818
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v10, v4, v1}, Lcom/android/server/notification/NotificationManagerService;->isVisuallyInterruptive(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v10

    invoke-virtual {v1, v10}, Lcom/android/server/notification/NotificationRecord;->setTextChanged(Z)V

    .line 5821
    :goto_17d
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v10, v10, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5825
    iget v10, v7, Landroid/app/Notification;->flags:I

    and-int/lit8 v10, v10, 0x40

    if-eqz v10, :cond_194

    .line 5826
    iget v10, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x22

    iput v10, v7, Landroid/app/Notification;->flags:I

    .line 5830
    :cond_194
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->access$6100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    .line 5831
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->access$6100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v11, v11, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 5833
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->isHidden()Z

    move-result v10

    if-nez v10, :cond_1b5

    .line 5834
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v10, v1}, Lcom/android/server/notification/NotificationManagerService;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 5837
    :cond_1b5
    invoke-virtual {v7}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v10

    if-eqz v10, :cond_1f6

    iget v10, v7, Landroid/app/Notification;->flags:I

    const/high16 v11, 0x10000000

    and-int/2addr v10, v11

    if-nez v10, :cond_1f6

    .line 5842
    if-eqz v4, :cond_1c6

    iget-object v9, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 5843
    .local v9, "oldSbn":Landroid/service/notification/StatusBarNotification;
    :cond_1c6
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v10

    invoke-virtual {v10, v1, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    .line 5844
    if-eqz v9, :cond_1df

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getGroup()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1f5

    :cond_1df
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 5845
    invoke-static {v10, v1}, Lcom/android/server/notification/NotificationManagerService;->access$8100(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v10

    if-nez v10, :cond_1f5

    .line 5846
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->access$2100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v10

    new-instance v11, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$1;

    invoke-direct {v11, p0, v5}, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$1;-><init>(Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v10, v11}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 5854
    .end local v9  # "oldSbn":Landroid/service/notification/StatusBarNotification;
    :cond_1f5
    goto :goto_248

    .line 5855
    :cond_1f6
    const-string v9, "NotificationService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Not posting notification without small icon: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5856
    if-eqz v4, :cond_22e

    iget-boolean v9, v4, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    if-nez v9, :cond_22e

    .line 5857
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v9}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v9

    const/4 v10, 0x4

    .line 5858
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getStats()Landroid/service/notification/NotificationStats;

    move-result-object v11

    .line 5857
    invoke-virtual {v9, v1, v10, v11}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Lcom/android/server/notification/NotificationRecord;ILandroid/service/notification/NotificationStats;)V

    .line 5859
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v9}, Lcom/android/server/notification/NotificationManagerService;->access$2100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v9

    new-instance v10, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$2;

    invoke-direct {v10, p0, v5}, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable$2;-><init>(Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v9, v10}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 5869
    :cond_22e
    const-string v9, "NotificationService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WARNING: In a future release this will crash the app: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5870
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 5869
    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5873
    :goto_248
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v9, v1}, Lcom/android/server/notification/NotificationManagerService;->maybeRecordInterruptionLocked(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_24d
    .catchall {:try_start_b2 .. :try_end_24d} :catchall_27c

    .line 5875
    .end local v1  # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v2  # "N":I
    .end local v3  # "isPackageSuspended":Z
    .end local v4  # "old":Lcom/android/server/notification/NotificationRecord;
    .end local v5  # "n":Landroid/service/notification/StatusBarNotification;
    .end local v6  # "trustManager":Landroid/app/trust/ITrustManager;
    .end local v7  # "notification":Landroid/app/Notification;
    .end local v8  # "index":I
    :try_start_24d
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5876
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_256
    if-ge v2, v1, :cond_279

    .line 5877
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 5878
    .local v3, "enqueued":Lcom/android/server/notification/NotificationRecord;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_276

    .line 5879
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5880
    goto :goto_279

    .line 5876
    .end local v3  # "enqueued":Lcom/android/server/notification/NotificationRecord;
    :cond_276
    add-int/lit8 v2, v2, 0x1

    goto :goto_256

    .line 5883
    .end local v1  # "N":I
    .end local v2  # "i":I
    :cond_279
    :goto_279
    nop

    .line 5884
    monitor-exit v0

    .line 5885
    return-void

    .line 5875
    :catchall_27c
    move-exception v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5876
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_286
    if-ge v3, v2, :cond_2a8

    .line 5877
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 5878
    .local v4, "enqueued":Lcom/android/server/notification/NotificationRecord;
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->key:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2a1

    .line 5876
    .end local v4  # "enqueued":Lcom/android/server/notification/NotificationRecord;
    add-int/lit8 v3, v3, 0x1

    goto :goto_286

    .line 5879
    .restart local v4  # "enqueued":Lcom/android/server/notification/NotificationRecord;
    :cond_2a1
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5883
    .end local v2  # "N":I
    .end local v3  # "i":I
    .end local v4  # "enqueued":Lcom/android/server/notification/NotificationRecord;
    :cond_2a8
    nop

    .end local p0  # "this":Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;
    throw v1

    .line 5884
    .restart local p0  # "this":Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;
    :catchall_2aa
    move-exception v1

    monitor-exit v0
    :try_end_2ac
    .catchall {:try_start_24d .. :try_end_2ac} :catchall_2aa

    throw v1
.end method
