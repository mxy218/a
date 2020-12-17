.class Lcom/android/server/AlarmManagerService$Injector;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNativeData:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"  # Landroid/content/Context;

    .line 4075
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4076
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Injector;->mContext:Landroid/content/Context;

    .line 4077
    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/AlarmManagerService$Injector;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/AlarmManagerService$Injector;

    .line 4071
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Injector;->mNativeData:J

    return-wide v0
.end method


# virtual methods
.method cancelPowerOffAlarmLocked()V
    .registers 3

    .line 4184
    const-string v0, "AlarmManager"

    const-string v1, "Cancel Power off alarm: "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4185
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Injector;->mNativeData:J

    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerService;->access$2400(J)I

    .line 4186
    return-void
.end method

.method close()V
    .registers 3

    .line 4139
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Injector;->mNativeData:J

    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerService;->access$2200(J)V

    .line 4140
    return-void
.end method

.method getAlarmWakeLock()Landroid/os/PowerManager$WakeLock;
    .registers 4

    .line 4151
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 4152
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "*alarm*"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    return-object v1
.end method

.method getClockReceiver(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ClockReceiver;
    .registers 3
    .param p1, "service"  # Lcom/android/server/AlarmManagerService;

    .line 4174
    new-instance v0, Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p1}, Lcom/android/server/AlarmManagerService$ClockReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    return-object v0
.end method

.method getCurrentTimeMillis()J
    .registers 3

    .line 4147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method getElapsedRealtime()J
    .registers 3

    .line 4143
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method getNextAlarm(I)J
    .registers 4
    .param p1, "type"  # I

    .line 4125
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Injector;->mNativeData:J

    invoke-static {v0, v1, p1}, Lcom/android/server/AlarmManagerService;->access$1900(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method getSystemUiUid()I
    .registers 8

    .line 4156
    const/4 v0, -0x1

    .line 4157
    .local v0, "sysUiUid":I
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 4159
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_7
    const-string v2, "android.permission.systemui.IDENTITY"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    .line 4160
    .local v2, "sysUiPerm":Landroid/content/pm/PermissionInfo;
    iget-object v4, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 4161
    .local v3, "sysUi":Landroid/content/pm/ApplicationInfo;
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1e

    .line 4162
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    move v0, v4

    goto :goto_3b

    .line 4164
    :cond_1e
    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SysUI permission android.permission.systemui.IDENTITY defined by non-privileged app "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - ignoring"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_3b} :catch_3c

    .line 4169
    .end local v2  # "sysUiPerm":Landroid/content/pm/PermissionInfo;
    .end local v3  # "sysUi":Landroid/content/pm/ApplicationInfo;
    :goto_3b
    goto :goto_3d

    .line 4168
    :catch_3c
    move-exception v2

    .line 4170
    :goto_3d
    return v0
.end method

.method init()V
    .registers 3

    .line 4080
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1500()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Injector;->mNativeData:J

    .line 4081
    return-void
.end method

.method isAlarmDriverPresent()Z
    .registers 5

    .line 4088
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Injector;->mNativeData:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method setAlarm(IJ)V
    .registers 20
    .param p1, "type"  # I
    .param p2, "millis"  # J

    .line 4095
    move/from16 v7, p1

    move-wide/from16 v8, p2

    const-wide/16 v0, 0x0

    cmp-long v2, v8, v0

    const-wide/16 v3, 0x3e8

    if-gez v2, :cond_11

    .line 4096
    const-wide/16 v5, 0x0

    .line 4097
    .local v5, "alarmSeconds":J
    const-wide/16 v10, 0x0

    .local v10, "alarmNanoseconds":J
    goto :goto_17

    .line 4099
    .end local v5  # "alarmSeconds":J
    .end local v10  # "alarmNanoseconds":J
    :cond_11
    div-long v5, v8, v3

    .line 4100
    .restart local v5  # "alarmSeconds":J
    rem-long v10, v8, v3

    mul-long/2addr v10, v3

    mul-long/2addr v10, v3

    .line 4104
    .restart local v10  # "alarmNanoseconds":J
    :goto_17
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1700()J

    move-result-wide v12

    cmp-long v0, v12, v0

    if-eqz v0, :cond_20

    .line 4105
    return-void

    .line 4106
    :cond_20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v12, 0x320

    add-long/2addr v12, v0

    .line 4107
    .local v12, "now":J
    cmp-long v0, v8, v12

    if-gez v0, :cond_34

    .line 4108
    div-long v0, v12, v3

    .line 4109
    .end local v5  # "alarmSeconds":J
    .local v0, "alarmSeconds":J
    rem-long v5, v12, v3

    mul-long/2addr v5, v3

    mul-long/2addr v5, v3

    move-wide v10, v0

    move-wide v14, v5

    .end local v10  # "alarmNanoseconds":J
    .local v5, "alarmNanoseconds":J
    goto :goto_36

    .line 4107
    .end local v0  # "alarmSeconds":J
    .local v5, "alarmSeconds":J
    .restart local v10  # "alarmNanoseconds":J
    :cond_34
    move-wide v14, v10

    move-wide v10, v5

    .line 4111
    .end local v5  # "alarmSeconds":J
    .local v10, "alarmSeconds":J
    .local v14, "alarmNanoseconds":J
    :goto_36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set alarm to RTC "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p3}, Lcom/android/server/AlarmManagerService;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "AlarmManager"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4114
    move-object/from16 v6, p0

    iget-wide v0, v6, Lcom/android/server/AlarmManagerService$Injector;->mNativeData:J

    move/from16 v2, p1

    move-wide v3, v10

    move-object v8, v5

    move-wide v5, v14

    invoke-static/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->access$1800(JIJJ)I

    move-result v0

    .line 4116
    .local v0, "result":I
    if-eqz v0, :cond_b2

    .line 4117
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 4118
    .local v1, "nowElapsed":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to set kernel alarm, now="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " @ ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "), ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4120
    invoke-static {v0}, Landroid/system/Os;->strerror(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4118
    invoke-static {v8, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4122
    .end local v1  # "nowElapsed":J
    :cond_b2
    return-void
.end method

.method setKernelTime(J)V
    .registers 7
    .param p1, "millis"  # J

    .line 4133
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Injector;->mNativeData:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    .line 4134
    invoke-static {v0, v1, p1, p2}, Lcom/android/server/AlarmManagerService;->access$2100(JJ)I

    .line 4136
    :cond_b
    return-void
.end method

.method setKernelTimezone(I)V
    .registers 4
    .param p1, "minutesWest"  # I

    .line 4129
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Injector;->mNativeData:J

    invoke-static {v0, v1, p1}, Lcom/android/server/AlarmManagerService;->access$2000(JI)I

    .line 4130
    return-void
.end method

.method setPowerOffAlarmLocked(JJ)V
    .registers 9
    .param p1, "rtctime"  # J
    .param p3, "elptime"  # J

    .line 4179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set Power off alarm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Lcom/android/server/AlarmManagerService;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v1, p3, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4180
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Injector;->mNativeData:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v2, p3, v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/AlarmManagerService;->access$2300(JJ)I

    .line 4181
    return-void
.end method

.method waitForAlarm()I
    .registers 3

    .line 4084
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Injector;->mNativeData:J

    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerService;->access$1600(J)I

    move-result v0

    return v0
.end method
