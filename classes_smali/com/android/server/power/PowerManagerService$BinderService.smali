.class final Lcom/android/server/power/PowerManagerService$BinderService;
.super Landroid/os/IPowerManager$Stub;
.source "PowerManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    .line 4446
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/os/IPowerManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;)V
    .registers 18

    .line 4477
    move-object v0, p0

    if-eqz p1, :cond_64

    .line 4480
    if-eqz p4, :cond_5b

    .line 4483
    invoke-static {p2, p3}, Landroid/os/PowerManager;->validateWakeLockParameters(ILjava/lang/String;)V

    .line 4485
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "android.permission.WAKE_LOCK"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4486
    and-int/lit8 v1, p2, 0x40

    if-eqz v1, :cond_23

    .line 4487
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4490
    :cond_23
    if-eqz p5, :cond_39

    invoke-virtual/range {p5 .. p5}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_39

    .line 4491
    iget-object v1, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, p5

    goto :goto_3a

    .line 4494
    :cond_39
    move-object v5, v2

    .line 4497
    :goto_3a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 4498
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 4499
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 4501
    :try_start_46
    iget-object v0, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v8}, Lcom/android/server/power/PowerManagerService;->access$4000(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    :try_end_51
    .catchall {:try_start_46 .. :try_end_51} :catchall_56

    .line 4503
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4504
    nop

    .line 4505
    return-void

    .line 4503
    :catchall_56
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 4481
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "packageName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4478
    :cond_64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lock must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public acquireWakeLockWithUid(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 13

    .line 4458
    if-gez p5, :cond_6

    .line 4459
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p5

    .line 4461
    :cond_6
    new-instance v5, Landroid/os/WorkSource;

    invoke-direct {v5, p5}, Landroid/os/WorkSource;-><init>(I)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService$BinderService;->acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;)V

    .line 4462
    return-void
.end method

.method public boostScreenBrightness(J)V
    .registers 7

    .line 5024
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2b

    .line 5028
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5031
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5032
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5034
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3, p1, p2, v0}, Lcom/android/server/power/PowerManagerService;->access$6000(Lcom/android/server/power/PowerManagerService;JI)V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_26

    .line 5036
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5037
    nop

    .line 5038
    return-void

    .line 5036
    :catchall_26
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 5025
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "event time must not be in the future"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public crash(Ljava/lang/String;)V
    .registers 5

    .line 4934
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.REBOOT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4936
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4938
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->access$5600(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1a

    .line 4940
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4941
    nop

    .line 4942
    return-void

    .line 4940
    :catchall_1a
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    .line 5066
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 5068
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5070
    nop

    .line 5071
    array-length v2, p3

    const/4 v3, 0x0

    move v4, v3

    :goto_17
    if-ge v3, v2, :cond_27

    aget-object v5, p3, v3

    .line 5072
    const-string v6, "--proto"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 5073
    const/4 v4, 0x1

    .line 5071
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 5077
    :cond_27
    if-eqz v4, :cond_2f

    .line 5078
    :try_start_29
    iget-object p2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p2, p1}, Lcom/android/server/power/PowerManagerService;->access$6300(Lcom/android/server/power/PowerManagerService;Ljava/io/FileDescriptor;)V

    goto :goto_34

    .line 5080
    :cond_2f
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1, p2}, Lcom/android/server/power/PowerManagerService;->access$6400(Lcom/android/server/power/PowerManagerService;Ljava/io/PrintWriter;)V
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_39

    .line 5083
    :goto_34
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5084
    nop

    .line 5085
    return-void

    .line 5083
    :catchall_39
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public forceSuspend()Z
    .registers 5

    .line 5052
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5055
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5056
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5058
    :try_start_14
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3, v0}, Lcom/android/server/power/PowerManagerService;->access$6200(Lcom/android/server/power/PowerManagerService;I)Z

    move-result v0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1e

    .line 5060
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5058
    return v0

    .line 5060
    :catchall_1e
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getLastShutdownReason()I
    .registers 5

    .line 4822
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4825
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4827
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const-string/jumbo v3, "sys.boot.reason"

    invoke-virtual {v2, v3}, Lcom/android/server/power/PowerManagerService;->getLastShutdownReasonInternal(Ljava/lang/String;)I

    move-result v2
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1d

    .line 4829
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4827
    return v2

    .line 4829
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getLastSleepReason()I
    .registers 4

    .line 4835
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4838
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4840
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$5400(Lcom/android/server/power/PowerManagerService;)I

    move-result v2
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_1a

    .line 4842
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4840
    return v2

    .line 4842
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getPowerSaveModeTrigger()I
    .registers 6

    .line 4783
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.POWER_SAVER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4784
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4786
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "automatic_power_save_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_25

    .line 4790
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4786
    return v2

    .line 4790
    :catchall_25
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getPowerSaveState(I)Landroid/os/PowerSaveState;
    .registers 5

    .line 4706
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4708
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$5100(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getBatterySaverPolicy(I)Landroid/os/PowerSaveState;

    move-result-object p1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 4710
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4708
    return-object p1

    .line 4710
    :catchall_12
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public goToSleep(JII)V
    .registers 14

    .line 4650
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2e

    .line 4654
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4657
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 4658
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4660
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    move-wide v4, p1

    move v6, p3

    move v7, p4

    invoke-static/range {v3 .. v8}, Lcom/android/server/power/PowerManagerService;->access$4700(Lcom/android/server/power/PowerManagerService;JIII)V
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_29

    .line 4662
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4663
    nop

    .line 4664
    return-void

    .line 4662
    :catchall_29
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 4651
    :cond_2e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "event time must not be in the future"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isDeviceIdleMode()Z
    .registers 4

    .line 4796
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4798
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->isDeviceIdleModeInternal()Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 4800
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4798
    return v2

    .line 4800
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isInteractive()Z
    .registers 4

    .line 4686
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4688
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$4900(Lcom/android/server/power/PowerManagerService;)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 4690
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4688
    return v2

    .line 4690
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isLightDeviceIdleMode()Z
    .registers 4

    .line 4806
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4808
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->isLightDeviceIdleModeInternal()Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 4810
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4808
    return v2

    .line 4810
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isPowerSaveMode()Z
    .registers 4

    .line 4696
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4698
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$5000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 4700
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4698
    return v2

    .line 4700
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isScreenBrightnessBoosted()Z
    .registers 4

    .line 5042
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5044
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$6100(Lcom/android/server/power/PowerManagerService;)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 5046
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5044
    return v2

    .line 5046
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isWakeLockLevelSupported(I)Z
    .registers 5

    .line 4563
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4565
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->access$4300(Lcom/android/server/power/PowerManagerService;I)Z

    move-result p1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 4567
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4565
    return p1

    .line 4567
    :catchall_e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public synthetic lambda$wakeUp$0$PowerManagerService$BinderService(JILjava/lang/String;ILjava/lang/String;)V
    .registers 18

    .line 4634
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4636
    move-object v0, p0

    :try_start_5
    iget-object v3, v0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p5

    invoke-static/range {v3 .. v10}, Lcom/android/server/power/PowerManagerService;->access$6500(Lcom/android/server/power/PowerManagerService;JILjava/lang/String;ILjava/lang/String;I)V
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_18

    .line 4638
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4639
    nop

    .line 4640
    return-void

    .line 4638
    :catchall_18
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public nap(J)V
    .registers 7

    .line 4668
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2b

    .line 4672
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4675
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4676
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4678
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3, p1, p2, v0}, Lcom/android/server/power/PowerManagerService;->access$4800(Lcom/android/server/power/PowerManagerService;JI)V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_26

    .line 4680
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4681
    nop

    .line 4682
    return-void

    .line 4680
    :catchall_26
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 4669
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "event time must not be in the future"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 4451
    new-instance v0, Lcom/android/server/power/PowerManagerShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/power/PowerManagerShellCommand;-><init>(Landroid/os/IPowerManager;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/PowerManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 4453
    return-void
.end method

.method public powerHint(II)V
    .registers 6

    .line 4466
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3800(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 4468
    return-void

    .line 4470
    :cond_9
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4471
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$2900(Lcom/android/server/power/PowerManagerService;II)V

    .line 4472
    return-void
.end method

.method public reboot(ZLjava/lang/String;Z)V
    .registers 12

    .line 4855
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.REBOOT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4856
    const-string/jumbo v0, "recovery"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 4857
    const-string/jumbo v0, "recovery-update"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 4858
    :cond_1e
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.RECOVERY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4861
    :cond_29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4863
    :try_start_2d
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x1

    const/4 v7, 0x0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-static/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->access$5500(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;ZZ)V
    :try_end_37
    .catchall {:try_start_2d .. :try_end_37} :catchall_3c

    .line 4865
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4866
    nop

    .line 4867
    return-void

    .line 4865
    :catchall_3c
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public rebootCustom(ZLjava/lang/String;Z)V
    .registers 12

    .line 4897
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.REBOOT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4898
    const-string/jumbo v0, "recovery"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 4899
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.RECOVERY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4902
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4904
    :try_start_24
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x1

    const/4 v7, 0x1

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-static/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->access$5500(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;ZZ)V
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_33

    .line 4906
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4907
    nop

    .line 4908
    return-void

    .line 4906
    :catchall_33
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public rebootSafeMode(ZZ)V
    .registers 11

    .line 4877
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.REBOOT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4879
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4881
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x2

    const-string/jumbo v5, "safemode"

    const/4 v7, 0x0

    move v4, p1

    move v6, p2

    invoke-static/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->access$5500(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;ZZ)V
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_21

    .line 4884
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4885
    nop

    .line 4886
    return-void

    .line 4884
    :catchall_21
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public releaseWakeLock(Landroid/os/IBinder;I)V
    .registers 6

    .line 4509
    if-eqz p1, :cond_21

    .line 4513
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.WAKE_LOCK"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4515
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4517
    :try_start_12
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$4100(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;I)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1c

    .line 4519
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4520
    nop

    .line 4521
    return-void

    .line 4519
    :catchall_1c
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 4510
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "lock must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAdaptivePowerSaveEnabled(Z)Z
    .registers 5

    .line 4768
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.POWER_SAVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1c

    .line 4770
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const-string/jumbo v2, "setAdaptivePowerSaveEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4773
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4775
    :try_start_20
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$5300(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setAdaptiveBatterySaverEnabled(Z)Z

    move-result p1
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_2e

    .line 4777
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4775
    return p1

    .line 4777
    :catchall_2e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setAdaptivePowerSavePolicy(Landroid/os/BatterySaverPolicyConfig;)Z
    .registers 5

    .line 4753
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.POWER_SAVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1c

    .line 4755
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const-string/jumbo v2, "setAdaptivePowerSavePolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4758
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4760
    :try_start_20
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$5300(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setAdaptiveBatterySaverPolicy(Landroid/os/BatterySaverPolicyConfig;)Z

    move-result p1
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_2e

    .line 4762
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4760
    return p1

    .line 4762
    :catchall_2e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setAttentionLight(ZI)V
    .registers 6

    .line 4982
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4985
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4987
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$5700(Lcom/android/server/power/PowerManagerService;ZI)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1a

    .line 4989
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4990
    nop

    .line 4991
    return-void

    .line 4989
    :catchall_1a
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setDozeAfterScreenOff(Z)V
    .registers 5

    .line 5011
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5014
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5016
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->access$5900(Lcom/android/server/power/PowerManagerService;Z)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1a

    .line 5018
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5019
    nop

    .line 5020
    return-void

    .line 5018
    :catchall_1a
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setDynamicPowerSaveHint(ZI)Z
    .registers 7

    .line 4731
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.POWER_SAVER"

    const-string/jumbo v2, "updateDynamicPowerSavings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4733
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4735
    :try_start_12
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4736
    const-string v3, "dynamic_power_savings_disable_threshold"

    invoke-static {v2, v3, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p2

    .line 4739
    if-eqz p2, :cond_30

    .line 4741
    const-string v3, "dynamic_power_savings_enabled"

    .line 4743
    if-eqz p1, :cond_2a

    const/4 p1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    .line 4741
    :goto_2b
    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p1
    :try_end_2f
    .catchall {:try_start_12 .. :try_end_2f} :catchall_35

    and-int/2addr p2, p1

    .line 4745
    :cond_30
    nop

    .line 4747
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4745
    return p2

    .line 4747
    :catchall_35
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setKeyboardVisibility(Z)V
    .registers 5

    .line 4995
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4999
    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$5800(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-eq v1, p1, :cond_2b

    .line 5000
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1, p1}, Lcom/android/server/power/PowerManagerService;->access$5802(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 5001
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_2d

    .line 5002
    :try_start_1b
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerService;->access$1576(Lcom/android/server/power/PowerManagerService;I)I

    .line 5003
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$1600(Lcom/android/server/power/PowerManagerService;)V

    .line 5004
    monitor-exit p1

    goto :goto_2b

    :catchall_28
    move-exception v1

    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_1b .. :try_end_2a} :catchall_28

    :try_start_2a
    throw v1

    .line 5006
    :cond_2b
    :goto_2b
    monitor-exit v0

    .line 5007
    return-void

    .line 5006
    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public setPowerSaveModeEnabled(Z)Z
    .registers 5

    .line 4716
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.POWER_SAVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1a

    .line 4718
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4721
    :cond_1a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4723
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->access$5200(Lcom/android/server/power/PowerManagerService;Z)Z

    move-result p1
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_28

    .line 4725
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4723
    return p1

    .line 4725
    :catchall_28
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setStayOnSetting(I)V
    .registers 6

    .line 4960
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4962
    if-eqz v0, :cond_1e

    .line 4963
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 4964
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/provider/Settings;->getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 4963
    invoke-static {v1, v0, v2, v3}, Landroid/provider/Settings;->checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 4965
    return-void

    .line 4969
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4971
    :try_start_22
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/power/PowerManagerService;->setStayOnSettingInternal(I)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_2c

    .line 4973
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4974
    nop

    .line 4975
    return-void

    .line 4973
    :catchall_2c
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public shutdown(ZLjava/lang/String;Z)V
    .registers 12

    .line 4918
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.REBOOT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4920
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4922
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x0

    const/4 v7, 0x0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-static/range {v2 .. v7}, Lcom/android/server/power/PowerManagerService;->access$5500(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;ZZ)V
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1f

    .line 4924
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4925
    nop

    .line 4926
    return-void

    .line 4924
    :catchall_1f
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public updateWakeLockUids(Landroid/os/IBinder;[I)V
    .registers 7

    .line 4525
    nop

    .line 4527
    const/4 v0, 0x0

    if-eqz p2, :cond_15

    .line 4528
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    .line 4531
    const/4 v2, 0x0

    :goto_a
    array-length v3, p2

    if-ge v2, v3, :cond_16

    .line 4532
    aget v3, p2, v2

    invoke-virtual {v1, v3}, Landroid/os/WorkSource;->add(I)Z

    .line 4531
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 4527
    :cond_15
    move-object v1, v0

    .line 4535
    :cond_16
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/power/PowerManagerService$BinderService;->updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V

    .line 4536
    return-void
.end method

.method public updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V
    .registers 8

    .line 4540
    if-eqz p1, :cond_3a

    .line 4544
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.WAKE_LOCK"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4545
    if-eqz p2, :cond_22

    invoke-virtual {p2}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 4546
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 4549
    :cond_22
    move-object p2, v1

    .line 4552
    :goto_23
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4553
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4555
    :try_start_2b
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3, p1, p2, p3, v0}, Lcom/android/server/power/PowerManagerService;->access$4200(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_35

    .line 4557
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4558
    nop

    .line 4559
    return-void

    .line 4557
    :catchall_35
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 4541
    :cond_3a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "lock must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public userActivity(JII)V
    .registers 14

    .line 4573
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 4574
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_65

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 4576
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.USER_ACTIVITY"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_65

    .line 4582
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 4583
    :try_start_27
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->access$4400(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide p1

    const-wide/32 p3, 0x493e0

    add-long/2addr p1, p3

    cmp-long p1, v0, p1

    if-ltz p1, :cond_60

    .line 4584
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1, v0, v1}, Lcom/android/server/power/PowerManagerService;->access$4402(Lcom/android/server/power/PowerManagerService;J)J

    .line 4585
    const-string p1, "PowerManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring call to PowerManager.userActivity() because the caller does not have DEVICE_POWER or USER_ACTIVITY permission.  Please fix your app!   pid="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4588
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " uid="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4589
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4585
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4591
    :cond_60
    monitor-exit v2

    .line 4592
    return-void

    .line 4591
    :catchall_62
    move-exception p1

    monitor-exit v2
    :try_end_64
    .catchall {:try_start_27 .. :try_end_64} :catchall_62

    throw p1

    .line 4595
    :cond_65
    cmp-long v0, p1, v0

    if-gtz v0, :cond_83

    .line 4599
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 4600
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 4602
    :try_start_71
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->access$4500(Lcom/android/server/power/PowerManagerService;JIII)V
    :try_end_79
    .catchall {:try_start_71 .. :try_end_79} :catchall_7e

    .line 4604
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4605
    nop

    .line 4606
    return-void

    .line 4604
    :catchall_7e
    move-exception p1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 4596
    :cond_83
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "event time must not be in the future"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public wakeUp(JILjava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 4611
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService$BinderService;->wakeUp(JILjava/lang/String;Ljava/lang/String;Z)V

    .line 4612
    return-void
.end method

.method public wakeUp(JILjava/lang/String;Ljava/lang/String;Z)V
    .registers 17

    .line 4625
    move-object v8, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_30

    .line 4629
    iget-object v0, v8, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4632
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 4633
    new-instance v9, Lcom/android/server/power/-$$Lambda$PowerManagerService$BinderService$EvD6B6uzQOx0DlsfYDVQ4bCBNVk;

    move-object v0, v9

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/power/-$$Lambda$PowerManagerService$BinderService$EvD6B6uzQOx0DlsfYDVQ4bCBNVk;-><init>(Lcom/android/server/power/PowerManagerService$BinderService;JILjava/lang/String;ILjava/lang/String;)V

    .line 4641
    if-eqz p6, :cond_2c

    .line 4642
    iget-object v0, v8, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, v9}, Lcom/android/server/power/PowerManagerService;->access$4600(Lcom/android/server/power/PowerManagerService;Ljava/lang/Runnable;)V

    goto :goto_2f

    .line 4644
    :cond_2c
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    .line 4646
    :goto_2f
    return-void

    .line 4626
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event time must not be in the future"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public wakeUpWithProximityCheck(JILjava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 4617
    const/4 v6, 0x1

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService$BinderService;->wakeUp(JILjava/lang/String;Ljava/lang/String;Z)V

    .line 4618
    return-void
.end method
