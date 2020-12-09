.class Lcom/android/server/AlarmManagerService$3;
.super Landroid/app/IAlarmManager$Stub;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 2

    .line 2052
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/app/IAlarmManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public currentNetworkTimeMillis()J
    .registers 4

    .line 2164
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v0

    .line 2165
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v0

    .line 2166
    if-eqz v0, :cond_15

    .line 2167
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0

    .line 2169
    :cond_15
    new-instance v0, Landroid/os/ParcelableException;

    new-instance v1, Ljava/time/DateTimeException;

    const-string v2, "Missing NTP fix"

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 2175
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AlarmManager"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 2177
    :cond_f
    array-length v0, p3

    if-lez v0, :cond_23

    const/4 v0, 0x0

    aget-object p3, p3, v0

    const-string v0, "--proto"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_23

    .line 2178
    iget-object p2, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {p2, p1}, Lcom/android/server/AlarmManagerService;->dumpProto(Ljava/io/FileDescriptor;)V

    goto :goto_28

    .line 2180
    :cond_23
    iget-object p1, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {p1, p2}, Lcom/android/server/AlarmManagerService;->dumpImpl(Ljava/io/PrintWriter;)V

    .line 2182
    :goto_28
    return-void
.end method

.method public getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .registers 9

    .line 2155
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2156
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2155
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "getNextAlarmClock"

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 2159
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService;->getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object p1

    return-object p1
.end method

.method public getNextWakeFromIdleTime()J
    .registers 3

    .line 2150
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getNextWakeFromIdleTimeImpl()J

    move-result-wide v0

    return-wide v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 2188
    new-instance v0, Lcom/android/server/AlarmManagerService$ShellCmd;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/AlarmManagerService$ShellCmd;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$1;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/AlarmManagerService$ShellCmd;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 2189
    return-void
.end method

.method public remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .registers 5

    .line 2139
    if-nez p1, :cond_d

    if-nez p2, :cond_d

    .line 2140
    const-string p1, "AlarmManager"

    const-string/jumbo p2, "remove() with no intent or listener"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    return-void

    .line 2143
    :cond_d
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2144
    :try_start_12
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 2145
    monitor-exit v0

    .line 2146
    return-void

    .line 2145
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public set(Ljava/lang/String;IJJJILandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    .registers 31

    .line 2058
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 2062
    iget-object v1, v0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v15, p1

    invoke-virtual {v1, v14, v15}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 2065
    const-wide/16 v1, 0x0

    cmp-long v3, p7, v1

    if-eqz v3, :cond_20

    .line 2066
    if-nez p11, :cond_18

    goto :goto_20

    .line 2067
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Repeating alarms cannot use AlarmReceivers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2071
    :cond_20
    :goto_20
    if-eqz p13, :cond_33

    .line 2072
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 2074
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 2072
    const-string v5, "android.permission.UPDATE_DEVICE_STATS"

    const-string v6, "AlarmManager.set"

    invoke-virtual {v3, v5, v4, v14, v6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2079
    :cond_33
    and-int/lit8 v3, p9, -0xb

    .line 2084
    const/16 v4, 0x3e8

    if-eq v14, v4, :cond_3b

    .line 2085
    and-int/lit8 v3, v3, -0x11

    .line 2089
    :cond_3b
    cmp-long v1, p5, v1

    if-nez v1, :cond_41

    .line 2090
    or-int/lit8 v3, v3, 0x1

    .line 2095
    :cond_41
    if-eqz p14, :cond_47

    .line 2096
    or-int/lit8 v1, v3, 0x3

    move v11, v1

    goto :goto_72

    .line 2102
    :cond_47
    if-nez p13, :cond_71

    const/16 v1, 0x2710

    if-lt v14, v1, :cond_6b

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    iget v1, v1, Lcom/android/server/AlarmManagerService;->mSystemUiUid:I

    .line 2103
    invoke-static {v14, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_6b

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    .line 2104
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$1200(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AppStateTracker;

    move-result-object v1

    if-eqz v1, :cond_71

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    .line 2105
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$1200(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AppStateTracker;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/android/server/AppStateTracker;->isUidPowerSaveUserWhitelisted(I)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 2106
    :cond_6b
    or-int/lit8 v1, v3, 0x8

    .line 2107
    and-int/lit8 v1, v1, -0x5

    move v11, v1

    goto :goto_72

    .line 2110
    :cond_71
    move v11, v3

    :goto_72
    iget-object v0, v0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    move/from16 v1, p2

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    move-object/from16 v15, p1

    invoke-virtual/range {v0 .. v15}, Lcom/android/server/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    .line 2112
    return-void
.end method

.method public setTime(J)Z
    .registers 6

    .line 2116
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SET_TIME"

    const-string/jumbo v2, "setTime"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2120
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AlarmManagerService;->setTimeImpl(J)Z

    move-result p1

    return p1
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .registers 5

    .line 2125
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SET_TIME_ZONE"

    const-string/jumbo v2, "setTimeZone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2129
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2131
    :try_start_12
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/AlarmManagerService;->setTimeZoneImpl(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1c

    .line 2133
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2134
    nop

    .line 2135
    return-void

    .line 2133
    :catchall_1c
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method
