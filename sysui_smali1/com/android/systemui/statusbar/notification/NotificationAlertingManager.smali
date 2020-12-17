.class public Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;
.super Ljava/lang/Object;
.source "NotificationAlertingManager.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private final mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

.field private final mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

.field private final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private final mShadeController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;"
        }
    .end annotation
.end field

.field private final mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;Lcom/android/systemui/statusbar/NotificationListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;",
            "Lcom/android/systemui/statusbar/NotificationListener;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 64
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 65
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mShadeController:Ldagger/Lazy;

    .line 66
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    .line 67
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    .line 69
    new-instance p2, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->showAlertingView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->updateAlertState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;Ljava/lang/String;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->stopAlerting(Ljava/lang/String;)V

    return-void
.end method

.method public static alertAgain(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification;)Z
    .registers 2

    if-eqz p0, :cond_11

    .line 172
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hasInterrupted()Z

    move-result p0

    if-eqz p0, :cond_11

    iget p0, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method private setNotificationShown(Landroid/service/notification/StatusBarNotification;)V
    .registers 4

    .line 178
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/service/notification/NotificationListenerService;->setNotificationsShown([Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_18

    :catch_10
    move-exception p0

    const-string p1, "NotifAlertManager"

    const-string v0, "failed setNotificationsShown: "

    .line 180
    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18
    return-void
.end method

.method private showAlertingView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .registers 6

    const/4 v0, 0x4

    and-int/2addr p2, v0

    if-eqz p2, :cond_60

    .line 105
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->shouldHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p2

    if-eqz p2, :cond_5d

    .line 107
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p2

    .line 108
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 109
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->shouldShowPopView(Ljava/lang/String;)Z

    move-result v0

    .line 110
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 111
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-virtual {v1, v2}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->isPopMode(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 113
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->showNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_49

    :cond_3c
    if-eqz v0, :cond_49

    .line 116
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->showPopNotificationView(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 120
    :cond_49
    :goto_49
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mShadeController:Ldagger/Lazy;

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/phone/ShadeController;->isDozing()Z

    move-result p2

    if-nez p2, :cond_60

    .line 122
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->setNotificationShown(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_60

    .line 125
    :cond_5d
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->freeContentViewWhenSafe(I)V

    :cond_60
    :goto_60
    return-void
.end method

.method private stopAlerting(Ljava/lang/String;)V
    .registers 3

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 194
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/RemoteInputController;->isSpinning(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->FORCE_REMOTE_INPUT_HISTORY:Z

    if-eqz v0, :cond_20

    :cond_18
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/VisualStabilityManager;

    .line 196
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->isReorderingAllowed()Z

    move-result v0

    if-nez v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 197
    :goto_23
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeNotification(Ljava/lang/String;Z)Z

    :cond_28
    return-void
.end method

.method private updateAlertState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 10

    .line 131
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->alertAgain(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification;)Z

    move-result v0

    .line 133
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mNotificationInterruptionStateProvider:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->shouldHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    .line 134
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result v2

    .line 136
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v3

    .line 137
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    move-result-object v4

    iget-object v5, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 138
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v5

    .line 137
    invoke-virtual {v4, v5}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->shouldShowPopView(Ljava/lang/String;)Z

    move-result v4

    .line 139
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    move-result-object v5

    iget-object v6, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 140
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v6

    .line 139
    invoke-virtual {v5, v6}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->isPopMode(Ljava/lang/String;)Z

    move-result v5

    .line 141
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isPopMode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",wasAlerting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",shouldAlert "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",alertAgain "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", shouldShowPopView "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NotifAlertManager"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_95

    if-eqz v1, :cond_82

    .line 146
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->updateNotification(Ljava/lang/String;Z)V

    goto :goto_ae

    .line 147
    :cond_82
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isEntryAutoHeadsUpped(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ae

    .line 149
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeNotification(Ljava/lang/String;Z)Z

    goto :goto_ae

    :cond_95
    if-eqz v1, :cond_ae

    if-eqz v0, :cond_ae

    if-nez v5, :cond_a1

    .line 154
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->showNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_ae

    :cond_a1
    if-eqz v4, :cond_ae

    .line 157
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->showPopNotificationView(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    :cond_ae
    :goto_ae
    return-void
.end method


# virtual methods
.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationAlertingManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-void
.end method
