.class public Lcom/android/systemui/statusbar/NotificationListener;
.super Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;
.source "NotificationListener.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "OverrideAbstract"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private final mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private final mSettingsListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;-><init>()V

    .line 57
    const-class v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 58
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 59
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 60
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 61
    const-class v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 62
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mSettingsListeners:Ljava/util/ArrayList;

    .line 69
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationListener;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onListenerConnected$0$NotificationListener([Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 7

    .line 87
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    aget-object v2, p1, v1

    .line 88
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationListener;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v3, v2, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    return-void
.end method

.method public synthetic lambda$onNotificationPosted$1$NotificationListener(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 7

    .line 111
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationListener;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/RemoteInputController;->processForRemoteInput(Landroid/app/Notification;Landroid/content/Context;)V

    .line 112
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationListener;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 114
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    move v1, v2

    .line 119
    :goto_1d
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_CHILD_NOTIFICATIONS:Z

    if-nez v3, :cond_3b

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationListener;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 120
    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_3b

    if-eqz v1, :cond_31

    .line 127
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p0, v0, p2, v2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    goto :goto_3a

    .line 129
    :cond_31
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object p0

    .line 130
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    :goto_3a
    return-void

    :cond_3b
    if-eqz v1, :cond_43

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_48

    .line 137
    :cond_43
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 141
    :goto_48
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->newComponent(Landroid/content/Context;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    .line 142
    invoke-static {}, Lcom/flyme/systemuitools/aod/presenter/AODNotificationController;->getInstance()Lcom/flyme/systemuitools/aod/presenter/AODNotificationController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/flyme/systemuitools/aod/presenter/AODNotificationController;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public synthetic lambda$onNotificationRankingUpdate$3$NotificationListener(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 2

    .line 175
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method

.method public synthetic lambda$onNotificationRemoved$2$NotificationListener(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;ILandroid/service/notification/StatusBarNotification;)V
    .registers 6

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    .line 157
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->newComponent(Landroid/content/Context;)Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    .line 158
    invoke-static {}, Lcom/flyme/systemuitools/aod/presenter/AODNotificationController;->getInstance()Lcom/flyme/systemuitools/aod/presenter/AODNotificationController;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/flyme/systemuitools/aod/presenter/AODNotificationController;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public onListenerConnected()V
    .registers 5

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->onPluginConnected()V

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    if-nez v0, :cond_11

    const-string p0, "NotificationListener"

    const-string v0, "onListenerConnected unable to get active notifications."

    .line 82
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 85
    :cond_11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v1

    .line 86
    sget-object v2, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$IqvG8K3BFQSXJ_G1S_U_QONW3G4;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$IqvG8K3BFQSXJ_G1S_U_QONW3G4;-><init>(Lcom/android/systemui/statusbar/NotificationListener;[Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationListener;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 92
    invoke-virtual {v1}, Landroid/app/NotificationManager;->shouldHideSilentStatusBarIcons()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationListener;->onSilentStatusBarIconsVisibilityChanged(Z)V

    .line 94
    invoke-static {}, Lcom/flyme/systemuitools/aod/presenter/AODNotificationController;->getInstance()Lcom/flyme/systemuitools/aod/presenter/AODNotificationController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/flyme/systemuitools/aod/presenter/AODNotificationController;->updateNotifications([Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 5

    if-eqz p1, :cond_2d

    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->onPluginNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1d

    .line 105
    iget-object v0, p1, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    if-eqz v0, :cond_1d

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "hint_unlock"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return-void

    .line 110
    :cond_1d
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$NvFmU0XrVPuc5pizHcri9I0apkw;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$NvFmU0XrVPuc5pizHcri9I0apkw;-><init>(Lcom/android/systemui/statusbar/NotificationListener;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2d
    return-void
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 4

    if-eqz p1, :cond_16

    .line 173
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->onPluginRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object p1

    .line 174
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$MPB4hTnfgfJz099PViVIkkbEBIE;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$MPB4hTnfgfJz099PViVIkkbEBIE;-><init>(Lcom/android/systemui/statusbar/NotificationListener;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_16
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 4

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/NotificationListener;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .registers 12

    if-eqz p1, :cond_21

    .line 152
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->onPluginNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 153
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 154
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v7, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$JINGTTQPMKkVN6WJQmVQCLRIkmE;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$JINGTTQPMKkVN6WJQmVQCLRIkmE;-><init>(Lcom/android/systemui/statusbar/NotificationListener;Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;ILandroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_21
    return-void
.end method

.method public onSilentStatusBarIconsVisibilityChanged(Z)V
    .registers 3

    .line 182
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mSettingsListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;

    .line 183
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/NotificationListener$NotificationSettingsListener;->onStatusBarIconsBehaviorChanged(Z)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public registerAsSystemService()V
    .registers 5

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationListener;->mContext:Landroid/content/Context;

    .line 190
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    .line 189
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationListenerWithPlugins;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_22

    :catch_1a
    move-exception p0

    const-string v0, "NotificationListener"

    const-string v1, "Unable to register notification listener"

    .line 193
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_22
    return-void
.end method
