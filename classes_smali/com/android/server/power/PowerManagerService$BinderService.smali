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
    .param p1, "this$0"  # Lcom/android/server/power/PowerManagerService;

    .line 4608
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/os/IPowerManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;)V
    .registers 23
    .param p1, "lock"  # Landroid/os/IBinder;
    .param p2, "flags"  # I
    .param p3, "tag"  # Ljava/lang/String;
    .param p4, "packageName"  # Ljava/lang/String;
    .param p5, "ws"  # Landroid/os/WorkSource;
    .param p6, "historyTag"  # Ljava/lang/String;

    .line 4639
    move-object/from16 v1, p0

    if-eqz p1, :cond_6d

    .line 4642
    if-eqz p4, :cond_64

    .line 4645
    invoke-static/range {p2 .. p3}, Landroid/os/PowerManager;->validateWakeLockParameters(ILjava/lang/String;)V

    .line 4647
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "android.permission.WAKE_LOCK"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4648
    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_24

    .line 4649
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4652
    :cond_24
    if-eqz p5, :cond_3a

    invoke-virtual/range {p5 .. p5}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 4653
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v11, p5

    goto :goto_3c

    .line 4656
    :cond_3a
    const/4 v0, 0x0

    move-object v11, v0

    .line 4659
    .end local p5  # "ws":Landroid/os/WorkSource;
    .local v11, "ws":Landroid/os/WorkSource;
    :goto_3c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 4660
    .local v12, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    .line 4661
    .local v13, "pid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 4663
    .local v14, "ident":J
    :try_start_48
    iget-object v2, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, v11

    move-object/from16 v8, p6

    move v9, v12

    move v10, v13

    invoke-static/range {v2 .. v10}, Lcom/android/server/power/PowerManagerService;->access$4000(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    :try_end_5a
    .catchall {:try_start_48 .. :try_end_5a} :catchall_5f

    .line 4665
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4666
    nop

    .line 4667
    return-void

    .line 4665
    :catchall_5f
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 4643
    .end local v11  # "ws":Landroid/os/WorkSource;
    .end local v12  # "uid":I
    .end local v13  # "pid":I
    .end local v14  # "ident":J
    .restart local p5  # "ws":Landroid/os/WorkSource;
    :cond_64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "packageName must not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4640
    :cond_6d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "lock must not be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public acquireWakeLockWithUid(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 13
    .param p1, "lock"  # Landroid/os/IBinder;
    .param p2, "flags"  # I
    .param p3, "tag"  # Ljava/lang/String;
    .param p4, "packageName"  # Ljava/lang/String;
    .param p5, "uid"  # I

    .line 4620
    if-gez p5, :cond_6

    .line 4621
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p5

    .line 4623
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

    .line 4624
    return-void
.end method

.method public boostScreenBrightness(J)V
    .registers 7
    .param p1, "eventTime"  # J

    .line 5135
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2b

    .line 5139
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5142
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5143
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5145
    .local v1, "ident":J
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3, p1, p2, v0}, Lcom/android/server/power/PowerManagerService;->access$6000(Lcom/android/server/power/PowerManagerService;JI)V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_26

    .line 5147
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5148
    nop

    .line 5149
    return-void

    .line 5147
    :catchall_26
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 5136
    .end local v0  # "uid":I
    .end local v1  # "ident":J
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event time must not be in the future"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public crash(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"  # Ljava/lang/String;

    .line 5061
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.REBOOT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5063
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5065
    .local v0, "ident":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->access$5700(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1a

    .line 5067
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5068
    nop

    .line 5069
    return-void

    .line 5067
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 5177
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 5179
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5181
    .local v0, "ident":J
    const/4 v2, 0x0

    .line 5182
    .local v2, "isDumpProto":Z
    array-length v3, p3

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v3, :cond_26

    aget-object v5, p3, v4

    .line 5183
    .local v5, "arg":Ljava/lang/String;
    const-string v6, "--proto"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 5184
    const/4 v2, 0x1

    .line 5182
    .end local v5  # "arg":Ljava/lang/String;
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 5188
    :cond_26
    if-eqz v2, :cond_2e

    .line 5189
    :try_start_28
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3, p1}, Lcom/android/server/power/PowerManagerService;->access$6300(Lcom/android/server/power/PowerManagerService;Ljava/io/FileDescriptor;)V

    goto :goto_33

    .line 5191
    :cond_2e
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3, p2}, Lcom/android/server/power/PowerManagerService;->access$6400(Lcom/android/server/power/PowerManagerService;Ljava/io/PrintWriter;)V
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_38

    .line 5194
    :goto_33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5195
    nop

    .line 5196
    return-void

    .line 5194
    :catchall_38
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public forceSuspend()Z
    .registers 5

    .line 5163
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5166
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5167
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5169
    .local v1, "ident":J
    :try_start_14
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3, v0}, Lcom/android/server/power/PowerManagerService;->access$6200(Lcom/android/server/power/PowerManagerService;I)Z

    move-result v3
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1e

    .line 5171
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5169
    return v3

    .line 5171
    :catchall_1e
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getLastShutdownReason()I
    .registers 5

    .line 4971
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4974
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4976
    .local v0, "ident":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const-string/jumbo v3, "sys.boot.reason"

    invoke-virtual {v2, v3}, Lcom/android/server/power/PowerManagerService;->getLastShutdownReasonInternal(Ljava/lang/String;)I

    move-result v2
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1d

    .line 4978
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4976
    return v2

    .line 4978
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getLastSleepReason()I
    .registers 4

    .line 4984
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4987
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4989
    .local v0, "ident":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$5500(Lcom/android/server/power/PowerManagerService;)I

    move-result v2
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_1a

    .line 4991
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4989
    return v2

    .line 4991
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getPowerSaveModeTrigger()I
    .registers 6

    .line 4932
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.POWER_SAVER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4933
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4935
    .local v0, "ident":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "automatic_power_save_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_25

    .line 4939
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4935
    return v2

    .line 4939
    :catchall_25
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getPowerSaveState(I)Landroid/os/PowerSaveState;
    .registers 5
    .param p1, "serviceType"  # I

    .line 4855
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4857
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$5200(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->getBatterySaverPolicy(I)Landroid/os/PowerSaveState;

    move-result-object v2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 4859
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4857
    return-object v2

    .line 4859
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getWakeLockData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/WakeLockData;",
            ">;"
        }
    .end annotation

    .line 4736
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4400(Lcom/android/server/power/PowerManagerService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWakeLockDisabledUids()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5208
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5209
    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$6600(Lcom/android/server/power/PowerManagerService;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 5210
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public goToSleep(JII)V
    .registers 14
    .param p1, "eventTime"  # J
    .param p3, "reason"  # I
    .param p4, "flags"  # I

    .line 4799
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2f

    .line 4803
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4806
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4807
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4809
    .local v1, "ident":J
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    move-wide v4, p1

    move v6, p3

    move v7, p4

    move v8, v0

    invoke-static/range {v3 .. v8}, Lcom/android/server/power/PowerManagerService;->access$4800(Lcom/android/server/power/PowerManagerService;JIII)V
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_2a

    .line 4811
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4812
    nop

    .line 4813
    return-void

    .line 4811
    :catchall_2a
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 4800
    .end local v0  # "uid":I
    .end local v1  # "ident":J
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event time must not be in the future"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDeviceIdleMode()Z
    .registers 4

    .line 4945
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4947
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->isDeviceIdleModeInternal()Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 4949
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4947
    return v2

    .line 4949
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isInteractive()Z
    .registers 4

    .line 4835
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4837
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$5000(Lcom/android/server/power/PowerManagerService;)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 4839
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4837
    return v2

    .line 4839
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isLightDeviceIdleMode()Z
    .registers 4

    .line 4955
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4957
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2}, Lcom/android/server/power/PowerManagerService;->isLightDeviceIdleModeInternal()Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 4959
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4957
    return v2

    .line 4959
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isPowerSaveMode()Z
    .registers 4

    .line 4845
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4847
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$5100(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/power/batterysaver/BatterySaverController;->isEnabled()Z

    move-result v2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 4849
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4847
    return v2

    .line 4849
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isScreenBrightnessBoosted()Z
    .registers 4

    .line 5153
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5155
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$6100(Lcom/android/server/power/PowerManagerService;)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 5157
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5155
    return v2

    .line 5157
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isScreenDim()Z
    .registers 4

    .line 5256
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5257
    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService;->getDesiredScreenPolicyLocked()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    monitor-exit v0

    return v1

    .line 5258
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public isWakeLockLevelSupported(I)Z
    .registers 5
    .param p1, "level"  # I

    .line 4725
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4727
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->access$4300(Lcom/android/server/power/PowerManagerService;I)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 4729
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4727
    return v2

    .line 4729
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public nap(J)V
    .registers 7
    .param p1, "eventTime"  # J

    .line 4817
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2b

    .line 4821
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4824
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4825
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4827
    .local v1, "ident":J
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3, p1, p2, v0}, Lcom/android/server/power/PowerManagerService;->access$4900(Lcom/android/server/power/PowerManagerService;JI)V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_26

    .line 4829
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4830
    nop

    .line 4831
    return-void

    .line 4829
    :catchall_26
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 4818
    .end local v0  # "uid":I
    .end local v1  # "ident":J
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event time must not be in the future"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"  # Ljava/io/FileDescriptor;
    .param p2, "out"  # Ljava/io/FileDescriptor;
    .param p3, "err"  # Ljava/io/FileDescriptor;
    .param p4, "args"  # [Ljava/lang/String;
    .param p5, "callback"  # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"  # Landroid/os/ResultReceiver;

    .line 4613
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

    .line 4615
    return-void
.end method

.method public powerHint(II)V
    .registers 6
    .param p1, "hintId"  # I
    .param p2, "data"  # I

    .line 4628
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 4630
    return-void

    .line 4632
    :cond_9
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4633
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$3000(Lcom/android/server/power/PowerManagerService;II)V

    .line 4634
    return-void
.end method

.method public reboot(ZLjava/lang/String;Z)V
    .registers 8
    .param p1, "confirm"  # Z
    .param p2, "reason"  # Ljava/lang/String;
    .param p3, "wait"  # Z

    .line 5004
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.REBOOT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5005
    const-string/jumbo v0, "recovery"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 5006
    const-string/jumbo v0, "recovery-update"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 5007
    :cond_1e
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.RECOVERY"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5010
    :cond_29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5012
    .local v0, "ident":J
    :try_start_2d
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x1

    invoke-static {v2, v3, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->access$5600(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;Z)V
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_38

    .line 5014
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5015
    nop

    .line 5016
    return-void

    .line 5014
    :catchall_38
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public rebootSafeMode(ZZ)V
    .registers 8
    .param p1, "confirm"  # Z
    .param p2, "wait"  # Z

    .line 5026
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.REBOOT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5028
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5030
    .local v0, "ident":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x2

    const-string/jumbo v4, "safemode"

    invoke-static {v2, v3, p1, v4, p2}, Lcom/android/server/power/PowerManagerService;->access$5600(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;Z)V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_1e

    .line 5033
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5034
    nop

    .line 5035
    return-void

    .line 5033
    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public releaseWakeLock(Landroid/os/IBinder;I)V
    .registers 6
    .param p1, "lock"  # Landroid/os/IBinder;
    .param p2, "flags"  # I

    .line 4671
    if-eqz p1, :cond_21

    .line 4675
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.WAKE_LOCK"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4677
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4679
    .local v0, "ident":J
    :try_start_12
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$4100(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;I)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1c

    .line 4681
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4682
    nop

    .line 4683
    return-void

    .line 4681
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 4672
    .end local v0  # "ident":J
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "lock must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public restoreWakeLockDisabled()V
    .registers 3

    .line 5215
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5216
    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$6700(Lcom/android/server/power/PowerManagerService;)V

    .line 5217
    monitor-exit v0

    .line 5218
    return-void

    .line 5217
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public setAdaptivePowerSaveEnabled(Z)Z
    .registers 5
    .param p1, "enabled"  # Z

    .line 4917
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.POWER_SAVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1c

    .line 4919
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const-string/jumbo v2, "setAdaptivePowerSaveEnabled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4922
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4924
    .local v0, "ident":J
    :try_start_20
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$5400(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setAdaptiveBatterySaverEnabled(Z)Z

    move-result v2
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_2e

    .line 4926
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4924
    return v2

    .line 4926
    :catchall_2e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setAdaptivePowerSavePolicy(Landroid/os/BatterySaverPolicyConfig;)Z
    .registers 5
    .param p1, "config"  # Landroid/os/BatterySaverPolicyConfig;

    .line 4902
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.POWER_SAVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1c

    .line 4904
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const-string/jumbo v2, "setAdaptivePowerSavePolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4907
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4909
    .local v0, "ident":J
    :try_start_20
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$5400(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->setAdaptiveBatterySaverPolicy(Landroid/os/BatterySaverPolicyConfig;)Z

    move-result v2
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_2e

    .line 4911
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4909
    return v2

    .line 4911
    :catchall_2e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setAttentionLight(ZI)V
    .registers 6
    .param p1, "on"  # Z
    .param p2, "color"  # I

    .line 5109
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5112
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5114
    .local v0, "ident":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$5800(Lcom/android/server/power/PowerManagerService;ZI)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1a

    .line 5116
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5117
    nop

    .line 5118
    return-void

    .line 5116
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setDozeAfterScreenOff(Z)V
    .registers 5
    .param p1, "on"  # Z

    .line 5122
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5125
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5127
    .local v0, "ident":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->access$5900(Lcom/android/server/power/PowerManagerService;Z)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1a

    .line 5129
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5130
    nop

    .line 5131
    return-void

    .line 5129
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setDynamicPowerSaveHint(ZI)Z
    .registers 9
    .param p1, "powerSaveHint"  # Z
    .param p2, "disableThreshold"  # I

    .line 4880
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.POWER_SAVER"

    const-string/jumbo v2, "updateDynamicPowerSavings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4882
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4884
    .local v0, "ident":J
    :try_start_12
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4885
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v3, "dynamic_power_savings_disable_threshold"

    invoke-static {v2, v3, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v3

    .line 4888
    .local v3, "success":Z
    if-eqz v3, :cond_30

    .line 4890
    const-string v4, "dynamic_power_savings_enabled"

    .line 4892
    if-eqz p1, :cond_2a

    const/4 v5, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v5, 0x0

    .line 4890
    :goto_2b
    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v4
    :try_end_2f
    .catchall {:try_start_12 .. :try_end_2f} :catchall_35

    and-int/2addr v3, v4

    .line 4894
    :cond_30
    nop

    .line 4896
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4894
    return v3

    .line 4896
    .end local v2  # "resolver":Landroid/content/ContentResolver;
    .end local v3  # "success":Z
    :catchall_35
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setPowerSaveModeEnabled(Z)Z
    .registers 5
    .param p1, "enabled"  # Z

    .line 4865
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.POWER_SAVER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1a

    .line 4867
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4870
    :cond_1a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4872
    .local v0, "ident":J
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->access$5300(Lcom/android/server/power/PowerManagerService;Z)Z

    move-result v2
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_28

    .line 4874
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4872
    return v2

    .line 4874
    :catchall_28
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setStayOnSetting(I)V
    .registers 6
    .param p1, "val"  # I

    .line 5087
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5089
    .local v0, "uid":I
    if-eqz v0, :cond_1e

    .line 5090
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 5091
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/provider/Settings;->getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 5090
    invoke-static {v1, v0, v2, v3}, Landroid/provider/Settings;->checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 5092
    return-void

    .line 5096
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5098
    .local v1, "ident":J
    :try_start_22
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/power/PowerManagerService;->setStayOnSettingInternal(I)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_2c

    .line 5100
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5101
    nop

    .line 5102
    return-void

    .line 5100
    :catchall_2c
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setWakeLockDisabledForUid(IZ)V
    .registers 5
    .param p1, "uid"  # I
    .param p2, "disable"  # Z

    .line 5201
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5202
    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1, p1, p2}, Lcom/android/server/power/PowerManagerService;->access$6500(Lcom/android/server/power/PowerManagerService;IZ)V

    .line 5203
    monitor-exit v0

    .line 5204
    return-void

    .line 5203
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public shutdown(ZLjava/lang/String;Z)V
    .registers 8
    .param p1, "confirm"  # Z
    .param p2, "reason"  # Ljava/lang/String;
    .param p3, "wait"  # Z

    .line 5045
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.REBOOT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5047
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5049
    .local v0, "ident":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x0

    invoke-static {v2, v3, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->access$5600(Lcom/android/server/power/PowerManagerService;IZLjava/lang/String;Z)V
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_1b

    .line 5051
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5052
    nop

    .line 5053
    return-void

    .line 5051
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public updateWakeLockUids(Landroid/os/IBinder;[I)V
    .registers 6
    .param p1, "lock"  # Landroid/os/IBinder;
    .param p2, "uids"  # [I

    .line 4687
    const/4 v0, 0x0

    .line 4689
    .local v0, "ws":Landroid/os/WorkSource;
    if-eqz p2, :cond_15

    .line 4690
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    move-object v0, v1

    .line 4693
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v2, p2

    if-ge v1, v2, :cond_15

    .line 4694
    aget v2, p2, v1

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->add(I)Z

    .line 4693
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 4697
    .end local v1  # "i":I
    :cond_15
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/power/PowerManagerService$BinderService;->updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V

    .line 4698
    return-void
.end method

.method public updateWakeLockUidsPids(Landroid/os/IBinder;[I[I)V
    .registers 9
    .param p1, "lock"  # Landroid/os/IBinder;
    .param p2, "uids"  # [I
    .param p3, "pids"  # [I

    .line 5224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateWakeLockUidsPids: lock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5225
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5226
    if-eqz p3, :cond_4f

    :try_start_24
    array-length v1, p3

    if-lez v1, :cond_4f

    .line 5227
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1, p1}, Lcom/android/server/power/PowerManagerService;->access$6800(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;)I

    move-result v1

    .line 5228
    .local v1, "index":I
    if-ltz v1, :cond_4e

    .line 5229
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$6900(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 5230
    .local v2, "audioWakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    iget-object v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    const-string v4, "AudioMix"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 5231
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$7000(Lcom/android/server/power/PowerManagerService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5245
    .end local v1  # "index":I
    .end local v2  # "audioWakeLock":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_4e
    goto :goto_58

    .line 5246
    :cond_4f
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$7000(Lcom/android/server/power/PowerManagerService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5248
    :goto_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_24 .. :try_end_59} :catchall_5d

    .line 5249
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/PowerManagerService$BinderService;->updateWakeLockUids(Landroid/os/IBinder;[I)V

    .line 5250
    return-void

    .line 5248
    :catchall_5d
    move-exception v1

    :try_start_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v1
.end method

.method public updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V
    .registers 8
    .param p1, "lock"  # Landroid/os/IBinder;
    .param p2, "ws"  # Landroid/os/WorkSource;
    .param p3, "historyTag"  # Ljava/lang/String;

    .line 4702
    if-eqz p1, :cond_3a

    .line 4706
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.WAKE_LOCK"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4707
    if-eqz p2, :cond_22

    invoke-virtual {p2}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_22

    .line 4708
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 4711
    :cond_22
    const/4 p2, 0x0

    .line 4714
    :goto_23
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4715
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4717
    .local v1, "ident":J
    :try_start_2b
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3, p1, p2, p3, v0}, Lcom/android/server/power/PowerManagerService;->access$4200(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    :try_end_30
    .catchall {:try_start_2b .. :try_end_30} :catchall_35

    .line 4719
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4720
    nop

    .line 4721
    return-void

    .line 4719
    :catchall_35
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 4703
    .end local v0  # "callingUid":I
    .end local v1  # "ident":J
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "lock must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public userActivity(JII)V
    .registers 16
    .param p1, "eventTime"  # J
    .param p3, "event"  # I
    .param p4, "flags"  # I

    .line 4743
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 4744
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_65

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 4746
    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.USER_ACTIVITY"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_65

    .line 4752
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->access$000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 4753
    :try_start_27
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$4500(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v3

    const-wide/32 v5, 0x493e0

    add-long/2addr v3, v5

    cmp-long v3, v0, v3

    if-ltz v3, :cond_60

    .line 4754
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3, v0, v1}, Lcom/android/server/power/PowerManagerService;->access$4502(Lcom/android/server/power/PowerManagerService;J)J

    .line 4755
    const-string v3, "PowerManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring call to PowerManager.userActivity() because the caller does not have DEVICE_POWER or USER_ACTIVITY permission.  Please fix your app!   pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4758
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4759
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4755
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4761
    :cond_60
    monitor-exit v2

    .line 4762
    return-void

    .line 4761
    :catchall_62
    move-exception v3

    monitor-exit v2
    :try_end_64
    .catchall {:try_start_27 .. :try_end_64} :catchall_62

    throw v3

    .line 4765
    :cond_65
    cmp-long v2, p1, v0

    if-gtz v2, :cond_84

    .line 4769
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4770
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 4772
    .local v9, "ident":J
    :try_start_71
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    move-wide v4, p1

    move v6, p3

    move v7, p4

    move v8, v2

    invoke-static/range {v3 .. v8}, Lcom/android/server/power/PowerManagerService;->access$4600(Lcom/android/server/power/PowerManagerService;JIII)V
    :try_end_7a
    .catchall {:try_start_71 .. :try_end_7a} :catchall_7f

    .line 4774
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4775
    nop

    .line 4776
    return-void

    .line 4774
    :catchall_7f
    move-exception v3

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 4766
    .end local v2  # "uid":I
    .end local v9  # "ident":J
    :cond_84
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "event time must not be in the future"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public wakeUp(JILjava/lang/String;Ljava/lang/String;)V
    .registers 20
    .param p1, "eventTime"  # J
    .param p3, "reason"  # I
    .param p4, "details"  # Ljava/lang/String;
    .param p5, "opPackageName"  # Ljava/lang/String;

    .line 4781
    move-object v1, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-gtz v0, :cond_35

    .line 4785
    iget-object v0, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4788
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4789
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 4791
    .local v12, "ident":J
    :try_start_1d
    iget-object v4, v1, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    move-wide v5, p1

    move/from16 v7, p3

    move-object/from16 v8, p4

    move v9, v2

    move-object/from16 v10, p5

    move v11, v2

    invoke-static/range {v4 .. v11}, Lcom/android/server/power/PowerManagerService;->access$4700(Lcom/android/server/power/PowerManagerService;JILjava/lang/String;ILjava/lang/String;I)V
    :try_end_2b
    .catchall {:try_start_1d .. :try_end_2b} :catchall_30

    .line 4793
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4794
    nop

    .line 4795
    return-void

    .line 4793
    :catchall_30
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 4782
    .end local v2  # "uid":I
    .end local v12  # "ident":J
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "event time must not be in the future"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
