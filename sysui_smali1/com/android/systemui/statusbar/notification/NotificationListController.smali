.class public Lcom/android/systemui/statusbar/notification/NotificationListController;
.super Ljava/lang/Object;
.source "NotificationListController.java"


# instance fields
.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private final mDeviceProvisionedListener:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

.field private final mEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

.field private final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private final mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

.field private final mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/ForegroundServiceController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V
    .registers 6

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationListController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationListController$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationListController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationListController;->mEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 80
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationListController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationListController$2;-><init>(Lcom/android/systemui/statusbar/notification/NotificationListController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationListController;->mDeviceProvisionedListener:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    .line 49
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationListController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 50
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationListController;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 51
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/ForegroundServiceController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationListController;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    .line 52
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationListController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/NotificationListController;)Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationListController;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/NotificationListController;Landroid/service/notification/StatusBarNotification;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationListController;->tagForeground(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/NotificationListController;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationListController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-object p0
.end method

.method private tagForeground(Landroid/service/notification/StatusBarNotification;)V
    .registers 9

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationListController;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    .line 92
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/ForegroundServiceController;->getAppOps(ILjava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 94
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_30

    .line 96
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    .line 97
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 96
    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/systemui/statusbar/notification/NotificationListController;->updateNotificationsForAppOp(IILjava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_30
    return-void
.end method


# virtual methods
.method public bind()V
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationListController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationListController;->mEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationListController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationListController;->mDeviceProvisionedListener:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public updateNotificationsForAppOp(IILjava/lang/String;Z)V
    .registers 13

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationListController;->mForegroundServiceController:Lcom/android/systemui/ForegroundServiceController;

    .line 105
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1, p3}, Lcom/android/systemui/ForegroundServiceController;->getStandardLayoutKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1e

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationListController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 108
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v2

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->updateAppOp(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 109
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationListController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    :cond_1e
    return-void
.end method
