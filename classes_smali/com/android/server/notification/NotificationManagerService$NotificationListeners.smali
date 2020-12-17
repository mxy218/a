.class public Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
.super Lcom/android/server/notification/ManagedServices;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationListeners"
.end annotation


# static fields
.field static final TAG_ENABLED_NOTIFICATION_LISTENERS:Ljava/lang/String; = "enabled_listeners"


# instance fields
.field private final mLightTrimListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/pm/IPackageManager;)V
    .registers 6
    .param p1, "this$0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "pm"  # Landroid/content/pm/IPackageManager;

    .line 8267
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 8268
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->access$2400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/android/server/notification/ManagedServices;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V

    .line 8265
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    .line 8270
    return-void
.end method

.method static synthetic access$10000(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    .param p1, "x1"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "x2"  # Landroid/service/notification/StatusBarNotification;
    .param p3, "x3"  # Landroid/service/notification/NotificationRankingUpdate;

    .line 8262
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPosted(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V

    return-void
.end method

.method static synthetic access$10100(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    .param p1, "x1"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "x2"  # Landroid/service/notification/NotificationRankingUpdate;

    .line 8262
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRankingUpdate(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/NotificationRankingUpdate;)V

    return-void
.end method

.method static synthetic access$10200(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    .param p1, "x1"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "x2"  # I

    .line 8262
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyListenerHintsChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    return-void
.end method

.method static synthetic access$10300(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    .param p1, "x1"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "x2"  # I

    .line 8262
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyInterruptionFilterChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    return-void
.end method

.method static synthetic access$9900(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;I)V
    .registers 6
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    .param p1, "x1"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "x2"  # Landroid/service/notification/StatusBarNotification;
    .param p3, "x3"  # Landroid/service/notification/NotificationRankingUpdate;
    .param p4, "x4"  # Landroid/service/notification/NotificationStats;
    .param p5, "x5"  # I

    .line 8262
    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemoved(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;I)V

    return-void
.end method

.method private notifyInterruptionFilterChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 8
    .param p1, "info"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "interruptionFilter"  # I

    .line 8696
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 8698
    .local v0, "listener":Landroid/service/notification/INotificationListener;
    :try_start_4
    invoke-interface {v0, p2}, Landroid/service/notification/INotificationListener;->onInterruptionFilterChanged(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 8701
    goto :goto_20

    .line 8699
    :catch_8
    move-exception v1

    .line 8700
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to notify listener (interruption filter): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8702
    .end local v1  # "ex":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method private notifyListenerHintsChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 8
    .param p1, "info"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hints"  # I

    .line 8686
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 8688
    .local v0, "listener":Landroid/service/notification/INotificationListener;
    :try_start_4
    invoke-interface {v0, p2}, Landroid/service/notification/INotificationListener;->onListenerHintsChanged(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 8691
    goto :goto_20

    .line 8689
    :catch_8
    move-exception v1

    .line 8690
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to notify listener (listener hints): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8692
    .end local v1  # "ex":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method private notifyNotificationChannelGroupChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V
    .registers 11
    .param p1, "info"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "pkg"  # Ljava/lang/String;
    .param p3, "user"  # Landroid/os/UserHandle;
    .param p4, "group"  # Landroid/app/NotificationChannelGroup;
    .param p5, "modificationType"  # I

    .line 8718
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 8720
    .local v0, "listener":Landroid/service/notification/INotificationListener;
    :try_start_4
    invoke-interface {v0, p2, p3, p4, p5}, Landroid/service/notification/INotificationListener;->onNotificationChannelGroupModification(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 8723
    goto :goto_20

    .line 8721
    :catch_8
    move-exception v1

    .line 8722
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to notify listener (channel group changed): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8724
    .end local v1  # "ex":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method private notifyPosted(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 10
    .param p1, "info"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "sbn"  # Landroid/service/notification/StatusBarNotification;
    .param p3, "rankingUpdate"  # Landroid/service/notification/NotificationRankingUpdate;

    .line 8652
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 8653
    .local v0, "listener":Landroid/service/notification/INotificationListener;
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    invoke-direct {v1, p2}, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;-><init>(Landroid/service/notification/StatusBarNotification;)V

    .line 8655
    .local v1, "sbnHolder":Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;
    :try_start_9
    invoke-interface {v0, v1, p3}, Landroid/service/notification/INotificationListener;->onNotificationPosted(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_d

    .line 8658
    goto :goto_25

    .line 8656
    :catch_d
    move-exception v2

    .line 8657
    .local v2, "ex":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to notify listener (posted): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8659
    .end local v2  # "ex":Landroid/os/RemoteException;
    :goto_25
    return-void
.end method

.method private notifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Z)V
    .registers 16
    .param p1, "r"  # Lcom/android/server/notification/NotificationRecord;
    .param p2, "old"  # Lcom/android/server/notification/NotificationRecord;
    .param p3, "notifyAllListeners"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 8381
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 8382
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    if-eqz p2, :cond_7

    iget-object v1, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    .line 8383
    .local v1, "oldSbn":Landroid/service/notification/StatusBarNotification;
    :goto_8
    new-instance v2, Lcom/android/server/notification/NotificationManagerService$TrimCache;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {v2, v3, v0}, Lcom/android/server/notification/NotificationManagerService$TrimCache;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;)V

    .line 8385
    .local v2, "trimCache":Lcom/android/server/notification/NotificationManagerService$TrimCache;
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getServices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_90

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 8386
    .local v4, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5, v0, v4}, Lcom/android/server/notification/NotificationManagerService;->access$4700(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v5

    .line 8387
    .local v5, "sbnVisible":Z
    const/4 v6, 0x0

    if-eqz v1, :cond_33

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v7, v1, v4}, Lcom/android/server/notification/NotificationManagerService;->access$4700(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v7

    goto :goto_34

    :cond_33
    move v7, v6

    .line 8389
    .local v7, "oldSbnVisible":Z
    :goto_34
    if-nez v7, :cond_39

    if-nez v5, :cond_39

    .line 8390
    goto :goto_17

    .line 8395
    :cond_39
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isHidden()Z

    move-result v8

    const/16 v9, 0x1c

    if-eqz v8, :cond_46

    iget v8, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    if-ge v8, v9, :cond_46

    .line 8396
    goto :goto_17

    .line 8402
    :cond_46
    if-nez p3, :cond_4d

    iget v8, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    if-lt v8, v9, :cond_4d

    .line 8403
    goto :goto_17

    .line 8406
    :cond_4d
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v8, v4}, Lcom/android/server/notification/NotificationManagerService;->access$9800(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v8

    .line 8409
    .local v8, "update":Landroid/service/notification/NotificationRankingUpdate;
    if-eqz v7, :cond_6a

    if-nez v5, :cond_6a

    .line 8410
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    .line 8411
    .local v6, "oldSbnLightClone":Landroid/service/notification/StatusBarNotification;
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v9}, Lcom/android/server/notification/NotificationManagerService;->access$2100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v9

    new-instance v10, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;

    invoke-direct {v10, p0, v4, v6, v8}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V

    invoke-virtual {v9, v10}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 8418
    goto :goto_17

    .line 8422
    .end local v6  # "oldSbnLightClone":Landroid/service/notification/StatusBarNotification;
    :cond_6a
    iget v9, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_70

    .line 8423
    goto :goto_72

    :cond_70
    iget v6, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 8424
    .local v6, "targetUserId":I
    :goto_72
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v10, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, p1, p2, v10, v6}, Lcom/android/server/notification/NotificationManagerService;->updateUriPermissions(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;I)V

    .line 8426
    invoke-virtual {v2, v4}, Lcom/android/server/notification/NotificationManagerService$TrimCache;->ForListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/StatusBarNotification;

    move-result-object v9

    .line 8427
    .local v9, "sbnToPost":Landroid/service/notification/StatusBarNotification;
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v10}, Lcom/android/server/notification/NotificationManagerService;->access$2100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v10

    new-instance v11, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$2;

    invoke-direct {v11, p0, v4, v9, v8}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$2;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;)V

    invoke-virtual {v10, v11}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 8433
    .end local v4  # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v5  # "sbnVisible":Z
    .end local v6  # "targetUserId":I
    .end local v7  # "oldSbnVisible":Z
    .end local v8  # "update":Landroid/service/notification/NotificationRankingUpdate;
    .end local v9  # "sbnToPost":Landroid/service/notification/StatusBarNotification;
    goto :goto_17

    .line 8436
    :cond_90
    invoke-static {v0, v1}, Lcom/android/server/am/AmsInjector;->notifyPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)V

    .line 8438
    return-void
.end method

.method private notifyRankingUpdate(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/NotificationRankingUpdate;)V
    .registers 8
    .param p1, "info"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "rankingUpdate"  # Landroid/service/notification/NotificationRankingUpdate;

    .line 8677
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 8679
    .local v0, "listener":Landroid/service/notification/INotificationListener;
    :try_start_4
    invoke-interface {v0, p2}, Landroid/service/notification/INotificationListener;->onNotificationRankingUpdate(Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 8682
    goto :goto_20

    .line 8680
    :catch_8
    move-exception v1

    .line 8681
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to notify listener (ranking update): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8683
    .end local v1  # "ex":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method private notifyRemoved(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;I)V
    .registers 12
    .param p1, "info"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "sbn"  # Landroid/service/notification/StatusBarNotification;
    .param p3, "rankingUpdate"  # Landroid/service/notification/NotificationRankingUpdate;
    .param p4, "stats"  # Landroid/service/notification/NotificationStats;
    .param p5, "reason"  # I

    .line 8663
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 8664
    return-void

    .line 8666
    :cond_b
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 8667
    .local v0, "listener":Landroid/service/notification/INotificationListener;
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    invoke-direct {v1, p2}, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;-><init>(Landroid/service/notification/StatusBarNotification;)V

    .line 8669
    .local v1, "sbnHolder":Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;
    :try_start_14
    invoke-interface {v0, v1, p3, p4, p5}, Landroid/service/notification/INotificationListener;->onNotificationRemoved(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_18

    .line 8672
    goto :goto_30

    .line 8670
    :catch_18
    move-exception v2

    .line 8671
    .local v2, "ex":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to notify listener (removed): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8673
    .end local v2  # "ex":Landroid/os/RemoteException;
    :goto_30
    return-void
.end method


# virtual methods
.method protected asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3
    .param p1, "binder"  # Landroid/os/IBinder;

    .line 8297
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    return-object v0
.end method

.method protected checkType(Landroid/os/IInterface;)Z
    .registers 3
    .param p1, "service"  # Landroid/os/IInterface;

    .line 8302
    instance-of v0, p1, Landroid/service/notification/INotificationListener;

    return v0
.end method

.method protected getBindFlags()I
    .registers 2

    .line 8278
    const v0, 0x5000101

    return v0
.end method

.method protected getConfig()Lcom/android/server/notification/ManagedServices$Config;
    .registers 3

    .line 8284
    new-instance v0, Lcom/android/server/notification/ManagedServices$Config;

    invoke-direct {v0}, Lcom/android/server/notification/ManagedServices$Config;-><init>()V

    .line 8285
    .local v0, "c":Lcom/android/server/notification/ManagedServices$Config;
    const-string/jumbo v1, "notification listener"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 8286
    const-string v1, "android.service.notification.NotificationListenerService"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    .line 8287
    const-string v1, "enabled_listeners"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    .line 8288
    const-string v1, "enabled_notification_listeners"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    .line 8289
    const-string v1, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    .line 8290
    const-string v1, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    .line 8291
    const v1, 0x1040488

    iput v1, v0, Lcom/android/server/notification/ManagedServices$Config;->clientLabel:I

    .line 8292
    return-object v0
.end method

.method public getOnNotificationPostedTrim(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)I
    .registers 3
    .param p1, "info"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 8344
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected getRequiredPermission()Ljava/lang/String;
    .registers 2

    .line 8331
    const/4 v0, 0x0

    return-object v0
.end method

.method public isListenerPackage(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;

    .line 8727
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 8728
    return v0

    .line 8731
    :cond_4
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 8732
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getServices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 8733
    .local v3, "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v4, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 8734
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 8736
    .end local v3  # "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_2c
    goto :goto_11

    .line 8737
    :cond_2d
    monitor-exit v1

    .line 8738
    return v0

    .line 8737
    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_9 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public synthetic lambda$notifyNotificationChannelChanged$2$NotificationManagerService$NotificationListeners(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .registers 7
    .param p1, "serviceInfo"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "pkg"  # Ljava/lang/String;
    .param p3, "user"  # Landroid/os/UserHandle;
    .param p4, "channel"  # Landroid/app/NotificationChannel;
    .param p5, "modificationType"  # I

    .line 8622
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->hasCompanionDevice(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 8623
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    .line 8626
    :cond_b
    return-void
.end method

.method public synthetic lambda$notifyNotificationChannelGroupChanged$3$NotificationManagerService$NotificationListeners(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V
    .registers 7
    .param p1, "serviceInfo"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "pkg"  # Ljava/lang/String;
    .param p3, "user"  # Landroid/os/UserHandle;
    .param p4, "group"  # Landroid/app/NotificationChannelGroup;
    .param p5, "modificationType"  # I

    .line 8642
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->hasCompanionDevice(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 8643
    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelGroupChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V

    .line 8646
    :cond_b
    return-void
.end method

.method public synthetic lambda$notifyRemovedLocked$1$NotificationManagerService$NotificationListeners(Lcom/android/server/notification/NotificationRecord;)V
    .registers 5
    .param p1, "r"  # Lcom/android/server/notification/NotificationRecord;

    .line 8485
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->updateUriPermissions(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;I)V

    .line 8486
    return-void
.end method

.method public synthetic lambda$onStatusBarIconsBehaviorChanged$0$NotificationManagerService$NotificationListeners(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
    .registers 8
    .param p1, "info"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hideSilentStatusIcons"  # Z

    .line 8350
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 8352
    .local v0, "listener":Landroid/service/notification/INotificationListener;
    :try_start_4
    invoke-interface {v0, p2}, Landroid/service/notification/INotificationListener;->onStatusBarIconsBehaviorChanged(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 8356
    goto :goto_20

    .line 8353
    :catch_8
    move-exception v1

    .line 8354
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to notify listener (hideSilentStatusIcons): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8357
    .end local v1  # "ex":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method public notifyHiddenLocked(Ljava/util/List;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)V"
        }
    .end annotation

    .line 8560
    .local p1, "changedNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    if-eqz p1, :cond_2c

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2c

    .line 8564
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRankingUpdateLocked(Ljava/util/List;)V

    .line 8567
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 8568
    .local v0, "numChangedNotifications":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_2b

    .line 8569
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 8570
    .local v2, "rec":Lcom/android/server/notification/NotificationRecord;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    const/16 v4, 0xe

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getStats()Landroid/service/notification/NotificationStats;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Lcom/android/server/notification/NotificationRecord;ILandroid/service/notification/NotificationStats;)V

    .line 8568
    .end local v2  # "rec":Lcom/android/server/notification/NotificationRecord;
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 8572
    .end local v1  # "i":I
    :cond_2b
    return-void

    .line 8561
    .end local v0  # "numChangedNotifications":I
    :cond_2c
    :goto_2c
    return-void
.end method

.method public notifyInterruptionFilterChanged(I)V
    .registers 6
    .param p1, "interruptionFilter"  # I

    .line 8598
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 8599
    .local v1, "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-virtual {v1}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isEnabledForCurrentProfiles()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 8600
    goto :goto_8

    .line 8602
    :cond_1b
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$2100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v2

    new-instance v3, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$6;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$6;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 8608
    .end local v1  # "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    goto :goto_8

    .line 8609
    :cond_2a
    return-void
.end method

.method public notifyListenerHintsChangedLocked(I)V
    .registers 6
    .param p1, "hints"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 8538
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 8539
    .local v1, "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-virtual {v1}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isEnabledForCurrentProfiles()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 8540
    goto :goto_8

    .line 8542
    :cond_1b
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$2100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v2

    new-instance v3, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$5;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$5;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 8548
    .end local v1  # "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    goto :goto_8

    .line 8549
    :cond_2a
    return-void
.end method

.method notifyNotificationChannelChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .registers 11
    .param p1, "info"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "pkg"  # Ljava/lang/String;
    .param p3, "user"  # Landroid/os/UserHandle;
    .param p4, "channel"  # Landroid/app/NotificationChannel;
    .param p5, "modificationType"  # I

    .line 8707
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 8709
    .local v0, "listener":Landroid/service/notification/INotificationListener;
    :try_start_4
    invoke-interface {v0, p2, p3, p4, p5}, Landroid/service/notification/INotificationListener;->onNotificationChannelModification(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 8712
    goto :goto_20

    .line 8710
    :catch_8
    move-exception v1

    .line 8711
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to notify listener (channel changed): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8713
    .end local v1  # "ex":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method protected notifyNotificationChannelChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .registers 16
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "user"  # Landroid/os/UserHandle;
    .param p3, "channel"  # Landroid/app/NotificationChannel;
    .param p4, "modificationType"  # I

    .line 8613
    if-nez p3, :cond_3

    .line 8614
    return-void

    .line 8616
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 8617
    .local v1, "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v2

    if-nez v2, :cond_22

    .line 8618
    goto :goto_b

    .line 8621
    :cond_22
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$T5BM1IF40aMGtqZZRr6BWGjzNxA;

    move-object v2, v10

    move-object v3, p0

    move-object v4, v1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$T5BM1IF40aMGtqZZRr6BWGjzNxA;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8627
    .end local v1  # "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    goto :goto_b

    .line 8628
    :cond_36
    return-void
.end method

.method protected notifyNotificationChannelGroupChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V
    .registers 16
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "user"  # Landroid/os/UserHandle;
    .param p3, "group"  # Landroid/app/NotificationChannelGroup;
    .param p4, "modificationType"  # I

    .line 8633
    if-nez p3, :cond_3

    .line 8634
    return-void

    .line 8636
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 8637
    .local v1, "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v2

    if-nez v2, :cond_22

    .line 8638
    goto :goto_b

    .line 8641
    :cond_22
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$Srt8NNqA1xJUAp_7nDU6CBZJm_0;

    move-object v2, v10

    move-object v3, p0

    move-object v4, v1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$Srt8NNqA1xJUAp_7nDU6CBZJm_0;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8647
    .end local v1  # "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    goto :goto_b

    .line 8648
    :cond_36
    return-void
.end method

.method public notifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V
    .registers 4
    .param p1, "r"  # Lcom/android/server/notification/NotificationRecord;
    .param p2, "old"  # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 8370
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Z)V

    .line 8371
    return-void
.end method

.method public notifyRankingUpdateLocked(Ljava/util/List;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)V"
        }
    .end annotation

    .line 8503
    .local p1, "changedHiddenNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    if-eqz p1, :cond_a

    .line 8504
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 8506
    .local v0, "isHiddenRankingUpdate":Z
    :goto_b
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getServices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 8507
    .local v2, "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-virtual {v2}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isEnabledForCurrentProfiles()Z

    move-result v3

    if-nez v3, :cond_26

    .line 8508
    goto :goto_13

    .line 8511
    :cond_26
    const/4 v3, 0x0

    .line 8512
    .local v3, "notifyThisListener":Z
    if-eqz v0, :cond_4c

    iget v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_4c

    .line 8514
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 8515
    .local v5, "rec":Lcom/android/server/notification/NotificationRecord;
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v7, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-static {v6, v7, v2}, Lcom/android/server/notification/NotificationManagerService;->access$4700(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 8516
    const/4 v3, 0x1

    .line 8517
    goto :goto_4c

    .line 8519
    .end local v5  # "rec":Lcom/android/server/notification/NotificationRecord;
    :cond_4b
    goto :goto_33

    .line 8522
    :cond_4c
    :goto_4c
    if-nez v3, :cond_50

    if-nez v0, :cond_64

    .line 8523
    :cond_50
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4, v2}, Lcom/android/server/notification/NotificationManagerService;->access$9800(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v4

    .line 8526
    .local v4, "update":Landroid/service/notification/NotificationRankingUpdate;
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$2100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v5

    new-instance v6, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$4;

    invoke-direct {v6, p0, v2, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$4;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/NotificationRankingUpdate;)V

    invoke-virtual {v5, v6}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 8533
    .end local v2  # "serviceInfo":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v3  # "notifyThisListener":Z
    .end local v4  # "update":Landroid/service/notification/NotificationRankingUpdate;
    :cond_64
    goto :goto_13

    .line 8534
    :cond_65
    return-void
.end method

.method public notifyRemovedLocked(Lcom/android/server/notification/NotificationRecord;ILandroid/service/notification/NotificationStats;)V
    .registers 20
    .param p1, "r"  # Lcom/android/server/notification/NotificationRecord;
    .param p2, "reason"  # I
    .param p3, "notificationStats"  # Landroid/service/notification/NotificationStats;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 8446
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    iget-object v10, v8, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 8451
    .local v10, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v11

    .line 8452
    .local v11, "sbnLight":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_14
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_75

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 8453
    .local v13, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v0, v7, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, v10, v13}, Lcom/android/server/notification/NotificationManagerService;->access$4700(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 8454
    goto :goto_14

    .line 8459
    :cond_2a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->isHidden()Z

    move-result v0

    const/16 v1, 0x1c

    const/16 v2, 0xe

    if-eqz v0, :cond_3b

    if-eq v9, v2, :cond_3b

    iget v0, v13, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    if-ge v0, v1, :cond_3b

    .line 8461
    goto :goto_14

    .line 8466
    :cond_3b
    if-ne v9, v2, :cond_42

    iget v0, v13, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->targetSdkVersion:I

    if-lt v0, v1, :cond_42

    .line 8468
    goto :goto_14

    .line 8472
    :cond_42
    iget-object v0, v7, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v0

    iget-object v1, v13, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isServiceTokenValidLocked(Landroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 8473
    move-object/from16 v5, p3

    goto :goto_55

    :cond_53
    const/4 v0, 0x0

    move-object v5, v0

    .line 8474
    .local v5, "stats":Landroid/service/notification/NotificationStats;
    :goto_55
    iget-object v0, v7, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, v13}, Lcom/android/server/notification/NotificationManagerService;->access$9800(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v14

    .line 8475
    .local v14, "update":Landroid/service/notification/NotificationRankingUpdate;
    iget-object v0, v7, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$2100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v15

    new-instance v6, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$3;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v13

    move-object v3, v11

    move-object v4, v14

    move-object v9, v6

    move/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$3;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationRankingUpdate;Landroid/service/notification/NotificationStats;I)V

    invoke-virtual {v15, v9}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 8481
    .end local v5  # "stats":Landroid/service/notification/NotificationStats;
    .end local v13  # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v14  # "update":Landroid/service/notification/NotificationRankingUpdate;
    move/from16 v9, p2

    goto :goto_14

    .line 8484
    :cond_75
    iget-object v0, v7, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$2100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v0

    new-instance v1, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$3bretMyG2YyNFKU5plLQgmxuGr0;

    invoke-direct {v1, v7, v8}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$3bretMyG2YyNFKU5plLQgmxuGr0;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 8490
    invoke-static {v10}, Lcom/android/server/am/AmsInjector;->notifyRemoved(Landroid/service/notification/StatusBarNotification;)V

    .line 8492
    return-void
.end method

.method public notifyUnhiddenLocked(Ljava/util/List;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)V"
        }
    .end annotation

    .line 8583
    .local p1, "changedNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    if-eqz p1, :cond_27

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_27

    .line 8587
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRankingUpdateLocked(Ljava/util/List;)V

    .line 8590
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 8591
    .local v0, "numChangedNotifications":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_26

    .line 8592
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 8593
    .local v2, "rec":Lcom/android/server/notification/NotificationRecord;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyPostedLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Z)V

    .line 8591
    .end local v2  # "rec":Lcom/android/server/notification/NotificationRecord;
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 8595
    .end local v1  # "i":I
    :cond_26
    return-void

    .line 8584
    .end local v0  # "numChangedNotifications":I
    :cond_27
    :goto_27
    return-void
.end method

.method public onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 5
    .param p1, "info"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 8307
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 8309
    .local v0, "listener":Landroid/service/notification/INotificationListener;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 8310
    :try_start_9
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2, p1}, Lcom/android/server/notification/NotificationManagerService;->access$9800(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v2

    .line 8311
    .local v2, "update":Landroid/service/notification/NotificationRankingUpdate;
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_16

    .line 8313
    :try_start_10
    invoke-interface {v0, v2}, Landroid/service/notification/INotificationListener;->onListenerConnected(Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    .line 8316
    goto :goto_15

    .line 8314
    :catch_14
    move-exception v1

    .line 8317
    :goto_15
    return-void

    .line 8311
    .end local v2  # "update":Landroid/service/notification/NotificationRankingUpdate;
    :catchall_16
    move-exception v2

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v2
.end method

.method protected onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 3
    .param p1, "removed"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 8322
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$4800(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 8323
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$4900(Lcom/android/server/notification/NotificationManagerService;)V

    .line 8324
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5000(Lcom/android/server/notification/NotificationManagerService;)V

    .line 8326
    :cond_12
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 8327
    return-void
.end method

.method public onStatusBarIconsBehaviorChanged(Z)V
    .registers 6
    .param p1, "hideSilentStatusIcons"  # Z

    .line 8348
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 8349
    .local v1, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$2100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v2

    new-instance v3, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$Uven29tL9-XX5tMiwAHBwNumQKc;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationListeners$Uven29tL9-XX5tMiwAHBwNumQKc;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V

    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 8358
    .end local v1  # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    goto :goto_8

    .line 8359
    :cond_23
    return-void
.end method

.method public setOnNotificationPostedTrimLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 4
    .param p1, "info"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "trim"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 8336
    const/4 v0, 0x1

    if-ne p2, v0, :cond_9

    .line 8337
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 8339
    :cond_9
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->mLightTrimListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 8341
    :goto_e
    return-void
.end method
