.class public Lcom/android/systemui/doze/DozeUi;
.super Ljava/lang/Object;
.source "DozeUi.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;


# instance fields
.field private final mCanAnimateTransition:Z

.field private final mContext:Landroid/content/Context;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private final mHandler:Landroid/os/Handler;

.field private final mHost:Lcom/android/systemui/doze/DozeHost;

.field private mKeyguardShowing:Z

.field private final mKeyguardVisibilityCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mLastTimeTickElapsed:J

.field private final mMachine:Lcom/android/systemui/doze/DozeMachine;

.field private final mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

.field private final mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/android/systemui/doze/DozeMachine;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeHost;Landroid/os/Handler;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .registers 11

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/android/systemui/doze/DozeUi$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/DozeUi$1;-><init>(Lcom/android/systemui/doze/DozeUi;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mKeyguardVisibilityCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    const-wide/16 v0, 0x0

    .line 64
    iput-wide v0, p0, Lcom/android/systemui/doze/DozeUi;->mLastTimeTickElapsed:J

    .line 69
    iput-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mContext:Landroid/content/Context;

    .line 70
    iput-object p3, p0, Lcom/android/systemui/doze/DozeUi;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 71
    iput-object p4, p0, Lcom/android/systemui/doze/DozeUi;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 72
    iput-object p5, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    .line 73
    iput-object p6, p0, Lcom/android/systemui/doze/DozeUi;->mHandler:Landroid/os/Handler;

    .line 74
    invoke-virtual {p7}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeUi;->mCanAnimateTransition:Z

    .line 75
    iput-object p7, p0, Lcom/android/systemui/doze/DozeUi;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 76
    new-instance p1, Lcom/android/systemui/util/AlarmTimeout;

    new-instance p3, Lcom/android/systemui/doze/-$$Lambda$DozeUi$FO90hbI6xqXYUh2DtwuwM-uzJzs;

    invoke-direct {p3, p0}, Lcom/android/systemui/doze/-$$Lambda$DozeUi$FO90hbI6xqXYUh2DtwuwM-uzJzs;-><init>(Lcom/android/systemui/doze/DozeUi;)V

    const-string p4, "doze_time_tick"

    invoke-direct {p1, p2, p3, p4, p6}, Lcom/android/systemui/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    .line 77
    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mKeyguardVisibilityCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p8, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/doze/DozeUi;Z)Z
    .registers 2

    .line 41
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeUi;->mKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/doze/DozeUi;)V
    .registers 1

    .line 41
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->updateAnimateScreenOff()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/doze/DozeUi;)Lcom/android/systemui/doze/DozeMachine;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    return-object p0
.end method

.method public static synthetic lambda$FO90hbI6xqXYUh2DtwuwM-uzJzs(Lcom/android/systemui/doze/DozeUi;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->onTimeTick()V

    return-void
.end method

.method private onTimeTick()V
    .registers 4

    .line 211
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->verifyLastTimeTick()V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->dozeTimeTick()V

    .line 216
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeUi;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    sget-object v2, Lcom/android/systemui/doze/-$$Lambda$DozeUi$lHTcknku1GKi6pFF17CHlz1K3H8;->INSTANCE:Lcom/android/systemui/doze/-$$Lambda$DozeUi$lHTcknku1GKi6pFF17CHlz1K3H8;

    invoke-interface {v1, v2}, Lcom/android/systemui/util/wakelock/WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 218
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->scheduleTimeTick()V

    return-void
.end method

.method private pulseWhileDozing(I)V
    .registers 4

    .line 93
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    new-instance v1, Lcom/android/systemui/doze/DozeUi$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/doze/DozeUi$2;-><init>(Lcom/android/systemui/doze/DozeUi;I)V

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/doze/DozeHost;->pulseWhileDozing(Lcom/android/systemui/doze/DozeHost$PulseCallback;I)V

    return-void
.end method

.method private roundToNextMinute(J)J
    .registers 3

    .line 201
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 202
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p1, 0x0

    const/16 p2, 0xe

    .line 203
    invoke-virtual {p0, p2, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xd

    .line 204
    invoke-virtual {p0, p2, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    const/4 p2, 0x1

    .line 205
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->add(II)V

    .line 207
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method private scheduleTimeTick()V
    .registers 7

    .line 170
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    invoke-virtual {v0}, Lcom/android/systemui/util/AlarmTimeout;->isScheduled()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 174
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 175
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/doze/DozeUi;->roundToNextMinute(J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 176
    iget-object v4, p0, Lcom/android/systemui/doze/DozeUi;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v3, v5}, Lcom/android/systemui/util/AlarmTimeout;->schedule(JI)Z

    move-result v4

    if-eqz v4, :cond_23

    add-long/2addr v2, v0

    .line 178
    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/doze/DozeLog;->traceTimeTickScheduled(JJ)V

    .line 180
    :cond_23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/doze/DozeUi;->mLastTimeTickElapsed:J

    return-void
.end method

.method private unscheduleTimeTick()V
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    invoke-virtual {v0}, Lcom/android/systemui/util/AlarmTimeout;->isScheduled()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 187
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->verifyLastTimeTick()V

    .line 188
    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    invoke-virtual {p0}, Lcom/android/systemui/util/AlarmTimeout;->cancel()V

    return-void
.end method

.method private updateAnimateScreenOff()V
    .registers 3

    .line 85
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeUi;->mCanAnimateTransition:Z

    if-eqz v0, :cond_1d

    .line 86
    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeUi;->mKeyguardShowing:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 87
    :goto_13
    iget-object v1, p0, Lcom/android/systemui/doze/DozeUi;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->setControlScreenOffAnimation(Z)V

    .line 88
    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {p0, v0}, Lcom/android/systemui/doze/DozeHost;->setAnimateScreenOff(Z)V

    :cond_1d
    return-void
.end method

.method private updateAnimateWakeup(Lcom/android/systemui/doze/DozeMachine$State;)V
    .registers 4

    .line 153
    sget-object v0, Lcom/android/systemui/doze/DozeUi$3;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_26

    .line 164
    :pswitch_c  #0x6
    iget-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeUi;->mCanAnimateTransition:Z

    if-eqz v1, :cond_21

    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_22

    .line 158
    :pswitch_1b  #0x5, 0x8, 0x9, 0xa
    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {p0, v0}, Lcom/android/systemui/doze/DozeHost;->setAnimateWakeup(Z)V

    goto :goto_25

    :cond_21
    const/4 v0, 0x0

    .line 164
    :goto_22
    invoke-interface {p1, v0}, Lcom/android/systemui/doze/DozeHost;->setAnimateWakeup(Z)V

    :goto_25
    :pswitch_25  #0x7
    return-void

    :pswitch_data_26
    .packed-switch 0x5
        :pswitch_1b  #00000005
        :pswitch_c  #00000006
        :pswitch_25  #00000007
        :pswitch_1b  #00000008
        :pswitch_1b  #00000009
        :pswitch_1b  #0000000a
    .end packed-switch
.end method

.method private verifyLastTimeTick()V
    .registers 5

    .line 192
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/doze/DozeUi;->mLastTimeTickElapsed:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x15f90

    cmp-long v2, v0, v2

    if-lez v2, :cond_2d

    .line 194
    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    .line 195
    invoke-static {p0}, Lcom/android/systemui/doze/DozeLog;->traceMissedTick(Ljava/lang/String;)V

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Missed AOD time tick by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DozeMachine"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    return-void
.end method


# virtual methods
.method getKeyguardCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 223
    iget-object p0, p0, Lcom/android/systemui/doze/DozeUi;->mKeyguardVisibilityCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-object p0
.end method

.method public transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .registers 6

    .line 118
    sget-object v0, Lcom/android/systemui/doze/DozeUi$3;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_60

    goto :goto_5c

    .line 145
    :pswitch_c  #0x7
    iget-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {p1}, Lcom/android/systemui/doze/DozeHost;->stopDozing()V

    .line 146
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->unscheduleTimeTick()V

    goto :goto_5c

    .line 142
    :pswitch_15  #0x6
    iget-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {p1}, Lcom/android/systemui/doze/DozeHost;->startDozing()V

    goto :goto_5c

    .line 138
    :pswitch_1b  #0x5
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->scheduleTimeTick()V

    .line 139
    iget-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {p1}, Lcom/android/systemui/doze/DozeMachine;->getPulseReason()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeUi;->pulseWhileDozing(I)V

    goto :goto_5c

    .line 134
    :pswitch_28  #0x3, 0x4
    iget-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {p1}, Lcom/android/systemui/doze/DozeHost;->prepareForGentleWakeUp()V

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->unscheduleTimeTick()V

    goto :goto_5c

    .line 130
    :pswitch_31  #0x2
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->scheduleTimeTick()V

    goto :goto_5c

    .line 120
    :pswitch_35  #0x1
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p1, v0, :cond_3d

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p1, v0, :cond_59

    .line 123
    :cond_3d
    iget-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {p1}, Lcom/android/systemui/doze/DozeHost;->dozeTimeTick()V

    .line 125
    iget-object p1, p0, Lcom/android/systemui/doze/DozeUi;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/doze/DozeUi;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeUi;->mHost:Lcom/android/systemui/doze/DozeHost;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/doze/-$$Lambda$TvDuFxrq6WnRSNRP7k8oBY4uOBc;

    invoke-direct {v2, v1}, Lcom/android/systemui/doze/-$$Lambda$TvDuFxrq6WnRSNRP7k8oBY4uOBc;-><init>(Lcom/android/systemui/doze/DozeHost;)V

    invoke-interface {v0, v2}, Lcom/android/systemui/util/wakelock/WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    :cond_59
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeUi;->scheduleTimeTick()V

    .line 149
    :goto_5c
    invoke-direct {p0, p2}, Lcom/android/systemui/doze/DozeUi;->updateAnimateWakeup(Lcom/android/systemui/doze/DozeMachine$State;)V

    return-void

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_35  #00000001
        :pswitch_31  #00000002
        :pswitch_28  #00000003
        :pswitch_28  #00000004
        :pswitch_1b  #00000005
        :pswitch_15  #00000006
        :pswitch_c  #00000007
    .end packed-switch
.end method
