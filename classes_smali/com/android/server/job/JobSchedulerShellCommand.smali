.class public final Lcom/android/server/job/JobSchedulerShellCommand;
.super Landroid/os/ShellCommand;
.source "JobSchedulerShellCommand.java"


# static fields
.field public static final CMD_ERR_CONSTRAINTS:I = -0x3ea

.field public static final CMD_ERR_NO_JOB:I = -0x3e9

.field public static final CMD_ERR_NO_PACKAGE:I = -0x3e8


# instance fields
.field mInternal:Lcom/android/server/job/JobSchedulerService;

.field mPM:Landroid/content/pm/IPackageManager;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 2

    .line 37
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    .line 39
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mPM:Landroid/content/pm/IPackageManager;

    .line 40
    return-void
.end method

.method private cancelJob(Ljava/io/PrintWriter;)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 215
    const-string v0, "cancel jobs"

    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 217
    const/4 v0, 0x0

    move v4, v0

    .line 220
    :goto_7
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v1, :cond_5a

    .line 221
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x5e8

    if-eq v4, v5, :cond_27

    const v5, 0x4f7b216b

    if-eq v4, v5, :cond_1d

    :cond_1c
    goto :goto_31

    :cond_1d
    const-string v4, "--user"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    move v4, v2

    goto :goto_32

    :cond_27
    const-string v4, "-u"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    move v4, v0

    goto :goto_32

    :goto_31
    move v4, v3

    :goto_32
    if-eqz v4, :cond_50

    if-eq v4, v2, :cond_50

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: unknown option \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    return v3

    .line 224
    :cond_50
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v4

    .line 225
    nop

    .line 229
    goto :goto_7

    .line 233
    :cond_5a
    if-gez v4, :cond_62

    .line 234
    const-string v0, "Error: must specify a concrete user ID"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    return v3

    .line 238
    :cond_62
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    .line 239
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 240
    if-eqz v1, :cond_70

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :cond_70
    move v6, v3

    .line 242
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 244
    :try_start_75
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    if-eqz v1, :cond_7a

    move v0, v2

    :cond_7a
    move-object v1, v3

    move-object v2, p1

    move-object v3, v5

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/JobSchedulerService;->executeCancelCommand(Ljava/io/PrintWriter;Ljava/lang/String;IZI)I

    move-result p1
    :try_end_82
    .catchall {:try_start_75 .. :try_end_82} :catchall_86

    .line 246
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 244
    return p1

    .line 246
    :catchall_86
    move-exception p1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private checkPermission(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 81
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 82
    if-nez v0, :cond_7

    .line 84
    return-void

    .line 86
    :cond_7
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mPM:Landroid/content/pm/IPackageManager;

    const-string v2, "android.permission.CHANGE_APP_IDLE_STATE"

    invoke-interface {v1, v2, v0}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1

    .line 88
    if-nez v1, :cond_12

    .line 92
    return-void

    .line 89
    :cond_12
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not permitted to "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private doHeartbeat(Ljava/io/PrintWriter;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 341
    const-string v0, "manipulate scheduler heartbeat"

    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 346
    :goto_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 348
    :try_start_15
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/job/JobSchedulerService;->executeHeartbeatCommand(Ljava/io/PrintWriter;I)I

    move-result p1
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_1f

    .line 350
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 348
    return p1

    .line 350
    :catchall_1f
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private getBatteryCharging(Ljava/io/PrintWriter;)I
    .registers 3

    .line 280
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getBatteryCharging()Z

    move-result v0

    .line 281
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 282
    const/4 p1, 0x0

    return p1
.end method

.method private getBatteryNotLow(Ljava/io/PrintWriter;)I
    .registers 3

    .line 286
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getBatteryNotLow()Z

    move-result v0

    .line 287
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 288
    const/4 p1, 0x0

    return p1
.end method

.method private getBatterySeq(Ljava/io/PrintWriter;)I
    .registers 3

    .line 274
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getBatterySeq()I

    move-result v0

    .line 275
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 276
    const/4 p1, 0x0

    return p1
.end method

.method private getJobState(Ljava/io/PrintWriter;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 304
    const-string v0, "force timeout jobs"

    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 306
    const/4 v0, 0x0

    move v1, v0

    .line 309
    :goto_7
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5a

    .line 310
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v3, 0x5e8

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eq v1, v3, :cond_27

    const v3, 0x4f7b216b

    if-eq v1, v3, :cond_1d

    :cond_1c
    goto :goto_31

    :cond_1d
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    move v1, v4

    goto :goto_32

    :cond_27
    const-string v1, "-u"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    move v1, v0

    goto :goto_32

    :goto_31
    move v1, v5

    :goto_32
    if-eqz v1, :cond_50

    if-eq v1, v4, :cond_50

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: unknown option \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 318
    return v5

    .line 313
    :cond_50
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    .line 314
    nop

    .line 318
    goto :goto_7

    .line 322
    :cond_5a
    const/4 v0, -0x2

    if-ne v1, v0, :cond_61

    .line 323
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 326
    :cond_61
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 328
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 330
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 332
    :try_start_71
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v5, p1, v0, v1, v2}, Lcom/android/server/job/JobSchedulerService;->getJobState(Ljava/io/PrintWriter;Ljava/lang/String;II)I

    move-result p1

    .line 333
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/job/JobSchedulerShellCommand;->printError(ILjava/lang/String;II)Z
    :try_end_7a
    .catchall {:try_start_71 .. :try_end_7a} :catchall_7f

    .line 334
    nop

    .line 336
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 334
    return p1

    .line 336
    :catchall_7f
    move-exception p1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private getStorageNotLow(Ljava/io/PrintWriter;)I
    .registers 3

    .line 298
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getStorageNotLow()Z

    move-result v0

    .line 299
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 300
    const/4 p1, 0x0

    return p1
.end method

.method private getStorageSeq(Ljava/io/PrintWriter;)I
    .registers 3

    .line 292
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getStorageSeq()I

    move-result v0

    .line 293
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 294
    const/4 p1, 0x0

    return p1
.end method

.method private monitorBattery(Ljava/io/PrintWriter;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 251
    const-string v0, "change battery monitoring"

    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 254
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_15

    .line 255
    goto :goto_1f

    .line 256
    :cond_15
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 257
    move v3, v2

    .line 262
    :goto_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 264
    :try_start_23
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v3}, Lcom/android/server/job/JobSchedulerService;->setMonitorBattery(Z)V

    .line 265
    if-eqz v3, :cond_30

    const-string v3, "Battery monitoring enabled"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_35

    .line 266
    :cond_30
    const-string v3, "Battery monitoring disabled"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_23 .. :try_end_35} :catchall_3a

    .line 268
    :goto_35
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 269
    nop

    .line 270
    return v2

    .line 268
    :catchall_3a
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 259
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: unknown option "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 260
    return v3
.end method

.method private printError(ILjava/lang/String;II)Z
    .registers 9

    .line 96
    const-string v0, " in package "

    const/4 v1, 0x1

    const-string v2, " / user "

    packed-switch p1, :pswitch_data_54

    .line 127
    const/4 p1, 0x0

    return p1

    .line 98
    :pswitch_a  #0xfffffc18
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    .line 99
    const-string p4, "Package not found: "

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(I)V

    .line 103
    return v1

    .line 106
    :pswitch_1d  #0xfffffc17
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    .line 107
    const-string v3, "Could not find job "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 109
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(I)V

    .line 113
    return v1

    .line 116
    :pswitch_36  #0xfffffc16
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    .line 117
    const-string v3, "Job "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 119
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 123
    const-string p2, " has functional constraints but --force not specified"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    return v1

    :pswitch_data_54
    .packed-switch -0x3ea
        :pswitch_36  #fffffc16
        :pswitch_1d  #fffffc17
        :pswitch_a  #fffffc18
    .end packed-switch
.end method

.method private runJob(Ljava/io/PrintWriter;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 132
    const-string v0, "force scheduled jobs"

    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 134
    nop

    .line 135
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 138
    :goto_9
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_81

    .line 139
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x60ebf6b5

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-eq v4, v5, :cond_48

    const/16 v5, 0x5d9

    if-eq v4, v5, :cond_3e

    const/16 v5, 0x5e8

    if-eq v4, v5, :cond_34

    const v5, 0x4f7b216b

    if-eq v4, v5, :cond_2a

    :cond_29
    goto :goto_52

    :cond_2a
    const-string v4, "--user"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    move v4, v6

    goto :goto_53

    :cond_34
    const-string v4, "-u"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    move v4, v7

    goto :goto_53

    :cond_3e
    const-string v4, "-f"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    move v4, v0

    goto :goto_53

    :cond_48
    const-string v4, "--force"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    move v4, v9

    goto :goto_53

    :goto_52
    move v4, v8

    :goto_53
    if-eqz v4, :cond_7e

    if-eq v4, v9, :cond_7e

    if-eq v4, v7, :cond_75

    if-eq v4, v6, :cond_75

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: unknown option \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    return v8

    .line 147
    :cond_75
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 148
    goto :goto_80

    .line 142
    :cond_7e
    nop

    .line 143
    move v2, v9

    .line 152
    :goto_80
    goto :goto_9

    .line 156
    :cond_81
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 159
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 161
    :try_start_91
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v6, v0, v1, v3, v2}, Lcom/android/server/job/JobSchedulerService;->executeRunCommand(Ljava/lang/String;IIZ)I

    move-result v6

    .line 162
    invoke-direct {p0, v6, v0, v1, v3}, Lcom/android/server/job/JobSchedulerShellCommand;->printError(ILjava/lang/String;II)Z

    move-result v0
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_b6

    if-eqz v0, :cond_a2

    .line 163
    nop

    .line 175
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 163
    return v6

    .line 167
    :cond_a2
    :try_start_a2
    const-string v0, "Running job"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 168
    if-eqz v2, :cond_ae

    .line 169
    const-string v0, " [FORCED]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 171
    :cond_ae
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_b1
    .catchall {:try_start_a2 .. :try_end_b1} :catchall_b6

    .line 173
    nop

    .line 175
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 173
    return v6

    .line 175
    :catchall_b6
    move-exception p1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private timeout(Ljava/io/PrintWriter;)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 180
    const-string v0, "force timeout jobs"

    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 182
    const/4 v0, -0x1

    move v1, v0

    .line 185
    :goto_7
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_59

    .line 186
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v5, 0x5e8

    if-eq v1, v5, :cond_27

    const v3, 0x4f7b216b

    if-eq v1, v3, :cond_1d

    :cond_1c
    goto :goto_30

    :cond_1d
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    move v3, v4

    goto :goto_31

    :cond_27
    const-string v1, "-u"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_31

    :goto_30
    move v3, v0

    :goto_31
    if-eqz v3, :cond_4f

    if-eq v3, v4, :cond_4f

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: unknown option \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    return v0

    .line 189
    :cond_4f
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    .line 190
    nop

    .line 194
    goto :goto_7

    .line 198
    :cond_59
    const/4 v2, -0x2

    if-ne v1, v2, :cond_62

    .line 199
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    move v8, v1

    goto :goto_63

    .line 198
    :cond_62
    move v8, v1

    .line 202
    :goto_63
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v7

    .line 203
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 204
    if-eqz v1, :cond_71

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_71
    move v10, v0

    .line 206
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 208
    :try_start_76
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    if-eqz v1, :cond_7c

    move v9, v4

    goto :goto_7d

    :cond_7c
    move v9, v3

    :goto_7d
    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/job/JobSchedulerService;->executeTimeoutCommand(Ljava/io/PrintWriter;Ljava/lang/String;IZI)I

    move-result p1
    :try_end_82
    .catchall {:try_start_76 .. :try_end_82} :catchall_86

    .line 210
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 208
    return p1

    .line 210
    :catchall_86
    move-exception p1

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private triggerDockState(Ljava/io/PrintWriter;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 355
    const-string/jumbo p1, "trigger wireless charging dock state"

    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerShellCommand;->checkPermission(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 359
    const-string v0, "idle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    .line 360
    goto :goto_1e

    .line 361
    :cond_15
    const-string v0, "active"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 362
    move v2, v1

    .line 368
    :goto_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 370
    :try_start_22
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerShellCommand;->mInternal:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p1, v2}, Lcom/android/server/job/JobSchedulerService;->triggerDockState(Z)V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_2c

    .line 372
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 373
    nop

    .line 374
    return v1

    .line 372
    :catchall_2c
    move-exception p1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 364
    :cond_31
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: unknown option "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    return v2
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 6

    .line 44
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 46
    const/4 v1, -0x1

    if-eqz p1, :cond_9

    move-object v2, p1

    goto :goto_b

    :cond_9
    :try_start_9
    const-string v2, ""

    :goto_b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_f2

    :cond_12
    goto/16 :goto_96

    :sswitch_14
    const-string/jumbo v3, "monitor-battery"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x3

    goto/16 :goto_97

    :sswitch_20
    const-string v3, "get-job-state"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v2, 0x9

    goto/16 :goto_97

    :sswitch_2c
    const-string v3, "get-battery-not-low"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x6

    goto :goto_97

    :sswitch_36
    const-string v3, "get-battery-seq"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x4

    goto :goto_97

    :sswitch_40
    const-string v3, "heartbeat"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v2, 0xa

    goto :goto_97

    :sswitch_4b
    const-string v3, "get-storage-not-low"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v2, 0x8

    goto :goto_97

    :sswitch_56
    const-string/jumbo v3, "run"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x0

    goto :goto_97

    :sswitch_61
    const-string/jumbo v3, "timeout"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    goto :goto_97

    :sswitch_6c
    const-string v3, "cancel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x2

    goto :goto_97

    :sswitch_76
    const-string v3, "get-battery-charging"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x5

    goto :goto_97

    :sswitch_80
    const-string v3, "get-storage-seq"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x7

    goto :goto_97

    :sswitch_8a
    const-string/jumbo v3, "trigger-dock-state"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v2, 0xb

    goto :goto_97

    :goto_96
    move v2, v1

    :goto_97
    packed-switch v2, :pswitch_data_124

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    goto :goto_db

    .line 70
    :pswitch_9f  #0xb
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->triggerDockState(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 68
    :pswitch_a4  #0xa
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->doHeartbeat(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 66
    :pswitch_a9  #0x9
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getJobState(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 64
    :pswitch_ae  #0x8
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getStorageNotLow(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 62
    :pswitch_b3  #0x7
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getStorageSeq(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 60
    :pswitch_b8  #0x6
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getBatteryNotLow(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 58
    :pswitch_bd  #0x5
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getBatteryCharging(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 56
    :pswitch_c2  #0x4
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->getBatterySeq(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 54
    :pswitch_c7  #0x3
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->monitorBattery(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 52
    :pswitch_cc  #0x2
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->cancelJob(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 50
    :pswitch_d1  #0x1
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->timeout(Ljava/io/PrintWriter;)I

    move-result p1

    return p1

    .line 48
    :pswitch_d6  #0x0
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerShellCommand;->runJob(Ljava/io/PrintWriter;)I

    move-result p1
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_da} :catch_dc

    return p1

    .line 72
    :goto_db
    return p1

    .line 74
    :catch_dc
    move-exception p1

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    return v1

    :sswitch_data_f2
    .sparse-switch
        -0x70e7e454 -> :sswitch_8a
        -0x6e03f1ea -> :sswitch_80
        -0x6495fc38 -> :sswitch_76
        -0x5185d186 -> :sswitch_6c
        -0x4e50b29f -> :sswitch_61
        0x1ba8b -> :sswitch_56
        0x34cbf91 -> :sswitch_4b
        0xbf970fc -> :sswitch_40
        0x29e960a8 -> :sswitch_36
        0x684a7923 -> :sswitch_2c
        0x6ac7b0ca -> :sswitch_20
        0x6e89549a -> :sswitch_14
    .end sparse-switch

    :pswitch_data_124
    .packed-switch 0x0
        :pswitch_d6  #00000000
        :pswitch_d1  #00000001
        :pswitch_cc  #00000002
        :pswitch_c7  #00000003
        :pswitch_c2  #00000004
        :pswitch_bd  #00000005
        :pswitch_b8  #00000006
        :pswitch_b3  #00000007
        :pswitch_ae  #00000008
        :pswitch_a9  #00000009
        :pswitch_a4  #0000000a
        :pswitch_9f  #0000000b
    .end packed-switch
.end method

.method public onHelp()V
    .registers 6

    .line 379
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 381
    const-string v1, "Job scheduler (jobscheduler) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    const-string v1, "  run [-f | --force] [-u | --user USER_ID] PACKAGE JOB_ID"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    const-string v1, "    Trigger immediate execution of a specific scheduled job."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 386
    const-string v1, "    Options:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    const-string v2, "      -f or --force: run the job even if technical constraints such as"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    const-string v2, "         connectivity are not currently met"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    const-string v2, "      -u or --user: specify which user\'s job is to be run; the default is"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    const-string v3, "         the primary or system user"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    const-string v4, "  timeout [-u | --user USER_ID] [PACKAGE] [JOB_ID]"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 392
    const-string v4, "    Trigger immediate timeout of currently executing jobs, as if their."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    const-string v4, "    execution timeout had expired."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 396
    const-string v4, "         all users"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    const-string v4, "  cancel [-u | --user USER_ID] PACKAGE [JOB_ID]"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 398
    const-string v4, "    Cancel a scheduled job.  If a job ID is not supplied, all jobs scheduled"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 399
    const-string v4, "    by that package will be canceled.  USE WITH CAUTION."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 403
    const-string v4, "  heartbeat [num]"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    const-string v4, "    With no argument, prints the current standby heartbeat.  With a positive"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 405
    const-string v4, "    argument, advances the standby heartbeat by that number."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    const-string v4, "  monitor-battery [on|off]"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    const-string v4, "    Control monitoring of all battery changes.  Off by default.  Turning"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    const-string v4, "    on makes get-battery-seq useful."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    const-string v4, "  get-battery-seq"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    const-string v4, "    Return the last battery update sequence number that was received."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 411
    const-string v4, "  get-battery-charging"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    const-string v4, "    Return whether the battery is currently considered to be charging."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    const-string v4, "  get-battery-not-low"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    const-string v4, "    Return whether the battery is currently considered to not be low."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    const-string v4, "  get-storage-seq"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    const-string v4, "    Return the last storage update sequence number that was received."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    const-string v4, "  get-storage-not-low"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    const-string v4, "    Return whether storage is currently considered to not be low."

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 419
    const-string v4, "  get-job-state [-u | --user USER_ID] PACKAGE JOB_ID"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 420
    const-string v4, "    Return the current state of a job, may be any combination of:"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 421
    const-string v4, "      pending: currently on the pending list, waiting to be active"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 422
    const-string v4, "      active: job is actively running"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 423
    const-string v4, "      user-stopped: job can\'t run because its user is stopped"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    const-string v4, "      backing-up: job can\'t run because app is currently backing up its data"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 425
    const-string v4, "      no-component: job can\'t run because its component is not available"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    const-string v4, "      ready: job is ready to run (all constraints satisfied or bypassed)"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 427
    const-string v4, "      waiting: if nothing else above is printed, job not ready to run"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 431
    const-string v1, "  trigger-dock-state [idle|active]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 432
    const-string v1, "    Trigger wireless charging dock state.  Active by default."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 434
    return-void
.end method
