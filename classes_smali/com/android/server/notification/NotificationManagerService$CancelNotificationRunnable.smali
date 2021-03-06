.class public Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;
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
    name = "CancelNotificationRunnable"
.end annotation


# instance fields
.field private final mCallingPid:I

.field private final mCallingUid:I

.field private final mCount:I

.field private final mId:I

.field private final mListener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field private final mMustHaveFlags:I

.field private final mMustNotHaveFlags:I

.field private final mPkg:Ljava/lang/String;

.field private final mRank:I

.field private final mReason:I

.field private final mSendDelete:Z

.field private final mTag:Ljava/lang/String;

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 15
    .param p1, "this$0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "callingUid"  # I
    .param p3, "callingPid"  # I
    .param p4, "pkg"  # Ljava/lang/String;
    .param p5, "tag"  # Ljava/lang/String;
    .param p6, "id"  # I
    .param p7, "mustHaveFlags"  # I
    .param p8, "mustNotHaveFlags"  # I
    .param p9, "sendDelete"  # Z
    .param p10, "userId"  # I
    .param p11, "reason"  # I
    .param p12, "rank"  # I
    .param p13, "count"  # I
    .param p14, "listener"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 5604
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5605
    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingUid:I

    .line 5606
    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingPid:I

    .line 5607
    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    .line 5608
    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    .line 5609
    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    .line 5610
    iput p7, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustHaveFlags:I

    .line 5611
    iput p8, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustNotHaveFlags:I

    .line 5612
    iput-boolean p9, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mSendDelete:Z

    .line 5613
    iput p10, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    .line 5614
    iput p11, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    .line 5615
    iput p12, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mRank:I

    .line 5616
    iput p13, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCount:I

    .line 5617
    iput-object p14, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mListener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 5618
    return-void
.end method


# virtual methods
.method public run()V
    .registers 20

    .line 5622
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mListener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_e

    :cond_8
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    :goto_e
    move-object v11, v0

    .line 5623
    .local v11, "listenerName":Ljava/lang/String;
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_28

    .line 5624
    iget v2, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingUid:I

    iget v3, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingPid:I

    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    iget v7, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    iget v8, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustHaveFlags:I

    iget v9, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustNotHaveFlags:I

    iget v10, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    invoke-static/range {v2 .. v11}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    .line 5628
    :cond_28
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5631
    :try_start_2d
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    iget v7, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    iget v8, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    invoke-static/range {v3 .. v8}, Lcom/android/server/notification/NotificationManagerService;->access$6900(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 5633
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$2100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 5634
    monitor-exit v2

    return-void

    .line 5637
    :cond_4c
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    iget v7, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    iget v8, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    .line 5638
    invoke-static/range {v3 .. v8}, Lcom/android/server/notification/NotificationManagerService;->access$6900(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    .line 5639
    .local v0, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v0, :cond_b7

    .line 5644
    iget v3, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6e

    .line 5645
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$7300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/notification/NotificationUsageStats;->registerClickedByUser(Lcom/android/server/notification/NotificationRecord;)V

    .line 5648
    :cond_6e
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->flags:I

    iget v4, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustHaveFlags:I

    and-int/2addr v3, v4

    iget v4, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustHaveFlags:I

    if-eq v3, v4, :cond_7d

    .line 5649
    monitor-exit v2

    return-void

    .line 5651
    :cond_7d
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->flags:I

    iget v4, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustNotHaveFlags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_8a

    .line 5652
    monitor-exit v2

    return-void

    .line 5656
    :cond_8a
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3, v0}, Lcom/android/server/notification/NotificationManagerService;->access$7000(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v9

    .line 5657
    .local v9, "wasPosted":Z
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v5, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mSendDelete:Z

    iget v6, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    iget v7, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mRank:I

    iget v8, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCount:I

    move-object v4, v0

    move-object v10, v11

    invoke-static/range {v3 .. v10}, Lcom/android/server/notification/NotificationManagerService;->access$7400(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;)V

    .line 5659
    iget-object v12, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v14, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingUid:I

    iget v15, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingPid:I

    iget-boolean v3, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mSendDelete:Z

    const/16 v18, 0x0

    move-object v13, v0

    move-object/from16 v16, v11

    move/from16 v17, v3

    invoke-static/range {v12 .. v18}, Lcom/android/server/notification/NotificationManagerService;->access$7500(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V

    .line 5661
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 5662
    .end local v9  # "wasPosted":Z
    goto :goto_d6

    .line 5664
    :cond_b7
    iget v3, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    const/16 v4, 0x12

    if-eq v3, v4, :cond_d6

    .line 5665
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$4300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SnoozeHelper;

    move-result-object v3

    iget v4, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    iget v7, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/notification/SnoozeHelper;->cancel(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 5666
    .local v3, "wasSnoozed":Z
    if-eqz v3, :cond_d6

    .line 5667
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 5671
    .end local v0  # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v3  # "wasSnoozed":Z
    :cond_d6
    :goto_d6
    monitor-exit v2

    .line 5672
    return-void

    .line 5671
    :catchall_d8
    move-exception v0

    monitor-exit v2
    :try_end_da
    .catchall {:try_start_2d .. :try_end_da} :catchall_d8

    throw v0
.end method
