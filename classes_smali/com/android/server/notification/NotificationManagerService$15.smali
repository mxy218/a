.class Lcom/android/server/notification/NotificationManagerService$15;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field final synthetic val$callingPid:I

.field final synthetic val$callingUid:I

.field final synthetic val$channelId:Ljava/lang/String;

.field final synthetic val$doit:Z

.field final synthetic val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field final synthetic val$mustHaveFlags:I

.field final synthetic val$mustNotHaveFlags:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$reason:I

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;IIIIZLjava/lang/String;)V
    .registers 12

    .line 7025
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$15;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$callingUid:I

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$callingPid:I

    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$pkg:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$userId:I

    iput p7, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$mustHaveFlags:I

    iput p8, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$mustNotHaveFlags:I

    iput p9, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$reason:I

    iput-boolean p10, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$doit:Z

    iput-object p11, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$channelId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(III)Z
    .registers 5

    .line 7041
    and-int v0, p2, p0

    const/4 v1, 0x0

    if-eq v0, p0, :cond_6

    .line 7042
    return v1

    .line 7044
    :cond_6
    and-int p0, p2, p1

    if-eqz p0, :cond_b

    .line 7045
    return v1

    .line 7047
    :cond_b
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public run()V
    .registers 20

    .line 7028
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto :goto_e

    :cond_8
    iget-object v1, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    .line 7029
    :goto_e
    iget v2, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$callingUid:I

    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$callingPid:I

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$pkg:Ljava/lang/String;

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$userId:I

    iget v6, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$mustHaveFlags:I

    iget v7, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$mustNotHaveFlags:I

    iget v8, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$reason:I

    move-object v9, v1

    invoke-static/range {v2 .. v9}, Lcom/android/server/EventLogTags;->writeNotificationCancelAll(IILjava/lang/String;IIIILjava/lang/String;)V

    .line 7035
    iget-boolean v2, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$doit:Z

    if-nez v2, :cond_25

    .line 7036
    return-void

    .line 7039
    :cond_25
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$15;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v15, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v15

    .line 7040
    :try_start_2a
    iget v2, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$mustHaveFlags:I

    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$mustNotHaveFlags:I

    new-instance v14, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$15$wXaTmmz_lG6grUqU8upk0686eXA;

    invoke-direct {v14, v2, v3}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$15$wXaTmmz_lG6grUqU8upk0686eXA;-><init>(II)V

    .line 7049
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$15;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$15;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$callingUid:I

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$callingPid:I

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$pkg:Ljava/lang/String;

    const/4 v7, 0x1

    iget-object v8, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$channelId:Ljava/lang/String;

    const/4 v10, 0x0

    iget v11, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$userId:I

    const/4 v12, 0x0

    iget v13, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$reason:I
    :try_end_48
    .catchall {:try_start_2a .. :try_end_48} :catchall_80

    const/16 v16, 0x1

    move-object v9, v14

    move-object/from16 v17, v14

    move-object v14, v1

    move-object/from16 v18, v15

    move/from16 v15, v16

    :try_start_52
    invoke-static/range {v2 .. v15}, Lcom/android/server/notification/NotificationManagerService;->access$9100(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;Z)V

    .line 7053
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$15;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$15;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$callingUid:I

    iget v5, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$callingPid:I

    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$pkg:Ljava/lang/String;

    const/4 v7, 0x1

    iget-object v8, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$channelId:Ljava/lang/String;

    const/4 v10, 0x0

    iget v11, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$userId:I

    const/4 v12, 0x0

    iget v13, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$reason:I

    const/4 v15, 0x0

    move-object/from16 v9, v17

    move-object v14, v1

    invoke-static/range {v2 .. v15}, Lcom/android/server/notification/NotificationManagerService;->access$9100(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;Z)V

    .line 7057
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$15;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$4100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SnoozeHelper;

    move-result-object v1

    iget v2, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$userId:I

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$15;->val$pkg:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/notification/SnoozeHelper;->cancel(ILjava/lang/String;)Z

    .line 7058
    monitor-exit v18

    .line 7059
    return-void

    .line 7058
    :catchall_80
    move-exception v0

    move-object/from16 v18, v15

    :goto_83
    monitor-exit v18
    :try_end_84
    .catchall {:try_start_52 .. :try_end_84} :catchall_85

    throw v0

    :catchall_85
    move-exception v0

    goto :goto_83
.end method
