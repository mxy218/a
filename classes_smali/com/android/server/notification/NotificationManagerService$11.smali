.class Lcom/android/server/notification/NotificationManagerService$11;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/android/server/notification/NotificationManagerInternal;


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

    .line 4885
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private removeForegroundServiceFlagLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 5
    .param p1, "r"  # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 4927
    if-nez p1, :cond_3

    .line 4928
    return-void

    .line 4930
    :cond_3
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 4935
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v2, p1, Lcom/android/server/notification/NotificationRecord;->mOriginalFlags:I

    and-int/lit8 v2, v2, -0x41

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 4937
    return-void
.end method


# virtual methods
.method public enqueueNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;I)V
    .registers 19
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "opPkg"  # Ljava/lang/String;
    .param p3, "callingUid"  # I
    .param p4, "callingPid"  # I
    .param p5, "tag"  # Ljava/lang/String;
    .param p6, "id"  # I
    .param p7, "notification"  # Landroid/app/Notification;
    .param p8, "userId"  # I

    .line 4895
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/notification/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;I)V

    .line 4897
    return-void
.end method

.method public getNotificationChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;
    .registers 6
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "channelId"  # Ljava/lang/String;

    .line 4889
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$removeForegroundServiceFlagFromNotification$0$NotificationManagerService$11(Ljava/lang/String;II)V
    .registers 12
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "notificationId"  # I
    .param p3, "userId"  # I

    .line 4904
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4907
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object v3, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService;->access$6800(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    .line 4909
    .local v1, "enqueued":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    .line 4910
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    invoke-direct {p0, v3}, Lcom/android/server/notification/NotificationManagerService$11;->removeForegroundServiceFlagLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 4909
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 4914
    .end local v2  # "i":I
    :cond_26
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    move-object v4, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v2 .. v7}, Lcom/android/server/notification/NotificationManagerService;->access$6900(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v2

    .line 4916
    .local v2, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v2, :cond_4f

    .line 4917
    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService$11;->removeForegroundServiceFlagLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 4918
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$6100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 4919
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, v2, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    .line 4921
    .end local v1  # "enqueued":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v2  # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_4f
    monitor-exit v0

    .line 4922
    return-void

    .line 4921
    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_5 .. :try_end_53} :catchall_51

    throw v1
.end method

.method public removeForegroundServiceFlagFromNotification(Ljava/lang/String;II)V
    .registers 6
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "notificationId"  # I
    .param p3, "userId"  # I

    .line 4902
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3900(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4903
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$2100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v0

    new-instance v1, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$11$zVdn9N0ybkMxz8xM8Qa1AXowlic;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$11$zVdn9N0ybkMxz8xM8Qa1AXowlic;-><init>(Lcom/android/server/notification/NotificationManagerService$11;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 4923
    return-void
.end method
