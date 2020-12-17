.class public Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;
.super Ljava/lang/Object;
.source "NotificationGutsManager.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/NotificationLifetimeExtender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$OnSettingsClickListener;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mCheckSaveListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentFilterObserver:Landroid/database/ContentObserver;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mFilterHelper:Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;

.field private mFilterListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

.field private final mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mGutsMenuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

.field protected mKeyToRemoveOnGutsClosed:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

.field private final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

.field private final mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

.field private mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

.field private mNotificationLifetimeFinishedCallback:Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;

.field private mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$OnSettingsClickListener;

.field private mOpenRunnable:Ljava/lang/Runnable;

.field private mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;)V
    .registers 5
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 102
    const-class v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 103
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 104
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 105
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 106
    const-class v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 107
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 751
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$3;

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 752
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$3;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mCurrentFilterObserver:Landroid/database/ContentObserver;

    .line 128
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mContext:Landroid/content/Context;

    .line 129
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 130
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mContext:Landroid/content/Context;

    const-string v0, "accessibility"

    .line 131
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 133
    const-class p2, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 134
    const-class p2, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 135
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    const-string/jumbo p2, "statusbar"

    .line 137
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 136
    invoke-static {p2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 138
    new-instance p2, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;

    invoke-direct {p2, p1}, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mFilterHelper:Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "current_notification_filter_value"

    .line 141
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mCurrentFilterObserver:Landroid/database/ContentObserver;

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 140
    invoke-virtual {p1, p2, v0, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;)Lcom/android/systemui/plugins/statusbar/StatusBarStateController;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;)Landroid/view/accessibility/AccessibilityManager;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;)Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;)Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mFilterListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mGutsMenuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;)Landroid/content/Context;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Ljava/lang/String;IZ)V
    .registers 4

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->moveAndUpdateNotifications(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-object p0
.end method

.method private bindGuts(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .registers 3

    .line 223
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->ensureGutsInflated()V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mGutsMenuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->bindGuts(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    move-result p0

    return p0
.end method

.method private handleGutsFilterButtonOnClick(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 6

    const-string v0, "NotificationGutsManager"

    const-string v1, "handleGutsFilterButtonOnClick: enter"

    .line 639
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 641
    iget-object v1, v0, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-boolean v1, v1, Landroid/service/notification/StatusBarNotification$Filter;->intercept:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    const/4 v1, -0x1

    goto :goto_15

    :cond_14
    move v1, v2

    .line 642
    :goto_15
    iget-object v3, v0, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-boolean v3, v3, Landroid/service/notification/StatusBarNotification$Filter;->intercept:Z

    xor-int/2addr v2, v3

    .line 643
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v0

    .line 645
    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->moveAndUpdateNotifications(Ljava/lang/String;IZ)V

    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 648
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_notification_filter_value"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 651
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications()V

    .line 653
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$2;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initializeAppOpsInfo(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;)V
    .registers 7

    .line 320
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v0

    .line 321
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 322
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    .line 323
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mContext:Landroid/content/Context;

    .line 324
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 323
    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 326
    new-instance v3, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$QUX76CVRNteGCzCinyuNeuYX3tU;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$QUX76CVRNteGCzCinyuNeuYX3tU;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 332
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mActiveAppOps:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_30

    .line 333
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mActiveAppOps:Landroid/util/ArraySet;

    invoke-virtual {p2, v2, v3, v1, p0}, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;->bindGuts(Landroid/content/pm/PackageManager;Lcom/android/systemui/statusbar/notification/row/AppOpsInfo$OnSettingsClickListener;Landroid/service/notification/StatusBarNotification;Landroid/util/ArraySet;)V

    :cond_30
    return-void
.end method

.method private initializeSnoozeView(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;)V
    .registers 6

    .line 293
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v0

    .line 294
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 296
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getSwipeActionHelper()Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->setSnoozeListener(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;)V

    .line 297
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 298
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->snoozeCriteria:Ljava/util/List;

    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->setSnoozeOptions(Ljava/util/List;)V

    .line 299
    new-instance p2, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$xtHxMW6jrIgJGugFgxSSg6aT080;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$xtHxMW6jrIgJGugFgxSSg6aT080;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->setHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnHeightChangedListener;)V

    return-void
.end method

.method static synthetic lambda$initializeNotificationInfo$5(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Landroid/view/View;)V
    .registers 3

    const/4 p1, 0x0

    const/4 v0, -0x1

    .line 377
    invoke-virtual {p0, v0, v0, p1, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(IIZZ)V

    return-void
.end method

.method private moveAndUpdateNotifications(Ljava/lang/String;IZ)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v9, p2

    .line 676
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    .line 677
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 678
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 679
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 680
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_20
    if-ge v4, v3, :cond_47

    .line 684
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 685
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 686
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_47
    const/4 v14, 0x0

    .line 690
    :goto_48
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-ge v14, v0, :cond_14a

    .line 691
    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/service/notification/StatusBarNotification;

    .line 692
    iget-object v0, v15, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-boolean v0, v0, Landroid/service/notification/StatusBarNotification$Filter;->intercept:Z

    xor-int/lit8 v0, v0, 0x1

    .line 695
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v3

    const-string v8, "NotificationGutsManager"

    if-eqz v3, :cond_96

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v3, v15}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isOnlyChildInGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 696
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v3, v15}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getLogicalGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v3

    .line 697
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick: get groupSummary(Flyme)==["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 697
    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_96
    if-eqz v0, :cond_b1

    .line 701
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 702
    invoke-virtual {v3, v15}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-nez v3, :cond_a8

    iget-object v3, v15, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v3}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 703
    :cond_a8
    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b1
    if-eqz v0, :cond_fe

    .line 708
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v3, v15}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 709
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->removeFromGroup(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    goto :goto_fe

    .line 712
    :cond_c5
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v3, v15}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupSummary(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v3

    if-eqz v3, :cond_fe

    .line 713
    iget-object v4, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 714
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    .line 713
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_fe

    .line 715
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationData:Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->removeFromGroup(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 716
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick: isSummaryOfSuppressedGroup,id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_fe
    :goto_fe
    iget-object v3, v15, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iput-boolean v0, v3, Landroid/service/notification/StatusBarNotification$Filter;->filterByUserBefore:Z

    move/from16 v7, p3

    .line 721
    iput-boolean v7, v3, Landroid/service/notification/StatusBarNotification$Filter;->intercept:Z

    .line 722
    iput v9, v3, Landroid/service/notification/StatusBarNotification$Filter;->userFilter:I

    .line 724
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/phone/StatusBar;->onNotificationFilterChange(Landroid/service/notification/StatusBarNotification;)V

    .line 728
    :try_start_10d
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getPkg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    .line 729
    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0
    :try_end_11f
    .catch Landroid/os/RemoteException; {:try_start_10d .. :try_end_11f} :catch_129

    move v7, v0

    move-object v13, v8

    move/from16 v8, p2

    .line 728
    :try_start_123
    invoke-interface/range {v3 .. v8}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationUserFilter(Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_126
    .catch Landroid/os/RemoteException; {:try_start_123 .. :try_end_126} :catch_127

    goto :goto_130

    :catch_127
    move-exception v0

    goto :goto_12b

    :catch_129
    move-exception v0

    move-object v13, v8

    :goto_12b
    const-string v3, "onNotificationUserFilter exception"

    .line 732
    invoke-static {v13, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 734
    :goto_130
    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    sget v3, Lcom/android/systemui/R$id;->filter_panel:I

    const-string v4, "read"

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 735
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mContext:Landroid/content/Context;

    iget-object v3, v15, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-boolean v3, v3, Landroid/service/notification/StatusBarNotification$Filter;->intercept:Z

    invoke-static {v0, v15, v3}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->collectNotificationFilterByUser(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Z)V

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_48

    :cond_14a
    const/4 v0, 0x0

    .line 739
    :goto_14b
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_167

    .line 740
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->removeAllChildren()V

    .line 741
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->performDismiss(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_14b

    .line 745
    :cond_167
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mFilterHelper:Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;

    invoke-virtual {v0, v2, v9}, Lcom/flyme/systemui/statusbar/policy/NotificationFilterHelper;->updateUserFilter(Ljava/lang/String;I)V

    return-void
.end method

.method private mzStartAppNotificationSettingsActivity(Ljava/lang/String;Ljava/lang/String;ILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 7

    .line 664
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.provider.extra.APP_PACKAGE"

    .line 665
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "app_uid"

    .line 666
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, ":settings:show_fragment_title"

    .line 667
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 668
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const p1, 0x8000

    .line 669
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 670
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    invoke-interface {p0, v0, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;->startNotificationGutsIntent(Landroid/content/Intent;ILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method private startAppDetailsSettingsActivity(Ljava/lang/String;ILandroid/app/NotificationChannel;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 8

    .line 195
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    const/4 v2, 0x0

    .line 196
    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "android.provider.extra.APP_PACKAGE"

    .line 197
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "app_uid"

    .line 198
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p3, :cond_26

    .line 200
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    const-string p3, ":settings:fragment_args_key"

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    :cond_26
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    invoke-interface {p0, v0, p2, p4}, Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;->startNotificationGutsIntent(Landroid/content/Intent;ILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method private startAppNotificationSettingsActivity(Ljava/lang/String;ILandroid/app/NotificationChannel;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 8

    .line 180
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.provider.extra.APP_PACKAGE"

    .line 181
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "app_uid"

    .line 182
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p3, :cond_2d

    .line 185
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 186
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":settings:fragment_args_key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, ":settings:show_fragment_args"

    .line 188
    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 190
    :cond_2d
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    invoke-interface {p0, v0, p2, p4}, Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;->startNotificationGutsIntent(Landroid/content/Intent;ILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method


# virtual methods
.method protected bindGuts(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 230
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 232
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setGutsView(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    .line 233
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 234
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$lbHSFb83h5SRmJTPUlzactX7_1Q;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$lbHSFb83h5SRmJTPUlzactX7_1Q;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->setClosedListener(Lcom/android/systemui/statusbar/notification/row/NotificationGuts$OnGutsClosedListener;)V

    .line 268
    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getGutsView()Landroid/view/View;

    move-result-object p2

    .line 270
    :try_start_1e
    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;

    if-eqz v0, :cond_28

    .line 271
    check-cast p2, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->initializeSnoozeView(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;)V

    goto :goto_3b

    .line 272
    :cond_28
    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;

    if-eqz v0, :cond_32

    .line 273
    check-cast p2, Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->initializeAppOpsInfo(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/AppOpsInfo;)V

    goto :goto_3b

    .line 274
    :cond_32
    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    if-eqz v0, :cond_3b

    .line 275
    check-cast p2, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->initializeNotificationInfo(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_3b} :catch_3d

    :cond_3b
    :goto_3b
    const/4 p0, 0x1

    return p0

    :catch_3d
    move-exception p0

    const-string p1, "NotificationGutsManager"

    const-string p2, "error binding guts"

    .line 279
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public closeAndSaveGuts(ZZZIIZ)V
    .registers 15

    .line 441
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz v0, :cond_13

    .line 442
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mOpenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 443
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move v3, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(ZZIIZ)V

    :cond_13
    if-eqz p6, :cond_1e

    .line 445
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    if-eqz p0, :cond_1e

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 446
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->resetExposedMenuView(ZZ)V

    :cond_1e
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string p1, "NotificationGutsManager state:"

    .line 623
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mKeyToRemoveOnGutsClosed: "

    .line 624
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 625
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mKeyToRemoveOnGutsClosed:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getExposedGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;
    .registers 1

    .line 454
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    return-object p0
.end method

.method initializeNotificationInfo(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationInfo;)V
    .registers 32
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v15, p1

    .line 346
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v0

    .line 347
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v12

    .line 348
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v10

    .line 351
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    .line 352
    iget-object v2, v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mContext:Landroid/content/Context;

    .line 353
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 352
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v2, "notification"

    .line 355
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 354
    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v17

    .line 356
    new-instance v8, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$5sbilrrQIt_lf--8k9ZdwNLn-js;

    invoke-direct {v8, v7, v0, v12, v15}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$5sbilrrQIt_lf--8k9ZdwNLn-js;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 363
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isBlockingHelperShowing()Z

    move-result v21

    .line 365
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 366
    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v1

    if-nez v1, :cond_42

    goto :goto_44

    :cond_42
    const/4 v1, 0x0

    goto :goto_51

    .line 367
    :cond_44
    :goto_44
    new-instance v11, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$Q50_8sHdIRaYdx4NmoW9bex_4-o;

    move-object v1, v11

    move-object/from16 v2, p0

    move-object v3, v0

    move-object v4, v12

    move-object v5, v10

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$Q50_8sHdIRaYdx4NmoW9bex_4-o;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 376
    :goto_51
    new-instance v2, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$LjQPsxSkLrwvT7L7bw3dY8j9ybs;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$LjQPsxSkLrwvT7L7bw3dY8j9ybs;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V

    .line 380
    new-instance v3, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$0QDbQVrfk3K2wDu7SeKTXWoBYx4;

    invoke-direct {v3, v7, v15}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$0QDbQVrfk3K2wDu7SeKTXWoBYx4;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 383
    new-instance v4, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$fm3_itYRuX6ecQ5lASrxZMYW7Rg;

    invoke-direct {v4, v7, v0, v15}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$NotificationGutsManager$fm3_itYRuX6ecQ5lASrxZMYW7Rg;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    const/4 v5, -0x1

    const/16 v0, 0x2200

    .line 392
    :try_start_63
    invoke-virtual {v9, v10, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_74

    .line 396
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_6b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_63 .. :try_end_6b} :catch_6c

    goto :goto_74

    :catch_6c
    move-exception v0

    const-string v6, "NotificationGutsManager"

    const-string v11, "initializeNotificationInfo: e"

    .line 399
    invoke-static {v6, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_74
    :goto_74
    move/from16 v24, v5

    .line 403
    iget-object v11, v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 408
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    iget-object v13, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->channel:Landroid/app/NotificationChannel;

    .line 409
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getUniqueChannels()Landroid/util/ArraySet;

    move-result-object v14

    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mCheckSaveListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;

    move-object/from16 v16, v0

    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 414
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v19

    .line 415
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getIsNonblockable()Z

    move-result v20

    .line 417
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->importance:I

    move/from16 v22, v0

    .line 418
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isHighPriority()Z

    move-result v23

    move-object v5, v8

    move-object/from16 v8, p2

    move-object v6, v10

    move-object/from16 v10, v17

    move-object v7, v12

    move-object v12, v6

    move-object v15, v7

    move-object/from16 v17, v1

    move-object/from16 v18, v5

    move-object/from16 v25, p1

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    .line 403
    invoke-virtual/range {v8 .. v28}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Ljava/lang/String;Landroid/app/NotificationChannel;Ljava/util/Set;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnSettingsClickListener;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnAppSettingsClickListener;ZZZIZILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View$OnClickListener;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$MzOnFilterClickListener;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$MzOnSettingsClickListener;)V

    return-void
.end method

.method public synthetic lambda$bindGuts$0$NotificationGutsManager(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .registers 7

    const-string v0, "NotificationGutsManager"

    const-string v1, "bindGuts: gut close listener invoked"

    .line 235
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onGutsClosed()V

    .line 237
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->willBeRemoved()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_36

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_36

    .line 238
    iget-object v0, p2, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-boolean v0, v0, Landroid/service/notification/StatusBarNotification$Filter;->intercept:Z

    if-nez v0, :cond_2a

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 240
    invoke-interface {v2}, Lcom/android/systemui/statusbar/NotificationPresenter;->isPresenterFullyCollapsed()Z

    move-result v2

    xor-int/2addr v2, v1

    .line 239
    invoke-interface {v0, p1, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;->onHeightChanged(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    goto :goto_36

    .line 242
    :cond_2a
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mFilterListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 243
    invoke-interface {v2}, Lcom/android/systemui/statusbar/NotificationPresenter;->isPresenterFullyCollapsed()Z

    move-result v2

    xor-int/2addr v2, v1

    .line 242
    invoke-interface {v0, p1, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;->onHeightChanged(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    .line 246
    :cond_36
    :goto_36
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    const/4 v0, 0x0

    if-ne p1, p3, :cond_3f

    .line 247
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 248
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mGutsMenuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    .line 250
    :cond_3f
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 251
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mKeyToRemoveOnGutsClosed:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_54

    .line 252
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mKeyToRemoveOnGutsClosed:Ljava/lang/String;

    .line 253
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationLifetimeFinishedCallback:Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;

    if-eqz p2, :cond_54

    .line 254
    invoke-interface {p2, p1}, Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;->onSafeToRemove(Ljava/lang/String;)V

    .line 259
    :cond_54
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p1, :cond_74

    .line 260
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardNormalMode()Z

    move-result p1

    if-nez p1, :cond_74

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 261
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->hasVisibleNotifications()Z

    move-result p1

    if-nez p1, :cond_74

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 262
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isQsExpanded()Z

    move-result p1

    if-nez p1, :cond_74

    .line 263
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(IZ)V

    :cond_74
    return-void
.end method

.method public synthetic lambda$initializeAppOpsInfo$2$NotificationGutsManager(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;Ljava/lang/String;ILandroid/util/ArraySet;)V
    .registers 8

    .line 328
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x542

    invoke-virtual {p3, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 329
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->resetFalsingCheck()V

    .line 330
    invoke-virtual {p0, p4, p5, p6, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->startAppOpsSettingsActivity(Ljava/lang/String;ILandroid/util/ArraySet;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method public synthetic lambda$initializeNotificationInfo$4$NotificationGutsManager(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;Landroid/app/NotificationChannel;I)V
    .registers 9

    .line 368
    iget-object p5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0xcd

    invoke-virtual {p5, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 369
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->resetFalsingCheck()V

    .line 370
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$OnSettingsClickListener;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$OnSettingsClickListener;->onSettingsClick(Ljava/lang/String;)V

    .line 371
    invoke-direct {p0, p3, p7, p6, p4}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->startAppNotificationSettingsActivity(Ljava/lang/String;ILandroid/app/NotificationChannel;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method public synthetic lambda$initializeNotificationInfo$6$NotificationGutsManager(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 2

    .line 381
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->handleGutsFilterButtonOnClick(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method public synthetic lambda$initializeNotificationInfo$7$NotificationGutsManager(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 385
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->resetFalsingCheck()V

    .line 386
    invoke-direct {p0, p3, p4, p5, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mzStartAppNotificationSettingsActivity(Ljava/lang/String;Ljava/lang/String;ILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method public synthetic lambda$initializeSnoozeView$1$NotificationGutsManager(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .registers 3

    .line 302
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    iget-object p2, p2, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-boolean p2, p2, Landroid/service/notification/StatusBarNotification$Filter;->intercept:Z

    if-nez p2, :cond_14

    .line 303
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isShown()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;->onHeightChanged(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    goto :goto_1d

    .line 305
    :cond_14
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mFilterListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isShown()Z

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;->onHeightChanged(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    :goto_1d
    return-void
.end method

.method public onDensityOrFontScaleChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 3

    .line 169
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->setExposedGuts(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V

    .line 170
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->bindGuts(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    return-void
.end method

.method public openGuts(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z
    .registers 5

    .line 500
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->openGutsInternal(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    move-result p0

    return p0
.end method

.method openGutsInternal(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z
    .registers 14
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 510
    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v7, 0x0

    if-nez v1, :cond_6

    return v7

    .line 514
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_14

    const-string v0, "NotificationGutsManager"

    const-string v1, "Trying to show notification guts, but not attached to window"

    .line 515
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 519
    :cond_14
    move-object v2, p1

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 525
    invoke-virtual {p1, v7}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 528
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x1

    move-object v0, p0

    .line 529
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZIIZ)V

    return v7

    .line 535
    :cond_2b
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->ensureGutsInflated()V

    .line 536
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v8

    .line 537
    iput-object v8, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 538
    invoke-virtual {p0, v2, p4}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->bindGuts(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z

    move-result v0

    if-nez v0, :cond_3b

    return v7

    :cond_3b
    if-nez v8, :cond_3e

    return v7

    :cond_3e
    const/4 v0, 0x4

    .line 551
    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 553
    new-instance v7, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$1;

    move-object v0, v7

    move-object v1, p0

    move-object v3, v8

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$1;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mOpenRunnable:Ljava/lang/Runnable;

    .line 586
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mOpenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public setCallback(Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;)V
    .registers 2

    .line 592
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationLifetimeFinishedCallback:Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;

    return-void
.end method

.method public setExposedGuts(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .registers 2

    .line 458
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    return-void
.end method

.method public setNotificationActivityStarter(Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;)V
    .registers 2

    .line 165
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    return-void
.end method

.method public setShouldManageLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .registers 6

    const/4 v0, 0x3

    const-string v1, "NotificationGutsManager"

    if-eqz p2, :cond_26

    .line 607
    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mKeyToRemoveOnGutsClosed:Ljava/lang/String;

    .line 608
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_51

    .line 609
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Keeping notification because it\'s showing guts. "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 612
    :cond_26
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mKeyToRemoveOnGutsClosed:Ljava/lang/String;

    if-eqz p2, :cond_51

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_51

    const/4 p2, 0x0

    .line 613
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mKeyToRemoveOnGutsClosed:Ljava/lang/String;

    .line 614
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_51

    .line 615
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Notification that was kept for guts was updated. "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    :goto_51
    return-void
.end method

.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$OnSettingsClickListener;)V
    .registers 6

    .line 153
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 154
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 156
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mFilterListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 158
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mCheckSaveListener:Lcom/android/systemui/statusbar/notification/row/NotificationInfo$CheckSaveListener;

    .line 159
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager$OnSettingsClickListener;

    .line 160
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mContext:Landroid/content/Context;

    const-class p2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1, p2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method public shouldExtendLifetime(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .registers 3

    if-eqz p1, :cond_1e

    .line 597
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    if-eqz v0, :cond_1e

    .line 599
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 600
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object p1

    if-ne v0, p1, :cond_1e

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 601
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->isLeavebehind()Z

    move-result p0

    if-nez p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method protected startAppOpsSettingsActivity(Ljava/lang/String;ILandroid/util/ArraySet;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ")V"
        }
    .end annotation

    const/16 v0, 0x18

    .line 207
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v0, :cond_40

    .line 208
    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3c

    invoke-virtual {p3, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_26

    goto :goto_3c

    .line 211
    :cond_26
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "package"

    .line 212
    invoke-static {v0, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 213
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    invoke-interface {p0, p3, p2, p4}, Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;->startNotificationGutsIntent(Landroid/content/Intent;ILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    goto :goto_5d

    .line 209
    :cond_3c
    :goto_3c
    invoke-direct {p0, p1, p2, v2, p4}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->startAppDetailsSettingsActivity(Ljava/lang/String;ILandroid/app/NotificationChannel;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    goto :goto_5d

    .line 215
    :cond_40
    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    invoke-virtual {p3, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5d

    .line 216
    :cond_4c
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.extra.PACKAGE_NAME"

    .line 217
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    invoke-interface {p0, p3, p2, p4}, Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;->startNotificationGutsIntent(Landroid/content/Intent;ILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    :cond_5d
    :goto_5d
    return-void
.end method
