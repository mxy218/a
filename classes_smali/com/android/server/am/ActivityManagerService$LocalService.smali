.class public final Lcom/android/server/am/ActivityManagerService$LocalService;
.super Landroid/app/ActivityManagerInternal;
.source "ActivityManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .line 17774
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/app/ActivityManagerInternal;-><init>()V

    return-void
.end method

.method private isSplitConfigurationChange(I)Z
    .registers 2

    .line 18383
    and-int/lit16 p1, p1, 0x1004

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method


# virtual methods
.method public broadcastCloseSystemDialogs(Ljava/lang/String;)V
    .registers 24

    .line 18388
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18389
    new-instance v6, Landroid/content/Intent;

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18390
    const/high16 v3, 0x50000000

    invoke-virtual {v6, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18392
    if-eqz v1, :cond_1e

    .line 18393
    const-string/jumbo v3, "reason"

    invoke-virtual {v6, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18396
    :cond_1e
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, 0x3e8

    .line 18397
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    .line 18398
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v20

    const/16 v21, -0x1

    .line 18396
    invoke-virtual/range {v3 .. v21}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 18399
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_7 .. :try_end_3f} :catchall_43

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18400
    return-void

    .line 18399
    :catchall_43
    move-exception v0

    :try_start_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public broadcastGlobalConfigurationChanged(IZ)V
    .registers 25

    .line 18339
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18340
    new-instance v5, Landroid/content/Intent;

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18341
    const/high16 v2, 0x70200000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18345
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v17, 0x3e8

    .line 18346
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18

    .line 18347
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v19

    const/16 v20, -0x1

    .line 18345
    invoke-virtual/range {v2 .. v20}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 18348
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_70

    .line 18349
    new-instance v6, Landroid/content/Intent;

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18350
    const/high16 v2, 0x11200000

    invoke-virtual {v6, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18353
    if-nez p2, :cond_4b

    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v2, :cond_50

    .line 18354
    :cond_4b
    const/high16 v2, 0x40000000  # 2.0f

    invoke-virtual {v6, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18356
    :cond_50
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget v17, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v18, 0x3e8

    .line 18357
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    .line 18358
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v20

    const/16 v21, -0x1

    .line 18356
    invoke-virtual/range {v3 .. v21}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 18363
    :cond_70
    if-nez p2, :cond_a9

    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActivityManagerService$LocalService;->isSplitConfigurationChange(I)Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 18364
    new-instance v6, Landroid/content/Intent;

    const-string v2, "android.intent.action.SPLIT_CONFIGURATION_CHANGED"

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18365
    const/high16 v2, 0x21000000

    invoke-virtual {v6, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 18369
    const-string v2, "android.permission.INSTALL_PACKAGES"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v12

    .line 18371
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget v17, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v18, 0x3e8

    .line 18373
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v20

    const/16 v21, -0x1

    .line 18371
    invoke-virtual/range {v3 .. v21}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 18375
    :cond_a9
    monitor-exit v1
    :try_end_aa
    .catchall {:try_start_5 .. :try_end_aa} :catchall_ae

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18376
    return-void

    .line 18375
    :catchall_ae
    move-exception v0

    :try_start_af
    monitor-exit v1
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public broadcastIntentInPackage(Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZIZ)I
    .registers 36

    .line 18234
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18235
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move/from16 v17, p15

    move/from16 v18, p16

    invoke-virtual/range {v2 .. v18}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentInPackage(Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZIZ)I

    move-result v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_33

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 18239
    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public canStartMoreUsers()Z
    .registers 2

    .line 17964
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->canStartMoreUsers()Z

    move-result v0

    return v0
.end method

.method public checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 17777
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public cleanUpServices(ILandroid/content/ComponentName;Landroid/content/Intent;)V
    .registers 6

    .line 18280
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18281
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ActiveServices;->cleanUpServices(ILandroid/content/ComponentName;Landroid/content/Intent;)V

    .line 18282
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18283
    return-void

    .line 18282
    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public clearPendingBackup(I)V
    .registers 3

    .line 18485
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, p1}, Lcom/android/server/am/ActivityManagerService;->access$1700(Lcom/android/server/am/ActivityManagerService;I)V

    .line 18486
    return-void
.end method

.method public clearPendingIntentAllowBgActivityStarts(Landroid/content/IIntentSender;Landroid/os/IBinder;)V
    .registers 4

    .line 17844
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_1b

    .line 17845
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clearPendingIntentAllowBgActivityStarts(): not a PendingIntentRecord: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17847
    return-void

    .line 17849
    :cond_1b
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_1e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 17850
    check-cast p1, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {p1, p2}, Lcom/android/server/am/PendingIntentRecord;->clearAllowBgActivityStarts(Landroid/os/IBinder;)V

    .line 17851
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_2b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 17852
    return-void

    .line 17851
    :catchall_2b
    move-exception p1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public disconnectActivityFromServices(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    .line 18269
    check-cast p1, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 18271
    check-cast p2, Ljava/util/HashSet;

    .line 18272
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18273
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ConnectionRecord;

    .line 18274
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, p1}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;)V

    .line 18275
    goto :goto_e

    .line 18276
    :cond_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_28

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18277
    return-void

    .line 18276
    :catchall_28
    move-exception p1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 18011
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 18012
    return-void
.end method

.method public ensureBootCompleted()V
    .registers 2

    .line 18292
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    .line 18293
    return-void
.end method

.method public ensureNotSpecialUser(I)V
    .registers 3

    .line 18149
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->ensureNotSpecialUser(I)V

    .line 18150
    return-void
.end method

.method public finishBooting()V
    .registers 2

    .line 18216
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    .line 18217
    return-void
.end method

.method public finishUserSwitch(Ljava/lang/Object;)V
    .registers 3

    .line 18164
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    check-cast p1, Lcom/android/server/am/UserState;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->finishUserSwitch(Lcom/android/server/am/UserState;)V

    .line 18165
    return-void
.end method

.method public getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;
    .registers 4

    .line 18287
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    return-object p1
.end method

.method public getActivityPresentationInfo(Landroid/os/IBinder;)Landroid/content/pm/ActivityPresentationInfo;
    .registers 6

    .line 18183
    nop

    .line 18185
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityDisplayId(Landroid/os/IBinder;)I

    move-result v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_a

    .line 18187
    goto :goto_c

    .line 18186
    :catch_a
    move-exception v0

    const/4 v0, -0x1

    .line 18189
    :goto_c
    new-instance v1, Landroid/content/pm/ActivityPresentationInfo;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 18191
    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-direct {v1, v2, v0, p1}, Landroid/content/pm/ActivityPresentationInfo;-><init>(IILandroid/content/ComponentName;)V

    .line 18189
    return-object v1
.end method

.method public getCurrentProfileIds()[I
    .registers 2

    .line 18139
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUser()Landroid/content/pm/UserInfo;
    .registers 2

    .line 18144
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUserId()I
    .registers 2

    .line 18016
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    return v0
.end method

.method public getMaxRunningUsers()I
    .registers 2

    .line 17979
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v0, v0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    return v0
.end method

.method public getMemoryStateForProcesses()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ProcessMemoryState;",
            ">;"
        }
    .end annotation

    .line 17991
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17992
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1

    .line 17993
    const/4 v2, 0x0

    :try_start_b
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->size()I

    move-result v3

    :goto_13
    if-ge v2, v3, :cond_30

    .line 17994
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    .line 17995
    new-instance v5, Landroid/app/ProcessMemoryState;

    iget v6, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v7, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-direct {v5, v6, v7, v8, v4}, Landroid/app/ProcessMemoryState;-><init>(IILjava/lang/String;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17993
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 17998
    :cond_30
    monitor-exit v1

    .line 17999
    return-object v0

    .line 17998
    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_b .. :try_end_34} :catchall_32

    throw v0
.end method

.method public getStorageMountMode(II)I
    .registers 4

    .line 18464
    const/16 v0, 0x7d0

    if-eq p2, v0, :cond_1f

    if-nez p2, :cond_7

    goto :goto_1f

    .line 18467
    :cond_7
    iget-object p2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter p2

    .line 18468
    :try_start_c
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    .line 18469
    if-nez p1, :cond_18

    const/4 p1, 0x0

    goto :goto_1a

    :cond_18
    iget p1, p1, Lcom/android/server/am/ProcessRecord;->mountMode:I

    :goto_1a
    monitor-exit p2

    return p1

    .line 18470
    :catchall_1c
    move-exception p1

    monitor-exit p2
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_1c

    throw p1

    .line 18465
    :cond_1f
    :goto_1f
    const/4 p1, 0x6

    return p1
.end method

.method public getTaskIdForActivity(Landroid/os/IBinder;Z)I
    .registers 5

    .line 18176
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18177
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityManagerService;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 18178
    :catchall_11
    move-exception p1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getUidProcessState(I)I
    .registers 3

    .line 17872
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->getUidState(I)I

    move-result p1

    return p1
.end method

.method public handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I
    .registers 17

    .line 18005
    move-object v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hasRunningActivity(ILjava/lang/String;)Z
    .registers 8

    .line 18062
    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    .line 18064
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18065
    move v2, v0

    :goto_b
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v3, v3, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3b

    .line 18066
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v3, v3, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 18067
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v4, p1, :cond_28

    .line 18068
    goto :goto_38

    .line 18070
    :cond_28
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/server/wm/WindowProcessController;->hasRunningActivity(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 18071
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_40

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 p1, 0x1

    return p1

    .line 18065
    :cond_38
    :goto_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 18074
    :cond_3b
    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_40

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18075
    return v0

    .line 18074
    :catchall_40
    move-exception p1

    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public hasRunningForegroundService(II)Z
    .registers 8

    .line 18499
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18500
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v3, v3, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 18501
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v3, v3, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 18502
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v4, p1, :cond_25

    .line 18503
    goto :goto_32

    .line 18506
    :cond_25
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getForegroundServiceTypes()I

    move-result v3

    and-int/2addr v3, p2

    if-eqz v3, :cond_32

    .line 18507
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_3a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 p1, 0x1

    return p1

    .line 18500
    :cond_32
    :goto_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 18510
    :cond_35
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_3a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18512
    return v1

    .line 18510
    :catchall_3a
    move-exception p1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public hasStartedUserState(I)Z
    .registers 3

    .line 18159
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->hasStartedUserState(I)Z

    move-result p1

    return p1
.end method

.method public inputDispatchingTimedOut(IZLjava/lang/String;)J
    .registers 6

    .line 18321
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18322
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-wide p1

    .line 18324
    :catchall_11
    move-exception p1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public inputDispatchingTimedOut(Ljava/lang/Object;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;)Z
    .registers 16

    .line 18331
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v1, p1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    move-object v5, p5

    check-cast v5, Lcom/android/server/wm/WindowProcessController;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService;->inputDispatchingTimedOut(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isActiveInstrumentation(I)Z
    .registers 3

    .line 18527
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, p1}, Lcom/android/server/am/ActivityManagerService;->access$1800(Lcom/android/server/am/ActivityManagerService;I)Z

    move-result p1

    return p1
.end method

.method public isActivityStartsLoggingEnabled()Z
    .registers 2

    .line 18304
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagActivityStartsLoggingEnabled:Z

    return v0
.end method

.method public isAppBad(Landroid/content/pm/ApplicationInfo;)Z
    .registers 3

    .line 18480
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, p1}, Lcom/android/server/am/ActivityManagerService;->access$1600(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    return p1
.end method

.method public isAppForeground(I)Z
    .registers 3

    .line 18475
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, p1}, Lcom/android/server/am/ActivityManagerService;->access$1500(Lcom/android/server/am/ActivityManagerService;I)Z

    move-result p1

    return p1
.end method

.method public isBackgroundActivityStartsEnabled()Z
    .registers 2

    .line 18308
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundActivityStartsEnabled:Z

    return v0
.end method

.method public isBooted()Z
    .registers 2

    .line 18211
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    return v0
.end method

.method public isBooting()Z
    .registers 2

    .line 18201
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    return v0
.end method

.method public isCurrentProfile(I)Z
    .registers 3

    .line 18154
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->isCurrentProfile(I)Z

    move-result p1

    return p1
.end method

.method public isRuntimeRestarted()Z
    .registers 2

    .line 17959
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0}, Lcom/android/server/SystemServiceManager;->isRuntimeRestarted()Z

    move-result v0

    return v0
.end method

.method public isSystemReady()Z
    .registers 2

    .line 17878
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    return v0
.end method

.method public isUidActive(I)Z
    .registers 4

    .line 17984
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 17985
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->isUidActiveLocked(I)Z

    move-result p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 17986
    :catchall_11
    move-exception p1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public isUserRunning(II)Z
    .registers 4

    .line 18022
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result p1

    return p1
.end method

.method public killAllBackgroundProcessesExcept(II)V
    .registers 5

    .line 18404
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18405
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityManagerService;->killAllBackgroundProcessesExcept(II)V

    .line 18407
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18408
    return-void

    .line 18407
    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public killForegroundAppsForUser(I)V
    .registers 12

    .line 17794
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 17795
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17796
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 17797
    const/4 v3, 0x0

    move v4, v3

    :goto_1b
    if-ge v4, v2, :cond_58

    .line 17798
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v5, v5, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 17799
    invoke-virtual {v5}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    .line 17800
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 17801
    move v7, v3

    :goto_32
    if-ge v7, v6, :cond_55

    .line 17802
    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 17803
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v9

    if-eqz v9, :cond_41

    .line 17805
    goto :goto_52

    .line 17807
    :cond_41
    iget-boolean v9, v8, Lcom/android/server/am/ProcessRecord;->removed:Z

    if-nez v9, :cond_4f

    iget v9, v8, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v9, p1, :cond_52

    .line 17808
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->hasForegroundActivities()Z

    move-result v9

    if-eqz v9, :cond_52

    .line 17809
    :cond_4f
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17801
    :cond_52
    :goto_52
    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    .line 17797
    :cond_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 17814
    :cond_58
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 17815
    move v2, v3

    :goto_5d
    if-ge v2, p1, :cond_72

    .line 17816
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    const-string v6, "kill all fg"

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v3, v7, v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    .line 17815
    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    .line 17818
    :cond_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_3 .. :try_end_73} :catchall_77

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 17819
    return-void

    .line 17818
    :catchall_77
    move-exception p1

    :try_start_78
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public killProcess(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    .line 18050
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18051
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    .line 18053
    if-eqz p1, :cond_17

    .line 18054
    iget-object p2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v2, p3}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    .line 18057
    :cond_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18058
    return-void

    .line 18057
    :catchall_1c
    move-exception p1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public killProcessesForRemovedTask(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 18031
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18032
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 18033
    nop

    .line 18034
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowProcessController;

    .line 18035
    iget-object v2, v2, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 18036
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-nez v3, :cond_2c

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    .line 18037
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 18038
    const-string/jumbo v3, "remove task"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto :goto_31

    .line 18042
    :cond_2c
    const-string/jumbo v3, "remove task"

    iput-object v3, v2, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    .line 18032
    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 18045
    :cond_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_39

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18046
    return-void

    .line 18045
    :catchall_39
    move-exception p1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public notifyNetworkPolicyRulesUpdated(IJ)V
    .registers 8

    .line 17920
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 17921
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessList;->getUidRecordLocked(I)Lcom/android/server/am/UidRecord;

    move-result-object p1

    .line 17922
    if-nez p1, :cond_15

    .line 17927
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_3c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 17929
    :cond_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_3c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 17930
    iget-object v1, p1, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 17931
    :try_start_1c
    iget-wide v2, p1, Lcom/android/server/am/UidRecord;->lastNetworkUpdatedProcStateSeq:J

    cmp-long v0, v2, p2

    if-ltz v0, :cond_24

    .line 17936
    monitor-exit v1

    return-void

    .line 17938
    :cond_24
    iput-wide p2, p1, Lcom/android/server/am/UidRecord;->lastNetworkUpdatedProcStateSeq:J

    .line 17939
    iget-wide v2, p1, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    cmp-long p2, v2, p2

    if-lez p2, :cond_2e

    .line 17945
    monitor-exit v1

    return-void

    .line 17947
    :cond_2e
    iget-boolean p2, p1, Lcom/android/server/am/UidRecord;->waitingForNetwork:Z

    if-eqz p2, :cond_37

    .line 17952
    iget-object p1, p1, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 17954
    :cond_37
    monitor-exit v1

    .line 17955
    return-void

    .line 17954
    :catchall_39
    move-exception p1

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_1c .. :try_end_3b} :catchall_39

    throw p1

    .line 17929
    :catchall_3c
    move-exception p1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public onWakefulnessChanged(I)V
    .registers 3

    .line 17782
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->onWakefulnessChanged(I)V

    .line 17783
    return-void
.end method

.method public prepareForPossibleShutdown()V
    .registers 2

    .line 18494
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->prepareForPossibleShutdown()V

    .line 18495
    return-void
.end method

.method public registerProcessObserver(Landroid/app/IProcessObserver;)V
    .registers 3

    .line 18517
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 18518
    return-void
.end method

.method public reportCurKeyguardUsageEvent(Z)V
    .registers 4

    .line 18312
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18313
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    if-eqz p1, :cond_d

    .line 18314
    const/16 p1, 0x11

    goto :goto_f

    .line 18315
    :cond_d
    const/16 p1, 0x12

    .line 18313
    :goto_f
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->reportGlobalUsageEventLocked(I)V

    .line 18316
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18317
    return-void

    .line 18316
    :catchall_17
    move-exception p1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public scheduleAppGcs()V
    .registers 3

    .line 18169
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18170
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 18171
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18172
    return-void

    .line 18171
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public sendForegroundProfileChanged(I)V
    .registers 3

    .line 18129
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->sendForegroundProfileChanged(I)V

    .line 18130
    return-void
.end method

.method public setBooted(Z)V
    .registers 3

    .line 18206
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-boolean p1, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    .line 18207
    return-void
.end method

.method public setBooting(Z)V
    .registers 3

    .line 18196
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-boolean p1, v0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 18197
    return-void
.end method

.method public setDebugFlagsForStartingActivity(Landroid/content/pm/ActivityInfo;ILandroid/app/ProfilerInfo;Ljava/lang/Object;)V
    .registers 10

    .line 18435
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18441
    monitor-enter p4
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_47

    .line 18442
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_17

    .line 18443
    :try_start_b
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->setDebugApp(Ljava/lang/String;ZZ)V

    goto :goto_17

    .line 18458
    :catchall_15
    move-exception p1

    goto :goto_45

    .line 18446
    :cond_17
    :goto_17
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_24

    .line 18447
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->setNativeDebuggingAppLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 18450
    :cond_24
    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_31

    .line 18451
    iget-object p2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/android/server/am/ActivityManagerService;->setTrackAllocationApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 18454
    :cond_31
    if-eqz p3, :cond_3c

    .line 18455
    iget-object p2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {p2, v1, p1, p3}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/app/ProfilerInfo;)V

    .line 18457
    :cond_3c
    invoke-virtual {p4}, Ljava/lang/Object;->notify()V

    .line 18458
    monitor-exit p4
    :try_end_40
    .catchall {:try_start_b .. :try_end_40} :catchall_15

    .line 18459
    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_47

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18460
    return-void

    .line 18458
    :goto_45
    :try_start_45
    monitor-exit p4
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_15

    :try_start_46
    throw p1

    .line 18459
    :catchall_47
    move-exception p1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_47

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setDeviceIdleWhitelist([I[I)V
    .registers 5

    .line 17856
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 17857
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p1, v1, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleWhitelist:[I

    .line 17858
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p1, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleExceptIdleWhitelist:[I

    .line 17859
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 17860
    return-void

    .line 17859
    :catchall_13
    move-exception p1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setHasOverlayUi(IZ)V
    .registers 7

    .line 17890
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 17892
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_52

    .line 17893
    :try_start_b
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    .line 17894
    if-nez v2, :cond_32

    .line 17895
    const-string p2, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setHasOverlayUi called on unknown pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17896
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_b .. :try_end_2d} :catchall_4f

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_52

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 17898
    :cond_32
    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_4f

    .line 17899
    :try_start_33
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->hasOverlayUi()Z

    move-result p1

    if-ne p1, p2, :cond_3e

    .line 17900
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_52

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 17902
    :cond_3e
    :try_start_3e
    invoke-virtual {v2, p2}, Lcom/android/server/am/ProcessRecord;->setHasOverlayUi(Z)V

    .line 17904
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 p2, 0x1

    const-string/jumbo v1, "updateOomAdj_uiVisibility"

    invoke-virtual {p1, v2, p2, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    .line 17905
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3e .. :try_end_4b} :catchall_52

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 17906
    return-void

    .line 17898
    :catchall_4f
    move-exception p1

    :try_start_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    :try_start_51
    throw p1

    .line 17905
    :catchall_52
    move-exception p1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_52

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setPendingIntentAllowBgActivityStarts(Landroid/content/IIntentSender;Landroid/os/IBinder;I)V
    .registers 5

    .line 17831
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_1c

    .line 17832
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "setPendingIntentAllowBgActivityStarts(): not a PendingIntentRecord: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 17834
    return-void

    .line 17836
    :cond_1c
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_1f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 17837
    check-cast p1, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/PendingIntentRecord;->setAllowBgActivityStarts(Landroid/os/IBinder;I)V

    .line 17838
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_2c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 17839
    return-void

    .line 17838
    :catchall_2c
    move-exception p1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setPendingIntentWhitelistDuration(Landroid/content/IIntentSender;Landroid/os/IBinder;J)V
    .registers 6

    .line 17824
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/PendingIntentController;->setPendingIntentWhitelistDuration(Landroid/content/IIntentSender;Landroid/os/IBinder;J)V

    .line 17826
    return-void
.end method

.method public setSwitchingFromSystemUserMessage(Ljava/lang/String;)V
    .registers 3

    .line 17969
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->setSwitchingFromSystemUserMessage(Ljava/lang/String;)V

    .line 17970
    return-void
.end method

.method public setSwitchingToSystemUserMessage(Ljava/lang/String;)V
    .registers 3

    .line 17974
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->setSwitchingToSystemUserMessage(Ljava/lang/String;)V

    .line 17975
    return-void
.end method

.method public shouldConfirmCredentials(I)Z
    .registers 3

    .line 18134
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->shouldConfirmCredentials(I)Z

    move-result p1

    return p1
.end method

.method public startIsolatedProcess(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)Z
    .registers 14

    .line 17788
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->startIsolatedProcess(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public startProcess(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZZLjava/lang/String;Landroid/content/ComponentName;)V
    .registers 22

    move-object v0, p0

    .line 18414
    const-wide/16 v1, 0x40

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 18415
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startProcess:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_23

    .line 18414
    :cond_21
    move-object/from16 v4, p1

    .line 18418
    :goto_23
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_53

    :try_start_26
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18422
    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x0

    new-instance v10, Lcom/android/server/am/HostingRecord;

    move/from16 v0, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct {v10, v6, v7, v0}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Z)V

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {v5 .. v14}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZZ)Lcom/android/server/am/ProcessRecord;

    .line 18426
    monitor-exit v3
    :try_end_45
    .catchall {:try_start_26 .. :try_end_45} :catchall_4d

    :try_start_45
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_53

    .line 18428
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 18429
    nop

    .line 18430
    return-void

    .line 18426
    :catchall_4d
    move-exception v0

    :try_start_4e
    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    :try_start_4f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_53

    .line 18428
    :catchall_53
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public startServiceInPackage(ILandroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;IZ)Landroid/content/ComponentName;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 18246
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18249
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_30

    .line 18252
    :try_start_b
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    const/4 v5, 0x0

    const/4 v8, -0x1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move v9, p1

    move/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/am/ActiveServices;->startServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IIZLjava/lang/String;IZ)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_2b

    .line 18256
    :try_start_22
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 18257
    nop

    .line 18258
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_30

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 18256
    :catchall_2b
    move-exception v0

    :try_start_2c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 18259
    :catchall_30
    move-exception v0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_30

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public tempWhitelistForPendingIntent(IIIJLjava/lang/String;)V
    .registers 15

    .line 18222
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18223
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityManagerService;->tempWhitelistForPendingIntentLocked(IIIJLjava/lang/String;)V

    .line 18225
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18226
    return-void

    .line 18225
    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public trimApplications()V
    .registers 3

    .line 18027
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "updateOomAdj_activityChange"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->trimApplications(Ljava/lang/String;)V

    .line 18028
    return-void
.end method

.method public unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    .registers 3

    .line 18522
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 18523
    return-void
.end method

.method public updateActivityUsageStats(Landroid/content/ComponentName;IILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 13

    .line 18103
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18104
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->updateActivityUsageStats(Landroid/content/ComponentName;IILandroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 18106
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18107
    return-void

    .line 18106
    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public updateBatteryStats(Landroid/content/ComponentName;IIZ)V
    .registers 7

    .line 18095
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18096
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService;->updateBatteryStats(Landroid/content/ComponentName;IIZ)V

    .line 18097
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18098
    return-void

    .line 18097
    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public updateCpuStats()V
    .registers 3

    .line 18087
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18088
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 18089
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18090
    return-void

    .line 18089
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public updateDeviceIdleTempWhitelist([IIZ)V
    .registers 6

    .line 17864
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 17865
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p1, v1, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleTempWhitelist:[I

    .line 17866
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->setAppIdTempWhitelistStateLocked(IZ)V

    .line 17867
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 17868
    return-void

    .line 17867
    :catchall_14
    move-exception p1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public updateForegroundTimeIfOnBattery(Ljava/lang/String;IJ)V
    .registers 7

    .line 18112
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18113
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->isOnBattery()Z

    move-result v1

    if-nez v1, :cond_15

    .line 18114
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_31

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 18116
    :cond_15
    :try_start_15
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v1

    .line 18117
    monitor-enter v1
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_31

    .line 18118
    nop

    .line 18119
    :try_start_1f
    invoke-virtual {v1, p2, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object p1

    .line 18120
    if-eqz p1, :cond_28

    .line 18121
    invoke-virtual {p1, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addForegroundTimeLocked(J)V

    .line 18123
    :cond_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_2e

    .line 18124
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_31

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18125
    return-void

    .line 18123
    :catchall_2e
    move-exception p1

    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    throw p1

    .line 18124
    :catchall_31
    move-exception p1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_31

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public updateOomAdj()V
    .registers 4

    .line 18080
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18081
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "updateOomAdj_meh"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 18082
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18083
    return-void

    .line 18082
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public updateOomLevelsForDisplay(I)V
    .registers 4

    .line 18296
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter p1

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18297
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_17

    .line 18298
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V

    .line 18300
    :cond_17
    monitor-exit p1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18301
    return-void

    .line 18300
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit p1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method
