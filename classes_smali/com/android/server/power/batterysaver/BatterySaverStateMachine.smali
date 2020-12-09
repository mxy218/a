.class public Lcom/android/server/power/batterysaver/BatterySaverStateMachine;
.super Ljava/lang/Object;
.source "BatterySaverStateMachine.java"


# static fields
.field private static final ADAPTIVE_AUTO_DISABLE_BATTERY_LEVEL:I = 0x50

.field private static final ADAPTIVE_CHANGE_TIMEOUT_MS:J = 0x5265c00L

.field private static final BATTERY_SAVER_NOTIF_CHANNEL_ID:Ljava/lang/String; = "battery_saver_channel"

.field private static final DEBUG:Z = false

.field private static final DYNAMIC_MODE_NOTIFICATION_ID:I = 0x7c8

.field private static final DYNAMIC_MODE_NOTIF_CHANNEL_ID:Ljava/lang/String; = "dynamic_mode_notification"

.field private static final STATE_AUTOMATIC_ON:I = 0x3

.field private static final STATE_MANUAL_ON:I = 0x2

.field private static final STATE_OFF:I = 0x1

.field private static final STATE_OFF_AUTOMATIC_SNOOZED:I = 0x4

.field private static final STATE_PENDING_STICKY_ON:I = 0x5

.field private static final STICKY_AUTO_DISABLED_NOTIFICATION_ID:I = 0x7c9

.field private static final TAG:Ljava/lang/String; = "BatterySaverStateMachine"


# instance fields
.field private mBatteryLevel:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

.field private final mBatterySaverStickyBehaviourDisabled:Z

.field private mBatteryStatusSet:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mBootCompleted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDynamicPowerSavingsBatterySaver:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mDynamicPowerSavingsDefaultDisableThreshold:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mDynamicPowerSavingsDisableThreshold:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mIsBatteryLevelLow:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mIsPowered:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mLastAdaptiveBatterySaverChangedExternallyElapsed:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mLastChangedIntReason:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mLastChangedStrReason:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mSettingAutomaticBatterySaver:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mSettingBatterySaverEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mSettingBatterySaverEnabledSticky:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mSettingBatterySaverStickyAutoDisableEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mSettingBatterySaverStickyAutoDisableThreshold:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mSettingBatterySaverTriggerThreshold:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mSettingsLoaded:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mThresholdChangeLogger:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySaverController;)V
    .registers 6

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$1;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 468
    new-instance v0, Lcom/android/server/power/batterysaver/-$$Lambda$BatterySaverStateMachine$SSfmWJrD4RBoVg8A8loZrS-jhAo;

    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/-$$Lambda$BatterySaverStateMachine$SSfmWJrD4RBoVg8A8loZrS-jhAo;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mThresholdChangeLogger:Ljava/lang/Runnable;

    .line 239
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    .line 240
    iput-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    .line 241
    iput-object p3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 242
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    .line 244
    iget-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x111002c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverStickyBehaviourDisabled:Z

    .line 246
    iget-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e0058

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDefaultDisableThreshold:I

    .line 248
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)Ljava/lang/Object;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V
    .registers 1

    .line 94
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->refreshSettingsLocked()V

    return-void
.end method

.method private buildNotification(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/app/Notification;
    .registers 9

    .line 839
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 840
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 841
    const p4, 0x10008000

    invoke-virtual {v1, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 842
    iget-object p4, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {p4, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p4

    .line 844
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 846
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 847
    const p1, 0x108031f

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 848
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 849
    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 850
    invoke-virtual {p1, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance p2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 851
    invoke-virtual {p2, p3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 852
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 853
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 854
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 846
    return-object p1
.end method

.method private doAutoBatterySaverLocked()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 548
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBootCompleted:Z

    if-eqz v0, :cond_3d

    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsLoaded:Z

    if-eqz v0, :cond_3d

    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryStatusSet:Z

    if-nez v0, :cond_d

    goto :goto_3d

    .line 552
    :cond_d
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->updateStateLocked(ZZ)V

    .line 555
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastAdaptiveBatterySaverChangedExternallyElapsed:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-lez v1, :cond_2c

    .line 557
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    const/16 v2, 0xc

    invoke-virtual {v1, v0, v2}, Lcom/android/server/power/batterysaver/BatterySaverController;->setAdaptivePolicyEnabledLocked(ZI)Z

    .line 559
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v0, v2}, Lcom/android/server/power/batterysaver/BatterySaverController;->resetAdaptivePolicyLocked(I)Z

    goto :goto_3c

    .line 561
    :cond_2c
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    if-eqz v1, :cond_3c

    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    const/16 v2, 0x50

    if-lt v1, v2, :cond_3c

    .line 562
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    const/4 v2, 0x7

    invoke-virtual {v1, v0, v2}, Lcom/android/server/power/batterysaver/BatterySaverController;->setAdaptivePolicyEnabledLocked(ZI)Z

    .line 565
    :cond_3c
    :goto_3c
    return-void

    .line 549
    :cond_3d
    :goto_3d
    return-void
.end method

.method private enableBatterySaverLocked(ZZI)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 737
    invoke-static {p3}, Lcom/android/server/power/batterysaver/BatterySaverController;->reasonToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZILjava/lang/String;)V

    .line 738
    return-void
.end method

.method private enableBatterySaverLocked(ZZILjava/lang/String;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 751
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->isFullEnabled()Z

    move-result v0

    .line 753
    if-ne v0, p1, :cond_9

    .line 757
    return-void

    .line 759
    :cond_9
    if-eqz p1, :cond_10

    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    if-eqz v0, :cond_10

    .line 761
    return-void

    .line 763
    :cond_10
    iput p3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastChangedIntReason:I

    .line 764
    iput-object p4, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastChangedStrReason:Ljava/lang/String;

    .line 766
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabled:Z

    .line 767
    const-string p4, "low_power"

    invoke-virtual {p0, p4, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->putGlobalSetting(Ljava/lang/String;I)V

    .line 769
    if-eqz p2, :cond_29

    .line 770
    iget-boolean p2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverStickyBehaviourDisabled:Z

    if-nez p2, :cond_25

    if-eqz p1, :cond_25

    const/4 p2, 0x1

    goto :goto_26

    :cond_25
    const/4 p2, 0x0

    :goto_26
    invoke-direct {p0, p2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setStickyActive(Z)V

    .line 772
    :cond_29
    iget-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {p2, p1, p3}, Lcom/android/server/power/batterysaver/BatterySaverController;->enableBatterySaver(ZI)V

    .line 775
    const/16 p2, 0x9

    if-ne p3, p2, :cond_36

    .line 776
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->triggerDynamicModeNotification()V

    goto :goto_3b

    .line 777
    :cond_36
    if-nez p1, :cond_3b

    .line 778
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->hideDynamicModeNotification()V

    .line 786
    :cond_3b
    :goto_3b
    return-void
.end method

.method private ensureNotificationChannelExists(Landroid/app/NotificationManager;Ljava/lang/String;I)V
    .registers 6

    .line 830
    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    .line 831
    invoke-virtual {v1, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    const/4 v1, 0x3

    invoke-direct {v0, p2, p3, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 832
    const/4 p2, 0x0

    invoke-virtual {v0, p2, p2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 833
    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    .line 834
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 835
    return-void
.end method

.method private hideDynamicModeNotification()V
    .registers 2

    .line 858
    const/16 v0, 0x7c8

    invoke-direct {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->hideNotification(I)V

    .line 859
    return-void
.end method

.method private hideNotification(I)V
    .registers 3

    .line 868
    new-instance v0, Lcom/android/server/power/batterysaver/-$$Lambda$BatterySaverStateMachine$66yeetZVz7IbzEr9gw2J77hoMVI;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/batterysaver/-$$Lambda$BatterySaverStateMachine$66yeetZVz7IbzEr9gw2J77hoMVI;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->runOnBgThread(Ljava/lang/Runnable;)V

    .line 872
    return-void
.end method

.method private hideStickyDisabledNotification()V
    .registers 2

    .line 862
    const/16 v0, 0x7c9

    invoke-direct {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->hideNotification(I)V

    .line 863
    return-void
.end method

.method private isAutomaticModeActiveLocked()Z
    .registers 2

    .line 252
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingAutomaticBatterySaver:I

    if-nez v0, :cond_a

    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private isDynamicModeActiveLocked()Z
    .registers 3

    .line 268
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingAutomaticBatterySaver:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsBatterySaver:Z

    if-eqz v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method private isInAutomaticLowZoneLocked()Z
    .registers 2

    .line 263
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsBatteryLevelLow:Z

    return v0
.end method

.method private isInDynamicLowZoneLocked()Z
    .registers 3

    .line 279
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDisableThreshold:I

    if-gt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private refreshSettingsLocked()V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 362
    const/4 v0, 0x0

    const-string v1, "low_power"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    move v4, v2

    goto :goto_d

    :cond_c
    move v4, v0

    .line 364
    :goto_d
    const-string v1, "low_power_sticky"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_17

    move v5, v2

    goto :goto_18

    :cond_17
    move v5, v0

    .line 366
    :goto_18
    const-string v1, "dynamic_power_savings_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_22

    move v10, v2

    goto :goto_23

    :cond_22
    move v10, v0

    .line 368
    :goto_23
    const-string v1, "low_power_trigger_level"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v6

    .line 370
    const-string v1, "automatic_power_save_mode"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v9

    .line 373
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDefaultDisableThreshold:I

    const-string v3, "dynamic_power_savings_disable_threshold"

    invoke-virtual {p0, v3, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v11

    .line 376
    const-string v1, "low_power_sticky_auto_disable_enabled"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_41

    move v7, v2

    goto :goto_42

    :cond_41
    move v7, v0

    .line 378
    :goto_42
    const/16 v0, 0x5a

    const-string v1, "low_power_sticky_auto_disable_level"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v8

    .line 381
    move-object v3, p0

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setSettingsLocked(ZZIZIIZI)V

    .line 386
    return-void
.end method

.method private setStickyActive(Z)V
    .registers 3

    .line 875
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    .line 876
    nop

    .line 877
    iget-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    .line 876
    const-string v0, "low_power_sticky"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->putGlobalSetting(Ljava/lang/String;I)V

    .line 878
    return-void
.end method

.method private updateStateLocked(ZZ)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 576
    if-nez p1, :cond_f

    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBootCompleted:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsLoaded:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryStatusSet:Z

    if-nez v0, :cond_f

    .line 577
    :cond_e
    return-void

    .line 580
    :cond_f
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    const/4 v1, 0x3

    const-string v2, "BatterySaverStateMachine"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_132

    const/4 v6, 0x7

    const/4 v7, 0x5

    if-eq v0, v3, :cond_10d

    const/4 v8, 0x4

    if-eq v0, v1, :cond_b4

    if-eq v0, v8, :cond_77

    if-eq v0, v7, :cond_3c

    .line 706
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown state: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_174

    .line 682
    :cond_3c
    if-eqz p1, :cond_44

    .line 685
    const-string p1, "Tried to manually change BS state from PENDING_STICKY_ON"

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    return-void

    .line 688
    :cond_44
    iget-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableEnabled:Z

    if-eqz p1, :cond_50

    iget p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    iget p2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableThreshold:I

    if-lt p1, p2, :cond_50

    move p1, v5

    goto :goto_51

    :cond_50
    move p1, v4

    .line 690
    :goto_51
    iget-boolean p2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverStickyBehaviourDisabled:Z

    if-nez p2, :cond_5c

    iget-boolean p2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    if-nez p2, :cond_5a

    goto :goto_5c

    :cond_5a
    move p2, v4

    goto :goto_5d

    :cond_5c
    :goto_5c
    move p2, v5

    .line 692
    :goto_5d
    if-nez p2, :cond_6d

    if-eqz p1, :cond_62

    goto :goto_6d

    .line 696
    :cond_62
    iget-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    if-nez p1, :cond_174

    .line 698
    invoke-direct {p0, v5, v5, v8}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 700
    iput v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto/16 :goto_174

    .line 693
    :cond_6d
    :goto_6d
    iput v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    .line 694
    invoke-direct {p0, v4}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setStickyActive(Z)V

    .line 695
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->triggerStickyDisabledNotification()V

    goto/16 :goto_174

    .line 664
    :cond_77
    if-eqz p1, :cond_88

    .line 665
    if-nez p2, :cond_81

    .line 666
    const-string p1, "Tried to disable BS when it\'s already AUTO_SNOOZED"

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    return-void

    .line 669
    :cond_81
    invoke-direct {p0, v5, v5, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 671
    iput v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto/16 :goto_174

    .line 672
    :cond_88
    iget-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    if-nez p1, :cond_b0

    .line 673
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isAutomaticModeActiveLocked()Z

    move-result p1

    if-eqz p1, :cond_98

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isInAutomaticLowZoneLocked()Z

    move-result p1

    if-eqz p1, :cond_b0

    .line 674
    :cond_98
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isDynamicModeActiveLocked()Z

    move-result p1

    if-eqz p1, :cond_a4

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isInDynamicLowZoneLocked()Z

    move-result p1

    if-eqz p1, :cond_b0

    .line 675
    :cond_a4
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isAutomaticModeActiveLocked()Z

    move-result p1

    if-nez p1, :cond_174

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isDynamicModeActiveLocked()Z

    move-result p1

    if-nez p1, :cond_174

    .line 676
    :cond_b0
    iput v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto/16 :goto_174

    .line 630
    :cond_b4
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    if-eqz v0, :cond_bf

    .line 631
    invoke-direct {p0, v4, v4, v6}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 633
    iput v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto/16 :goto_174

    .line 634
    :cond_bf
    if-eqz p1, :cond_d0

    .line 635
    if-eqz p2, :cond_c9

    .line 636
    const-string p1, "Tried to enable BS when it\'s already AUTO_ON"

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    return-void

    .line 639
    :cond_c9
    invoke-direct {p0, v4, v5, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 646
    iput v8, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto/16 :goto_174

    .line 647
    :cond_d0
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isAutomaticModeActiveLocked()Z

    move-result p1

    if-eqz p1, :cond_e3

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isInAutomaticLowZoneLocked()Z

    move-result p1

    if-nez p1, :cond_e3

    .line 648
    invoke-direct {p0, v4, v4, v5}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 650
    iput v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto/16 :goto_174

    .line 651
    :cond_e3
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isDynamicModeActiveLocked()Z

    move-result p1

    if-eqz p1, :cond_f8

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isInDynamicLowZoneLocked()Z

    move-result p1

    if-nez p1, :cond_f8

    .line 652
    const/16 p1, 0xa

    invoke-direct {p0, v4, v4, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 654
    iput v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto/16 :goto_174

    .line 655
    :cond_f8
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isAutomaticModeActiveLocked()Z

    move-result p1

    if-nez p1, :cond_174

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isDynamicModeActiveLocked()Z

    move-result p1

    if-nez p1, :cond_174

    .line 656
    const/16 p1, 0x8

    invoke-direct {p0, v4, v4, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 658
    iput v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto/16 :goto_174

    .line 608
    :cond_10d
    if-eqz p1, :cond_11d

    .line 609
    if-eqz p2, :cond_117

    .line 610
    const-string p1, "Tried to enable BS when it\'s already MANUAL_ON"

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    return-void

    .line 613
    :cond_117
    invoke-direct {p0, v4, v5, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 615
    iput v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto :goto_174

    .line 616
    :cond_11d
    iget-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    if-eqz p1, :cond_174

    .line 617
    invoke-direct {p0, v4, v4, v6}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 619
    iget-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    if-eqz p1, :cond_12f

    iget-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverStickyBehaviourDisabled:Z

    if-nez p1, :cond_12f

    .line 621
    iput v7, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto :goto_174

    .line 623
    :cond_12f
    iput v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto :goto_174

    .line 582
    :cond_132
    iget-boolean v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    if-nez v0, :cond_174

    .line 583
    if-eqz p1, :cond_149

    .line 584
    if-nez p2, :cond_140

    .line 585
    const-string p1, "Tried to disable BS when it\'s already OFF"

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    return-void

    .line 588
    :cond_140
    invoke-direct {p0, v5, v5, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 590
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->hideStickyDisabledNotification()V

    .line 591
    iput v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto :goto_174

    .line 592
    :cond_149
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isAutomaticModeActiveLocked()Z

    move-result p1

    if-eqz p1, :cond_15e

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isInAutomaticLowZoneLocked()Z

    move-result p1

    if-eqz p1, :cond_15e

    .line 593
    invoke-direct {p0, v5, v4, v4}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 595
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->hideStickyDisabledNotification()V

    .line 596
    iput v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    goto :goto_174

    .line 597
    :cond_15e
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isDynamicModeActiveLocked()Z

    move-result p1

    if-eqz p1, :cond_174

    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->isInDynamicLowZoneLocked()Z

    move-result p1

    if-eqz p1, :cond_174

    .line 598
    const/16 p1, 0x9

    invoke-direct {p0, v5, v4, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZI)V

    .line 600
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->hideStickyDisabledNotification()V

    .line 601
    iput v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    .line 709
    :cond_174
    :goto_174
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    .line 891
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 892
    :try_start_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 893
    const-string v1, "Battery saver state machine:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 895
    const-string v1, "  Enabled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 896
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 897
    const-string v1, "    full="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 898
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->isFullEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 899
    const-string v1, "    adaptive="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 900
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->isAdaptiveEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 901
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->isAdaptiveEnabled()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 902
    const-string v1, " (advertise="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 903
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 904
    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverController;->getBatterySaverPolicy()Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->shouldAdvertiseIsEnabled()Z

    move-result v1

    .line 903
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 905
    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 907
    :cond_54
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 908
    const-string v1, "  mState="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 909
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 911
    const-string v1, "  mLastChangedIntReason="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 912
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastChangedIntReason:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 913
    const-string v1, "  mLastChangedStrReason="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 914
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastChangedStrReason:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 916
    const-string v1, "  mBootCompleted="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 917
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBootCompleted:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 918
    const-string v1, "  mSettingsLoaded="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 919
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsLoaded:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 920
    const-string v1, "  mBatteryStatusSet="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 921
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryStatusSet:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 923
    const-string v1, "  mIsPowered="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 924
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 925
    const-string v1, "  mBatteryLevel="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 926
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 927
    const-string v1, "  mIsBatteryLevelLow="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 928
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsBatteryLevelLow:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 930
    const-string v1, "  mSettingBatterySaverEnabled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 931
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 932
    const-string v1, "  mSettingBatterySaverEnabledSticky="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 933
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 934
    const-string v1, "  mSettingBatterySaverStickyAutoDisableEnabled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 935
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableEnabled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 936
    const-string v1, "  mSettingBatterySaverStickyAutoDisableThreshold="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 937
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableThreshold:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 938
    const-string v1, "  mSettingBatterySaverTriggerThreshold="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 939
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 940
    const-string v1, "  mBatterySaverStickyBehaviourDisabled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 941
    iget-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverStickyBehaviourDisabled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 943
    const-string v1, "  mLastAdaptiveBatterySaverChangedExternallyElapsed="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 944
    iget-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastAdaptiveBatterySaverChangedExternallyElapsed:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 945
    monitor-exit v0

    .line 946
    return-void

    .line 945
    :catchall_f9
    move-exception p1

    monitor-exit v0
    :try_end_fb
    .catchall {:try_start_3 .. :try_end_fb} :catchall_f9

    throw p1
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9

    .line 949
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 950
    :try_start_3
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 952
    const-wide v1, 0x10800000001L

    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 953
    invoke-virtual {v3}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v3

    .line 952
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 954
    const-wide v1, 0x10e00000012L

    iget v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 955
    const-wide v1, 0x1080000000eL

    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 956
    invoke-virtual {v3}, Lcom/android/server/power/batterysaver/BatterySaverController;->isFullEnabled()Z

    move-result v3

    .line 955
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 957
    const-wide v1, 0x1080000000fL

    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 958
    invoke-virtual {v3}, Lcom/android/server/power/batterysaver/BatterySaverController;->isAdaptiveEnabled()Z

    move-result v3

    .line 957
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 959
    const-wide v1, 0x10800000010L

    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 960
    invoke-virtual {v3}, Lcom/android/server/power/batterysaver/BatterySaverController;->getBatterySaverPolicy()Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->shouldAdvertiseIsEnabled()Z

    move-result v3

    .line 959
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 962
    const-wide v1, 0x10800000002L

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBootCompleted:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 963
    const-wide v1, 0x10800000003L

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsLoaded:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 964
    const-wide v1, 0x10800000004L

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryStatusSet:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 967
    const-wide v1, 0x10800000006L

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 968
    const-wide v1, 0x10500000007L

    iget v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 969
    const-wide v1, 0x10800000008L

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsBatteryLevelLow:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 971
    const-wide v1, 0x10800000009L

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabled:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 973
    const-wide v1, 0x1080000000aL

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 975
    const-wide v1, 0x1050000000bL

    iget v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 977
    const-wide v1, 0x1080000000cL

    iget-boolean v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableEnabled:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 980
    const-wide v1, 0x1050000000dL

    iget v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableThreshold:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 985
    const-wide v1, 0x10300000011L

    iget-wide v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastAdaptiveBatterySaverChangedExternallyElapsed:J

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 990
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 991
    monitor-exit v0

    .line 992
    return-void

    .line 991
    :catchall_ca
    move-exception p1

    monitor-exit v0
    :try_end_cc
    .catchall {:try_start_3 .. :try_end_cc} :catchall_ca

    throw p1
.end method

.method protected getGlobalSetting(Ljava/lang/String;I)I
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 887
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method getState()I
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 713
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 714
    :try_start_3
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    monitor-exit v0

    return v1

    .line 715
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public synthetic lambda$hideNotification$4$BatterySaverStateMachine(I)V
    .registers 5

    .line 869
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 870
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "BatterySaverStateMachine"

    invoke-virtual {v0, v2, p1, v1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 871
    return-void
.end method

.method public synthetic lambda$new$1$BatterySaverStateMachine()V
    .registers 2

    .line 469
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeBatterySaverSetting(I)V

    .line 470
    return-void
.end method

.method public synthetic lambda$onBootCompleted$0$BatterySaverStateMachine()V
    .registers 5

    .line 297
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 298
    const-string v1, "low_power"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 301
    const-string v1, "low_power_sticky"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 304
    const-string v1, "low_power_trigger_level"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 307
    const-string v1, "automatic_power_save_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 310
    const-string v1, "dynamic_power_savings_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 313
    const-string v1, "dynamic_power_savings_disable_threshold"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 316
    const-string v1, "low_power_sticky_auto_disable_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 319
    const-string v1, "low_power_sticky_auto_disable_level"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 324
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 325
    :try_start_62
    const-string v1, "low_power_sticky"

    invoke-virtual {p0, v1, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->getGlobalSetting(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6c

    move v3, v2

    .line 328
    :cond_6c
    if-eqz v3, :cond_71

    .line 329
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mState:I

    .line 332
    :cond_71
    iput-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBootCompleted:Z

    .line 334
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->refreshSettingsLocked()V

    .line 336
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->doAutoBatterySaverLocked()V

    .line 337
    monitor-exit v0

    .line 338
    return-void

    .line 337
    :catchall_7b
    move-exception v1

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_62 .. :try_end_7d} :catchall_7b

    throw v1
.end method

.method public synthetic lambda$triggerDynamicModeNotification$2$BatterySaverStateMachine()V
    .registers 6

    .line 793
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 794
    const-string v1, "dynamic_mode_notification"

    const v2, 0x1040212

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->ensureNotificationChannelExists(Landroid/app/NotificationManager;Ljava/lang/String;I)V

    .line 797
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    .line 799
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040214

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 798
    const v3, 0x1040213

    const-string v4, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->buildNotification(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 797
    const-string v3, "BatterySaverStateMachine"

    const/16 v4, 0x7c8

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 804
    return-void
.end method

.method public synthetic lambda$triggerStickyDisabledNotification$3$BatterySaverStateMachine()V
    .registers 8

    .line 812
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 813
    const-string v1, "battery_saver_channel"

    const v2, 0x10400f6

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->ensureNotificationChannelExists(Landroid/app/NotificationManager;Ljava/lang/String;I)V

    .line 816
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x4059000000000000L  # 100.0

    div-double/2addr v3, v5

    .line 817
    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .line 818
    iget-object v3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    .line 820
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const v2, 0x10400f3

    invoke-virtual {v3, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 819
    const v3, 0x10400f8

    const-string v4, "android.settings.BATTERY_SAVER_SETTINGS"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->buildNotification(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 818
    const-string v3, "BatterySaverStateMachine"

    const/16 v4, 0x7c9

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 825
    return-void
.end method

.method public onBootCompleted()V
    .registers 3

    .line 290
    const-string v0, "low_power"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->putGlobalSetting(Ljava/lang/String;I)V

    .line 295
    new-instance v0, Lcom/android/server/power/batterysaver/-$$Lambda$BatterySaverStateMachine$fEidyt_9TXlXBpF6D2lhOOrfOC4;

    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/-$$Lambda$BatterySaverStateMachine$fEidyt_9TXlXBpF6D2lhOOrfOC4;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V

    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->runOnBgThread(Ljava/lang/Runnable;)V

    .line 339
    return-void
.end method

.method protected putGlobalSetting(Ljava/lang/String;I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 882
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 883
    return-void
.end method

.method runOnBgThread(Ljava/lang/Runnable;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 346
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 347
    return-void
.end method

.method runOnBgThreadLazy(Ljava/lang/Runnable;I)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 355
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 356
    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 357
    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 358
    return-void
.end method

.method public setAdaptiveBatterySaverEnabled(Z)Z
    .registers 5

    .line 509
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 510
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastAdaptiveBatterySaverChangedExternallyElapsed:J

    .line 511
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    const/16 v2, 0xb

    invoke-virtual {v1, p1, v2}, Lcom/android/server/power/batterysaver/BatterySaverController;->setAdaptivePolicyEnabledLocked(ZI)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 513
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public setAdaptiveBatterySaverPolicy(Landroid/os/BatterySaverPolicyConfig;)Z
    .registers 5

    .line 524
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 525
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLastAdaptiveBatterySaverChangedExternallyElapsed:J

    .line 526
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatterySaverController:Lcom/android/server/power/batterysaver/BatterySaverController;

    const/16 v2, 0xb

    invoke-virtual {v1, p1, v2}, Lcom/android/server/power/batterysaver/BatterySaverController;->setAdaptivePolicyLocked(Landroid/os/BatterySaverPolicyConfig;I)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 528
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public setBatterySaverEnabledManually(Z)V
    .registers 4

    .line 728
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 729
    const/4 v1, 0x1

    :try_start_4
    invoke-direct {p0, v1, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->updateStateLocked(ZZ)V

    .line 732
    monitor-exit v0

    .line 733
    return-void

    .line 732
    :catchall_9
    move-exception p1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw p1
.end method

.method public setBatteryStatus(ZIZ)V
    .registers 10

    .line 482
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 483
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryStatusSet:Z

    .line 485
    iget-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    const/4 v3, 0x0

    if-eq v2, p1, :cond_d

    move v2, v1

    goto :goto_e

    :cond_d
    move v2, v3

    .line 486
    :goto_e
    iget v4, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    if-eq v4, p2, :cond_14

    move v4, v1

    goto :goto_15

    :cond_14
    move v4, v3

    .line 487
    :goto_15
    iget-boolean v5, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsBatteryLevelLow:Z

    if-eq v5, p3, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v3

    .line 489
    :goto_1b
    if-nez v2, :cond_23

    if-nez v4, :cond_23

    if-nez v1, :cond_23

    .line 490
    monitor-exit v0

    return-void

    .line 493
    :cond_23
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsPowered:Z

    .line 494
    iput p2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mBatteryLevel:I

    .line 495
    iput-boolean p3, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mIsBatteryLevelLow:Z

    .line 497
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->doAutoBatterySaverLocked()V

    .line 498
    monitor-exit v0

    .line 499
    return-void

    .line 498
    :catchall_2e
    move-exception p1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_2e

    throw p1
.end method

.method setSettingsLocked(ZZIZIIZI)V
    .registers 25
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 413
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingsLoaded:Z

    .line 416
    move/from16 v9, p5

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 419
    iget-boolean v10, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabled:Z

    if-eq v10, v1, :cond_1f

    move v10, v8

    goto :goto_20

    :cond_1f
    const/4 v10, 0x0

    .line 420
    :goto_20
    iget-boolean v12, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    if-eq v12, v2, :cond_26

    move v12, v8

    goto :goto_27

    :cond_26
    const/4 v12, 0x0

    .line 422
    :goto_27
    iget v13, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    if-eq v13, v3, :cond_2d

    move v13, v8

    goto :goto_2e

    :cond_2d
    const/4 v13, 0x0

    .line 424
    :goto_2e
    iget-boolean v14, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableEnabled:Z

    if-eq v14, v4, :cond_34

    move v14, v8

    goto :goto_35

    :cond_34
    const/4 v14, 0x0

    .line 426
    :goto_35
    iget v15, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableThreshold:I

    if-eq v15, v9, :cond_3b

    move v15, v8

    goto :goto_3c

    :cond_3b
    const/4 v15, 0x0

    .line 428
    :goto_3c
    iget v11, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingAutomaticBatterySaver:I

    if-eq v11, v5, :cond_42

    move v11, v8

    goto :goto_43

    :cond_42
    const/4 v11, 0x0

    .line 429
    :goto_43
    iget v8, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDisableThreshold:I

    if-eq v8, v7, :cond_49

    const/4 v8, 0x1

    goto :goto_4a

    :cond_49
    const/4 v8, 0x0

    .line 431
    :goto_4a
    iget-boolean v7, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsBatterySaver:Z

    if-eq v7, v6, :cond_50

    const/4 v7, 0x1

    goto :goto_51

    :cond_50
    const/4 v7, 0x0

    .line 434
    :goto_51
    if-nez v10, :cond_62

    if-nez v12, :cond_62

    if-nez v13, :cond_62

    if-nez v11, :cond_62

    if-nez v14, :cond_62

    if-nez v15, :cond_62

    if-nez v8, :cond_62

    if-nez v7, :cond_62

    .line 437
    return-void

    .line 440
    :cond_62
    iput-boolean v1, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabled:Z

    .line 441
    iput-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverEnabledSticky:Z

    .line 442
    iput v3, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverTriggerThreshold:I

    .line 443
    iput-boolean v4, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableEnabled:Z

    .line 444
    iput v9, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableThreshold:I

    .line 445
    iput v5, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingAutomaticBatterySaver:I

    .line 446
    move/from16 v2, p8

    iput v2, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsDisableThreshold:I

    .line 447
    iput-boolean v6, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mDynamicPowerSavingsBatterySaver:Z

    .line 449
    if-eqz v13, :cond_7d

    .line 451
    iget-object v2, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mThresholdChangeLogger:Ljava/lang/Runnable;

    const/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->runOnBgThreadLazy(Ljava/lang/Runnable;I)V

    .line 454
    :cond_7d
    iget-boolean v2, v0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->mSettingBatterySaverStickyAutoDisableEnabled:Z

    if-nez v2, :cond_84

    .line 455
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->hideStickyDisabledNotification()V

    .line 458
    :cond_84
    if-eqz v10, :cond_94

    .line 459
    if-eqz v1, :cond_8b

    .line 460
    const-string v2, "Global.low_power changed to 1"

    goto :goto_8d

    :cond_8b
    const-string v2, "Global.low_power changed to 0"

    .line 461
    :goto_8d
    const/16 v3, 0x8

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->enableBatterySaverLocked(ZZILjava/lang/String;)V

    .line 463
    goto :goto_97

    .line 464
    :cond_94
    invoke-direct/range {p0 .. p0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->doAutoBatterySaverLocked()V

    .line 466
    :goto_97
    return-void
.end method

.method triggerDynamicModeNotification()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 792
    new-instance v0, Lcom/android/server/power/batterysaver/-$$Lambda$BatterySaverStateMachine$KPPqeIS8QIZneCCBkN31dB4SR6U;

    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/-$$Lambda$BatterySaverStateMachine$KPPqeIS8QIZneCCBkN31dB4SR6U;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V

    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->runOnBgThread(Ljava/lang/Runnable;)V

    .line 805
    return-void
.end method

.method triggerStickyDisabledNotification()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 811
    new-instance v0, Lcom/android/server/power/batterysaver/-$$Lambda$BatterySaverStateMachine$QXh4KHnoFaNqEkr199qR1vIeCpo;

    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/-$$Lambda$BatterySaverStateMachine$QXh4KHnoFaNqEkr199qR1vIeCpo;-><init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;)V

    invoke-virtual {p0, v0}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->runOnBgThread(Ljava/lang/Runnable;)V

    .line 826
    return-void
.end method
