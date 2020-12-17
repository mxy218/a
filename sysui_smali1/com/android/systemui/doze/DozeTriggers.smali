.class public Lcom/android/systemui/doze/DozeTriggers;
.super Ljava/lang/Object;
.source "DozeTriggers.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/DozeTriggers$DockEventListener;,
        Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;,
        Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static sWakeDisplaySensorState:Z


# instance fields
.field private final mAllowPulseTriggers:Z

.field private final mBroadcastReceiver:Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

.field private final mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private final mContext:Landroid/content/Context;

.field private final mDockEventListener:Lcom/android/systemui/doze/DozeTriggers$DockEventListener;

.field private final mDockManager:Lcom/android/systemui/dock/DockManager;

.field private final mDozeHost:Lcom/android/systemui/doze/DozeHost;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private final mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

.field private final mHandler:Landroid/os/Handler;

.field private mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

.field private final mMachine:Lcom/android/systemui/doze/DozeMachine;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mNotificationPulseTime:J

.field private mPulsePending:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mUiModeManager:Landroid/app/UiModeManager;

.field private final mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 59
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/doze/DozeTriggers;->DEBUG:Z

    const/4 v0, 0x1

    .line 68
    sput-boolean v0, Lcom/android/systemui/doze/DozeTriggers;->sWakeDisplaySensorState:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeMachine;Lcom/android/systemui/doze/DozeHost;Landroid/app/AlarmManager;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/hardware/SensorManager;Landroid/os/Handler;Lcom/android/systemui/util/wakelock/WakeLock;ZLcom/android/systemui/dock/DockManager;)V
    .registers 25

    move-object v0, p0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v1, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;-><init>(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/doze/DozeTriggers$1;)V

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mBroadcastReceiver:Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

    .line 82
    new-instance v1, Lcom/android/systemui/doze/DozeTriggers$DockEventListener;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/doze/DozeTriggers$DockEventListener;-><init>(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/doze/DozeTriggers$1;)V

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mDockEventListener:Lcom/android/systemui/doze/DozeTriggers$DockEventListener;

    .line 88
    const-class v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/logging/MetricsLogger;

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 569
    new-instance v1, Lcom/android/systemui/doze/DozeTriggers$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/doze/DozeTriggers$2;-><init>(Lcom/android/systemui/doze/DozeTriggers;)V

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    move-object v1, p1

    .line 94
    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    move-object v2, p2

    .line 95
    iput-object v2, v0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    move-object/from16 v2, p3

    .line 96
    iput-object v2, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    move-object/from16 v7, p5

    .line 97
    iput-object v7, v0, Lcom/android/systemui/doze/DozeTriggers;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    move-object/from16 v6, p6

    .line 98
    iput-object v6, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object/from16 v2, p7

    .line 99
    iput-object v2, v0, Lcom/android/systemui/doze/DozeTriggers;->mSensorManager:Landroid/hardware/SensorManager;

    move-object/from16 v2, p8

    .line 100
    iput-object v2, v0, Lcom/android/systemui/doze/DozeTriggers;->mHandler:Landroid/os/Handler;

    move-object/from16 v8, p9

    .line 101
    iput-object v8, v0, Lcom/android/systemui/doze/DozeTriggers;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    move/from16 v2, p10

    .line 102
    iput-boolean v2, v0, Lcom/android/systemui/doze/DozeTriggers;->mAllowPulseTriggers:Z

    .line 103
    new-instance v12, Lcom/android/systemui/doze/DozeSensors;

    iget-object v5, v0, Lcom/android/systemui/doze/DozeTriggers;->mSensorManager:Landroid/hardware/SensorManager;

    new-instance v9, Lcom/android/systemui/doze/-$$Lambda$XuSeOmLZ56lHJGoIP26_sIwbcBM;

    invoke-direct {v9, p0}, Lcom/android/systemui/doze/-$$Lambda$XuSeOmLZ56lHJGoIP26_sIwbcBM;-><init>(Lcom/android/systemui/doze/DozeTriggers;)V

    new-instance v10, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$ulqUMEXi8OgK7771oZ9BOr21BBk;

    invoke-direct {v10, p0}, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$ulqUMEXi8OgK7771oZ9BOr21BBk;-><init>(Lcom/android/systemui/doze/DozeTriggers;)V

    .line 105
    invoke-virtual/range {p6 .. p6}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPolicy()Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    move-result-object v11

    move-object v2, v12

    move-object v3, p1

    move-object/from16 v4, p4

    invoke-direct/range {v2 .. v11}, Lcom/android/systemui/doze/DozeSensors;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Landroid/hardware/SensorManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeSensors$Callback;Ljava/util/function/Consumer;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V

    iput-object v12, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    .line 106
    iget-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/UiModeManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mUiModeManager:Landroid/app/UiModeManager;

    move-object/from16 v1, p11

    .line 107
    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mDockManager:Lcom/android/systemui/dock/DockManager;

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/doze/DozeTriggers;Ljava/lang/Runnable;)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeTriggers;->onNotification(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/doze/DozeTriggers;)Landroid/content/Context;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/doze/DozeTriggers;)Landroid/hardware/SensorManager;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/doze/DozeSensors;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/doze/DozeTriggers;)Landroid/os/Handler;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/util/wakelock/WakeLock;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/doze/DozeTriggers;IZLjava/lang/Runnable;)V
    .registers 4

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/doze/DozeTriggers;->requestPulse(IZLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/doze/DozeMachine;
    .registers 1

    .line 56
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    return-object p0
.end method

.method private canPulse()Z
    .registers 3

    .line 396
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v0, v1, :cond_17

    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 397
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method private checkTriggersAtInit()V
    .registers 3

    .line 347
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_21

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 348
    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isPowerSaveActive()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 349
    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isBlockingDoze()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 350
    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isProvisioned()Z

    move-result v0

    if-nez v0, :cond_28

    .line 351
    :cond_21
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    :cond_28
    return-void
.end method

.method private continuePulseRequest(I)V
    .registers 4

    const/4 v0, 0x0

    .line 401
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    .line 402
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isPulsingBlocked()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeTriggers;->canPulse()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_18

    .line 407
    :cond_12
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestPulse(I)V

    return-void

    .line 403
    :cond_18
    :goto_18
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 404
    invoke-interface {p0}, Lcom/android/systemui/doze/DozeHost;->isPulsingBlocked()Z

    move-result p0

    .line 403
    invoke-static {p1, v0, v1, p0}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Landroid/content/Context;ZLcom/android/systemui/doze/DozeMachine$State;Z)V

    return-void
.end method

.method private gentleWakeUp(I)V
    .registers 5

    .line 209
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0xdf

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x6

    .line 210
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 211
    invoke-virtual {v1, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 209
    invoke-virtual {v0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 212
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result p1

    if-eqz p1, :cond_24

    .line 216
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-interface {p1, v0}, Lcom/android/systemui/doze/DozeHost;->setAodDimmingScrim(F)V

    .line 218
    :cond_24
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeMachine;->wakeUp()V

    return-void
.end method

.method public static synthetic lambda$ulqUMEXi8OgK7771oZ9BOr21BBk(Lcom/android/systemui/doze/DozeTriggers;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeTriggers;->onProximityFar(Z)V

    return-void
.end method

.method private onNotification(Ljava/lang/Runnable;)V
    .registers 4

    .line 111
    sget-boolean v0, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    const-string v1, "DozeTriggers"

    if-eqz v0, :cond_b

    const-string v0, "requestNotificationPulse"

    .line 112
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_b
    sget-boolean v0, Lcom/android/systemui/doze/DozeTriggers;->sWakeDisplaySensorState:Z

    if-nez v0, :cond_20

    const-string v0, "Wake display false. Pulse denied."

    .line 115
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {p1}, Lcom/android/systemui/doze/DozeTriggers;->runIfNotNull(Ljava/lang/Runnable;)V

    .line 117
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "wakeDisplaySensor"

    invoke-static {p0, p1}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 120
    :cond_20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mNotificationPulseTime:J

    .line 121
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->pulseOnNotificationEnabled(I)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 122
    invoke-static {p1}, Lcom/android/systemui/doze/DozeTriggers;->runIfNotNull(Ljava/lang/Runnable;)V

    .line 123
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    const-string p1, "pulseOnNotificationsDisabled"

    invoke-static {p0, p1}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_3a
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 126
    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/doze/DozeTriggers;->requestPulse(IZLjava/lang/Runnable;)V

    .line 128
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->traceNotificationPulse(Landroid/content/Context;)V

    return-void
.end method

.method private onProximityFar(Z)V
    .registers 10

    .line 225
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeMachine;->isExecutingTransition()Z

    move-result v0

    const-string v1, "DozeTriggers"

    if-eqz v0, :cond_10

    const-string p0, "onProximityFar called during transition. Ignoring sensor response."

    .line 226
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    xor-int/lit8 v0, p1, 0x1

    .line 231
    iget-object v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v2}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v2

    .line 232
    sget-object v3, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_20

    move v3, v5

    goto :goto_21

    :cond_20
    move v3, v4

    .line 233
    :goto_21
    sget-object v6, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v2, v6, :cond_27

    move v6, v5

    goto :goto_28

    :cond_27
    move v6, v4

    .line 234
    :goto_28
    sget-object v7, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v2, v7, :cond_2d

    move v4, v5

    .line 236
    :cond_2d
    sget-object v5, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v2, v5, :cond_35

    sget-object v5, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING_BRIGHT:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v2, v5, :cond_52

    .line 239
    :cond_35
    sget-boolean v2, Lcom/android/systemui/doze/DozeTriggers;->DEBUG:Z

    if-eqz v2, :cond_4d

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prox changed, ignore touch = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_4d
    iget-object v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v2, v0}, Lcom/android/systemui/doze/DozeHost;->onIgnoreTouchWhilePulsing(Z)V

    :cond_52
    if-eqz p1, :cond_69

    if-nez v3, :cond_58

    if-eqz v6, :cond_69

    .line 246
    :cond_58
    sget-boolean p1, Lcom/android/systemui/doze/DozeTriggers;->DEBUG:Z

    if-eqz p1, :cond_61

    const-string p1, "Prox FAR, unpausing AOD"

    .line 247
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_61
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    goto :goto_7d

    :cond_69
    if-eqz v0, :cond_7d

    if-eqz v4, :cond_7d

    .line 251
    sget-boolean p1, Lcom/android/systemui/doze/DozeTriggers;->DEBUG:Z

    if-eqz p1, :cond_76

    const-string p1, "Prox NEAR, pausing AOD"

    .line 252
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_76
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    :cond_7d
    :goto_7d
    return-void
.end method

.method private onWakeScreen(ZLcom/android/systemui/doze/DozeMachine$State;)V
    .registers 7

    .line 265
    invoke-static {p1}, Lcom/android/systemui/doze/DozeLog;->traceWakeDisplay(Z)V

    .line 266
    sput-boolean p1, Lcom/android/systemui/doze/DozeTriggers;->sWakeDisplaySensorState:Z

    const/4 v0, 0x7

    const/4 v1, 0x1

    if-eqz p1, :cond_12

    .line 269
    new-instance p1, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$vUNGpAqR9niD5s7OS6n7KlXtw9c;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$vUNGpAqR9niD5s7OS6n7KlXtw9c;-><init>(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/doze/DozeMachine$State;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/doze/DozeTriggers;->proximityCheckThenCall(Ljava/util/function/IntConsumer;ZI)V

    goto :goto_40

    .line 283
    :cond_12
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    const/4 v2, 0x0

    if-ne p2, p1, :cond_19

    move p1, v1

    goto :goto_1a

    :cond_19
    move p1, v2

    .line 284
    :goto_1a
    sget-object v3, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, v3, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    if-nez v1, :cond_40

    if-nez p1, :cond_40

    .line 286
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object p2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p1, p2}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 288
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance p1, Landroid/metrics/LogMaker;

    const/16 p2, 0xdf

    invoke-direct {p1, p2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 p2, 0x2

    .line 289
    invoke-virtual {p1, p2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 290
    invoke-virtual {p1, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 288
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_40
    :goto_40
    return-void
.end method

.method private proximityCheckThenCall(Ljava/util/function/IntConsumer;ZI)V
    .registers 10

    .line 140
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeSensors;->isProximityCurrentlyFar()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p2, :cond_d

    const/4 p0, 0x3

    .line 142
    invoke-interface {p1, p0}, Ljava/util/function/IntConsumer;->accept(I)V

    goto :goto_2c

    :cond_d
    if-eqz v0, :cond_1c

    .line 144
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x2

    goto :goto_18

    :cond_17
    const/4 p0, 0x1

    :goto_18
    invoke-interface {p1, p0}, Ljava/util/function/IntConsumer;->accept(I)V

    goto :goto_2c

    .line 146
    :cond_1c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 147
    new-instance p2, Lcom/android/systemui/doze/DozeTriggers$1;

    move-object v0, p2

    move-object v1, p0

    move v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/doze/DozeTriggers$1;-><init>(Lcom/android/systemui/doze/DozeTriggers;JILjava/util/function/IntConsumer;)V

    .line 155
    invoke-virtual {p2}, Lcom/android/systemui/doze/DozeTriggers$ProximityCheck;->check()V

    :goto_2c
    return-void
.end method

.method private requestPulse(IZLjava/lang/Runnable;)V
    .registers 6

    .line 357
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 358
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0, p1}, Lcom/android/systemui/doze/DozeHost;->extendPulse(I)V

    .line 362
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v0, v1, :cond_1e

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1e

    .line 364
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING_BRIGHT:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    return-void

    .line 368
    :cond_1e
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    if-nez v0, :cond_5a

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mAllowPulseTriggers:Z

    if-eqz v0, :cond_5a

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeTriggers;->canPulse()Z

    move-result v0

    if-nez v0, :cond_2d

    goto :goto_5a

    :cond_2d
    const/4 v0, 0x1

    .line 377
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    .line 378
    new-instance v1, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$uVbqdwTqPYfR4HMOhbGgCZULuxk;

    invoke-direct {v1, p0, p3, p1}, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$uVbqdwTqPYfR4HMOhbGgCZULuxk;-><init>(Lcom/android/systemui/doze/DozeTriggers;Ljava/lang/Runnable;I)V

    iget-object p3, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 388
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getProxCheckBeforePulse()Z

    move-result p3

    if-eqz p3, :cond_41

    if-eqz p2, :cond_40

    goto :goto_41

    :cond_40
    const/4 v0, 0x0

    .line 378
    :cond_41
    :goto_41
    invoke-direct {p0, v1, v0, p1}, Lcom/android/systemui/doze/DozeTriggers;->proximityCheckThenCall(Ljava/util/function/IntConsumer;ZI)V

    .line 391
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance p2, Landroid/metrics/LogMaker;

    const/16 p3, 0xdf

    invoke-direct {p2, p3}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 p3, 0x6

    .line 392
    invoke-virtual {p2, p3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 391
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void

    .line 369
    :cond_5a
    :goto_5a
    iget-boolean p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mAllowPulseTriggers:Z

    if-eqz p1, :cond_71

    .line 370
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    iget-boolean p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 371
    invoke-interface {p0}, Lcom/android/systemui/doze/DozeHost;->isPulsingBlocked()Z

    move-result p0

    .line 370
    invoke-static {p1, p2, v0, p0}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Landroid/content/Context;ZLcom/android/systemui/doze/DozeMachine$State;Z)V

    .line 373
    :cond_71
    invoke-static {p3}, Lcom/android/systemui/doze/DozeTriggers;->runIfNotNull(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static runIfNotNull(Ljava/lang/Runnable;)V
    .registers 1

    if-eqz p0, :cond_5

    .line 133
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    const-string v0, " notificationPulseTime="

    .line 412
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mNotificationPulseTime:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " pulsePending="

    .line 415
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "DozeSensors:"

    .line 416
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeSensors;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public synthetic lambda$onSensor$0$DozeTriggers(ZZFFIZI)V
    .registers 9

    const/4 v0, 0x1

    if-ne p7, v0, :cond_4

    return-void

    :cond_4
    if-nez p1, :cond_15

    if-eqz p2, :cond_9

    goto :goto_15

    :cond_9
    if-eqz p6, :cond_f

    .line 191
    invoke-direct {p0, p5}, Lcom/android/systemui/doze/DozeTriggers;->gentleWakeUp(I)V

    goto :goto_27

    .line 193
    :cond_f
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {p0, p5}, Lcom/android/systemui/doze/DozeHost;->extendPulse(I)V

    goto :goto_27

    :cond_15
    :goto_15
    const/high16 p1, -0x40800000  # -1.0f

    cmpl-float p2, p3, p1

    if-eqz p2, :cond_24

    cmpl-float p1, p4, p1

    if-eqz p1, :cond_24

    .line 187
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {p1, p3, p4}, Lcom/android/systemui/doze/DozeHost;->onSlpiTap(FF)V

    .line 189
    :cond_24
    invoke-direct {p0, p5}, Lcom/android/systemui/doze/DozeTriggers;->gentleWakeUp(I)V

    :goto_27
    return-void
.end method

.method public synthetic lambda$onWakeScreen$1$DozeTriggers(Lcom/android/systemui/doze/DozeMachine$State;I)V
    .registers 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    return-void

    .line 274
    :cond_4
    sget-object p2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p1, p2, :cond_24

    .line 275
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object p2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p1, p2}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 277
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance p1, Landroid/metrics/LogMaker;

    const/16 p2, 0xdf

    invoke-direct {p1, p2}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 278
    invoke-virtual {p1, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    const/4 p2, 0x7

    .line 279
    invoke-virtual {p1, p2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 277
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_24
    return-void
.end method

.method public synthetic lambda$requestPulse$2$DozeTriggers(Ljava/lang/Runnable;II)V
    .registers 5

    const/4 v0, 0x1

    if-ne p3, v0, :cond_11

    .line 381
    iget-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    const-string p3, "inPocket"

    invoke-static {p2, p3}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 382
    iput-boolean p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    .line 383
    invoke-static {p1}, Lcom/android/systemui/doze/DozeTriggers;->runIfNotNull(Ljava/lang/Runnable;)V

    goto :goto_14

    .line 386
    :cond_11
    invoke-direct {p0, p2}, Lcom/android/systemui/doze/DozeTriggers;->continuePulseRequest(I)V

    :goto_14
    return-void
.end method

.method onSensor(IFF[F)V
    .registers 16
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_7

    move v5, v1

    goto :goto_8

    :cond_7
    move v5, v0

    :goto_8
    const/16 v2, 0x9

    if-ne p1, v2, :cond_e

    move v6, v1

    goto :goto_f

    :cond_e
    move v6, v0

    :goto_f
    const/4 v2, 0x3

    if-ne p1, v2, :cond_14

    move v2, v1

    goto :goto_15

    :cond_14
    move v2, v0

    :goto_15
    const/4 v3, 0x5

    if-ne p1, v3, :cond_1a

    move v3, v1

    goto :goto_1b

    :cond_1a
    move v3, v0

    :goto_1b
    const/4 v4, 0x7

    if-ne p1, v4, :cond_20

    move v4, v1

    goto :goto_21

    :cond_20
    move v4, v0

    :goto_21
    const/16 v7, 0x8

    if-ne p1, v7, :cond_27

    move v7, v1

    goto :goto_28

    :cond_27
    move v7, v0

    :goto_28
    if-eqz p4, :cond_36

    .line 167
    array-length v8, p4

    if-lez v8, :cond_36

    aget p4, p4, v0

    const/4 v8, 0x0

    cmpl-float p4, p4, v8

    if-eqz p4, :cond_36

    move p4, v1

    goto :goto_37

    :cond_36
    move p4, v0

    :goto_37
    const/4 v8, 0x0

    if-eqz v4, :cond_4d

    .line 170
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {p1}, Lcom/android/systemui/doze/DozeMachine;->isExecutingTransition()Z

    move-result p1

    if-eqz p1, :cond_43

    goto :goto_49

    :cond_43
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {p1}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v8

    :goto_49
    invoke-direct {p0, p4, v8}, Lcom/android/systemui/doze/DozeTriggers;->onWakeScreen(ZLcom/android/systemui/doze/DozeMachine$State;)V

    goto :goto_69

    :cond_4d
    if-eqz v3, :cond_53

    .line 172
    invoke-direct {p0, p1, v1, v8}, Lcom/android/systemui/doze/DozeTriggers;->requestPulse(IZLjava/lang/Runnable;)V

    goto :goto_69

    :cond_53
    if-eqz v7, :cond_5b

    if-eqz p4, :cond_69

    .line 176
    invoke-direct {p0, p1, v1, v8}, Lcom/android/systemui/doze/DozeTriggers;->requestPulse(IZLjava/lang/Runnable;)V

    goto :goto_69

    .line 180
    :cond_5b
    new-instance p4, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$KXJDb4lGP0PpY23yKRXX1q0y7kA;

    move-object v3, p4

    move-object v4, p0

    move v7, p2

    move v8, p3

    move v9, p1

    move v10, v2

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/doze/-$$Lambda$DozeTriggers$KXJDb4lGP0PpY23yKRXX1q0y7kA;-><init>(Lcom/android/systemui/doze/DozeTriggers;ZZFFIZ)V

    invoke-direct {p0, p4, v1, p1}, Lcom/android/systemui/doze/DozeTriggers;->proximityCheckThenCall(Ljava/util/function/IntConsumer;ZI)V

    :cond_69
    :goto_69
    if-eqz v2, :cond_83

    .line 200
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide p3, p0, Lcom/android/systemui/doze/DozeTriggers;->mNotificationPulseTime:J

    sub-long/2addr p1, p3

    .line 201
    iget-object p3, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 202
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPickupVibrationThreshold()I

    move-result p3

    int-to-long p3, p3

    cmp-long p1, p1, p3

    if-gez p1, :cond_7e

    move v0, v1

    .line 203
    :cond_7e
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/systemui/doze/DozeLog;->tracePickupWakeUp(Landroid/content/Context;Z)V

    :cond_83
    return-void
.end method

.method public transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .registers 6

    .line 297
    sget-object p1, Lcom/android/systemui/doze/DozeTriggers$3;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_9a

    goto/16 :goto_98

    .line 334
    :pswitch_f  #0x9
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mBroadcastReceiver:Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

    iget-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;->unregister(Landroid/content/Context;)V

    .line 335
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    iget-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {p1, p2}, Lcom/android/systemui/doze/DozeHost;->removeCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V

    .line 336
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDockManager:Lcom/android/systemui/dock/DockManager;

    if-eqz p1, :cond_26

    .line 337
    iget-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mDockEventListener:Lcom/android/systemui/doze/DozeTriggers$DockEventListener;

    invoke-interface {p1, p2}, Lcom/android/systemui/dock/DockManager;->removeListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    .line 339
    :cond_26
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p1, v1}, Lcom/android/systemui/doze/DozeSensors;->setListening(Z)V

    .line 340
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p0, v1}, Lcom/android/systemui/doze/DozeSensors;->setProxListening(Z)V

    goto :goto_98

    .line 328
    :pswitch_31  #0x8
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p1}, Lcom/android/systemui/doze/DozeSensors;->requestTemporaryDisable()V

    .line 331
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors;->updateListening()V

    goto :goto_98

    .line 323
    :pswitch_3c  #0x6, 0x7
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p1, v1}, Lcom/android/systemui/doze/DozeSensors;->setTouchscreenSensorsListening(Z)V

    .line 324
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p1, v0}, Lcom/android/systemui/doze/DozeSensors;->setProxListening(Z)V

    .line 325
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p0, v1}, Lcom/android/systemui/doze/DozeSensors;->setPaused(Z)V

    goto :goto_98

    .line 318
    :pswitch_4c  #0x4, 0x5
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p1, v0}, Lcom/android/systemui/doze/DozeSensors;->setProxListening(Z)V

    .line 319
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeSensors;->setPaused(Z)V

    goto :goto_98

    .line 309
    :pswitch_57  #0x2, 0x3
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    sget-object v2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p2, v2, :cond_5f

    move v2, v0

    goto :goto_60

    :cond_5f
    move v2, v1

    :goto_60
    invoke-virtual {p1, v2}, Lcom/android/systemui/doze/DozeSensors;->setProxListening(Z)V

    .line 310
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p1, v0}, Lcom/android/systemui/doze/DozeSensors;->setListening(Z)V

    .line 311
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p1, v1}, Lcom/android/systemui/doze/DozeSensors;->setPaused(Z)V

    .line 312
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, p1, :cond_98

    sget-boolean p1, Lcom/android/systemui/doze/DozeTriggers;->sWakeDisplaySensorState:Z

    if-nez p1, :cond_98

    .line 313
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/doze/DozeTriggers;->onWakeScreen(ZLcom/android/systemui/doze/DozeMachine$State;)V

    goto :goto_98

    .line 299
    :pswitch_79  #0x1
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mBroadcastReceiver:Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

    iget-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;->register(Landroid/content/Context;)V

    .line 300
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    iget-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {p1, p2}, Lcom/android/systemui/doze/DozeHost;->addCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V

    .line 301
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDockManager:Lcom/android/systemui/dock/DockManager;

    if-eqz p1, :cond_90

    .line 302
    iget-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mDockEventListener:Lcom/android/systemui/doze/DozeTriggers$DockEventListener;

    invoke-interface {p1, p2}, Lcom/android/systemui/dock/DockManager;->addListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    .line 304
    :cond_90
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p1}, Lcom/android/systemui/doze/DozeSensors;->requestTemporaryDisable()V

    .line 305
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeTriggers;->checkTriggersAtInit()V

    :cond_98
    :goto_98
    return-void

    nop

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_79  #00000001
        :pswitch_57  #00000002
        :pswitch_57  #00000003
        :pswitch_4c  #00000004
        :pswitch_4c  #00000005
        :pswitch_3c  #00000006
        :pswitch_3c  #00000007
        :pswitch_31  #00000008
        :pswitch_f  #00000009
    .end packed-switch
.end method
