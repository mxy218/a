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
    .param p1, "this$0"  # Lcom/android/server/AlarmManagerService;

    .line 2154
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/app/IAlarmManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelOnePoweroffAlarm(Landroid/app/PendingIntent;)V
    .registers 3
    .param p1, "operation"  # Landroid/app/PendingIntent;

    .line 2282
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService;->cancelOnePoweroffAlarmImpl(Landroid/app/PendingIntent;)V

    .line 2283
    return-void
.end method

.method public changeAlarmType(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "wakeup"  # Z

    .line 2287
    return-void
.end method

.method public currentNetworkTimeMillis()J
    .registers 5

    .line 2292
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v0

    .line 2293
    .local v0, "time":Landroid/util/NtpTrustedTime;
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->hasCache()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2294
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->currentTimeMillis()J

    move-result-wide v1

    return-wide v1

    .line 2296
    :cond_15
    new-instance v1, Landroid/os/ParcelableException;

    new-instance v2, Ljava/time/DateTimeException;

    const-string v3, "Missing NTP fix"

    invoke-direct {v2, v3}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 2302
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AlarmManager"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 2304
    :cond_f
    array-length v0, p3

    if-lez v0, :cond_23

    const/4 v0, 0x0

    aget-object v0, p3, v0

    const-string v1, "--proto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2305
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService;->dumpProto(Ljava/io/FileDescriptor;)V

    goto :goto_28

    .line 2307
    :cond_23
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/AlarmManagerService;->dumpImpl(Ljava/io/PrintWriter;)V

    .line 2309
    :goto_28
    return-void
.end method

.method public getAlarmList(JJJ)Ljava/util/List;
    .registers 8
    .param p1, "triggerTime"  # J
    .param p3, "foffset"  # J
    .param p5, "boffset"  # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ)",
            "Ljava/util/List<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation

    .line 2276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2277
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    return-object v0
.end method

.method public getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .registers 9
    .param p1, "userId"  # I

    .line 2266
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2267
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2266
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "getNextAlarmClock"

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 2270
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService;->getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNextWakeFromIdleTime()J
    .registers 3

    .line 2261
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getNextWakeFromIdleTimeImpl()J

    move-result-wide v0

    return-wide v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"  # Ljava/io/FileDescriptor;
    .param p2, "out"  # Ljava/io/FileDescriptor;
    .param p3, "err"  # Ljava/io/FileDescriptor;
    .param p4, "args"  # [Ljava/lang/String;
    .param p5, "callback"  # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"  # Landroid/os/ResultReceiver;

    .line 2323
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

    .line 2324
    return-void
.end method

.method public remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .registers 6
    .param p1, "operation"  # Landroid/app/PendingIntent;
    .param p2, "listener"  # Landroid/app/IAlarmListener;

    .line 2246
    if-nez p1, :cond_d

    if-nez p2, :cond_d

    .line 2247
    const-string v0, "AlarmManager"

    const-string/jumbo v1, "remove() with no intent or listener"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    return-void

    .line 2250
    :cond_d
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2252
    :try_start_12
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2}, Lcom/android/server/AlarmManagerService;->access$1300(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;Landroid/app/IAlarmListener;Z)V

    .line 2254
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_27

    .line 2255
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2256
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2257
    return-void

    .line 2254
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public set(Ljava/lang/String;IJJJILandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    .registers 34
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "type"  # I
    .param p3, "triggerAtTime"  # J
    .param p5, "windowLength"  # J
    .param p7, "interval"  # J
    .param p9, "flags"  # I
    .param p10, "operation"  # Landroid/app/PendingIntent;
    .param p11, "directReceiver"  # Landroid/app/IAlarmListener;
    .param p12, "listenerTag"  # Ljava/lang/String;
    .param p13, "workSource"  # Landroid/os/WorkSource;
    .param p14, "alarmClock"  # Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2160
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 2164
    .local v14, "callingUid":I
    iget-object v1, v0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v14, v15}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 2167
    const-wide/16 v1, 0x0

    cmp-long v3, p7, v1

    if-eqz v3, :cond_20

    .line 2168
    if-nez p11, :cond_18

    goto :goto_20

    .line 2169
    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Repeating alarms cannot use AlarmReceivers"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2173
    :cond_20
    :goto_20
    if-eqz p13, :cond_33

    .line 2174
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 2176
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 2174
    const-string v5, "android.permission.UPDATE_DEVICE_STATS"

    const-string v6, "AlarmManager.set"

    invoke-virtual {v3, v5, v4, v14, v6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2182
    :cond_33
    if-eqz v15, :cond_49

    const-string v3, "com.flyme.systemuitools"

    invoke-virtual {v15, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_46

    .line 2183
    const-string v3, "com.meizu.pps"

    invoke-virtual {v15, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_46

    goto :goto_49

    .line 2191
    :cond_46
    move/from16 v3, p9

    goto :goto_4b

    .line 2184
    :cond_49
    :goto_49
    and-int/lit8 v3, p9, -0xb

    .line 2191
    .end local p9  # "flags":I
    .local v3, "flags":I
    :goto_4b
    const/16 v4, 0x3e8

    if-eq v14, v4, :cond_51

    .line 2192
    and-int/lit8 v3, v3, -0x11

    .line 2196
    :cond_51
    cmp-long v1, p5, v1

    if-nez v1, :cond_57

    .line 2197
    or-int/lit8 v3, v3, 0x1

    .line 2202
    :cond_57
    if-eqz p14, :cond_5e

    .line 2203
    or-int/lit8 v1, v3, 0x3

    move/from16 v17, v1

    .end local v3  # "flags":I
    .local v1, "flags":I
    goto :goto_8b

    .line 2209
    .end local v1  # "flags":I
    .restart local v3  # "flags":I
    :cond_5e
    if-nez p13, :cond_89

    const/16 v1, 0x2710

    if-lt v14, v1, :cond_82

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    iget v1, v1, Lcom/android/server/AlarmManagerService;->mSystemUiUid:I

    .line 2210
    invoke-static {v14, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_82

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    .line 2211
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$1200(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AppStateTracker;

    move-result-object v1

    if-eqz v1, :cond_89

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    .line 2212
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$1200(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AppStateTracker;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/android/server/AppStateTracker;->isUidPowerSaveUserWhitelisted(I)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 2213
    :cond_82
    or-int/lit8 v1, v3, 0x8

    .line 2214
    .end local v3  # "flags":I
    .restart local v1  # "flags":I
    and-int/lit8 v1, v1, -0x5

    move/from16 v17, v1

    goto :goto_8b

    .line 2217
    .end local v1  # "flags":I
    .restart local v3  # "flags":I
    :cond_89
    move/from16 v17, v3

    .end local v3  # "flags":I
    .local v17, "flags":I
    :goto_8b
    iget-object v1, v0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move/from16 v12, v17

    move-object/from16 v13, p13

    move/from16 v18, v14

    .end local v14  # "callingUid":I
    .local v18, "callingUid":I
    move-object/from16 v14, p14

    move/from16 v15, v18

    move-object/from16 v16, p1

    invoke-virtual/range {v1 .. v16}, Lcom/android/server/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    .line 2219
    return-void
.end method

.method public setTime(J)Z
    .registers 6
    .param p1, "millis"  # J

    .line 2223
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SET_TIME"

    const-string/jumbo v2, "setTime"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2227
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AlarmManagerService;->setTimeImpl(J)Z

    move-result v0

    return v0
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .registers 5
    .param p1, "tz"  # Ljava/lang/String;

    .line 2232
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SET_TIME_ZONE"

    const-string/jumbo v2, "setTimeZone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2236
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2238
    .local v0, "oldId":J
    :try_start_12
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/AlarmManagerService;->setTimeZoneImpl(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1c

    .line 2240
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2241
    nop

    .line 2242
    return-void

    .line 2240
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public updateBlockedUids(IZ)V
    .registers 3
    .param p1, "uid"  # I
    .param p2, "isBlocked"  # Z

    .line 2317
    return-void
.end method
