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

    .line 3853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3854
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Injector;->mContext:Landroid/content/Context;

    .line 3855
    return-void
.end method


# virtual methods
.method close()V
    .registers 3

    .line 3906
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Injector;->mNativeData:J

    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerService;->access$2000(J)V

    .line 3907
    return-void
.end method

.method getAlarmWakeLock()Landroid/os/PowerManager$WakeLock;
    .registers 4

    .line 3918
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 3919
    const/4 v1, 0x1

    const-string v2, "*alarm*"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    return-object v0
.end method

.method getClockReceiver(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ClockReceiver;
    .registers 3

    .line 3941
    new-instance v0, Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p1}, Lcom/android/server/AlarmManagerService$ClockReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    return-object v0
.end method

.method getCurrentTimeMillis()J
    .registers 3

    .line 3914
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method getElapsedRealtime()J
    .registers 3

    .line 3910
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method getNextAlarm(I)J
    .registers 4

    .line 3892
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Injector;->mNativeData:J

    invoke-static {v0, v1, p1}, Lcom/android/server/AlarmManagerService;->access$1700(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method getSystemUiUid()I
    .registers 6

    .line 3923
    nop

    .line 3924
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3926
    const/4 v1, -0x1

    :try_start_8
    const-string v2, "android.permission.systemui.IDENTITY"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    .line 3927
    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 3928
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1f

    .line 3929
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move v1, v0

    goto :goto_3c

    .line 3931
    :cond_1f
    const-string v2, "AlarmManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SysUI permission android.permission.systemui.IDENTITY defined by non-privileged app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - ignoring"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_3c} :catch_3d

    .line 3936
    :goto_3c
    goto :goto_3e

    .line 3935
    :catch_3d
    move-exception v0

    .line 3937
    :goto_3e
    return v1
.end method

.method init()V
    .registers 3

    .line 3858
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1400()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Injector;->mNativeData:J

    .line 3859
    return-void
.end method

.method isAlarmDriverPresent()Z
    .registers 5

    .line 3866
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
    .registers 15

    .line 3873
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_9

    .line 3874
    nop

    .line 3875
    move-wide p2, v0

    goto :goto_12

    .line 3877
    :cond_9
    const-wide/16 v0, 0x3e8

    div-long v2, p2, v0

    .line 3878
    rem-long/2addr p2, v0

    mul-long/2addr p2, v0

    mul-long/2addr v0, p2

    move-wide p2, v0

    move-wide v0, v2

    .line 3881
    :goto_12
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService$Injector;->mNativeData:J

    move v6, p1

    move-wide v7, v0

    move-wide v9, p2

    invoke-static/range {v4 .. v10}, Lcom/android/server/AlarmManagerService;->access$1600(JIJJ)I

    move-result v2

    .line 3883
    if-eqz v2, :cond_63

    .line 3884
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 3885
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to set kernel alarm, now="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " type="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " @ ("

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "), ret = "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3887
    invoke-static {v2}, Landroid/system/Os;->strerror(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3885
    const-string p2, "AlarmManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3889
    :cond_63
    return-void
.end method

.method setKernelTime(J)V
    .registers 7

    .line 3900
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Injector;->mNativeData:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    .line 3901
    invoke-static {v0, v1, p1, p2}, Lcom/android/server/AlarmManagerService;->access$1900(JJ)I

    .line 3903
    :cond_b
    return-void
.end method

.method setKernelTimezone(I)V
    .registers 4

    .line 3896
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Injector;->mNativeData:J

    invoke-static {v0, v1, p1}, Lcom/android/server/AlarmManagerService;->access$1800(JI)I

    .line 3897
    return-void
.end method

.method waitForAlarm()I
    .registers 3

    .line 3862
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Injector;->mNativeData:J

    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerService;->access$1500(J)I

    move-result v0

    return v0
.end method
