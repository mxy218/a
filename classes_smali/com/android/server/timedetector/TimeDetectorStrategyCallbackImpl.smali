.class public final Lcom/android/server/timedetector/TimeDetectorStrategyCallbackImpl;
.super Ljava/lang/Object;
.source "TimeDetectorStrategyCallbackImpl.java"

# interfaces
.implements Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;


# static fields
.field private static final SYSTEM_CLOCK_UPDATE_THRESHOLD_MILLIS_DEFAULT:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "timedetector.TimeDetectorStrategyCallbackImpl"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mSystemClockUpdateThresholdMillis:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyCallbackImpl;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyCallbackImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 58
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 59
    .local v0, "powerManager":Landroid/os/PowerManager;
    nop

    .line 60
    const/4 v1, 0x1

    const-string/jumbo v2, "timedetector.TimeDetectorStrategyCallbackImpl"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 59
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager$WakeLock;

    iput-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyCallbackImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 62
    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyCallbackImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 64
    nop

    .line 65
    const-string/jumbo v1, "ro.sys.time_detector_update_diff"

    const/16 v2, 0x7d0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyCallbackImpl;->mSystemClockUpdateThresholdMillis:I

    .line 67
    return-void
.end method

.method private checkWakeLockHeld()V
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyCallbackImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_26

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WakeLock "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyCallbackImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not held"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "timedetector.TimeDetectorStrategyCallbackImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_26
    return-void
.end method


# virtual methods
.method public acquireWakeLock()V
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyCallbackImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WakeLock "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyCallbackImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " already held"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "timedetector.TimeDetectorStrategyCallbackImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_26
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyCallbackImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 89
    return-void
.end method

.method public elapsedRealtimeMillis()J
    .registers 3

    .line 93
    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyCallbackImpl;->checkWakeLockHeld()V

    .line 94
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public isTimeDetectionEnabled()Z
    .registers 4

    .line 77
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyCallbackImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "auto_time"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_9
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_9} :catch_e

    if-eqz v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    .line 78
    :catch_e
    move-exception v1

    .line 79
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    return v0
.end method

.method public releaseWakeLock()V
    .registers 2

    .line 111
    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyCallbackImpl;->checkWakeLockHeld()V

    .line 112
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyCallbackImpl;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 113
    return-void
.end method

.method public sendStickyBroadcast(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"  # Landroid/content/Intent;

    .line 117
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyCallbackImpl;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 118
    return-void
.end method

.method public setSystemClock(J)V
    .registers 4
    .param p1, "newTimeMillis"  # J

    .line 105
    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyCallbackImpl;->checkWakeLockHeld()V

    .line 106
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyCallbackImpl;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/AlarmManager;->setTime(J)V

    .line 107
    return-void
.end method

.method public systemClockMillis()J
    .registers 3

    .line 99
    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyCallbackImpl;->checkWakeLockHeld()V

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public systemClockUpdateThresholdMillis()I
    .registers 2

    .line 71
    iget v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyCallbackImpl;->mSystemClockUpdateThresholdMillis:I

    return v0
.end method
