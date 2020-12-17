.class public Lcom/android/systemui/statusbar/notification/NotificationFilter;
.super Ljava/lang/Object;
.source "NotificationFilter.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private mEnvironment:Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

.field private mFsc:Lcom/android/systemui/ForegroundServiceController;

.field private final mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private mUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-class v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    return-void
.end method

.method private static checkUidPermission(Landroid/content/pm/IPackageManager;Ljava/lang/String;I)I
    .registers 3

    .line 158
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result p0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    .line 160
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private getEnvironment()Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mEnvironment:Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

    if-nez v0, :cond_e

    .line 57
    const-class v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mEnvironment:Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

    .line 59
    :cond_e
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mEnvironment:Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

    return-object p0
.end method

.method private getFsc()Lcom/android/systemui/ForegroundServiceController;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mFsc:Lcom/android/systemui/ForegroundServiceController;

    if-nez v0, :cond_e

    .line 71
    const-class v0, Lcom/android/systemui/ForegroundServiceController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/ForegroundServiceController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mFsc:Lcom/android/systemui/ForegroundServiceController;

    .line 73
    :cond_e
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mFsc:Lcom/android/systemui/ForegroundServiceController;

    return-object p0
.end method

.method private getShadeController()Lcom/android/systemui/statusbar/phone/ShadeController;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    if-nez v0, :cond_e

    .line 64
    const-class v0, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ShadeController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 66
    :cond_e
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    return-object p0
.end method

.method private getUserManager()Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    if-nez v0, :cond_e

    .line 78
    const-class v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 80
    :cond_e
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    return-object p0
.end method

.method static showNotificationEvenIfUnprovisioned(Landroid/content/pm/IPackageManager;Landroid/service/notification/StatusBarNotification;)Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 151
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v0

    const-string v1, "android.permission.NOTIFICATION_DURING_SETUP"

    .line 150
    invoke-static {p0, v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->checkUidPermission(Landroid/content/pm/IPackageManager;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1c

    .line 152
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p1, "android.allowDuringSetup"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method private static showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z
    .registers 2

    .line 144
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->showNotificationEvenIfUnprovisioned(Landroid/content/pm/IPackageManager;Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public shouldFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .registers 6

    .line 88
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->getEnvironment()Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;->isDeviceProvisioned()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_14

    .line 90
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    .line 94
    :cond_14
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->getEnvironment()Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    .line 98
    :cond_1f
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->getUserManager()Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 99
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->visibility:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_52

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->getUserManager()Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldHideNotifications(I)Z

    move-result v1

    if-nez v1, :cond_52

    .line 101
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->getUserManager()Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldHideNotifications(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    :cond_52
    return v2

    .line 105
    :cond_53
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->getShadeController()Lcom/android/systemui/statusbar/phone/ShadeController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/ShadeController;->isDozing()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressAmbient()Z

    move-result v1

    if-eqz v1, :cond_64

    return v2

    .line 109
    :cond_64
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->getShadeController()Lcom/android/systemui/statusbar/phone/ShadeController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/ShadeController;->isDozing()Z

    move-result v1

    if-nez v1, :cond_75

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressNotificationList()Z

    move-result v1

    if-eqz v1, :cond_75

    return v2

    .line 113
    :cond_75
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->suspended:Z

    if-eqz p1, :cond_7a

    return v2

    .line 117
    :cond_7a
    sget-boolean p1, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_CHILD_NOTIFICATIONS:Z

    if-nez p1, :cond_87

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationFilter;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 118
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    if-eqz p1, :cond_87

    return v2

    .line 122
    :cond_87
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->getFsc()Lcom/android/systemui/ForegroundServiceController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/systemui/ForegroundServiceController;->isDisclosureNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    if-eqz p1, :cond_a0

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->getFsc()Lcom/android/systemui/ForegroundServiceController;

    move-result-object p1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/systemui/ForegroundServiceController;->isDisclosureNeededForUser(I)Z

    move-result p1

    if-nez p1, :cond_a0

    return v2

    .line 127
    :cond_a0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->getFsc()Lcom/android/systemui/ForegroundServiceController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/systemui/ForegroundServiceController;->isSystemAlertNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_cd

    .line 128
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.foregroundApps"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_cd

    .line 130
    array-length v3, p1

    if-lt v3, v2, :cond_cd

    .line 131
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->getFsc()Lcom/android/systemui/ForegroundServiceController;

    move-result-object p0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    aget-object p1, p1, v1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/ForegroundServiceController;->isSystemAlertWarningNeeded(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_cd

    return v2

    :cond_cd
    return v1
.end method
