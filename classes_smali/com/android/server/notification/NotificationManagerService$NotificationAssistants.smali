.class public Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;
.super Lcom/android/server/notification/ManagedServices;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationAssistants"
.end annotation


# static fields
.field private static final ATT_TYPES:Ljava/lang/String; = "types"

.field private static final ATT_USER_SET:Ljava/lang/String; = "user_set"

.field private static final TAG_ALLOWED_ADJUSTMENT_TYPES:Ljava/lang/String; = "q_allowed_adjustments"

.field static final TAG_ENABLED_NOTIFICATION_ASSISTANTS:Ljava/lang/String; = "enabled_assistants"


# instance fields
.field private mAllowedAdjustments:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mUserSetMap:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V
    .registers 9
    .param p1, "this$0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "context"  # Landroid/content/Context;
    .param p3, "lock"  # Ljava/lang/Object;
    .param p4, "up"  # Lcom/android/server/notification/ManagedServices$UserProfiles;
    .param p5, "pm"  # Landroid/content/pm/IPackageManager;

    .line 7879
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 7880
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/notification/ManagedServices;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V

    .line 7872
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    .line 7874
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mUserSetMap:Landroid/util/ArrayMap;

    .line 7876
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    .line 7884
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1b
    sget-object v1, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_ALLOWED_ADJUSTMENTS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2c

    .line 7885
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    sget-object v2, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_ALLOWED_ADJUSTMENTS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7884
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 7887
    .end local v0  # "i":I
    :cond_2c
    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;
    .param p1, "x1"  # Landroid/service/notification/StatusBarNotification;
    .param p2, "x2"  # Ljava/lang/String;

    .line 7865
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantSnoozedLocked(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/NotificationRecord;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;
    .param p1, "x1"  # Lcom/android/server/notification/NotificationRecord;

    .line 7865
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->onNotificationEnqueuedLocked(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method private isVerboseLogEnabled()Z
    .registers 3

    .line 8258
    const-string/jumbo v0, "notification_assistant"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$notifyAssistantLocked$9(Ljava/util/function/BiConsumer;Landroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .registers 3
    .param p0, "callback"  # Ljava/util/function/BiConsumer;
    .param p1, "assistant"  # Landroid/service/notification/INotificationListener;
    .param p2, "sbnHolder"  # Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    .line 8210
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;ZLjava/util/function/BiConsumer;)V
    .registers 14
    .param p1, "sbn"  # Landroid/service/notification/StatusBarNotification;
    .param p2, "sameUserOnly"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/StatusBarNotification;",
            "Z",
            "Ljava/util/function/BiConsumer<",
            "Landroid/service/notification/INotificationListener;",
            "Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;",
            ">;)V"
        }
    .end annotation

    .line 8187
    .local p3, "callback":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;>;"
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$TrimCache;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {v0, v1, p1}, Lcom/android/server/notification/NotificationManagerService$TrimCache;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;)V

    .line 8191
    .local v0, "trimCache":Lcom/android/server/notification/NotificationManagerService$TrimCache;
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isVerboseLogEnabled()Z

    move-result v1

    .line 8192
    .local v1, "debug":Z
    if-eqz v1, :cond_39

    .line 8193
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyAssistantLocked() called with: sbn = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "], sameUserOnly = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "], callback = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8197
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getServices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 8198
    .local v3, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4, p1, v3}, Lcom/android/server/notification/NotificationManagerService;->access$4700(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v4

    if-eqz v4, :cond_63

    if-eqz p2, :cond_61

    .line 8199
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSameUser(I)Z

    move-result v4

    if-eqz v4, :cond_63

    :cond_61
    const/4 v4, 0x1

    goto :goto_64

    :cond_63
    const/4 v4, 0x0

    .line 8200
    .local v4, "sbnVisible":Z
    :goto_64
    if-eqz v1, :cond_85

    .line 8201
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifyAssistantLocked info="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " snbVisible="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8203
    :cond_85
    if-nez v4, :cond_88

    .line 8204
    goto :goto_41

    .line 8206
    :cond_88
    iget-object v5, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v5, Landroid/service/notification/INotificationListener;

    .line 8207
    .local v5, "assistant":Landroid/service/notification/INotificationListener;
    invoke-virtual {v0, v3}, Lcom/android/server/notification/NotificationManagerService$TrimCache;->ForListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    .line 8208
    .local v6, "sbnToPost":Landroid/service/notification/StatusBarNotification;
    new-instance v7, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    invoke-direct {v7, v6}, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;-><init>(Landroid/service/notification/StatusBarNotification;)V

    .line 8210
    .local v7, "sbnHolder":Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v8}, Lcom/android/server/notification/NotificationManagerService;->access$2100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v8

    new-instance v9, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$FrOqX0VMAS0gs6vhrmVEabwpi2k;

    invoke-direct {v9, p3, v5, v7}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$FrOqX0VMAS0gs6vhrmVEabwpi2k;-><init>(Ljava/util/function/BiConsumer;Landroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V

    invoke-virtual {v8, v9}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 8211
    .end local v3  # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v4  # "sbnVisible":Z
    .end local v5  # "assistant":Landroid/service/notification/INotificationListener;
    .end local v6  # "sbnToPost":Landroid/service/notification/StatusBarNotification;
    .end local v7  # "sbnHolder":Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;
    goto :goto_41

    .line 8212
    :cond_a4
    return-void
.end method

.method private notifyAssistantSnoozedLocked(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .registers 5
    .param p1, "sbn"  # Landroid/service/notification/StatusBarNotification;
    .param p2, "snoozeCriterionId"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 8160
    new-instance v0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$hZf_EguDPjMH_PBC0gm7sadRDTE;

    invoke-direct {v0, p0, p2}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$hZf_EguDPjMH_PBC0gm7sadRDTE;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;ZLjava/util/function/BiConsumer;)V

    .line 8171
    return-void
.end method

.method private notifyCapabilitiesChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 7
    .param p1, "info"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 8035
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 8037
    .local v0, "assistant":Landroid/service/notification/INotificationListener;
    :try_start_4
    invoke-interface {v0}, Landroid/service/notification/INotificationListener;->onAllowedAdjustmentsChanged()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 8040
    goto :goto_20

    .line 8038
    :catch_8
    move-exception v1

    .line 8039
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to notify assistant (capabilities): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8041
    .end local v1  # "ex":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method private notifySeen(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/util/ArrayList;)V
    .registers 8
    .param p1, "info"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 8045
    .local p2, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 8047
    .local v0, "assistant":Landroid/service/notification/INotificationListener;
    :try_start_4
    invoke-interface {v0, p2}, Landroid/service/notification/INotificationListener;->onNotificationsSeen(Ljava/util/List;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 8050
    goto :goto_20

    .line 8048
    :catch_8
    move-exception v1

    .line 8049
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to notify assistant (seen): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8051
    .end local v1  # "ex":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method private onNotificationEnqueuedLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 6
    .param p1, "r"  # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 8055
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isVerboseLogEnabled()Z

    move-result v0

    .line 8056
    .local v0, "debug":Z
    if-eqz v0, :cond_22

    .line 8057
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onNotificationEnqueuedLocked() called with: r = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8059
    :cond_22
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 8060
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$xFD5w0lXKCfWgU2f03eJAOPQABs;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$xFD5w0lXKCfWgU2f03eJAOPQABs;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;ZLcom/android/server/notification/NotificationRecord;)V

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;ZLjava/util/function/BiConsumer;)V

    .line 8074
    return-void
.end method


# virtual methods
.method protected allowAdjustmentType(Ljava/lang/String;)V
    .registers 6
    .param p1, "type"  # Ljava/lang/String;

    .line 7960
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7961
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7962
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_2d

    .line 7963
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 7964
    .local v1, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$2100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v2

    new-instance v3, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$FsWpf1cmSi9GG7O4rBv1eLAEE9M;

    invoke-direct {v3, p0, v1}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$FsWpf1cmSi9GG7O4rBv1eLAEE9M;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 7965
    .end local v1  # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    goto :goto_11

    .line 7966
    :cond_2c
    return-void

    .line 7962
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method protected asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3
    .param p1, "binder"  # Landroid/os/IBinder;

    .line 7904
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object v0

    return-object v0
.end method

.method protected checkType(Landroid/os/IInterface;)Z
    .registers 3
    .param p1, "service"  # Landroid/os/IInterface;

    .line 7909
    instance-of v0, p1, Landroid/service/notification/INotificationListener;

    return v0
.end method

.method protected disallowAdjustmentType(Ljava/lang/String;)V
    .registers 6
    .param p1, "type"  # Ljava/lang/String;

    .line 7969
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7970
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 7971
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_2d

    .line 7972
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 7973
    .local v1, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$2100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v2

    new-instance v3, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$6E04T6AkRfKEIjCw7jopFAFGv30;

    invoke-direct {v3, p0, v1}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$6E04T6AkRfKEIjCw7jopFAFGv30;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 7974
    .end local v1  # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    goto :goto_11

    .line 7975
    :cond_2c
    return-void

    .line 7971
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 10
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "filter"  # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 8247
    invoke-super {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 8248
    const-string v0, "    Has user set:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8249
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8250
    :try_start_b
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mUserSetMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 8251
    .local v1, "userIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 8252
    .local v3, "userId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "      userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mUserSetMap:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8253
    .end local v3  # "userId":I
    goto :goto_15

    .line 8254
    .end local v1  # "userIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_4c
    monitor-exit v0

    .line 8255
    return-void

    .line 8254
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_b .. :try_end_50} :catchall_4e

    throw v1
.end method

.method protected getAllowedAssistantAdjustments()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7978
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7979
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7980
    .local v1, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7981
    monitor-exit v0

    return-object v1

    .line 7982
    .end local v1  # "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method protected getConfig()Lcom/android/server/notification/ManagedServices$Config;
    .registers 3

    .line 7891
    new-instance v0, Lcom/android/server/notification/ManagedServices$Config;

    invoke-direct {v0}, Lcom/android/server/notification/ManagedServices$Config;-><init>()V

    .line 7892
    .local v0, "c":Lcom/android/server/notification/ManagedServices$Config;
    const-string/jumbo v1, "notification assistant"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 7893
    const-string v1, "android.service.notification.NotificationAssistantService"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    .line 7894
    const-string v1, "enabled_assistants"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    .line 7895
    const-string v1, "enabled_notification_assistant"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    .line 7896
    const-string v1, "android.permission.BIND_NOTIFICATION_ASSISTANT_SERVICE"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    .line 7897
    const-string v1, "android.settings.MANAGE_DEFAULT_APPS_SETTINGS"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    .line 7898
    const v1, 0x104048a

    iput v1, v0, Lcom/android/server/notification/ManagedServices$Config;->clientLabel:I

    .line 7899
    return-object v0
.end method

.method protected getRequiredPermission()Ljava/lang/String;
    .registers 2

    .line 7934
    const-string v0, "android.permission.REQUEST_NOTIFICATION_ASSISTANT_SERVICE"

    return-object v0
.end method

.method hasUserSet(I)Z
    .registers 6
    .param p1, "userId"  # I

    .line 8011
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8012
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mUserSetMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 8013
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method protected isAdjustmentAllowed(Ljava/lang/String;)Z
    .registers 4
    .param p1, "type"  # Ljava/lang/String;

    .line 7986
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7987
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 7988
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public isEnabled()Z
    .registers 2

    .line 8215
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public synthetic lambda$allowAdjustmentType$0$NotificationManagerService$NotificationAssistants(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 2
    .param p1, "info"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 7964
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyCapabilitiesChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    return-void
.end method

.method public synthetic lambda$disallowAdjustmentType$1$NotificationManagerService$NotificationAssistants(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 2
    .param p1, "info"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 7973
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyCapabilitiesChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    return-void
.end method

.method public synthetic lambda$notifyAssistantActionClicked$7$NotificationManagerService$NotificationAssistants(Ljava/lang/String;Landroid/app/Notification$Action;ZLandroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .registers 10
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "action"  # Landroid/app/Notification$Action;
    .param p3, "generatedByAssistant"  # Z
    .param p4, "assistant"  # Landroid/service/notification/INotificationListener;
    .param p5, "sbnHolder"  # Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    .line 8141
    nop

    .line 8144
    if-eqz p3, :cond_5

    .line 8145
    const/4 v0, 0x1

    goto :goto_6

    .line 8146
    :cond_5
    const/4 v0, 0x0

    .line 8141
    :goto_6
    :try_start_6
    invoke-interface {p4, p1, p2, v0}, Landroid/service/notification/INotificationListener;->onActionClicked(Ljava/lang/String;Landroid/app/Notification$Action;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 8149
    goto :goto_22

    .line 8147
    :catch_a
    move-exception v0

    .line 8148
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to notify assistant (snoozed): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8150
    .end local v0  # "ex":Landroid/os/RemoteException;
    :goto_22
    return-void
.end method

.method public synthetic lambda$notifyAssistantExpansionChangedLocked$4$NotificationManagerService$NotificationAssistants(Ljava/lang/String;ZZLandroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .registers 10
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "isUserAction"  # Z
    .param p3, "isExpanded"  # Z
    .param p4, "assistant"  # Landroid/service/notification/INotificationListener;
    .param p5, "sbnHolder"  # Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    .line 8087
    :try_start_0
    invoke-interface {p4, p1, p2, p3}, Landroid/service/notification/INotificationListener;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 8090
    goto :goto_1c

    .line 8088
    :catch_4
    move-exception v0

    .line 8089
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to notify assistant (expanded): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8091
    .end local v0  # "ex":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method

.method public synthetic lambda$notifyAssistantNotificationDirectReplyLocked$5$NotificationManagerService$NotificationAssistants(Ljava/lang/String;Landroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .registers 8
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "assistant"  # Landroid/service/notification/INotificationListener;
    .param p3, "sbnHolder"  # Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    .line 8103
    :try_start_0
    invoke-interface {p2, p1}, Landroid/service/notification/INotificationListener;->onNotificationDirectReply(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 8106
    goto :goto_1c

    .line 8104
    :catch_4
    move-exception v0

    .line 8105
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to notify assistant (expanded): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8107
    .end local v0  # "ex":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method

.method public synthetic lambda$notifyAssistantSnoozedLocked$8$NotificationManagerService$NotificationAssistants(Ljava/lang/String;Landroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .registers 8
    .param p1, "snoozeCriterionId"  # Ljava/lang/String;
    .param p2, "assistant"  # Landroid/service/notification/INotificationListener;
    .param p3, "sbnHolder"  # Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    .line 8165
    :try_start_0
    invoke-interface {p2, p3, p1}, Landroid/service/notification/INotificationListener;->onNotificationSnoozedUntilContext(Landroid/service/notification/IStatusBarNotificationHolder;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 8169
    goto :goto_1c

    .line 8167
    :catch_4
    move-exception v0

    .line 8168
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to notify assistant (snoozed): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8170
    .end local v0  # "ex":Landroid/os/RemoteException;
    :goto_1c
    return-void
.end method

.method public synthetic lambda$notifyAssistantSuggestedReplySent$6$NotificationManagerService$NotificationAssistants(Ljava/lang/String;Ljava/lang/CharSequence;ZLandroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .registers 10
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "reply"  # Ljava/lang/CharSequence;
    .param p3, "generatedByAssistant"  # Z
    .param p4, "assistant"  # Landroid/service/notification/INotificationListener;
    .param p5, "sbnHolder"  # Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    .line 8119
    nop

    .line 8122
    if-eqz p3, :cond_5

    .line 8123
    const/4 v0, 0x1

    goto :goto_6

    .line 8124
    :cond_5
    const/4 v0, 0x0

    .line 8119
    :goto_6
    :try_start_6
    invoke-interface {p4, p1, p2, v0}, Landroid/service/notification/INotificationListener;->onSuggestedReplySent(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 8127
    goto :goto_22

    .line 8125
    :catch_a
    move-exception v0

    .line 8126
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to notify assistant (snoozed): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8128
    .end local v0  # "ex":Landroid/os/RemoteException;
    :goto_22
    return-void
.end method

.method public synthetic lambda$onNotificationEnqueuedLocked$3$NotificationManagerService$NotificationAssistants(ZLcom/android/server/notification/NotificationRecord;Landroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .registers 9
    .param p1, "debug"  # Z
    .param p2, "r"  # Lcom/android/server/notification/NotificationRecord;
    .param p3, "assistant"  # Landroid/service/notification/INotificationListener;
    .param p4, "sbnHolder"  # Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    .line 8065
    if-eqz p1, :cond_18

    .line 8066
    :try_start_2
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calling onNotificationEnqueuedWithChannel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8069
    :cond_18
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-interface {p3, p4, v0}, Landroid/service/notification/INotificationListener;->onNotificationEnqueuedWithChannel(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/app/NotificationChannel;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1f} :catch_20

    .line 8072
    goto :goto_38

    .line 8070
    :catch_20
    move-exception v0

    .line 8071
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to notify assistant (enqueued): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8073
    .end local v0  # "ex":Landroid/os/RemoteException;
    :goto_38
    return-void
.end method

.method public synthetic lambda$onNotificationsSeenLocked$2$NotificationManagerService$NotificationAssistants(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/util/ArrayList;)V
    .registers 3
    .param p1, "info"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "keys"  # Ljava/util/ArrayList;

    .line 8005
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifySeen(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method notifyAssistantActionClicked(Landroid/service/notification/StatusBarNotification;ILandroid/app/Notification$Action;Z)V
    .registers 8
    .param p1, "sbn"  # Landroid/service/notification/StatusBarNotification;
    .param p2, "actionIndex"  # I
    .param p3, "action"  # Landroid/app/Notification$Action;
    .param p4, "generatedByAssistant"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 8135
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 8136
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$Rqv2CeOOOVMkVDRSXa6GcHvi5Vc;

    invoke-direct {v1, p0, v0, p3, p4}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$Rqv2CeOOOVMkVDRSXa6GcHvi5Vc;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;Landroid/app/Notification$Action;Z)V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;ZLjava/util/function/BiConsumer;)V

    .line 8151
    return-void
.end method

.method notifyAssistantExpansionChangedLocked(Landroid/service/notification/StatusBarNotification;ZZ)V
    .registers 7
    .param p1, "sbn"  # Landroid/service/notification/StatusBarNotification;
    .param p2, "isUserAction"  # Z
    .param p3, "isExpanded"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 8081
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 8082
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$h7WPxGy6WExnaTHJZiTUqSURFAU;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$h7WPxGy6WExnaTHJZiTUqSURFAU;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;ZZ)V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;ZLjava/util/function/BiConsumer;)V

    .line 8092
    return-void
.end method

.method notifyAssistantNotificationDirectReplyLocked(Landroid/service/notification/StatusBarNotification;)V
    .registers 5
    .param p1, "sbn"  # Landroid/service/notification/StatusBarNotification;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 8097
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 8098
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$JF5pLiK7GJ1M0xNPiK9WMEs3Axo;

    invoke-direct {v1, p0, v0}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$JF5pLiK7GJ1M0xNPiK9WMEs3Axo;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;ZLjava/util/function/BiConsumer;)V

    .line 8108
    return-void
.end method

.method notifyAssistantSuggestedReplySent(Landroid/service/notification/StatusBarNotification;Ljava/lang/CharSequence;Z)V
    .registers 7
    .param p1, "sbn"  # Landroid/service/notification/StatusBarNotification;
    .param p2, "reply"  # Ljava/lang/CharSequence;
    .param p3, "generatedByAssistant"  # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 8113
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 8114
    .local v0, "key":Ljava/lang/String;
    new-instance v1, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$-pTtydmbKR53sVGAi5B-_cGeLDo;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$-pTtydmbKR53sVGAi5B-_cGeLDo;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;ZLjava/util/function/BiConsumer;)V

    .line 8129
    return-void
.end method

.method protected onNotificationsSeenLocked(Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)V"
        }
    .end annotation

    .line 7994
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 7995
    .local v1, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 7996
    .local v2, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 7997
    .local v4, "r":Lcom/android/server/notification/NotificationRecord;
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-static {v5, v6, v1}, Lcom/android/server/notification/NotificationManagerService;->access$4700(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 7998
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSameUser(I)Z

    move-result v5

    if-eqz v5, :cond_43

    const/4 v5, 0x1

    goto :goto_44

    :cond_43
    const/4 v5, 0x0

    .line 7999
    .local v5, "sbnVisible":Z
    :goto_44
    if-eqz v5, :cond_4d

    .line 8000
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8002
    .end local v4  # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v5  # "sbnVisible":Z
    :cond_4d
    goto :goto_21

    .line 8004
    :cond_4e
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_62

    .line 8005
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$2100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v3

    new-instance v4, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$hdUZ_hmwLutGkIKdq7dHKjQLP4E;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NotificationAssistants$hdUZ_hmwLutGkIKdq7dHKjQLP4E;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 8007
    .end local v1  # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v2  # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_62
    goto :goto_8

    .line 8008
    :cond_63
    return-void
.end method

.method protected onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 3
    .param p1, "info"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 7914
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->registerGuestService(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 7915
    return-void
.end method

.method protected onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 5
    .param p1, "removed"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 7920
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    iget v2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->unregisterService(Landroid/os/IInterface;I)V

    .line 7921
    return-void
.end method

.method public onUserUnlocked(I)V
    .registers 5
    .param p1, "user"  # I

    .line 7925
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->DEBUG:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserUnlocked u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7928
    :cond_1b
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->rebindServices(ZI)V

    .line 7929
    return-void
.end method

.method protected readExtraAttributes(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;I)V
    .registers 6
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8030
    const-string/jumbo v0, "user_set"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v0

    .line 8031
    .local v0, "userSet":Z
    invoke-virtual {p0, p3, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->setUserSet(IZ)V

    .line 8032
    return-void
.end method

.method protected readExtraTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "parser"  # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7948
    const-string/jumbo v0, "q_allowed_adjustments"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 7949
    const-string/jumbo v0, "types"

    invoke-static {p2, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7950
    .local v0, "types":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7951
    :try_start_13
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 7952
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 7953
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 7955
    :cond_2d
    monitor-exit v1

    goto :goto_32

    :catchall_2f
    move-exception v2

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_13 .. :try_end_31} :catchall_2f

    throw v2

    .line 7957
    .end local v0  # "types":Ljava/lang/String;
    :cond_32
    :goto_32
    return-void
.end method

.method protected resetDefaultAssistantsIfNecessary()V
    .registers 8

    .line 8219
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mUm:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 8220
    .local v0, "activeUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 8221
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 8222
    .local v3, "userId":I
    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->hasUserSet(I)Z

    move-result v4

    if-nez v4, :cond_40

    .line 8223
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Approving default notification assistant for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8224
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/notification/NotificationManagerService;->setDefaultAssistantForUser(I)V

    .line 8226
    .end local v2  # "userInfo":Landroid/content/pm/UserInfo;
    .end local v3  # "userId":I
    :cond_40
    goto :goto_b

    .line 8227
    :cond_41
    return-void
.end method

.method protected setPackageOrComponentEnabled(Ljava/lang/String;IZZ)V
    .registers 9
    .param p1, "pkgOrComponent"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "isPrimary"  # Z
    .param p4, "enabled"  # Z

    .line 8233
    if-eqz p4, :cond_23

    .line 8234
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getAllowedComponents(I)Ljava/util/List;

    move-result-object v0

    .line 8235
    .local v0, "allowedComponents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_23

    .line 8236
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 8237
    .local v1, "currentComponent":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    return-void

    .line 8238
    :cond_1d
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, p2, v3}, Lcom/android/server/notification/NotificationManagerService;->setNotificationAssistantAccessGrantedForUserInternal(Landroid/content/ComponentName;IZ)V

    .line 8242
    .end local v0  # "allowedComponents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v1  # "currentComponent":Landroid/content/ComponentName;
    :cond_23
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/notification/ManagedServices;->setPackageOrComponentEnabled(Ljava/lang/String;IZZ)V

    .line 8243
    return-void
.end method

.method setUserSet(IZ)V
    .registers 7
    .param p1, "userId"  # I
    .param p2, "set"  # Z

    .line 8017
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8018
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mUserSetMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8019
    monitor-exit v0

    .line 8020
    return-void

    .line 8019
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method protected writeExtraAttributes(Lorg/xmlpull/v1/XmlSerializer;I)V
    .registers 6
    .param p1, "out"  # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8024
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->hasUserSet(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "user_set"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 8025
    return-void
.end method

.method protected writeExtraXmlTags(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 7
    .param p1, "out"  # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7939
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7940
    :try_start_3
    const-string/jumbo v1, "q_allowed_adjustments"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7941
    const-string/jumbo v1, "types"

    const-string v3, ","

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7942
    const-string/jumbo v1, "q_allowed_adjustments"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7943
    monitor-exit v0

    .line 7944
    return-void

    .line 7943
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method
