.class Lcom/android/server/notification/NotificationManagerService$22;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field final synthetic val$callingPid:I

.field final synthetic val$callingUid:I

.field final synthetic val$from:I

.field final synthetic val$includeCurrentProfiles:Z

.field final synthetic val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field final synthetic val$reason:I

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IIIIZI)V
    .registers 9
    .param p1, "this$0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 9505
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$22;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$22;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$22;->val$callingUid:I

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$22;->val$callingPid:I

    iput p5, p0, Lcom/android/server/notification/NotificationManagerService$22;->val$userId:I

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$22;->val$reason:I

    iput-boolean p7, p0, Lcom/android/server/notification/NotificationManagerService$22;->val$includeCurrentProfiles:Z

    iput p8, p0, Lcom/android/server/notification/NotificationManagerService$22;->val$from:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(II)Z
    .registers 4
    .param p0, "reason"  # I
    .param p1, "flags"  # I

    .line 9515
    const/16 v0, 0x22

    .line 9516
    .local v0, "flagsToCheck":I
    const/16 v1, 0xb

    if-ne v1, p0, :cond_8

    .line 9517
    or-int/lit16 v0, v0, 0x1000

    .line 9519
    :cond_8
    and-int v1, p1, v0

    if-eqz v1, :cond_e

    .line 9520
    const/4 v1, 0x0

    return v1

    .line 9522
    :cond_e
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public run()V
    .registers 41

    .line 9508
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$22;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 9510
    :try_start_7
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$22;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_c
    move-object v10, v0

    goto :goto_17

    :cond_e
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$22;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 9511
    .local v10, "listenerName":Ljava/lang/String;
    :goto_17
    iget v3, v1, Lcom/android/server/notification/NotificationManagerService$22;->val$callingUid:I

    iget v4, v1, Lcom/android/server/notification/NotificationManagerService$22;->val$callingPid:I

    const/4 v5, 0x0

    iget v6, v1, Lcom/android/server/notification/NotificationManagerService$22;->val$userId:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, v1, Lcom/android/server/notification/NotificationManagerService$22;->val$reason:I

    invoke-static/range {v3 .. v10}, Lcom/android/server/EventLogTags;->writeNotificationCancelAll(IILjava/lang/String;IIIILjava/lang/String;)V

    .line 9514
    iget v0, v1, Lcom/android/server/notification/NotificationManagerService$22;->val$reason:I

    new-instance v3, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$22$jaOT1FiWAsbzGYSLa61IQ_CqU10;

    invoke-direct {v3, v0}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$22$jaOT1FiWAsbzGYSLa61IQ_CqU10;-><init>(I)V

    move-object/from16 v18, v3

    .line 9525
    .local v18, "flagChecker":Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    iget-object v11, v1, Lcom/android/server/notification/NotificationManagerService$22;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$22;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v12, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    iget v13, v1, Lcom/android/server/notification/NotificationManagerService$22;->val$callingUid:I

    iget v14, v1, Lcom/android/server/notification/NotificationManagerService$22;->val$callingPid:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget-boolean v0, v1, Lcom/android/server/notification/NotificationManagerService$22;->val$includeCurrentProfiles:Z

    iget v3, v1, Lcom/android/server/notification/NotificationManagerService$22;->val$userId:I

    const/16 v21, 0x1

    iget v4, v1, Lcom/android/server/notification/NotificationManagerService$22;->val$reason:I

    const/16 v24, 0x1

    iget v5, v1, Lcom/android/server/notification/NotificationManagerService$22;->val$from:I

    move/from16 v19, v0

    move/from16 v20, v3

    move/from16 v22, v4

    move-object/from16 v23, v10

    move/from16 v25, v5

    invoke-static/range {v11 .. v25}, Lcom/android/server/notification/NotificationManagerService;->access$11200(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZI)V

    .line 9529
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$22;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$22;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    iget v4, v1, Lcom/android/server/notification/NotificationManagerService$22;->val$callingUid:I

    iget v5, v1, Lcom/android/server/notification/NotificationManagerService$22;->val$callingPid:I

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    iget-boolean v6, v1, Lcom/android/server/notification/NotificationManagerService$22;->val$includeCurrentProfiles:Z

    iget v7, v1, Lcom/android/server/notification/NotificationManagerService$22;->val$userId:I

    const/16 v35, 0x1

    iget v8, v1, Lcom/android/server/notification/NotificationManagerService$22;->val$reason:I

    const/16 v38, 0x0

    iget v9, v1, Lcom/android/server/notification/NotificationManagerService$22;->val$from:I

    move-object/from16 v25, v0

    move-object/from16 v26, v3

    move/from16 v27, v4

    move/from16 v28, v5

    move-object/from16 v32, v18

    move/from16 v33, v6

    move/from16 v34, v7

    move/from16 v36, v8

    move-object/from16 v37, v10

    move/from16 v39, v9

    invoke-static/range {v25 .. v39}, Lcom/android/server/notification/NotificationManagerService;->access$11200(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZI)V

    .line 9533
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$22;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$4300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SnoozeHelper;

    move-result-object v0

    iget v3, v1, Lcom/android/server/notification/NotificationManagerService$22;->val$userId:I

    iget-boolean v4, v1, Lcom/android/server/notification/NotificationManagerService$22;->val$includeCurrentProfiles:Z

    invoke-virtual {v0, v3, v4}, Lcom/android/server/notification/SnoozeHelper;->cancel(IZ)Z

    .line 9534
    nop

    .end local v10  # "listenerName":Ljava/lang/String;
    .end local v18  # "flagChecker":Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    monitor-exit v2

    .line 9535
    return-void

    .line 9534
    :catchall_99
    move-exception v0

    monitor-exit v2
    :try_end_9b
    .catchall {:try_start_7 .. :try_end_9b} :catchall_99

    throw v0
.end method
