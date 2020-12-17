.class public Lcom/android/systemui/analytics/DataCollector;
.super Ljava/lang/Object;
.source "DataCollector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static sInstance:Lcom/android/systemui/analytics/DataCollector;


# instance fields
.field private mAllowReportRejectedTouch:Z

.field private mCollectBadTouches:Z

.field private final mContext:Landroid/content/Context;

.field private mCornerSwiping:Z

.field private mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

.field private mDisableUnlocking:Z

.field private mEnableCollector:Z

.field private mFalsingPlugin:Lcom/android/systemui/plugins/FalsingPlugin;

.field private final mHandler:Landroid/os/Handler;

.field private final mPluginListener:Lcom/android/systemui/plugins/PluginListener;

.field protected final mSettingsObserver:Landroid/database/ContentObserver;

.field private mTrackingStarted:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    const/4 v1, 0x0

    .line 74
    iput-boolean v1, p0, Lcom/android/systemui/analytics/DataCollector;->mEnableCollector:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/systemui/analytics/DataCollector;->mCollectBadTouches:Z

    .line 76
    iput-boolean v1, p0, Lcom/android/systemui/analytics/DataCollector;->mCornerSwiping:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/systemui/analytics/DataCollector;->mTrackingStarted:Z

    .line 78
    iput-boolean v1, p0, Lcom/android/systemui/analytics/DataCollector;->mAllowReportRejectedTouch:Z

    .line 79
    iput-boolean v1, p0, Lcom/android/systemui/analytics/DataCollector;->mDisableUnlocking:Z

    .line 83
    iput-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mFalsingPlugin:Lcom/android/systemui/plugins/FalsingPlugin;

    .line 85
    new-instance v0, Lcom/android/systemui/analytics/DataCollector$1;

    iget-object v2, p0, Lcom/android/systemui/analytics/DataCollector;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/analytics/DataCollector$1;-><init>(Lcom/android/systemui/analytics/DataCollector;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 92
    new-instance v0, Lcom/android/systemui/analytics/DataCollector$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/analytics/DataCollector$2;-><init>(Lcom/android/systemui/analytics/DataCollector;)V

    iput-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mPluginListener:Lcom/android/systemui/plugins/PluginListener;

    .line 103
    iput-object p1, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    .line 105
    iget-object p1, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "data_collector_enable"

    .line 106
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/analytics/DataCollector;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x1

    .line 105
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 110
    iget-object p1, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "data_collector_collect_bad_touches"

    .line 111
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/analytics/DataCollector;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 110
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 115
    iget-object p1, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "data_collector_allow_rejected_touch_reports"

    .line 116
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/analytics/DataCollector;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 115
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 120
    iget-object p1, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "data_collector_disable_unlocking"

    .line 121
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/analytics/DataCollector;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 120
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 125
    invoke-direct {p0}, Lcom/android/systemui/analytics/DataCollector;->updateConfiguration()V

    .line 127
    const-class p1, Lcom/android/systemui/shared/plugins/PluginManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shared/plugins/PluginManager;

    iget-object p0, p0, Lcom/android/systemui/analytics/DataCollector;->mPluginListener:Lcom/android/systemui/plugins/PluginListener;

    const-class v0, Lcom/android/systemui/plugins/FalsingPlugin;

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/analytics/DataCollector;)V
    .registers 1

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/analytics/DataCollector;->updateConfiguration()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/analytics/DataCollector;)Lcom/android/systemui/plugins/FalsingPlugin;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/android/systemui/analytics/DataCollector;->mFalsingPlugin:Lcom/android/systemui/plugins/FalsingPlugin;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/analytics/DataCollector;Lcom/android/systemui/plugins/FalsingPlugin;)Lcom/android/systemui/plugins/FalsingPlugin;
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/android/systemui/analytics/DataCollector;->mFalsingPlugin:Lcom/android/systemui/plugins/FalsingPlugin;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/analytics/DataCollector;)Landroid/content/Context;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/analytics/DataCollector;)Z
    .registers 1

    .line 55
    iget-boolean p0, p0, Lcom/android/systemui/analytics/DataCollector;->mDisableUnlocking:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/analytics/DataCollector;)Z
    .registers 1

    .line 55
    iget-boolean p0, p0, Lcom/android/systemui/analytics/DataCollector;->mCollectBadTouches:Z

    return p0
.end method

.method private addEvent(I)V
    .registers 4

    .line 494
    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    if-eqz p0, :cond_11

    .line 495
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/analytics/SensorLoggerSession;->addPhoneEvent(IJ)V

    :cond_11
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/analytics/DataCollector;
    .registers 2

    .line 131
    sget-object v0, Lcom/android/systemui/analytics/DataCollector;->sInstance:Lcom/android/systemui/analytics/DataCollector;

    if-nez v0, :cond_b

    .line 132
    new-instance v0, Lcom/android/systemui/analytics/DataCollector;

    invoke-direct {v0, p0}, Lcom/android/systemui/analytics/DataCollector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/analytics/DataCollector;->sInstance:Lcom/android/systemui/analytics/DataCollector;

    .line 134
    :cond_b
    sget-object p0, Lcom/android/systemui/analytics/DataCollector;->sInstance:Lcom/android/systemui/analytics/DataCollector;

    return-object p0
.end method

.method private onSessionEnd(I)V
    .registers 5

    .line 173
    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    const/4 v1, 0x0

    .line 174
    iput-object v1, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    .line 176
    iget-boolean v1, p0, Lcom/android/systemui/analytics/DataCollector;->mEnableCollector:Z

    if-nez v1, :cond_d

    iget-boolean v1, p0, Lcom/android/systemui/analytics/DataCollector;->mDisableUnlocking:Z

    if-eqz v1, :cond_17

    .line 177
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/systemui/analytics/SensorLoggerSession;->end(JI)V

    .line 178
    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->queueSession(Lcom/android/systemui/analytics/SensorLoggerSession;)V

    :cond_17
    return-void
.end method

.method private onSessionStart()V
    .registers 6

    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCornerSwiping:Z

    .line 168
    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mTrackingStarted:Z

    .line 169
    new-instance v0, Lcom/android/systemui/analytics/SensorLoggerSession;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/analytics/SensorLoggerSession;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    return-void
.end method

.method private queueSession(Lcom/android/systemui/analytics/SensorLoggerSession;)V
    .registers 3

    .line 209
    new-instance v0, Lcom/android/systemui/analytics/DataCollector$3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/analytics/DataCollector$3;-><init>(Lcom/android/systemui/analytics/DataCollector;Lcom/android/systemui/analytics/SensorLoggerSession;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sessionEntrypoint()Z
    .registers 2

    .line 153
    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    if-nez v0, :cond_f

    .line 154
    invoke-direct {p0}, Lcom/android/systemui/analytics/DataCollector;->onSessionStart()V

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method private sessionExitpoint(I)V
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    if-eqz v0, :cond_7

    .line 162
    invoke-direct {p0, p1}, Lcom/android/systemui/analytics/DataCollector;->onSessionEnd(I)V

    :cond_7
    return-void
.end method

.method private updateConfiguration()V
    .registers 5

    .line 138
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    .line 139
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "data_collector_enable"

    .line 138
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_16

    move v0, v1

    goto :goto_17

    :cond_16
    move v0, v2

    :goto_17
    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mEnableCollector:Z

    .line 141
    iget-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mEnableCollector:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    .line 142
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "data_collector_collect_bad_touches"

    .line 141
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2d

    move v0, v1

    goto :goto_2e

    :cond_2d
    move v0, v2

    :goto_2e
    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCollectBadTouches:Z

    .line 144
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    .line 145
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "data_collector_allow_rejected_touch_reports"

    .line 144
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_44

    move v0, v1

    goto :goto_45

    :cond_44
    move v0, v2

    :goto_45
    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mAllowReportRejectedTouch:Z

    .line 147
    iget-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mEnableCollector:Z

    if-eqz v0, :cond_5e

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    .line 148
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "data_collector_disable_unlocking"

    .line 147
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5e

    goto :goto_5f

    :cond_5e
    move v1, v2

    :goto_5f
    iput-boolean v1, p0, Lcom/android/systemui/analytics/DataCollector;->mDisableUnlocking:Z

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .registers 2

    .line 256
    iget-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mEnableCollector:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mAllowReportRejectedTouch:Z

    if-nez v0, :cond_f

    iget-boolean p0, p0, Lcom/android/systemui/analytics/DataCollector;->mDisableUnlocking:Z

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public isEnabledFull()Z
    .registers 1

    .line 267
    iget-boolean p0, p0, Lcom/android/systemui/analytics/DataCollector;->mEnableCollector:Z

    return p0
.end method

.method public isReportingEnabled()Z
    .registers 1

    .line 500
    iget-boolean p0, p0, Lcom/android/systemui/analytics/DataCollector;->mAllowReportRejectedTouch:Z

    return p0
.end method

.method public isUnlockingDisabled()Z
    .registers 1

    .line 260
    iget-boolean p0, p0, Lcom/android/systemui/analytics/DataCollector;->mDisableUnlocking:Z

    return p0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onAffordanceSwipingAborted()V
    .registers 2

    .line 452
    iget-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCornerSwiping:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 456
    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCornerSwiping:Z

    const/16 v0, 0x17

    .line 457
    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    :cond_c
    return-void
.end method

.method public onAffordanceSwipingStarted(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 443
    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCornerSwiping:Z

    if-eqz p1, :cond_b

    const/16 p1, 0x15

    .line 445
    invoke-direct {p0, p1}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    goto :goto_10

    :cond_b
    const/16 p1, 0x16

    .line 447
    invoke-direct {p0, p1}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    :goto_10
    return-void
.end method

.method public onBouncerHidden()V
    .registers 2

    const/4 v0, 0x5

    .line 315
    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    return-void
.end method

.method public onBouncerShown()V
    .registers 2

    const/4 v0, 0x4

    .line 308
    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    return-void
.end method

.method public onCameraHintStarted()V
    .registers 2

    const/16 v0, 0x1b

    .line 472
    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    return-void
.end method

.method public onCameraOn()V
    .registers 2

    const/16 v0, 0x18

    .line 429
    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    return-void
.end method

.method public onExpansionFromPulseStopped()V
    .registers 1

    return-void
.end method

.method public onFalsingSessionStarted()V
    .registers 1

    .line 504
    invoke-direct {p0}, Lcom/android/systemui/analytics/DataCollector;->sessionEntrypoint()Z

    return-void
.end method

.method public onLeftAffordanceHintStarted()V
    .registers 2

    const/16 v0, 0x1c

    .line 479
    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    return-void
.end method

.method public onLeftAffordanceOn()V
    .registers 2

    const/16 v0, 0x19

    .line 436
    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    return-void
.end method

.method public onNotificationActive()V
    .registers 2

    const/16 v0, 0xb

    .line 358
    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    return-void
.end method

.method public onNotificationDismissed()V
    .registers 2

    const/16 v0, 0x12

    .line 408
    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    return-void
.end method

.method public onNotificationDoubleTap()V
    .registers 2

    const/16 v0, 0xd

    .line 366
    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    return-void
.end method

.method public onNotificatonStartDismissing()V
    .registers 2

    const/16 v0, 0x13

    .line 415
    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    return-void
.end method

.method public onNotificatonStartDraggingDown()V
    .registers 2

    const/16 v0, 0x10

    .line 380
    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    return-void
.end method

.method public onNotificatonStopDismissing()V
    .registers 2

    const/16 v0, 0x14

    .line 422
    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    return-void
.end method

.method public onNotificatonStopDraggingDown()V
    .registers 2

    const/16 v0, 0x11

    .line 401
    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    return-void
.end method

.method public onQsDown()V
    .registers 2

    const/4 v0, 0x6

    .line 322
    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    return-void
.end method

.method public onScreenOff()V
    .registers 2

    const/4 v0, 0x2

    .line 292
    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    const/4 v0, 0x0

    .line 293
    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->sessionExitpoint(I)V

    return-void
.end method

.method public onScreenOnFromTouch()V
    .registers 2

    .line 280
    invoke-direct {p0}, Lcom/android/systemui/analytics/DataCollector;->sessionEntrypoint()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    .line 284
    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    :cond_a
    return-void
.end method

.method public onScreenTurningOn()V
    .registers 2

    .line 271
    invoke-direct {p0}, Lcom/android/systemui/analytics/DataCollector;->sessionEntrypoint()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 275
    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    :cond_a
    return-void
.end method

.method public declared-synchronized onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5

    monitor-enter p0

    .line 242
    :try_start_1
    invoke-virtual {p0}, Lcom/android/systemui/analytics/DataCollector;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    if-eqz v0, :cond_14

    .line 243
    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/systemui/analytics/SensorLoggerSession;->addSensorEvent(Landroid/hardware/SensorEvent;J)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 245
    :cond_14
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onStartExpandingFromPulse()V
    .registers 1

    return-void
.end method

.method public onSucccessfulUnlock()V
    .registers 2

    const/4 v0, 0x3

    .line 300
    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    const/4 v0, 0x1

    .line 301
    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->sessionExitpoint(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;II)V
    .registers 5

    .line 483
    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    if-eqz v0, :cond_c

    .line 488
    invoke-virtual {v0, p1}, Lcom/android/systemui/analytics/SensorLoggerSession;->addMotionEvent(Landroid/view/MotionEvent;)V

    .line 489
    iget-object p0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/analytics/SensorLoggerSession;->setTouchArea(II)V

    :cond_c
    return-void
.end method

.method public onTrackingStarted()V
    .registers 2

    const/4 v0, 0x1

    .line 340
    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mTrackingStarted:Z

    const/16 v0, 0x9

    .line 341
    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    return-void
.end method

.method public onTrackingStopped()V
    .registers 2

    .line 345
    iget-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mTrackingStarted:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 349
    iput-boolean v0, p0, Lcom/android/systemui/analytics/DataCollector;->mTrackingStarted:Z

    const/16 v0, 0xa

    .line 350
    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    :cond_c
    return-void
.end method

.method public onUnlockHintStarted()V
    .registers 2

    const/16 v0, 0x1a

    .line 465
    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    return-void
.end method

.method public reportRejectedTouch()Landroid/net/Uri;
    .registers 6

    .line 183
    iget-object v0, p0, Lcom/android/systemui/analytics/DataCollector;->mCurrentSession:Lcom/android/systemui/analytics/SensorLoggerSession;

    const/4 v1, 0x1

    if-nez v0, :cond_12

    .line 184
    iget-object p0, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    const-string v0, "Generating rejected touch report failed: session timed out."

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 185
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const/4 p0, 0x0

    return-object p0

    :cond_12
    const/4 v2, 0x4

    .line 190
    invoke-virtual {v0, v2}, Lcom/android/systemui/analytics/SensorLoggerSession;->setType(I)V

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/systemui/analytics/SensorLoggerSession;->end(JI)V

    .line 192
    invoke-virtual {v0}, Lcom/android/systemui/analytics/SensorLoggerSession;->toProto()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    move-result-object v0

    .line 194
    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    .line 195
    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/systemui/analytics/DataCollector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "rejected_touch_reports"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 197
    new-instance p0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rejected_touch_report_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 200
    :try_start_4f
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_57} :catch_5c

    .line 205
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :catch_5c
    move-exception p0

    .line 202
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setNotificationExpanded()V
    .registers 2

    const/16 v0, 0xe

    .line 373
    invoke-direct {p0, v0}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    return-void
.end method

.method public setQsExpanded(Z)V
    .registers 2

    if-eqz p1, :cond_7

    const/4 p1, 0x7

    .line 330
    invoke-direct {p0, p1}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    goto :goto_c

    :cond_7
    const/16 p1, 0x8

    .line 332
    invoke-direct {p0, p1}, Lcom/android/systemui/analytics/DataCollector;->addEvent(I)V

    :goto_c
    return-void
.end method
