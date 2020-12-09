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

    .line 5438
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5439
    iput p2, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingUid:I

    .line 5440
    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingPid:I

    .line 5441
    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    .line 5442
    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    .line 5443
    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    .line 5444
    iput p7, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustHaveFlags:I

    .line 5445
    iput p8, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustNotHaveFlags:I

    .line 5446
    iput-boolean p9, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mSendDelete:Z

    .line 5447
    iput p10, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    .line 5448
    iput p11, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    .line 5449
    iput p12, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mRank:I

    .line 5450
    iput p13, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCount:I

    .line 5451
    iput-object p14, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mListener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 5452
    return-void
.end method

.method static synthetic lambda$run$0(I)Z
    .registers 1

    .line 5496
    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_6

    .line 5497
    const/4 p0, 0x0

    return p0

    .line 5499
    :cond_6
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 5456
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mListener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move-object v0, v1

    goto :goto_d

    :cond_7
    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    .line 5457
    :goto_d
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v2, :cond_27

    .line 5458
    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingUid:I

    iget v3, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingPid:I

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    iget v8, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustHaveFlags:I

    iget v9, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustNotHaveFlags:I

    iget v10, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    move-object v11, v0

    invoke-static/range {v2 .. v11}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    .line 5462
    :cond_27
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v10, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v10

    .line 5465
    :try_start_2c
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    iget v7, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    invoke-static/range {v2 .. v7}, Lcom/android/server/notification/NotificationManagerService;->access$6700(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v2

    if-eqz v2, :cond_4b

    .line 5467
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$2100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 5468
    monitor-exit v10

    return-void

    .line 5471
    :cond_4b
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    iget v7, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    .line 5472
    invoke-static/range {v2 .. v7}, Lcom/android/server/notification/NotificationManagerService;->access$6700(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v11

    .line 5473
    if-eqz v11, :cond_c3

    .line 5478
    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6d

    .line 5479
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$6500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/android/server/notification/NotificationUsageStats;->registerClickedByUser(Lcom/android/server/notification/NotificationRecord;)V

    .line 5482
    :cond_6d
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->flags:I

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustHaveFlags:I

    and-int/2addr v2, v4

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustHaveFlags:I

    if-eq v2, v4, :cond_7c

    .line 5483
    monitor-exit v10

    return-void

    .line 5485
    :cond_7c
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget v2, v2, Landroid/app/Notification;->flags:I

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mMustNotHaveFlags:I

    and-int/2addr v2, v4

    if-eqz v2, :cond_89

    .line 5486
    monitor-exit v10

    return-void

    .line 5491
    :cond_89
    nop

    .line 5492
    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_98

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    if-eq v2, v3, :cond_98

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_9a

    .line 5495
    :cond_98
    sget-object v1, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$CancelNotificationRunnable$1i8BOFS2Ap_BvazcwqssFxW6U1U;->INSTANCE:Lcom/android/server/notification/-$$Lambda$NotificationManagerService$CancelNotificationRunnable$1i8BOFS2Ap_BvazcwqssFxW6U1U;

    .line 5504
    :cond_9a
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2, v11}, Lcom/android/server/notification/NotificationManagerService;->access$6800(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v8

    .line 5505
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v4, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mSendDelete:Z

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    iget v6, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mRank:I

    iget v7, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCount:I

    move-object v3, v11

    move-object v9, v0

    invoke-static/range {v2 .. v9}, Lcom/android/server/notification/NotificationManagerService;->access$7100(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;)V

    .line 5507
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingUid:I

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mCallingPid:I

    iget-boolean v7, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mSendDelete:Z

    move-object v3, v11

    move-object v6, v0

    move-object v8, v1

    invoke-static/range {v2 .. v8}, Lcom/android/server/notification/NotificationManagerService;->access$7200(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V

    .line 5509
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 5510
    goto :goto_e2

    .line 5512
    :cond_c3
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mReason:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_e2

    .line 5513
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$4100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SnoozeHelper;

    move-result-object v0

    iget v1, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mUserId:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mPkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mTag:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->mId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/notification/SnoozeHelper;->cancel(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 5514
    if-eqz v0, :cond_e2

    .line 5515
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 5519
    :cond_e2
    :goto_e2
    monitor-exit v10

    .line 5520
    return-void

    .line 5519
    :catchall_e4
    move-exception v0

    monitor-exit v10
    :try_end_e6
    .catchall {:try_start_2c .. :try_end_e6} :catchall_e4

    throw v0
.end method
