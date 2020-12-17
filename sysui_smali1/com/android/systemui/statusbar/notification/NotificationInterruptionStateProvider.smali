.class public Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;
.super Ljava/lang/Object;
.source "NotificationInterruptionStateProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$HeadsUpSuppressor;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private final mContext:Landroid/content/Context;

.field private mDisableNotificationAlerts:Z

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mHeadsUpObserver:Landroid/database/ContentObserver;

.field private mHeadsUpSuppressor:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$HeadsUpSuppressor;

.field private final mNotificationFilter:Lcom/android/systemui/statusbar/notification/NotificationFilter;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field protected mUseHeadsUp:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/PowerManager;Landroid/service/dreams/IDreamManager;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/notification/NotificationFilter;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mUseHeadsUp:Z

    .line 106
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mContext:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mPowerManager:Landroid/os/PowerManager;

    .line 108
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 109
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 110
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mNotificationFilter:Lcom/android/systemui/statusbar/notification/NotificationFilter;

    .line 111
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/NotificationFilter;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .registers 12
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "power"

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/os/PowerManager;

    const-string v0, "dreams"

    .line 92
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 91
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v4

    new-instance v5, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {v5, p1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    move-object v7, p3

    .line 89
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;-><init>(Landroid/content/Context;Landroid/os/PowerManager;Landroid/service/dreams/IDreamManager;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/notification/NotificationFilter;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;)Z
    .registers 1

    .line 61
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mDisableNotificationAlerts:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;)Landroid/content/Context;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-object p0
.end method

.method private isSnoozedPackage(Landroid/service/notification/StatusBarNotification;)Z
    .registers 2

    .line 458
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isSnoozed(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private shouldHeadsUpWhenAwake(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .registers 13

    .line 231
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 233
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mUseHeadsUp:Z

    const-string v2, "InterruptionStateProvider"

    const/4 v3, 0x0

    if-nez v1, :cond_f

    const-string p0, "No heads up: no huns"

    .line 235
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 240
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->canAlertCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    if-nez v1, :cond_16

    return v3

    .line 244
    :cond_16
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->canAlertAwakeCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v3

    .line 248
    :cond_1d
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_28

    move v1, v4

    goto :goto_29

    :cond_28
    move v1, v3

    .line 249
    :goto_29
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    move-result v5

    if-eqz v5, :cond_4a

    if-eqz v1, :cond_4a

    .line 251
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: in unlocked shade where notification is shown as a bubble: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 251
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 257
    :cond_4a
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressPeek()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 259
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: suppressed by DND: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 264
    :cond_69
    iget v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->importance:I

    const/4 v5, 0x4

    if-ge v1, v5, :cond_87

    .line 266
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: unimportant notification: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 273
    :cond_87
    :try_start_87
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v1}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v1
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_87 .. :try_end_8d} :catch_8e

    goto :goto_95

    :catch_8e
    move-exception v1

    const-string v5, "Failed to query dream manager."

    .line 275
    invoke-static {v2, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 277
    :goto_95
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v5}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v5

    if-eqz v5, :cond_a1

    if-nez v1, :cond_a1

    move v1, v4

    goto :goto_a2

    :cond_a1
    move v1, v3

    :goto_a2
    if-nez v1, :cond_bd

    .line 281
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: not in use: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 286
    :cond_bd
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mHeadsUpSuppressor:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$HeadsUpSuppressor;

    invoke-interface {v1, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$HeadsUpSuppressor;->canHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    if-nez p1, :cond_de

    .line 288
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: aborted by suppressor: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 294
    :cond_de
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p1, :cond_f6

    .line 295
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isExpandedVisibleAndNoPinned()Z

    move-result p1

    if-eqz p1, :cond_f6

    const-string p0, "No headsup notification for ExpandedVisibleAndNoPinned."

    .line 296
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 300
    :cond_f6
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->isLuckyMoneyNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    if-eqz p1, :cond_108

    const-string p0, "No headsup notification for lucky money."

    .line 301
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 305
    :cond_108
    iget-object p1, v0, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-boolean p1, p1, Landroid/service/notification/StatusBarNotification$Filter;->intercept:Z

    if-eqz p1, :cond_114

    const-string p0, "No headsup notification filter intercept."

    .line 306
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 310
    :cond_114
    const-class p1, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControl;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControl;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/flyme/systemui/statusbar/policy/ApplicationAccessControl;->isEncrypt(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_144

    .line 311
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No headsup notification "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " isEncrypt."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_144
    if-eqz v0, :cond_1de

    .line 316
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    .line 317
    iget v1, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v5, v1, 0x1

    const/4 v6, 0x2

    if-nez v5, :cond_15f

    and-int/2addr v1, v6

    if-nez v1, :cond_15f

    iget-object v1, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-nez v1, :cond_15f

    iget-object v1, p1, Landroid/app/Notification;->vibrate:[J

    if-eqz v1, :cond_15d

    goto :goto_15f

    :cond_15d
    move v1, v3

    goto :goto_160

    :cond_15f
    :goto_15f
    move v1, v4

    .line 321
    :goto_160
    iget-object v5, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v4

    .line 322
    iget-object v7, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v7, :cond_16d

    move v7, v4

    goto :goto_16e

    :cond_16d
    move v7, v3

    .line 323
    :goto_16e
    iget p1, p1, Landroid/app/Notification;->priority:I

    if-lt p1, v4, :cond_174

    move p1, v4

    goto :goto_175

    :cond_174
    move p1, v3

    :goto_175
    const-string/jumbo v8, "vendor.meizu.sys.cts_state"

    .line 324
    invoke-static {v8, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 325
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget-object v9, v9, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v10, "headsup"

    invoke-virtual {v9, v10, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-nez v8, :cond_19a

    if-ne v9, v4, :cond_195

    if-nez v7, :cond_19a

    if-eqz p1, :cond_198

    if-nez v1, :cond_19a

    if-eqz v5, :cond_198

    goto :goto_19a

    :cond_195
    if-ne v9, v6, :cond_198

    goto :goto_19a

    :cond_198
    move v1, v3

    goto :goto_19b

    :cond_19a
    :goto_19a
    move v1, v4

    :goto_19b
    if-nez v1, :cond_1de

    .line 333
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No peeking: interrupt: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " flag:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " hasTicker:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isFullscreen:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isHighPriority:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isCTS:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 340
    :cond_1de
    const-class p1, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result p1

    if-eqz p1, :cond_200

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mContext:Landroid/content/Context;

    .line 341
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "mz_do_not_disturb_heads_up_notification"

    invoke-static {p0, p1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_200

    const-string p0, "No peeking:Zen mode is on and setting value is off "

    .line 343
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 347
    :cond_200
    const-class p0, Lcom/flyme/systemui/statusbar/policy/GameModeController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flyme/systemui/statusbar/policy/GameModeController;

    invoke-interface {p0}, Lcom/flyme/systemui/statusbar/policy/GameModeController;->isDNDEnableAndInGameMode()Z

    move-result p0

    if-eqz p0, :cond_214

    const-string p0, "No headsup notification DNDEnableAndInGameMode."

    .line 348
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_214
    return v4
.end method

.method private shouldHeadsUpWhenDozing(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .registers 6

    .line 364
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 366
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/hardware/display/AmbientDisplayConfiguration;->pulseOnNotificationEnabled(I)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "InterruptionStateProvider"

    if-nez v1, :cond_27

    .line 368
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No pulsing: disabled by setting: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 373
    :cond_27
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->canAlertCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-nez p0, :cond_46

    .line 375
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No pulsing: notification shouldn\'t alert: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 380
    :cond_46
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->shouldSuppressAmbient()Z

    move-result p0

    if-eqz p0, :cond_65

    .line 382
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No pulsing: ambient effect suppressed: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 387
    :cond_65
    iget p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->importance:I

    const/4 p1, 0x3

    if-ge p0, p1, :cond_83

    .line 389
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No pulsing: not important enough: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_83
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public areNotificationAlertsDisabled()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 470
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mDisableNotificationAlerts:Z

    return p0
.end method

.method public canAlertAwakeCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 431
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 433
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationPresenter;->isDeviceInVrMode()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "InterruptionStateProvider"

    if-eqz v1, :cond_13

    const-string p0, "No alerting: no huns or vr mode"

    .line 435
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 440
    :cond_13
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->isSnoozedPackage(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    if-eqz p0, :cond_32

    .line 442
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No alerting: snoozed package: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 447
    :cond_32
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hasJustLaunchedFullScreenIntent()Z

    move-result p0

    if-eqz p0, :cond_51

    .line 449
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No alerting: recent fullscreen: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_51
    const/4 p0, 0x1

    return p0
.end method

.method public canAlertCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 404
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 406
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mNotificationFilter:Lcom/android/systemui/statusbar/notification/NotificationFilter;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->shouldFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    const/4 p1, 0x0

    const-string v1, "InterruptionStateProvider"

    if-eqz p0, :cond_26

    .line 408
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No alerting: filtered notification: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 414
    :cond_26
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result p0

    if-eqz p0, :cond_3c

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result p0

    if-eqz p0, :cond_3c

    const-string p0, "No alerting: suppressed due to group alert behavior"

    .line 416
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_3c
    const/4 p0, 0x1

    return p0
.end method

.method public getUseHeadsUp()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 476
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mUseHeadsUp:Z

    return p0
.end method

.method public setDisableNotificationAlerts(Z)V
    .registers 2

    .line 463
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mDisableNotificationAlerts:Z

    .line 464
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mHeadsUpObserver:Landroid/database/ContentObserver;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$HeadsUpSuppressor;)V
    .registers 6

    .line 119
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$1;

    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 120
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;Landroid/os/Handler;)V

    .line 119
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$HeadsUpSuppressor;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$HeadsUpSuppressor;Landroid/database/ContentObserver;)V
    .registers 5

    .line 155
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 156
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 157
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mHeadsUpSuppressor:Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider$HeadsUpSuppressor;

    .line 158
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mHeadsUpObserver:Landroid/database/ContentObserver;

    .line 161
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "heads_up_notifications_enabled"

    .line 162
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mHeadsUpObserver:Landroid/database/ContentObserver;

    const/4 p4, 0x1

    .line 161
    invoke-virtual {p1, p2, p4, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 165
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "ticker_gets_heads_up"

    .line 166
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mHeadsUpObserver:Landroid/database/ContentObserver;

    .line 165
    invoke-virtual {p1, p2, p4, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0, p4}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method public shouldBubbleUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .registers 6

    .line 179
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->canAlertCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 185
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->canAlertAwakeCommon(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-nez p0, :cond_11

    return v2

    .line 189
    :cond_11
    iget-boolean p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->canBubble:Z

    const-string v1, "InterruptionStateProvider"

    if-nez p0, :cond_30

    .line 191
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No bubble up: not allowed to bubble: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 196
    :cond_30
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    move-result p0

    if-nez p0, :cond_5b

    .line 198
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No bubble up: notification "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is bubble? "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isBubble()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 198
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 204
    :cond_5b
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    .line 205
    invoke-virtual {p0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p1

    if-eqz p1, :cond_72

    invoke-virtual {p0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object p0

    if-nez p0, :cond_70

    goto :goto_72

    :cond_70
    const/4 p0, 0x1

    return p0

    .line 207
    :cond_72
    :goto_72
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No bubble up: notification: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t have valid metadata"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public shouldHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .registers 3

    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 224
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->shouldHeadsUpWhenDozing(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0

    .line 226
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->shouldHeadsUpWhenAwake(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0
.end method

.method public shouldLaunchFullScreenIntentWhenAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .registers 4

    .line 491
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x1

    if-eqz v0, :cond_38

    .line 492
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->shouldHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 493
    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p0

    if-ne p0, v1, :cond_38

    :cond_19
    const-class p0, Lcom/flyme/systemui/statusbar/policy/GameModeController;

    .line 495
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/flyme/systemui/statusbar/policy/GameModeController;

    invoke-interface {p0}, Lcom/flyme/systemui/statusbar/policy/GameModeController;->isDNDEnableAndInGameMode()Z

    move-result p0

    if-nez p0, :cond_38

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 496
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p1, "mz_window_mode_video"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v1, :cond_38

    goto :goto_39

    :cond_38
    const/4 v1, 0x0

    :goto_39
    return v1
.end method
