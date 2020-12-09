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

    .line 768
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearEffects()V
    .registers 4

    .line 908
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 909
    :try_start_5
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_10

    const-string v1, "NotificationService"

    const-string v2, "clearEffects"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    :cond_10
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$700(Lcom/android/server/notification/NotificationManagerService;)V

    .line 911
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)V

    .line 912
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$900(Lcom/android/server/notification/NotificationManagerService;)V

    .line 913
    monitor-exit v0

    .line 914
    return-void

    .line 913
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public synthetic lambda$onNotificationError$0$NotificationManagerService$1(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 930
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1200(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/IActivityManager;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad notification(tag="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", id="

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ") posted from package "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", crashing app(uid="

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", pid="

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "): "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .registers 12

    .line 800
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 801
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService;->cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V

    .line 803
    monitor-exit v0

    .line 804
    return-void

    .line 803
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public onNotificationActionClick(IILjava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V
    .registers 22

    .line 839
    move-object v0, p0

    move-object/from16 v1, p3

    move/from16 v8, p4

    move-object/from16 v9, p6

    move/from16 v10, p7

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$500(Lcom/android/server/notification/NotificationManagerService;)V

    .line 840
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v11, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v11

    .line 841
    :try_start_13
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/android/server/notification/NotificationRecord;

    .line 842
    if-nez v12, :cond_38

    .line 843
    const-string v0, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No notification with key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    monitor-exit v11

    return-void

    .line 846
    :cond_38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 847
    invoke-virtual {v12, v2, v3}, Lcom/android/server/notification/NotificationRecord;->getLogMaker(J)Landroid/metrics/LogMaker;

    move-result-object v4

    const/16 v5, 0x81

    .line 848
    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v4

    const/4 v5, 0x4

    .line 849
    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 850
    invoke-virtual {v4, v8}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v4

    const/16 v5, 0x31e

    iget v6, v9, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    .line 851
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v4

    const/16 v5, 0x573

    iget v6, v9, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    .line 852
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v4

    const/16 v5, 0x641

    .line 854
    invoke-virtual/range {p5 .. p5}, Landroid/app/Notification$Action;->isContextual()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v13, 0x0

    if-eqz v6, :cond_73

    move v6, v7

    goto :goto_74

    :cond_73
    move v6, v13

    :goto_74
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 853
    invoke-virtual {v4, v5, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v4

    const/16 v5, 0x640

    .line 857
    if-eqz v10, :cond_81

    move v13, v7

    :cond_81
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 855
    invoke-virtual {v4, v5, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v4

    const/16 v5, 0x65d

    iget-object v6, v9, Lcom/android/internal/statusbar/NotificationVisibility;->location:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    .line 859
    invoke-virtual {v6}, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->toMetricsEventEnum()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 858
    invoke-virtual {v4, v5, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 847
    invoke-static {v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 861
    nop

    .line 862
    invoke-virtual {v12, v2, v3}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v4

    invoke-virtual {v12, v2, v3}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v5

    invoke-virtual {v12, v2, v3}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v6

    iget v7, v9, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    iget v13, v9, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    .line 861
    move-object/from16 v1, p3

    move/from16 v2, p4

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v13

    invoke-static/range {v1 .. v7}, Lcom/android/server/EventLogTags;->writeNotificationActionClicked(Ljava/lang/String;IIIIII)V

    .line 864
    invoke-virtual/range {p6 .. p6}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    .line 865
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1, v12}, Lcom/android/server/notification/NotificationManagerService;->reportUserInteraction(Lcom/android/server/notification/NotificationRecord;)V

    .line 866
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v0

    iget-object v1, v12, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v8, v2, v10}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantActionClicked(Landroid/service/notification/StatusBarNotification;ILandroid/app/Notification$Action;Z)V

    .line 868
    monitor-exit v11

    .line 869
    return-void

    .line 868
    :catchall_d0
    move-exception v0

    monitor-exit v11
    :try_end_d2
    .catchall {:try_start_13 .. :try_end_d2} :catchall_d0

    throw v0
.end method

.method public onNotificationBubbleChanged(Ljava/lang/String;Z)V
    .registers 7

    .line 1071
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1072
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    .line 1073
    if-eqz p1, :cond_3b

    .line 1074
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1075
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v2

    .line 1076
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1077
    if-eqz p2, :cond_31

    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x0

    invoke-static {p2, p1, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;ILcom/android/server/notification/NotificationRecord;)Z

    move-result p2

    if-eqz p2, :cond_31

    .line 1079
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget p2, p1, Landroid/app/Notification;->flags:I

    or-int/lit16 p2, p2, 0x1000

    iput p2, p1, Landroid/app/Notification;->flags:I

    goto :goto_3b

    .line 1081
    :cond_31
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget p2, p1, Landroid/app/Notification;->flags:I

    and-int/lit16 p2, p2, -0x1001

    iput p2, p1, Landroid/app/Notification;->flags:I

    .line 1084
    :cond_3b
    :goto_3b
    monitor-exit v0

    .line 1085
    return-void

    .line 1084
    :catchall_3d
    move-exception p1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method public onNotificationClear(IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 29

    .line 877
    move-object/from16 v0, p0

    move-object/from16 v1, p10

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 878
    :try_start_9
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    move-object/from16 v4, p7

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 879
    if-eqz v3, :cond_21

    .line 880
    move/from16 v4, p8

    invoke-virtual {v3, v4}, Lcom/android/server/notification/NotificationRecord;->recordDismissalSurface(I)V

    .line 881
    move/from16 v4, p9

    invoke-virtual {v3, v4}, Lcom/android/server/notification/NotificationRecord;->recordDismissalSentiment(I)V

    .line 883
    :cond_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_44

    .line 884
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v10, 0x0

    const/16 v11, 0x42

    const/4 v12, 0x1

    const/4 v14, 0x2

    iget v15, v1, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    iget v0, v1, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    const/16 v17, 0x0

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v13, p6

    move/from16 v16, v0

    invoke-virtual/range {v4 .. v17}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 887
    invoke-virtual/range {p10 .. p10}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    .line 888
    return-void

    .line 883
    :catchall_44
    move-exception v0

    :try_start_45
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v0
.end method

.method public onNotificationClick(IILjava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 29

    .line 809
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v7, p4

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$500(Lcom/android/server/notification/NotificationManagerService;)V

    .line 810
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v8, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v8

    .line 811
    :try_start_10
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/server/notification/NotificationRecord;

    .line 812
    if-nez v9, :cond_35

    .line 813
    const-string v0, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No notification with key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    monitor-exit v8

    return-void

    .line 816
    :cond_35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 817
    invoke-virtual {v9}, Lcom/android/server/notification/NotificationRecord;->getItemLogMaker()Landroid/metrics/LogMaker;

    move-result-object v4

    const/4 v5, 0x4

    .line 818
    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v4

    const/16 v5, 0x31e

    iget v6, v7, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    .line 819
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v4

    const/16 v5, 0x573

    iget v6, v7, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    .line 820
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 817
    invoke-static {v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 821
    nop

    .line 822
    invoke-virtual {v9, v2, v3}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v4

    invoke-virtual {v9, v2, v3}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v5

    invoke-virtual {v9, v2, v3}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v6

    iget v10, v7, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    iget v11, v7, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    .line 821
    move-object/from16 v1, p3

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v10

    move v6, v11

    invoke-static/range {v1 .. v6}, Lcom/android/server/EventLogTags;->writeNotificationClicked(Ljava/lang/String;IIIII)V

    .line 825
    iget-object v1, v9, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 826
    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v14

    .line 827
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v15

    const/16 v16, 0x10

    const/16 v17, 0x40

    const/16 v18, 0x0

    .line 828
    invoke-virtual {v9}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v19

    const/16 v20, 0x1

    iget v1, v7, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    iget v2, v7, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    const/16 v23, 0x0

    .line 826
    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v21, v1

    move/from16 v22, v2

    invoke-virtual/range {v10 .. v23}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 830
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    .line 831
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/notification/NotificationManagerService;->reportUserInteraction(Lcom/android/server/notification/NotificationRecord;)V

    .line 832
    monitor-exit v8

    .line 833
    return-void

    .line 832
    :catchall_af
    move-exception v0

    monitor-exit v8
    :try_end_b1
    .catchall {:try_start_10 .. :try_end_b1} :catchall_af

    throw v0
.end method

.method public onNotificationDirectReplied(Ljava/lang/String;)V
    .registers 6

    .line 1001
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$500(Lcom/android/server/notification/NotificationManagerService;)V

    .line 1002
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1003
    :try_start_a
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    .line 1004
    if-eqz p1, :cond_41

    .line 1005
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->recordDirectReplied()V

    .line 1006
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x636

    .line 1007
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v2

    const/4 v3, 0x4

    .line 1008
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 1006
    invoke-virtual {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1009
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService;->reportUserInteraction(Lcom/android/server/notification/NotificationRecord;)V

    .line 1010
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v1

    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantNotificationDirectReplyLocked(Landroid/service/notification/StatusBarNotification;)V

    .line 1012
    :cond_41
    monitor-exit v0

    .line 1013
    return-void

    .line 1012
    :catchall_43
    move-exception p1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_a .. :try_end_45} :catchall_43

    throw p1
.end method

.method public onNotificationError(IILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .registers 27

    .line 920
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 921
    :try_start_7
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v15, p3

    move-object/from16 v14, p4

    move/from16 v13, p5

    move/from16 v12, p9

    invoke-virtual {v2, v15, v14, v13, v12}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v2

    .line 922
    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_23

    const/4 v2, 0x1

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    .line 923
    :goto_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_59

    .line 924
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x4

    const/16 v16, 0x0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v12, p9

    move v13, v1

    move-object/from16 v14, v16

    invoke-virtual/range {v3 .. v14}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 926
    if-eqz v2, :cond_58

    .line 929
    new-instance v9, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$1$xhbVsydQBNNW5m21WjLTPrHQojA;

    move-object v1, v9

    move-object/from16 v2, p0

    move/from16 v3, p6

    move/from16 v4, p7

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$1$xhbVsydQBNNW5m21WjLTPrHQojA;-><init>(Lcom/android/server/notification/NotificationManagerService$1;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v9}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 935
    :cond_58
    return-void

    .line 923
    :catchall_59
    move-exception v0

    :try_start_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v0
.end method

.method public onNotificationExpansionChanged(Ljava/lang/String;ZZI)V
    .registers 7

    .line 976
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 977
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    .line 978
    if-eqz p1, :cond_4b

    .line 979
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onExpansionChanged(ZZ)V

    .line 982
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->hasBeenVisiblyExpanded()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 983
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1, p1, p4}, Lcom/android/server/notification/NotificationManagerService;->logSmartSuggestionsVisible(Lcom/android/server/notification/NotificationRecord;I)V

    .line 985
    :cond_21
    if-eqz p2, :cond_34

    .line 986
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getItemLogMaker()Landroid/metrics/LogMaker;

    move-result-object p4

    .line 987
    if-eqz p3, :cond_2b

    const/4 v1, 0x3

    goto :goto_2d

    .line 988
    :cond_2b
    const/16 v1, 0xe

    .line 987
    :goto_2d
    invoke-virtual {p4, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p4

    .line 986
    invoke-static {p4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 990
    :cond_34
    if-eqz p3, :cond_40

    if-eqz p2, :cond_40

    .line 991
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->recordExpanded()V

    .line 992
    iget-object p4, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p4, p1}, Lcom/android/server/notification/NotificationManagerService;->reportUserInteraction(Lcom/android/server/notification/NotificationRecord;)V

    .line 994
    :cond_40
    iget-object p4, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p4}, Lcom/android/server/notification/NotificationManagerService;->access$600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object p4

    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p4, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantExpansionChangedLocked(Landroid/service/notification/StatusBarNotification;ZZ)V

    .line 996
    :cond_4b
    monitor-exit v0

    .line 997
    return-void

    .line 996
    :catchall_4d
    move-exception p1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_5 .. :try_end_4f} :catchall_4d

    throw p1
.end method

.method public onNotificationSettingsViewed(Ljava/lang/String;)V
    .registers 4

    .line 1061
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1062
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    .line 1063
    if-eqz p1, :cond_14

    .line 1064
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->recordViewedSettings()V

    .line 1066
    :cond_14
    monitor-exit v0

    .line 1067
    return-void

    .line 1066
    :catchall_16
    move-exception p1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw p1
.end method

.method public onNotificationSmartReplySent(Ljava/lang/String;ILjava/lang/CharSequence;IZ)V
    .registers 11

    .line 1033
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1034
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    .line 1035
    if-eqz p1, :cond_7c

    .line 1036
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0x567

    .line 1037
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 1038
    invoke-virtual {v1, p2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p2

    const/16 v1, 0x640

    .line 1041
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSuggestionsGeneratedByAssistant()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2b

    move v2, v3

    goto :goto_2c

    :cond_2b
    move v2, v4

    :goto_2c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1039
    invoke-virtual {p2, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p2

    const/16 v1, 0x65d

    .line 1043
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 1042
    invoke-virtual {p2, v1, p4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p2

    const/16 p4, 0x66f

    .line 1046
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getEditChoicesBeforeSending()Z

    move-result v1

    if-eqz v1, :cond_48

    move v1, v3

    goto :goto_49

    :cond_48
    move v1, v4

    :goto_49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1044
    invoke-virtual {p2, p4, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p2

    const/16 p4, 0x670

    .line 1049
    if-eqz p5, :cond_56

    goto :goto_57

    :cond_56
    move v3, v4

    :goto_57
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    .line 1047
    invoke-virtual {p2, p4, p5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p2

    .line 1050
    iget-object p4, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p4}, Lcom/android/server/notification/NotificationManagerService;->access$1000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1052
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p2, p1}, Lcom/android/server/notification/NotificationManagerService;->reportUserInteraction(Lcom/android/server/notification/NotificationRecord;)V

    .line 1053
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p2}, Lcom/android/server/notification/NotificationManagerService;->access$600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object p2

    iget-object p4, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 1054
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSuggestionsGeneratedByAssistant()Z

    move-result p1

    .line 1053
    invoke-virtual {p2, p4, p3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantSuggestedReplySent(Landroid/service/notification/StatusBarNotification;Ljava/lang/CharSequence;Z)V

    .line 1056
    :cond_7c
    monitor-exit v0

    .line 1057
    return-void

    .line 1056
    :catchall_7e
    move-exception p1

    monitor-exit v0
    :try_end_80
    .catchall {:try_start_5 .. :try_end_80} :catchall_7e

    throw p1
.end method

.method public onNotificationSmartSuggestionsAdded(Ljava/lang/String;IIZZ)V
    .registers 8

    .line 1018
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1019
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    .line 1020
    if-eqz p1, :cond_1d

    .line 1021
    invoke-virtual {p1, p2}, Lcom/android/server/notification/NotificationRecord;->setNumSmartRepliesAdded(I)V

    .line 1022
    invoke-virtual {p1, p3}, Lcom/android/server/notification/NotificationRecord;->setNumSmartActionsAdded(I)V

    .line 1023
    invoke-virtual {p1, p4}, Lcom/android/server/notification/NotificationRecord;->setSuggestionsGeneratedByAssistant(Z)V

    .line 1024
    invoke-virtual {p1, p5}, Lcom/android/server/notification/NotificationRecord;->setEditChoicesBeforeSending(Z)V

    .line 1026
    :cond_1d
    monitor-exit v0

    .line 1027
    return-void

    .line 1026
    :catchall_1f
    move-exception p1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_5 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 12

    .line 940
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 941
    :try_start_5
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v1, :cond_70

    aget-object v4, p1, v3

    .line 942
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v6, v4, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 943
    if-nez v5, :cond_1b

    goto :goto_6d

    .line 944
    :cond_1b
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->isSeen()Z

    move-result v6

    if-nez v6, :cond_42

    .line 946
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

    .line 947
    :cond_3d
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/notification/NotificationManagerService;->reportSeen(Lcom/android/server/notification/NotificationRecord;)V

    .line 949
    :cond_42
    iget v6, v4, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    iget v7, v4, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    const/4 v8, 0x1

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/server/notification/NotificationRecord;->setVisibility(ZII)V

    .line 950
    iget-object v6, v4, Lcom/android/internal/statusbar/NotificationVisibility;->location:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    sget-object v7, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_FIRST_HEADS_UP:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    if-ne v6, v7, :cond_51

    goto :goto_52

    :cond_51
    move v8, v2

    .line 954
    :goto_52
    if-nez v8, :cond_5a

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->hasBeenVisiblyExpanded()Z

    move-result v6

    if-eqz v6, :cond_65

    .line 955
    :cond_5a
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v7, v4, Lcom/android/internal/statusbar/NotificationVisibility;->location:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    invoke-virtual {v7}, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->toMetricsEventEnum()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lcom/android/server/notification/NotificationManagerService;->logSmartSuggestionsVisible(Lcom/android/server/notification/NotificationRecord;I)V

    .line 957
    :cond_65
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/notification/NotificationManagerService;->maybeRecordInterruptionLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 958
    invoke-virtual {v4}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    .line 941
    :goto_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 964
    :cond_70
    array-length p1, p2

    move v1, v2

    :goto_72
    if-ge v1, p1, :cond_92

    aget-object v3, p2, v1

    .line 965
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v5, v3, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 966
    if-nez v4, :cond_85

    goto :goto_8f

    .line 967
    :cond_85
    iget v5, v3, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    iget v6, v3, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    invoke-virtual {v4, v2, v5, v6}, Lcom/android/server/notification/NotificationRecord;->setVisibility(ZII)V

    .line 968
    invoke-virtual {v3}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    .line 964
    :goto_8f
    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    .line 970
    :cond_92
    monitor-exit v0

    .line 971
    return-void

    .line 970
    :catchall_94
    move-exception p1

    monitor-exit v0
    :try_end_96
    .catchall {:try_start_5 .. :try_end_96} :catchall_94

    throw p1
.end method

.method public onPanelHidden()V
    .registers 3

    .line 902
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x7f

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 903
    invoke-static {}, Lcom/android/server/EventLogTags;->writeNotificationPanelHidden()V

    .line 904
    return-void
.end method

.method public onPanelRevealed(ZI)V
    .registers 5

    .line 892
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x7f

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 893
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "note_load"

    invoke-static {v0, v1, p2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 894
    invoke-static {p2}, Lcom/android/server/EventLogTags;->writeNotificationPanelRevealed(I)V

    .line 895
    if-eqz p1, :cond_1f

    .line 896
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$1;->clearEffects()V

    .line 898
    :cond_1f
    return-void
.end method

.method public onSetDisabled(I)V
    .registers 5

    .line 772
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 773
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/high16 v2, 0x40000

    and-int/2addr p1, v2

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    invoke-static {v1, p1}, Lcom/android/server/notification/NotificationManagerService;->access$302(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 775
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/server/notification/NotificationManagerService;->access$400(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 777
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_50

    .line 779
    :try_start_1f
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object p1

    .line 780
    if-eqz p1, :cond_2c

    .line 781
    invoke-interface {p1}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_2c} :catch_35
    .catchall {:try_start_1f .. :try_end_2c} :catchall_30

    .line 785
    :cond_2c
    :try_start_2c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_39

    :catchall_30
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 783
    :catch_35
    move-exception p1

    .line 785
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 786
    :goto_39
    nop

    .line 788
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_3e
    .catchall {:try_start_2c .. :try_end_3e} :catchall_50

    .line 790
    :try_start_3e
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$1;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p1}, Landroid/os/Vibrator;->cancel()V
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_49

    .line 792
    :try_start_45
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 793
    goto :goto_4e

    .line 792
    :catchall_49
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 795
    :cond_4e
    :goto_4e
    monitor-exit v0

    .line 796
    return-void

    .line 795
    :catchall_50
    move-exception p1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_45 .. :try_end_52} :catchall_50

    throw p1
.end method
