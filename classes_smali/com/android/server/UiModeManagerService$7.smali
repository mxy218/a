.class Lcom/android/server/UiModeManagerService$7;
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
    .param p1, "this$0"  # Lcom/android/server/UiModeManagerService;

    .line 339
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/app/IUiModeManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public disableCarMode(I)V
    .registers 7
    .param p1, "flags"  # I

    .line 361
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$7;->isUiModeLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 362
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "disableCarMode while UI mode is locked"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return-void

    .line 365
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 367
    .local v0, "ident":J
    :try_start_14
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v2, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_33

    .line 368
    :try_start_19
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZI)V

    .line 369
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v3, v3, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v3, :cond_2a

    .line 370
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v3, v4, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 372
    :cond_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_30

    .line 374
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 375
    nop

    .line 376
    return-void

    .line 372
    :catchall_30
    move-exception v3

    :try_start_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/UiModeManagerService$7;
    .end local p1  # "flags":I
    :try_start_32
    throw v3
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    .line 374
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/UiModeManagerService$7;
    .restart local p1  # "flags":I
    :catchall_33
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 465
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$1100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 466
    :cond_11
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/UiModeManagerService;->dumpImpl(Ljava/io/PrintWriter;)V

    .line 467
    return-void
.end method

.method public enableCarMode(I)V
    .registers 7
    .param p1, "flags"  # I

    .line 342
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$7;->isUiModeLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 343
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enableCarMode while UI mode is locked"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-void

    .line 346
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 348
    .local v0, "ident":J
    :try_start_14
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v2, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_34

    .line 349
    :try_start_19
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZI)V

    .line 350
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v3, v3, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v3, :cond_2b

    .line 351
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 353
    :cond_2b
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_19 .. :try_end_2c} :catchall_31

    .line 355
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 356
    nop

    .line 357
    return-void

    .line 353
    :catchall_31
    move-exception v3

    :try_start_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/UiModeManagerService$7;
    .end local p1  # "flags":I
    :try_start_33
    throw v3
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_34

    .line 355
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/UiModeManagerService$7;
    .restart local p1  # "flags":I
    :catchall_34
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getCurrentModeType()I
    .registers 5

    .line 380
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 382
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v2, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_17

    .line 383
    :try_start_9
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    iget v3, v3, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    and-int/lit8 v3, v3, 0xf

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_14

    .line 386
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 383
    return v3

    .line 384
    :catchall_14
    move-exception v3

    :try_start_15
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/UiModeManagerService$7;
    :try_start_16
    throw v3
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    .line 386
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/UiModeManagerService$7;
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getNightMode()I
    .registers 3

    .line 438
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 439
    :try_start_5
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$300(Lcom/android/server/UiModeManagerService;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 440
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public isNightModeLocked()Z
    .registers 3

    .line 452
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 453
    :try_start_5
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$1400(Lcom/android/server/UiModeManagerService;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 454
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public isUiModeLocked()Z
    .registers 3

    .line 445
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 446
    :try_start_5
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$1300(Lcom/android/server/UiModeManagerService;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 447
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"  # Ljava/io/FileDescriptor;
    .param p2, "out"  # Ljava/io/FileDescriptor;
    .param p3, "err"  # Ljava/io/FileDescriptor;
    .param p4, "args"  # [Ljava/lang/String;
    .param p5, "callback"  # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"  # Landroid/os/ResultReceiver;

    .line 460
    new-instance v0, Lcom/android/server/UiModeManagerService$Shell;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$1500(Lcom/android/server/UiModeManagerService;)Landroid/app/IUiModeManager$Stub;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/UiModeManagerService$Shell;-><init>(Landroid/app/IUiModeManager;)V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$1500(Lcom/android/server/UiModeManagerService;)Landroid/app/IUiModeManager$Stub;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/UiModeManagerService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 461
    return-void
.end method

.method public setNightMode(I)V
    .registers 8
    .param p1, "mode"  # I

    .line 392
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$7;->isNightModeLocked()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1e

    .line 395
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Night mode locked, requires MODIFY_DAY_NIGHT_MODE permission"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return-void

    .line 398
    :cond_1e
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$700(Lcom/android/server/UiModeManagerService;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 399
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Night mode cannot be changed before setup wizard completes."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-void

    .line 402
    :cond_30
    if-eqz p1, :cond_50

    const/4 v0, 0x1

    if-eq p1, v0, :cond_50

    const/4 v0, 0x2

    if-ne p1, v0, :cond_39

    goto :goto_50

    .line 408
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_50
    :goto_50
    nop

    .line 411
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 412
    .local v0, "user":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 414
    .local v1, "ident":J
    :try_start_59
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, v3, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_5e
    .catchall {:try_start_59 .. :try_end_5e} :catchall_ac

    .line 415
    :try_start_5e
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$300(Lcom/android/server/UiModeManagerService;)I

    move-result v4

    if-eq v4, p1, :cond_a3

    .line 417
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$1200(Lcom/android/server/UiModeManagerService;)Z

    move-result v4

    if-nez v4, :cond_98

    .line 418
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "ui_night_mode"

    invoke-static {v4, v5, p1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 421
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->isPrimaryUser()Z

    move-result v4

    if-eqz v4, :cond_98

    .line 422
    const-string/jumbo v4, "persist.sys.theme"

    .line 423
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 422
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :cond_98
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4, p1}, Lcom/android/server/UiModeManagerService;->access$302(Lcom/android/server/UiModeManagerService;I)I

    .line 428
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$7;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 430
    :cond_a3
    monitor-exit v3
    :try_end_a4
    .catchall {:try_start_5e .. :try_end_a4} :catchall_a9

    .line 432
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 433
    nop

    .line 434
    return-void

    .line 430
    :catchall_a9
    move-exception v4

    :try_start_aa
    monitor-exit v3
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    .end local v0  # "user":I
    .end local v1  # "ident":J
    .end local p0  # "this":Lcom/android/server/UiModeManagerService$7;
    .end local p1  # "mode":I
    :try_start_ab
    throw v4
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_ac

    .line 432
    .restart local v0  # "user":I
    .restart local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/UiModeManagerService$7;
    .restart local p1  # "mode":I
    :catchall_ac
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method
