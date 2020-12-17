.class Lcom/android/server/notification/NotificationManagerService$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/android/server/notification/NotificationDelegate;


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

    .line 771
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEffects()V
    .registers 4

    .line 917
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 918
    :try_start_5
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_10

    const-string v1, "NotificationService"

    const-string v2, "clearEffects"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_10
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$500(Lcom/android/server/notification/NotificationManagerService;)V

    .line 920
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$600(Lcom/android/server/notification/NotificationManagerService;)V

    .line 921
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$700(Lcom/android/server/notification/NotificationManagerService;)V

    .line 922
    monitor-exit v0

    .line 923
    return-void

    .line 922
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public synthetic lambda$onNotificationError$0$NotificationManagerService$1(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 15
    .param p1, "uid"  # I
    .param p2, "initialPid"  # I
    .param p3, "pkg"  # Ljava/lang/String;
    .param p4, "tag"  # Ljava/lang/String;
    .param p5, "id"  # I
    .param p6, "message"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 939
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1000(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/IActivityManager;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad notification(tag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") posted from package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", crashing app(uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v5, -0x1

    const/4 v7, 0x1

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-interface/range {v1 .. v7}, Landroid/app/IActivityManager;->crashApplication(IILjava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method public onClearAll(III)V
    .registers 5
    .param p1, "callingUid"  # I
    .param p2, "callingPid"  # I
    .param p3, "userId"  # I

    .line 803
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/NotificationManagerService$1;->onClearAll(IIII)V

    .line 804
    return-void
.end method

.method public onClearAll(IIII)V
    .registers 14
    .param p1, "callingUid"  # I
    .param p2, "callingPid"  # I
    .param p3, "userId"  # I
    .param p4, "from"  # I

    .line 1141
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1142
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v2, p1

    move v3, p2

    move v4, p3

    move v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/notification/NotificationManagerService;->cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;ZI)V

    .line 1143
    monitor-exit v0

    .line 1144
    return-void

    .line 1143
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public onGroupChildRemoved(Ljava/lang/String;)V
    .registers 8
    .param p1, "pkgName"  # Ljava/lang/String;

    .line 1112
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "NotificationService"

    const/4 v3, 0x1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 1113
    .local v1, "record":Lcom/android/server/notification/NotificationRecord;
    iget-object v4, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    iget-object v4, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v4

    if-nez v4, :cond_50

    .line 1114
    iget-object v4, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v4, v4, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iput-boolean v3, v4, Landroid/service/notification/StatusBarNotification$Filter;->filterByUserBefore:Z

    .line 1115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGroupChildRemoved: GroupDebug,changeing mNotificationList,id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    .end local v1  # "record":Lcom/android/server/notification/NotificationRecord;
    :cond_50
    goto :goto_8

    .line 1118
    :cond_51
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_59
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 1119
    .restart local v1  # "record":Lcom/android/server/notification/NotificationRecord;
    iget-object v4, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9e

    iget-object v4, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v4

    if-nez v4, :cond_9e

    .line 1120
    iget-object v4, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v4, v4, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iput-boolean v3, v4, Landroid/service/notification/StatusBarNotification$Filter;->filterByUserBefore:Z

    .line 1121
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGroupChildRemoved: GroupDebug,changeing mEnqueuedNotifications,id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    .end local v1  # "record":Lcom/android/server/notification/NotificationRecord;
    :cond_9e
    goto :goto_59

    .line 1124
    :cond_9f
    return-void
.end method

.method public onNotificationActionClick(IILjava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V
    .registers 24
    .param p1, "callingUid"  # I
    .param p2, "callingPid"  # I
    .param p3, "key"  # Ljava/lang/String;
    .param p4, "actionIndex"  # I
    .param p5, "action"  # Landroid/app/Notification$Action;
    .param p6, "nv"  # Lcom/android/internal/statusbar/NotificationVisibility;
    .param p7, "generatedByAssistant"  # Z

    .line 843
    move-object/from16 v1, p0

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p6

    move/from16 v12, p7

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$200(Lcom/android/server/notification/NotificationManagerService;)V

    .line 844
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v13

    .line 845
    :try_start_14
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 846
    .local v0, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v0, :cond_38

    .line 847
    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No notification with key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    monitor-exit v13

    return-void

    .line 852
    :cond_38
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/notification/PreferencesHelper;->addPackageClickNumber(Lcom/android/server/notification/NotificationRecord;)V

    .line 855
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v14, v2

    .line 856
    .local v14, "now":J
    invoke-virtual {v0, v14, v15}, Lcom/android/server/notification/NotificationRecord;->getLogMaker(J)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x81

    .line 857
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v2

    const/4 v3, 0x4

    .line 858
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 859
    invoke-virtual {v2, v10}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x31e

    iget v4, v11, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    .line 860
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x573

    iget v4, v11, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    .line 861
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x641

    .line 863
    invoke-virtual/range {p5 .. p5}, Landroid/app/Notification$Action;->isContextual()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_7d

    move v4, v5

    goto :goto_7e

    :cond_7d
    move v4, v6

    :goto_7e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 862
    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x640

    .line 866
    if-eqz v12, :cond_8b

    goto :goto_8c

    :cond_8b
    move v5, v6

    :goto_8c
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 864
    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x65d

    iget-object v4, v11, Lcom/android/internal/statusbar/NotificationVisibility;->location:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    .line 868
    invoke-virtual {v4}, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->toMetricsEventEnum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 867
    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 856
    invoke-static {v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 870
    nop

    .line 871
    invoke-virtual {v0, v14, v15}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v4

    invoke-virtual {v0, v14, v15}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v5

    invoke-virtual {v0, v14, v15}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v6

    iget v7, v11, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    iget v8, v11, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    .line 870
    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static/range {v2 .. v8}, Lcom/android/server/EventLogTags;->writeNotificationActionClicked(Ljava/lang/String;IIIIII)V

    .line 873
    invoke-virtual/range {p6 .. p6}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    .line 874
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/notification/NotificationManagerService;->reportUserInteraction(Lcom/android/server/notification/NotificationRecord;)V

    .line 875
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;
    :try_end_cf
    .catchall {:try_start_14 .. :try_end_cf} :catchall_d6

    move-object/from16 v4, p5

    :try_start_d1
    invoke-virtual {v2, v3, v10, v4, v12}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantActionClicked(Landroid/service/notification/StatusBarNotification;ILandroid/app/Notification$Action;Z)V

    .line 877
    .end local v0  # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v14  # "now":J
    monitor-exit v13

    .line 878
    return-void

    .line 877
    :catchall_d6
    move-exception v0

    move-object/from16 v4, p5

    :goto_d9
    monitor-exit v13
    :try_end_da
    .catchall {:try_start_d1 .. :try_end_da} :catchall_db

    throw v0

    :catchall_db
    move-exception v0

    goto :goto_d9
.end method

.method public onNotificationBubbleChanged(Ljava/lang/String;Z)V
    .registers 10
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "isBubble"  # Z

    .line 1080
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1081
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 1082
    .local v1, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v1, :cond_3b

    .line 1083
    iget-object v2, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1084
    .local v2, "n":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v3

    .line 1085
    .local v3, "callingUid":I
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1086
    .local v4, "pkg":Ljava/lang/String;
    if-eqz p2, :cond_31

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v6, 0x0

    invoke-static {v5, v1, v4, v3, v6}, Lcom/android/server/notification/NotificationManagerService;->access$900(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;ILcom/android/server/notification/NotificationRecord;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 1088
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v6, v5, Landroid/app/Notification;->flags:I

    or-int/lit16 v6, v6, 0x1000

    iput v6, v5, Landroid/app/Notification;->flags:I

    goto :goto_3b

    .line 1090
    :cond_31
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v6, v5, Landroid/app/Notification;->flags:I

    and-int/lit16 v6, v6, -0x1001

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 1093
    .end local v1  # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v2  # "n":Landroid/service/notification/StatusBarNotification;
    .end local v3  # "callingUid":I
    .end local v4  # "pkg":Ljava/lang/String;
    :cond_3b
    :goto_3b
    monitor-exit v0

    .line 1094
    return-void

    .line 1093
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public onNotificationClear(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 32
    .param p1, "callingUid"  # I
    .param p2, "callingPid"  # I
    .param p3, "pkg"  # Ljava/lang/String;
    .param p4, "tag"  # Ljava/lang/String;
    .param p5, "id"  # I
    .param p6, "userId"  # I
    .param p7, "key"  # Ljava/lang/String;
    .param p8, "dismissalSurface"  # I
    .param p9, "dismissalSentiment"  # I
    .param p10, "nv"  # Lcom/android/internal/statusbar/NotificationVisibility;

    .line 886
    move-object/from16 v1, p0

    move-object/from16 v2, p10

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v3

    .line 887
    :try_start_9
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_50

    move-object/from16 v4, p7

    :try_start_f
    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_4e

    .line 888
    .local v0, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v0, :cond_24

    .line 889
    move/from16 v5, p8

    :try_start_19
    invoke-virtual {v0, v5}, Lcom/android/server/notification/NotificationRecord;->recordDismissalSurface(I)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_22

    .line 890
    move/from16 v6, p9

    :try_start_1e
    invoke-virtual {v0, v6}, Lcom/android/server/notification/NotificationRecord;->recordDismissalSentiment(I)V

    goto :goto_28

    .line 892
    .end local v0  # "r":Lcom/android/server/notification/NotificationRecord;
    :catchall_22
    move-exception v0

    goto :goto_55

    .line 888
    .restart local v0  # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_24
    move/from16 v5, p8

    move/from16 v6, p9

    .line 892
    .end local v0  # "r":Lcom/android/server/notification/NotificationRecord;
    :goto_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_59

    .line 893
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v13, 0x0

    const/16 v14, 0x42

    const/4 v15, 0x1

    const/16 v17, 0x2

    iget v0, v2, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    iget v3, v2, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    const/16 v20, 0x0

    move/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move/from16 v16, p6

    move/from16 v18, v0

    move/from16 v19, v3

    invoke-virtual/range {v7 .. v20}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 896
    invoke-virtual/range {p10 .. p10}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    .line 897
    return-void

    .line 892
    :catchall_4e
    move-exception v0

    goto :goto_53

    :catchall_50
    move-exception v0

    move-object/from16 v4, p7

    :goto_53
    move/from16 v5, p8

    :goto_55
    move/from16 v6, p9

    :goto_57
    :try_start_57
    monitor-exit v3
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_59

    throw v0

    :catchall_59
    move-exception v0

    goto :goto_57
.end method

.method public onNotificationClearForReason(IILjava/lang/String;Ljava/lang/String;III)V
    .registers 21
    .param p1, "callingUid"  # I
    .param p2, "callingPid"  # I
    .param p3, "pkg"  # Ljava/lang/String;
    .param p4, "tag"  # Ljava/lang/String;
    .param p5, "id"  # I
    .param p6, "userId"  # I
    .param p7, "reason"  # I

    .line 1100
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v7, 0x0

    const/16 v8, 0x42

    const/4 v9, 0x1

    const/4 v12, 0x0

    move v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 1103
    return-void
.end method

.method public onNotificationClick(IILjava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 32
    .param p1, "callingUid"  # I
    .param p2, "callingPid"  # I
    .param p3, "key"  # Ljava/lang/String;
    .param p4, "nv"  # Lcom/android/internal/statusbar/NotificationVisibility;

    .line 809
    move-object/from16 v1, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$200(Lcom/android/server/notification/NotificationManagerService;)V

    .line 810
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v10

    .line 811
    :try_start_10
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 812
    .local v0, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v0, :cond_34

    .line 813
    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No notification with key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    monitor-exit v10

    return-void

    .line 816
    :cond_34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v11, v2

    .line 817
    .local v11, "now":J
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getItemLogMaker()Landroid/metrics/LogMaker;

    move-result-object v2

    const/4 v3, 0x4

    .line 818
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x31e

    iget v4, v9, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    .line 819
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x573

    iget v4, v9, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    .line 820
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 817
    invoke-static {v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 821
    nop

    .line 822
    invoke-virtual {v0, v11, v12}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v3

    invoke-virtual {v0, v11, v12}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v4

    invoke-virtual {v0, v11, v12}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v5

    iget v6, v9, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    iget v7, v9, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    .line 821
    move-object/from16 v2, p3

    invoke-static/range {v2 .. v7}, Lcom/android/server/EventLogTags;->writeNotificationClicked(Ljava/lang/String;IIIII)V

    .line 826
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/notification/PreferencesHelper;->addPackageClickNumber(Lcom/android/server/notification/NotificationRecord;)V

    .line 829
    iget-object v2, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 830
    .local v2, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v13, v1, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v17

    .line 831
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v18

    const/16 v19, 0x10

    const/16 v20, 0x40

    const/16 v21, 0x0

    .line 832
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v22

    const/16 v23, 0x1

    iget v3, v9, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    iget v4, v9, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    const/16 v26, 0x0

    .line 830
    move/from16 v14, p1

    move/from16 v15, p2

    move/from16 v24, v3

    move/from16 v25, v4

    invoke-virtual/range {v13 .. v26}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 834
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    .line 835
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3, v0}, Lcom/android/server/notification/NotificationManagerService;->reportUserInteraction(Lcom/android/server/notification/NotificationRecord;)V

    .line 836
    .end local v0  # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v2  # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local v11  # "now":J
    monitor-exit v10

    .line 837
    return-void

    .line 836
    :catchall_b3
    move-exception v0

    monitor-exit v10
    :try_end_b5
    .catchall {:try_start_10 .. :try_end_b5} :catchall_b3

    throw v0
.end method

.method public onNotificationDirectReplied(Ljava/lang/String;)V
    .registers 7
    .param p1, "key"  # Ljava/lang/String;

    .line 1010
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$200(Lcom/android/server/notification/NotificationManagerService;)V

    .line 1011
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1012
    :try_start_a
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 1013
    .local v1, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v1, :cond_41

    .line 1014
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->recordDirectReplied()V

    .line 1015
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v3

    const/16 v4, 0x636

    .line 1016
    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v3

    const/4 v4, 0x4

    .line 1017
    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 1015
    invoke-virtual {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1018
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/notification/NotificationManagerService;->reportUserInteraction(Lcom/android/server/notification/NotificationRecord;)V

    .line 1019
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantNotificationDirectReplyLocked(Landroid/service/notification/StatusBarNotification;)V

    .line 1021
    .end local v1  # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_41
    monitor-exit v0

    .line 1022
    return-void

    .line 1021
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_a .. :try_end_45} :catchall_43

    throw v1
.end method

.method public onNotificationError(IILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .registers 32
    .param p1, "callingUid"  # I
    .param p2, "callingPid"  # I
    .param p3, "pkg"  # Ljava/lang/String;
    .param p4, "tag"  # Ljava/lang/String;
    .param p5, "id"  # I
    .param p6, "uid"  # I
    .param p7, "initialPid"  # I
    .param p8, "message"  # Ljava/lang/String;
    .param p9, "userId"  # I

    .line 929
    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 930
    :try_start_7
    iget-object v0, v9, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v8, p3

    move-object/from16 v7, p4

    move/from16 v6, p5

    move/from16 v5, p9

    invoke-virtual {v0, v8, v7, v6, v5}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    .line 931
    .local v0, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_23

    const/4 v2, 0x1

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    move v0, v2

    .line 932
    .local v0, "fgService":Z
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_5b

    .line 933
    iget-object v10, v9, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x4

    const/16 v21, 0x0

    move/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v15, p5

    move/from16 v19, p9

    invoke-virtual/range {v10 .. v21}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 935
    if-eqz v0, :cond_5a

    .line 938
    new-instance v10, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$1$xhbVsydQBNNW5m21WjLTPrHQojA;

    move-object v1, v10

    move-object/from16 v2, p0

    move/from16 v3, p6

    move/from16 v4, p7

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$1$xhbVsydQBNNW5m21WjLTPrHQojA;-><init>(Lcom/android/server/notification/NotificationManagerService$1;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v10}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 944
    :cond_5a
    return-void

    .line 932
    .end local v0  # "fgService":Z
    :catchall_5b
    move-exception v0

    :try_start_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v0
.end method

.method public onNotificationExpansionChanged(Ljava/lang/String;ZZI)V
    .registers 9
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "userAction"  # Z
    .param p3, "expanded"  # Z
    .param p4, "notificationLocation"  # I

    .line 985
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 986
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 987
    .local v1, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v1, :cond_4b

    .line 988
    iget-object v2, v1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onExpansionChanged(ZZ)V

    .line 991
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->hasBeenVisiblyExpanded()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 992
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2, v1, p4}, Lcom/android/server/notification/NotificationManagerService;->logSmartSuggestionsVisible(Lcom/android/server/notification/NotificationRecord;I)V

    .line 994
    :cond_21
    if-eqz p2, :cond_34

    .line 995
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getItemLogMaker()Landroid/metrics/LogMaker;

    move-result-object v2

    .line 996
    if-eqz p3, :cond_2b

    const/4 v3, 0x3

    goto :goto_2d

    .line 997
    :cond_2b
    const/16 v3, 0xe

    .line 996
    :goto_2d
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 995
    invoke-static {v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 999
    :cond_34
    if-eqz p3, :cond_40

    if-eqz p2, :cond_40

    .line 1000
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->recordExpanded()V

    .line 1001
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/notification/NotificationManagerService;->reportUserInteraction(Lcom/android/server/notification/NotificationRecord;)V

    .line 1003
    :cond_40
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2, v3, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantExpansionChangedLocked(Landroid/service/notification/StatusBarNotification;ZZ)V

    .line 1005
    .end local v1  # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_4b
    monitor-exit v0

    .line 1006
    return-void

    .line 1005
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_5 .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method public onNotificationSettingsViewed(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"  # Ljava/lang/String;

    .line 1070
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1071
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 1072
    .local v1, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v1, :cond_14

    .line 1073
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->recordViewedSettings()V

    .line 1075
    .end local v1  # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_14
    monitor-exit v0

    .line 1076
    return-void

    .line 1075
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public onNotificationSmartReplySent(Ljava/lang/String;ILjava/lang/CharSequence;IZ)V
    .registers 13
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "replyIndex"  # I
    .param p3, "reply"  # Ljava/lang/CharSequence;
    .param p4, "notificationLocation"  # I
    .param p5, "modifiedBeforeSending"  # Z

    .line 1042
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1043
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 1044
    .local v1, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v1, :cond_7c

    .line 1045
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x567

    .line 1046
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 1047
    invoke-virtual {v2, p2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x640

    .line 1050
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSuggestionsGeneratedByAssistant()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_2b

    move v4, v5

    goto :goto_2c

    :cond_2b
    move v4, v6

    :goto_2c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1048
    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x65d

    .line 1052
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1051
    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x66f

    .line 1055
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getEditChoicesBeforeSending()Z

    move-result v4

    if-eqz v4, :cond_48

    move v4, v5

    goto :goto_49

    :cond_48
    move v4, v6

    :goto_49
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1053
    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x670

    .line 1058
    if-eqz p5, :cond_56

    goto :goto_57

    :cond_56
    move v5, v6

    :goto_57
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1056
    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 1059
    .local v2, "logMaker":Landroid/metrics/LogMaker;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1061
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/notification/NotificationManagerService;->reportUserInteraction(Lcom/android/server/notification/NotificationRecord;)V

    .line 1062
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1063
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSuggestionsGeneratedByAssistant()Z

    move-result v5

    .line 1062
    invoke-virtual {v3, v4, p3, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantSuggestedReplySent(Landroid/service/notification/StatusBarNotification;Ljava/lang/CharSequence;Z)V

    .line 1065
    .end local v1  # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v2  # "logMaker":Landroid/metrics/LogMaker;
    :cond_7c
    monitor-exit v0

    .line 1066
    return-void

    .line 1065
    :catchall_7e
    move-exception v1

    monitor-exit v0
    :try_end_80
    .catchall {:try_start_5 .. :try_end_80} :catchall_7e

    throw v1
.end method

.method public onNotificationSmartSuggestionsAdded(Ljava/lang/String;IIZZ)V
    .registers 8
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "smartReplyCount"  # I
    .param p3, "smartActionCount"  # I
    .param p4, "generatedByAssistant"  # Z
    .param p5, "editBeforeSending"  # Z

    .line 1027
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1028
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 1029
    .local v1, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v1, :cond_1d

    .line 1030
    invoke-virtual {v1, p2}, Lcom/android/server/notification/NotificationRecord;->setNumSmartRepliesAdded(I)V

    .line 1031
    invoke-virtual {v1, p3}, Lcom/android/server/notification/NotificationRecord;->setNumSmartActionsAdded(I)V

    .line 1032
    invoke-virtual {v1, p4}, Lcom/android/server/notification/NotificationRecord;->setSuggestionsGeneratedByAssistant(Z)V

    .line 1033
    invoke-virtual {v1, p5}, Lcom/android/server/notification/NotificationRecord;->setEditChoicesBeforeSending(Z)V

    .line 1035
    .end local v1  # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_1d
    monitor-exit v0

    .line 1036
    return-void

    .line 1035
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public onNotificationUserFilter(Ljava/lang/String;Ljava/lang/String;III)V
    .registers 12
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "tag"  # Ljava/lang/String;
    .param p3, "id"  # I
    .param p4, "userId"  # I
    .param p5, "key"  # I

    .line 1107
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->updateNotificationUserFilter(Ljava/lang/String;Ljava/lang/String;III)V

    .line 1108
    return-void
.end method

.method public onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 12
    .param p1, "newlyVisibleKeys"  # [Lcom/android/internal/statusbar/NotificationVisibility;
    .param p2, "noLongerVisibleKeys"  # [Lcom/android/internal/statusbar/NotificationVisibility;

    .line 949
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 950
    :try_start_5
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_71

    aget-object v4, p1, v3

    .line 951
    .local v4, "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v6, v4, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 952
    .local v5, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v5, :cond_1b

    goto :goto_6e

    .line 953
    :cond_1b
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->isSeen()Z

    move-result v6

    if-nez v6, :cond_42

    .line 955
    sget-boolean v6, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v6, :cond_3d

    const-string v6, "NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Marking notification as visible "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :cond_3d
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/notification/NotificationManagerService;->reportSeen(Lcom/android/server/notification/NotificationRecord;)V

    .line 958
    :cond_42
    iget v6, v4, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    iget v7, v4, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    const/4 v8, 0x1

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/server/notification/NotificationRecord;->setVisibility(ZII)V

    .line 959
    iget-object v6, v4, Lcom/android/internal/statusbar/NotificationVisibility;->location:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    sget-object v7, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_FIRST_HEADS_UP:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    if-ne v6, v7, :cond_51

    goto :goto_52

    :cond_51
    move v8, v2

    :goto_52
    move v6, v8

    .line 963
    .local v6, "isHun":Z
    if-nez v6, :cond_5b

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->hasBeenVisiblyExpanded()Z

    move-result v7

    if-eqz v7, :cond_66

    .line 964
    :cond_5b
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v8, v4, Lcom/android/internal/statusbar/NotificationVisibility;->location:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    invoke-virtual {v8}, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->toMetricsEventEnum()I

    move-result v8

    invoke-virtual {v7, v5, v8}, Lcom/android/server/notification/NotificationManagerService;->logSmartSuggestionsVisible(Lcom/android/server/notification/NotificationRecord;I)V

    .line 966
    :cond_66
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v7, v5}, Lcom/android/server/notification/NotificationManagerService;->maybeRecordInterruptionLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 967
    invoke-virtual {v4}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    .line 950
    .end local v4  # "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v5  # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v6  # "isHun":Z
    :goto_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 973
    :cond_71
    array-length v1, p2

    move v3, v2

    :goto_73
    if-ge v3, v1, :cond_93

    aget-object v4, p2, v3

    .line 974
    .restart local v4  # "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v6, v4, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 975
    .restart local v5  # "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v5, :cond_86

    goto :goto_90

    .line 976
    :cond_86
    iget v6, v4, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    iget v7, v4, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    invoke-virtual {v5, v2, v6, v7}, Lcom/android/server/notification/NotificationRecord;->setVisibility(ZII)V

    .line 977
    invoke-virtual {v4}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    .line 973
    .end local v4  # "nv":Lcom/android/internal/statusbar/NotificationVisibility;
    .end local v5  # "r":Lcom/android/server/notification/NotificationRecord;
    :goto_90
    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    .line 979
    :cond_93
    monitor-exit v0

    .line 980
    return-void

    .line 979
    :catchall_95
    move-exception v1

    monitor-exit v0
    :try_end_97
    .catchall {:try_start_5 .. :try_end_97} :catchall_95

    throw v1
.end method

.method public onPanelHidden()V
    .registers 3

    .line 911
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x7f

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 912
    invoke-static {}, Lcom/android/server/EventLogTags;->writeNotificationPanelHidden()V

    .line 913
    return-void
.end method

.method public onPanelRevealed(ZI)V
    .registers 5
    .param p1, "clearEffects"  # Z
    .param p2, "items"  # I

    .line 901
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x7f

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 902
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "note_load"

    invoke-static {v0, v1, p2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 903
    invoke-static {p2}, Lcom/android/server/EventLogTags;->writeNotificationPanelRevealed(I)V

    .line 904
    if-eqz p1, :cond_1f

    .line 905
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$1;->clearEffects()V

    .line 907
    :cond_1f
    return-void
.end method

.method public onSetDisabled(I)V
    .registers 7
    .param p1, "status"  # I

    .line 775
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 776
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/high16 v2, 0x40000

    and-int/2addr v2, p1

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    invoke-static {v1, v2}, Lcom/android/server/notification/NotificationManagerService;->access$002(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 778
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/notification/NotificationManagerService;->access$100(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4f

    .line 780
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_51

    .line 782
    .local v1, "identity":J
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v3

    .line 783
    .local v3, "player":Landroid/media/IRingtonePlayer;
    if-eqz v3, :cond_2c

    .line 784
    invoke-interface {v3}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2c} :catch_35
    .catchall {:try_start_1f .. :try_end_2c} :catchall_30

    .line 788
    .end local v3  # "player":Landroid/media/IRingtonePlayer;
    :cond_2c
    :try_start_2c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_39

    :catchall_30
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/notification/NotificationManagerService$1;
    .end local p1  # "status":I
    throw v3

    .line 786
    .restart local p0  # "this":Lcom/android/server/notification/NotificationManagerService$1;
    .restart local p1  # "status":I
    :catch_35
    move-exception v3

    .line 788
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 789
    :goto_39
    nop

    .line 791
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_3e
    .catchall {:try_start_2c .. :try_end_3e} :catchall_51

    move-wide v1, v3

    .line 793
    :try_start_3f
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->cancel()V
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_4a

    .line 795
    :try_start_46
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 796
    goto :goto_4f

    .line 795
    :catchall_4a
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/notification/NotificationManagerService$1;
    .end local p1  # "status":I
    throw v3

    .line 798
    .end local v1  # "identity":J
    .restart local p0  # "this":Lcom/android/server/notification/NotificationManagerService$1;
    .restart local p1  # "status":I
    :cond_4f
    :goto_4f
    monitor-exit v0

    .line 799
    return-void

    .line 798
    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_46 .. :try_end_53} :catchall_51

    throw v1
.end method

.method public resetKeyguardPeriodNotifications()V
    .registers 5

    .line 1128
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 1129
    .local v1, "record":Lcom/android/server/notification/NotificationRecord;
    iget-object v3, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1130
    .local v3, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v3, v2}, Landroid/service/notification/StatusBarNotification;->setKeyguardPeriodNotification(Z)V

    .line 1131
    .end local v1  # "record":Lcom/android/server/notification/NotificationRecord;
    .end local v3  # "sbn":Landroid/service/notification/StatusBarNotification;
    goto :goto_8

    .line 1133
    :cond_1b
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 1134
    .restart local v1  # "record":Lcom/android/server/notification/NotificationRecord;
    iget-object v3, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1135
    .restart local v3  # "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v3, v2}, Landroid/service/notification/StatusBarNotification;->setKeyguardPeriodNotification(Z)V

    .line 1136
    .end local v1  # "record":Lcom/android/server/notification/NotificationRecord;
    .end local v3  # "sbn":Landroid/service/notification/StatusBarNotification;
    goto :goto_23

    .line 1137
    :cond_35
    return-void
.end method
