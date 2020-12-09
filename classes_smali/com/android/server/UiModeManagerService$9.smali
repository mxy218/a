.class Lcom/android/server/UiModeManagerService$9;
.super Landroid/app/IUiModeManager$Stub;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .registers 2

    .line 439
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/app/IUiModeManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public disableCarMode(I)V
    .registers 7

    .line 461
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$9;->isUiModeLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 462
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$1400()Ljava/lang/String;

    move-result-object p1

    const-string v0, "disableCarMode while UI mode is locked"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return-void

    .line 465
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 467
    :try_start_14
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v2, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_33

    .line 468
    :try_start_19
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZI)V

    .line 469
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v3, v3, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v3, :cond_2a

    .line 470
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v3, v4, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 472
    :cond_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_30

    .line 474
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 475
    nop

    .line 476
    return-void

    .line 472
    :catchall_30
    move-exception p1

    :try_start_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    :try_start_32
    throw p1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    .line 474
    :catchall_33
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 571
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p1}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$1400()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_11

    return-void

    .line 572
    :cond_11
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p1, p2}, Lcom/android/server/UiModeManagerService;->dumpImpl(Ljava/io/PrintWriter;)V

    .line 573
    return-void
.end method

.method public enableCarMode(I)V
    .registers 7

    .line 442
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$9;->isUiModeLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 443
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$1400()Ljava/lang/String;

    move-result-object p1

    const-string v0, "enableCarMode while UI mode is locked"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return-void

    .line 446
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 448
    :try_start_14
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v2, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_34

    .line 449
    :try_start_19
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZI)V

    .line 450
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v3, v3, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v3, :cond_2b

    .line 451
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 453
    :cond_2b
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_19 .. :try_end_2c} :catchall_31

    .line 455
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 456
    nop

    .line 457
    return-void

    .line 453
    :catchall_31
    move-exception p1

    :try_start_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    :try_start_33
    throw p1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_34

    .line 455
    :catchall_34
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getCurrentModeType()I
    .registers 5

    .line 480
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 482
    :try_start_4
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v2, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_17

    .line 483
    :try_start_9
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    iget v3, v3, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    and-int/lit8 v3, v3, 0xf

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_14

    .line 486
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 483
    return v3

    .line 484
    :catchall_14
    move-exception v3

    :try_start_15
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    :try_start_16
    throw v3
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    .line 486
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getNightMode()I
    .registers 3

    .line 544
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 545
    :try_start_5
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$300(Lcom/android/server/UiModeManagerService;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 546
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public isNightModeLocked()Z
    .registers 3

    .line 558
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 559
    :try_start_5
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$2000(Lcom/android/server/UiModeManagerService;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 560
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public isUiModeLocked()Z
    .registers 3

    .line 551
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 552
    :try_start_5
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$1900(Lcom/android/server/UiModeManagerService;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 553
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 566
    new-instance v0, Lcom/android/server/UiModeManagerService$Shell;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$2100(Lcom/android/server/UiModeManagerService;)Landroid/app/IUiModeManager$Stub;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/UiModeManagerService$Shell;-><init>(Landroid/app/IUiModeManager;)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$2100(Lcom/android/server/UiModeManagerService;)Landroid/app/IUiModeManager$Stub;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/UiModeManagerService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 567
    return-void
.end method

.method public setNightMode(I)V
    .registers 7

    .line 492
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$9;->isNightModeLocked()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1e

    .line 495
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$1400()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Night mode locked, requires MODIFY_DAY_NIGHT_MODE permission"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    return-void

    .line 498
    :cond_1e
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$900(Lcom/android/server/UiModeManagerService;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 499
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$1400()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Night mode cannot be changed before setup wizard completes."

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    return-void

    .line 502
    :cond_30
    if-eqz p1, :cond_50

    const/4 v0, 0x1

    if-eq p1, v0, :cond_50

    const/4 v0, 0x2

    if-ne p1, v0, :cond_39

    goto :goto_50

    .line 508
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_50
    :goto_50
    nop

    .line 511
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 512
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 514
    :try_start_59
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, v3, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_5e
    .catchall {:try_start_59 .. :try_end_5e} :catchall_b5

    .line 515
    :try_start_5e
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$300(Lcom/android/server/UiModeManagerService;)I

    move-result v4

    if-eq v4, p1, :cond_ac

    .line 516
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$300(Lcom/android/server/UiModeManagerService;)I

    move-result v4

    if-nez v4, :cond_73

    .line 517
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$600(Lcom/android/server/UiModeManagerService;)V

    .line 520
    :cond_73
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4, p1}, Lcom/android/server/UiModeManagerService;->access$302(Lcom/android/server/UiModeManagerService;I)I

    .line 521
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4, p1}, Lcom/android/server/UiModeManagerService;->access$1502(Lcom/android/server/UiModeManagerService;I)I

    .line 524
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->access$1600(Lcom/android/server/UiModeManagerService;)Z

    move-result p1

    if-nez p1, :cond_8a

    .line 525
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1, v0}, Lcom/android/server/UiModeManagerService;->access$1700(Lcom/android/server/UiModeManagerService;I)V

    .line 528
    :cond_8a
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->access$300(Lcom/android/server/UiModeManagerService;)I

    move-result p1

    if-nez p1, :cond_a1

    iget-object p1, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    .line 529
    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->access$1800(Lcom/android/server/UiModeManagerService;)Z

    move-result p1

    if-eqz p1, :cond_9b

    goto :goto_a1

    .line 533
    :cond_9b
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->access$500(Lcom/android/server/UiModeManagerService;)V

    goto :goto_ac

    .line 530
    :cond_a1
    :goto_a1
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->access$600(Lcom/android/server/UiModeManagerService;)V

    .line 531
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 536
    :cond_ac
    :goto_ac
    monitor-exit v3
    :try_end_ad
    .catchall {:try_start_5e .. :try_end_ad} :catchall_b2

    .line 538
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 539
    nop

    .line 540
    return-void

    .line 536
    :catchall_b2
    move-exception p1

    :try_start_b3
    monitor-exit v3
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    :try_start_b4
    throw p1
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b5

    .line 538
    :catchall_b5
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setNightModeActivated(Z)Z
    .registers 9

    .line 577
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 578
    :try_start_5
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 579
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_5f

    .line 581
    :try_start_d
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$300(Lcom/android/server/UiModeManagerService;)I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v4, :cond_26

    .line 582
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$600(Lcom/android/server/UiModeManagerService;)V

    .line 583
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    if-eqz p1, :cond_21

    .line 584
    goto :goto_22

    :cond_21
    move v5, v6

    .line 583
    :goto_22
    invoke-static {v4, v5}, Lcom/android/server/UiModeManagerService;->access$1502(Lcom/android/server/UiModeManagerService;I)I

    goto :goto_45

    .line 585
    :cond_26
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$300(Lcom/android/server/UiModeManagerService;)I

    move-result v4

    if-ne v4, v6, :cond_36

    if-eqz p1, :cond_36

    .line 587
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1, v5}, Lcom/android/server/UiModeManagerService;->access$302(Lcom/android/server/UiModeManagerService;I)I

    goto :goto_45

    .line 588
    :cond_36
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$300(Lcom/android/server/UiModeManagerService;)I

    move-result v4

    if-ne v4, v5, :cond_45

    if-nez p1, :cond_45

    .line 590
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1, v6}, Lcom/android/server/UiModeManagerService;->access$302(Lcom/android/server/UiModeManagerService;I)I

    .line 592
    :cond_45
    :goto_45
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->access$2200(Lcom/android/server/UiModeManagerService;)V

    .line 593
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->access$2300(Lcom/android/server/UiModeManagerService;)V

    .line 594
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$9;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1, v1}, Lcom/android/server/UiModeManagerService;->access$1700(Lcom/android/server/UiModeManagerService;I)V
    :try_end_54
    .catchall {:try_start_d .. :try_end_54} :catchall_5a

    .line 595
    nop

    .line 597
    :try_start_55
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 595
    return v6

    .line 597
    :catchall_5a
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 599
    :catchall_5f
    move-exception p1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_55 .. :try_end_61} :catchall_5f

    throw p1
.end method
