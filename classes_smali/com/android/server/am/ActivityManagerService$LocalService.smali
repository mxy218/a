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
    .param p1, "this$0"  # Lcom/android/server/am/ActivityManagerService;

    .line 18649
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/app/ActivityManagerInternal;-><init>()V

    return-void
.end method

.method private isSplitConfigurationChange(I)Z
    .registers 3
    .param p1, "configDiff"  # I

    .line 19263
    and-int/lit16 v0, p1, 0x1004

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method


# virtual methods
.method public broadcastCloseSystemDialogs(Ljava/lang/String;)V
    .registers 26
    .param p1, "reason"  # Ljava/lang/String;

    .line 19268
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 19269
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19270
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v4, 0x50000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 19272
    if-eqz v2, :cond_1e

    .line 19273
    const-string/jumbo v4, "reason"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19276
    :cond_1e
    iget-object v5, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    const/16 v20, 0x3e8

    .line 19277
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v21

    .line 19278
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v22

    const/16 v23, -0x1

    .line 19276
    move-object v8, v0

    invoke-virtual/range {v5 .. v23}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 19279
    nop

    .end local v0  # "intent":Landroid/content/Intent;
    monitor-exit v3
    :try_end_43
    .catchall {:try_start_7 .. :try_end_43} :catchall_47

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 19280
    return-void

    .line 19279
    :catchall_47
    move-exception v0

    :try_start_48
    monitor-exit v3
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public broadcastGlobalConfigurationChanged(IZ)V
    .registers 27
    .param p1, "changes"  # I
    .param p2, "initLocale"  # Z

    .line 19219
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 19220
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19221
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x70200000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 19225
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    sget v18, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v19, 0x3e8

    .line 19226
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v20

    .line 19227
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v21

    const/16 v22, -0x1

    .line 19225
    move-object v7, v0

    invoke-virtual/range {v4 .. v22}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 19228
    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_77

    .line 19229
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 19230
    const/high16 v3, 0x11200000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 19233
    if-nez p2, :cond_4f

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v3, :cond_54

    .line 19234
    :cond_4f
    const/high16 v3, 0x40000000  # 2.0f

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 19236
    :cond_54
    iget-object v5, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    sget v19, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v20, 0x3e8

    .line 19237
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v21

    .line 19238
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v22

    const/16 v23, -0x1

    .line 19236
    move-object v8, v0

    invoke-virtual/range {v5 .. v23}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 19243
    :cond_77
    if-nez p2, :cond_b4

    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActivityManagerService$LocalService;->isSplitConfigurationChange(I)Z

    move-result v3

    if-eqz v3, :cond_b4

    .line 19244
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SPLIT_CONFIGURATION_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 19245
    const/high16 v3, 0x21000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 19249
    const-string v3, "android.permission.INSTALL_PACKAGES"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v14

    .line 19251
    .local v14, "permissions":[Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    sget v19, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v20, 0x3e8

    .line 19253
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v21

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v22

    const/16 v23, -0x1

    .line 19251
    move-object v8, v0

    invoke-virtual/range {v5 .. v23}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 19255
    .end local v0  # "intent":Landroid/content/Intent;
    .end local v14  # "permissions":[Ljava/lang/String;
    :cond_b4
    monitor-exit v2
    :try_end_b5
    .catchall {:try_start_5 .. :try_end_b5} :catchall_b9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 19256
    return-void

    .line 19255
    :catchall_b9
    move-exception v0

    :try_start_ba
    monitor-exit v2
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_b9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public broadcastIntentInPackage(Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZIZ)I
    .registers 37
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "realCallingUid"  # I
    .param p4, "realCallingPid"  # I
    .param p5, "intent"  # Landroid/content/Intent;
    .param p6, "resolvedType"  # Ljava/lang/String;
    .param p7, "resultTo"  # Landroid/content/IIntentReceiver;
    .param p8, "resultCode"  # I
    .param p9, "resultData"  # Ljava/lang/String;
    .param p10, "resultExtras"  # Landroid/os/Bundle;
    .param p11, "requiredPermission"  # Ljava/lang/String;
    .param p12, "bOptions"  # Landroid/os/Bundle;
    .param p13, "serialized"  # Z
    .param p14, "sticky"  # Z
    .param p15, "userId"  # I
    .param p16, "allowBackgroundActivityStarts"  # Z

    .line 19114
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 19115
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    move/from16 v19, p16

    invoke-virtual/range {v3 .. v19}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentInPackage(Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZIZ)I

    move-result v0

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_33

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 19119
    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public canStartMoreUsers()Z
    .registers 2

    .line 18844
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->canStartMoreUsers()Z

    move-result v0

    return v0
.end method

.method public checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p1, "authority"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 18652
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cleanUpServices(ILandroid/content/ComponentName;Landroid/content/Intent;)V
    .registers 6
    .param p1, "userId"  # I
    .param p2, "component"  # Landroid/content/ComponentName;
    .param p3, "baseIntent"  # Landroid/content/Intent;

    .line 19160
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 19161
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ActiveServices;->cleanUpServices(ILandroid/content/ComponentName;Landroid/content/Intent;)V

    .line 19162
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 19163
    return-void

    .line 19162
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public clearPendingBackup(I)V
    .registers 3
    .param p1, "userId"  # I

    .line 19362
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, p1}, Lcom/android/server/am/ActivityManagerService;->access$1900(Lcom/android/server/am/ActivityManagerService;I)V

    .line 19363
    return-void
.end method

.method public clearPendingIntentAllowBgActivityStarts(Landroid/content/IIntentSender;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "target"  # Landroid/content/IIntentSender;
    .param p2, "whitelistToken"  # Landroid/os/IBinder;

    .line 18724
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_1b

    .line 18725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearPendingIntentAllowBgActivityStarts(): not a PendingIntentRecord: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18727
    return-void

    .line 18729
    :cond_1b
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_1e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18730
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v1, p2}, Lcom/android/server/am/PendingIntentRecord;->clearAllowBgActivityStarts(Landroid/os/IBinder;)V

    .line 18731
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_2c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18732
    return-void

    .line 18731
    :catchall_2c
    move-exception v1

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public disconnectActivityFromServices(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10
    .param p1, "connectionHolder"  # Ljava/lang/Object;
    .param p2, "conns"  # Ljava/lang/Object;

    .line 19149
    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 19151
    .local v0, "holder":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    move-object v1, p2

    check-cast v1, Ljava/util/HashSet;

    .line 19152
    .local v1, "toDisconnect":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/server/am/ConnectionRecord;>;"
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 19153
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    .line 19154
    .local v4, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6, v0}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;)V

    .line 19155
    .end local v4  # "cr":Lcom/android/server/am/ConnectionRecord;
    goto :goto_10

    .line 19156
    :cond_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_9 .. :try_end_26} :catchall_2a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 19157
    return-void

    .line 19156
    :catchall_2a
    move-exception v3

    :try_start_2b
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "permission"  # Ljava/lang/String;
    .param p2, "func"  # Ljava/lang/String;

    .line 18891
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 18892
    return-void
.end method

.method public ensureBootCompleted()V
    .registers 2

    .line 19172
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    .line 19173
    return-void
.end method

.method public ensureNotSpecialUser(I)V
    .registers 3
    .param p1, "userId"  # I

    .line 19029
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->ensureNotSpecialUser(I)V

    .line 19030
    return-void
.end method

.method public finishBooting()V
    .registers 2

    .line 19096
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    .line 19097
    return-void
.end method

.method public finishUserSwitch(Ljava/lang/Object;)V
    .registers 4
    .param p1, "uss"  # Ljava/lang/Object;

    .line 19044
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object v1, p1

    check-cast v1, Lcom/android/server/am/UserState;

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->finishUserSwitch(Lcom/android/server/am/UserState;)V

    .line 19045
    return-void
.end method

.method public getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;
    .registers 4
    .param p1, "aInfo"  # Landroid/content/pm/ActivityInfo;
    .param p2, "userId"  # I

    .line 19167
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public getActivityPresentationInfo(Landroid/os/IBinder;)Landroid/content/pm/ActivityPresentationInfo;
    .registers 6
    .param p1, "token"  # Landroid/os/IBinder;

    .line 19063
    const/4 v0, -0x1

    .line 19065
    .local v0, "displayId":I
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityDisplayId(Landroid/os/IBinder;)I

    move-result v1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_b

    move v0, v1

    .line 19067
    goto :goto_c

    .line 19066
    :catch_b
    move-exception v1

    .line 19069
    :goto_c
    new-instance v1, Landroid/content/pm/ActivityPresentationInfo;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 19071
    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Landroid/content/pm/ActivityPresentationInfo;-><init>(IILandroid/content/ComponentName;)V

    .line 19069
    return-object v1
.end method

.method public getCurrentProfileIds()[I
    .registers 2

    .line 19019
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUser()Landroid/content/pm/UserInfo;
    .registers 2

    .line 19024
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUserId()I
    .registers 2

    .line 18896
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentUserIdLU()I

    move-result v0

    return v0
.end method

.method public getMaxRunningUsers()I
    .registers 2

    .line 18859
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v0, v0, Lcom/android/server/am/UserController;->mMaxRunningUsers:I

    return v0
.end method

.method public getMemoryStateForProcesses()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ProcessMemoryState;",
            ">;"
        }
    .end annotation

    .line 18871
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18872
    .local v0, "processMemoryStates":Ljava/util/List;, "Ljava/util/List<Landroid/app/ProcessMemoryState;>;"
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1

    .line 18873
    const/4 v2, 0x0

    .local v2, "i":I
    :try_start_b
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->size()I

    move-result v3

    .local v3, "size":I
    :goto_13
    if-ge v2, v3, :cond_31

    .line 18874
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    .line 18875
    .local v4, "r":Lcom/android/server/am/ProcessRecord;
    new-instance v5, Landroid/app/ProcessMemoryState;

    iget v6, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v7, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v9, v4, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/app/ProcessMemoryState;-><init>(IILjava/lang/String;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18873
    nop

    .end local v4  # "r":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 18878
    .end local v2  # "i":I
    .end local v3  # "size":I
    :cond_31
    monitor-exit v1

    .line 18879
    return-object v0

    .line 18878
    :catchall_33
    move-exception v2

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_b .. :try_end_35} :catchall_33

    throw v2
.end method

.method public getStorageMountMode(II)I
    .registers 6
    .param p1, "pid"  # I
    .param p2, "uid"  # I

    .line 19341
    const/16 v0, 0x7d0

    if-eq p2, v0, :cond_1f

    if-nez p2, :cond_7

    goto :goto_1f

    .line 19344
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    .line 19345
    :try_start_c
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 19346
    .local v1, "pr":Lcom/android/server/am/ProcessRecord;
    if-nez v1, :cond_18

    const/4 v2, 0x0

    goto :goto_1a

    :cond_18
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->mountMode:I

    :goto_1a
    monitor-exit v0

    return v2

    .line 19347
    .end local v1  # "pr":Lcom/android/server/am/ProcessRecord;
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_1c

    throw v1

    .line 19342
    :cond_1f
    :goto_1f
    const/4 v0, 0x6

    return v0
.end method

.method public getTaskIdForActivity(Landroid/os/IBinder;Z)I
    .registers 5
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "onlyRoot"  # Z

    .line 19056
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 19057
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityManagerService;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 19058
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getUidProcessState(I)I
    .registers 3
    .param p1, "uid"  # I

    .line 18752
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->getUidState(I)I

    move-result v0

    return v0
.end method

.method public handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I
    .registers 18
    .param p1, "callingPid"  # I
    .param p2, "callingUid"  # I
    .param p3, "userId"  # I
    .param p4, "allowAll"  # Z
    .param p5, "allowMode"  # I
    .param p6, "name"  # Ljava/lang/String;
    .param p7, "callerPackage"  # Ljava/lang/String;

    .line 18885
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public hasRunningActivity(ILjava/lang/String;)Z
    .registers 8
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 18942
    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    .line 18944
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18945
    move v2, v0

    .local v2, "i":I
    :goto_b
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v3, v3, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3b

    .line 18946
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v3, v3, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 18947
    .local v3, "pr":Lcom/android/server/am/ProcessRecord;
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v4, p1, :cond_28

    .line 18948
    goto :goto_38

    .line 18950
    :cond_28
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/server/wm/WindowProcessController;->hasRunningActivity(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 18951
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_40

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x1

    return v0

    .line 18945
    .end local v3  # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_38
    :goto_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 18954
    .end local v2  # "i":I
    :cond_3b
    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_40

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18955
    return v0

    .line 18954
    :catchall_40
    move-exception v0

    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public hasRunningForegroundService(II)Z
    .registers 8
    .param p1, "uid"  # I
    .param p2, "foregroundServicetype"  # I

    .line 19376
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 19377
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_8
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v3, v3, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 19378
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v3, v3, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 19379
    .local v3, "pr":Lcom/android/server/am/ProcessRecord;
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v4, p1, :cond_25

    .line 19380
    goto :goto_32

    .line 19383
    :cond_25
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getForegroundServiceTypes()I

    move-result v4

    and-int/2addr v4, p2

    if-eqz v4, :cond_32

    .line 19384
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_3a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x1

    return v0

    .line 19377
    .end local v3  # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_32
    :goto_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 19387
    .end local v2  # "i":I
    :cond_35
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_3a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 19389
    return v1

    .line 19387
    :catchall_3a
    move-exception v1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public hasStartedUserState(I)Z
    .registers 3
    .param p1, "userId"  # I

    .line 19039
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->hasStartedUserState(I)Z

    move-result v0

    return v0
.end method

.method public inputDispatchingTimedOut(IZLjava/lang/String;)J
    .registers 7
    .param p1, "pid"  # I
    .param p2, "aboveSystem"  # Z
    .param p3, "reason"  # Ljava/lang/String;

    .line 19201
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 19202
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-wide v1

    .line 19204
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public inputDispatchingTimedOut(Ljava/lang/Object;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;)Z
    .registers 16
    .param p1, "proc"  # Ljava/lang/Object;
    .param p2, "activityShortComponentName"  # Ljava/lang/String;
    .param p3, "aInfo"  # Landroid/content/pm/ApplicationInfo;
    .param p4, "parentShortComponentName"  # Ljava/lang/String;
    .param p5, "parentProc"  # Ljava/lang/Object;
    .param p6, "aboveSystem"  # Z
    .param p7, "reason"  # Ljava/lang/String;

    .line 19211
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

    move-result v0

    return v0
.end method

.method public isActivityStartsLoggingEnabled()Z
    .registers 2

    .line 19184
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagActivityStartsLoggingEnabled:Z

    return v0
.end method

.method public isAppBad(Landroid/content/pm/ApplicationInfo;)Z
    .registers 3
    .param p1, "info"  # Landroid/content/pm/ApplicationInfo;

    .line 19357
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, p1}, Lcom/android/server/am/ActivityManagerService;->access$1800(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method public isAppForeground(I)Z
    .registers 3
    .param p1, "uid"  # I

    .line 19352
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, p1}, Lcom/android/server/am/ActivityManagerService;->access$1700(Lcom/android/server/am/ActivityManagerService;I)Z

    move-result v0

    return v0
.end method

.method public isBackgroundActivityStartsEnabled()Z
    .registers 2

    .line 19188
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundActivityStartsEnabled:Z

    return v0
.end method

.method public isBooted()Z
    .registers 2

    .line 19091
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    return v0
.end method

.method public isBooting()Z
    .registers 2

    .line 19081
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    return v0
.end method

.method public isCurrentProfile(I)Z
    .registers 3
    .param p1, "userId"  # I

    .line 19034
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->isCurrentProfile(I)Z

    move-result v0

    return v0
.end method

.method public isRuntimeRestarted()Z
    .registers 2

    .line 18839
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0}, Lcom/android/server/SystemServiceManager;->isRuntimeRestarted()Z

    move-result v0

    return v0
.end method

.method public isSystemReady()Z
    .registers 2

    .line 18758
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    return v0
.end method

.method public isUidActive(I)Z
    .registers 4
    .param p1, "uid"  # I

    .line 18864
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18865
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->isUidActiveLocked(I)Z

    move-result v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 18866
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isUserRunning(II)Z
    .registers 4
    .param p1, "userId"  # I
    .param p2, "flags"  # I

    .line 18902
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v0

    return v0
.end method

.method public killAllBackgroundProcessesExcept(II)V
    .registers 5
    .param p1, "minTargetSdk"  # I
    .param p2, "maxProcState"  # I

    .line 19284
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 19285
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityManagerService;->killAllBackgroundProcessesExcept(II)V

    .line 19287
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 19288
    return-void

    .line 19287
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public killForegroundAppsForUser(I)V
    .registers 12
    .param p1, "userHandle"  # I

    .line 18674
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18675
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18676
    .local v1, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 18677
    .local v2, "NP":I
    const/4 v3, 0x0

    .local v3, "ip":I
    :goto_1a
    if-ge v3, v2, :cond_57

    .line 18678
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v4, v4, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 18679
    invoke-virtual {v4}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 18680
    .local v4, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 18681
    .local v5, "NA":I
    const/4 v6, 0x0

    .local v6, "ia":I
    :goto_31
    if-ge v6, v5, :cond_54

    .line 18682
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 18683
    .local v7, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v8

    if-eqz v8, :cond_40

    .line 18685
    goto :goto_51

    .line 18687
    :cond_40
    iget-boolean v8, v7, Lcom/android/server/am/ProcessRecord;->removed:Z

    if-nez v8, :cond_4e

    iget v8, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v8, p1, :cond_51

    .line 18688
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->hasForegroundActivities()Z

    move-result v8

    if-eqz v8, :cond_51

    .line 18689
    :cond_4e
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18681
    .end local v7  # "app":Lcom/android/server/am/ProcessRecord;
    :cond_51
    :goto_51
    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    .line 18677
    .end local v4  # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v5  # "NA":I
    .end local v6  # "ia":I
    :cond_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 18694
    .end local v3  # "ip":I
    :cond_57
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 18695
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5c
    if-ge v4, v3, :cond_73

    .line 18696
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    const/4 v7, 0x0

    const-string/jumbo v8, "kill all fg"

    const/4 v9, 0x1

    invoke-virtual {v5, v6, v7, v9, v8}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    .line 18695
    add-int/lit8 v4, v4, 0x1

    goto :goto_5c

    .line 18698
    .end local v1  # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v2  # "NP":I
    .end local v3  # "N":I
    .end local v4  # "i":I
    :cond_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_3 .. :try_end_74} :catchall_78

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18699
    return-void

    .line 18698
    :catchall_78
    move-exception v1

    :try_start_79
    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public killProcess(Ljava/lang/String;ILjava/lang/String;)V
    .registers 9
    .param p1, "processName"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "reason"  # Ljava/lang/String;

    .line 18930
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18931
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 18933
    .local v1, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_17

    .line 18934
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2, p3}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZLjava/lang/String;)Z

    .line 18937
    .end local v1  # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18938
    return-void

    .line 18937
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public killProcessesForRemovedTask(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 18911
    .local p1, "procsToKill":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18912
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 18913
    nop

    .line 18914
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowProcessController;

    .line 18915
    .local v2, "wpc":Lcom/android/server/wm/WindowProcessController;
    iget-object v3, v2, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 18916
    .local v3, "pr":Lcom/android/server/am/ProcessRecord;
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-nez v4, :cond_2c

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    .line 18917
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 18918
    const-string/jumbo v4, "remove task"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto :goto_31

    .line 18922
    :cond_2c
    const-string/jumbo v4, "remove task"

    iput-object v4, v3, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    .line 18912
    .end local v2  # "wpc":Lcom/android/server/wm/WindowProcessController;
    .end local v3  # "pr":Lcom/android/server/am/ProcessRecord;
    :goto_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 18925
    .end local v1  # "i":I
    :cond_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_39

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18926
    return-void

    .line 18925
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyNetworkPolicyRulesUpdated(IJ)V
    .registers 10
    .param p1, "uid"  # I
    .param p2, "procStateSeq"  # J

    .line 18795
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    if-eqz v0, :cond_22

    .line 18796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got update from NPMS for uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " seq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager_Network"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18800
    :cond_22
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_25
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18801
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessList;->getUidRecordLocked(I)Lcom/android/server/am/UidRecord;

    move-result-object v1

    .line 18802
    .local v1, "record":Lcom/android/server/am/UidRecord;
    if-nez v1, :cond_59

    .line 18803
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    if-eqz v2, :cond_54

    .line 18804
    const-string v2, "ActivityManager_Network"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No active uidRecord for uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " procStateSeq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18807
    :cond_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_25 .. :try_end_55} :catchall_f1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 18809
    :cond_59
    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_f1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18810
    iget-object v2, v1, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 18811
    :try_start_60
    iget-wide v3, v1, Lcom/android/server/am/UidRecord;->lastNetworkUpdatedProcStateSeq:J

    cmp-long v0, v3, p2

    if-ltz v0, :cond_8b

    .line 18812
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    if-eqz v0, :cond_89

    .line 18813
    const-string v0, "ActivityManager_Network"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "procStateSeq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " has already been handled for uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18816
    :cond_89
    monitor-exit v2

    return-void

    .line 18818
    :cond_8b
    iput-wide p2, v1, Lcom/android/server/am/UidRecord;->lastNetworkUpdatedProcStateSeq:J

    .line 18819
    iget-wide v3, v1, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    cmp-long v0, v3, p2

    if-lez v0, :cond_c1

    .line 18820
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    if-eqz v0, :cond_bf

    .line 18821
    const-string v0, "ActivityManager_Network"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No need to handle older seq no., Uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", curProcstateSeq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", procStateSeq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18825
    :cond_bf
    monitor-exit v2

    return-void

    .line 18827
    :cond_c1
    iget-boolean v0, v1, Lcom/android/server/am/UidRecord;->waitingForNetwork:Z

    if-eqz v0, :cond_ec

    .line 18828
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    if-eqz v0, :cond_e7

    .line 18829
    const-string v0, "ActivityManager_Network"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notifying all blocking threads for uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", procStateSeq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18832
    :cond_e7
    iget-object v0, v1, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 18834
    :cond_ec
    monitor-exit v2

    .line 18835
    return-void

    .line 18834
    :catchall_ee
    move-exception v0

    monitor-exit v2
    :try_end_f0
    .catchall {:try_start_60 .. :try_end_f0} :catchall_ee

    throw v0

    .line 18809
    .end local v1  # "record":Lcom/android/server/am/UidRecord;
    :catchall_f1
    move-exception v1

    :try_start_f2
    monitor-exit v0
    :try_end_f3
    .catchall {:try_start_f2 .. :try_end_f3} :catchall_f1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onWakefulnessChanged(I)V
    .registers 3
    .param p1, "wakefulness"  # I

    .line 18657
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->onWakefulnessChanged(I)V

    .line 18658
    return-void
.end method

.method public prepareForPossibleShutdown()V
    .registers 2

    .line 19371
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->prepareForPossibleShutdown()V

    .line 19372
    return-void
.end method

.method public registerProcessObserver(Landroid/app/IProcessObserver;)V
    .registers 3
    .param p1, "processObserver"  # Landroid/app/IProcessObserver;

    .line 19394
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 19395
    return-void
.end method

.method public reportCurKeyguardUsageEvent(Z)V
    .registers 5
    .param p1, "keyguardShowing"  # Z

    .line 19192
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 19193
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    if-eqz p1, :cond_d

    .line 19194
    const/16 v2, 0x11

    goto :goto_f

    .line 19195
    :cond_d
    const/16 v2, 0x12

    .line 19193
    :goto_f
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->reportGlobalUsageEventLocked(I)V

    .line 19196
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 19197
    return-void

    .line 19196
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public scheduleAppGcs()V
    .registers 3

    .line 19049
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 19050
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 19051
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 19052
    return-void

    .line 19051
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
    .param p1, "userId"  # I

    .line 19009
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->sendForegroundProfileChanged(I)V

    .line 19010
    return-void
.end method

.method public setBooted(Z)V
    .registers 3
    .param p1, "booted"  # Z

    .line 19086
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-boolean p1, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    .line 19087
    return-void
.end method

.method public setBooting(Z)V
    .registers 3
    .param p1, "booting"  # Z

    .line 19076
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-boolean p1, v0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 19077
    return-void
.end method

.method public setDebugFlagsForStartingActivity(Landroid/content/pm/ActivityInfo;ILandroid/app/ProfilerInfo;Ljava/lang/Object;)V
    .registers 10
    .param p1, "aInfo"  # Landroid/content/pm/ActivityInfo;
    .param p2, "startFlags"  # I
    .param p3, "profilerInfo"  # Landroid/app/ProfilerInfo;
    .param p4, "wmLock"  # Ljava/lang/Object;

    .line 19312
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 19318
    monitor-enter p4
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_47

    .line 19319
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_17

    .line 19320
    :try_start_b
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->setDebugApp(Ljava/lang/String;ZZ)V

    goto :goto_17

    .line 19335
    :catchall_15
    move-exception v1

    goto :goto_45

    .line 19323
    :cond_17
    :goto_17
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_24

    .line 19324
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->setNativeDebuggingAppLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 19327
    :cond_24
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_31

    .line 19328
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->setTrackAllocationApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 19331
    :cond_31
    if-eqz p3, :cond_3c

    .line 19332
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p3}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/app/ProfilerInfo;)V

    .line 19334
    :cond_3c
    invoke-virtual {p4}, Ljava/lang/Object;->notify()V

    .line 19335
    monitor-exit p4
    :try_end_40
    .catchall {:try_start_b .. :try_end_40} :catchall_15

    .line 19336
    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_47

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 19337
    return-void

    .line 19335
    :goto_45
    :try_start_45
    monitor-exit p4
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_15

    .end local p0  # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .end local p1  # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local p2  # "startFlags":I
    .end local p3  # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p4  # "wmLock":Ljava/lang/Object;
    :try_start_46
    throw v1

    .line 19336
    .restart local p0  # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .restart local p1  # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local p2  # "startFlags":I
    .restart local p3  # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p4  # "wmLock":Ljava/lang/Object;
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_47

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setDeviceIdleWhitelist([I[I)V
    .registers 5
    .param p1, "allAppids"  # [I
    .param p2, "exceptIdleAppids"  # [I

    .line 18736
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18737
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p1, v1, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleWhitelist:[I

    .line 18738
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, v1, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleExceptIdleWhitelist:[I

    .line 18739
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18740
    return-void

    .line 18739
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setHasOverlayUi(IZ)V
    .registers 9
    .param p1, "pid"  # I
    .param p2, "hasOverlayUi"  # Z

    .line 18770
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18772
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_53

    .line 18773
    :try_start_b
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    .line 18774
    .local v2, "pr":Lcom/android/server/am/ProcessRecord;
    if-nez v2, :cond_32

    .line 18775
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHasOverlayUi called on unknown pid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18776
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_b .. :try_end_2d} :catchall_50

    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_53

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 18778
    :cond_32
    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_50

    .line 18779
    :try_start_33
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->hasOverlayUi()Z

    move-result v1

    if-ne v1, p2, :cond_3e

    .line 18780
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_53

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 18782
    :cond_3e
    :try_start_3e
    invoke-virtual {v2, p2}, Lcom/android/server/am/ProcessRecord;->setHasOverlayUi(Z)V

    .line 18784
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    const-string/jumbo v4, "updateOomAdj_uiVisibility"

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    .line 18785
    nop

    .end local v2  # "pr":Lcom/android/server/am/ProcessRecord;
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3e .. :try_end_4c} :catchall_53

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18786
    return-void

    .line 18778
    :catchall_50
    move-exception v2

    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    .end local p0  # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .end local p1  # "pid":I
    .end local p2  # "hasOverlayUi":Z
    :try_start_52
    throw v2

    .line 18785
    .restart local p0  # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .restart local p1  # "pid":I
    .restart local p2  # "hasOverlayUi":Z
    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_53

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setPendingIntentAllowBgActivityStarts(Landroid/content/IIntentSender;Landroid/os/IBinder;I)V
    .registers 6
    .param p1, "target"  # Landroid/content/IIntentSender;
    .param p2, "whitelistToken"  # Landroid/os/IBinder;
    .param p3, "flags"  # I

    .line 18711
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_1c

    .line 18712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPendingIntentAllowBgActivityStarts(): not a PendingIntentRecord: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18714
    return-void

    .line 18716
    :cond_1c
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_1f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18717
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/am/PendingIntentRecord;->setAllowBgActivityStarts(Landroid/os/IBinder;I)V

    .line 18718
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_2d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18719
    return-void

    .line 18718
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setPendingIntentWhitelistDuration(Landroid/content/IIntentSender;Landroid/os/IBinder;J)V
    .registers 6
    .param p1, "target"  # Landroid/content/IIntentSender;
    .param p2, "whitelistToken"  # Landroid/os/IBinder;
    .param p3, "duration"  # J

    .line 18704
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/PendingIntentController;->setPendingIntentWhitelistDuration(Landroid/content/IIntentSender;Landroid/os/IBinder;J)V

    .line 18706
    return-void
.end method

.method public setSwitchingFromSystemUserMessage(Ljava/lang/String;)V
    .registers 3
    .param p1, "switchingFromSystemUserMessage"  # Ljava/lang/String;

    .line 18849
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->setSwitchingFromSystemUserMessage(Ljava/lang/String;)V

    .line 18850
    return-void
.end method

.method public setSwitchingToSystemUserMessage(Ljava/lang/String;)V
    .registers 3
    .param p1, "switchingToSystemUserMessage"  # Ljava/lang/String;

    .line 18854
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->setSwitchingToSystemUserMessage(Ljava/lang/String;)V

    .line 18855
    return-void
.end method

.method public shouldConfirmCredentials(I)Z
    .registers 3
    .param p1, "userId"  # I

    .line 19014
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->shouldConfirmCredentials(I)Z

    move-result v0

    return v0
.end method

.method public startActivityAsUserEmpty(Landroid/os/Bundle;)I
    .registers 3
    .param p1, "options"  # Landroid/os/Bundle;

    .line 18669
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->startActivityAsUserEmpty(Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public startIsolatedProcess(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)Z
    .registers 14
    .param p1, "entryPoint"  # Ljava/lang/String;
    .param p2, "entryPointArgs"  # [Ljava/lang/String;
    .param p3, "processName"  # Ljava/lang/String;
    .param p4, "abiOverride"  # Ljava/lang/String;
    .param p5, "uid"  # I
    .param p6, "crashHandler"  # Ljava/lang/Runnable;

    .line 18663
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->startIsolatedProcess(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public startProcess(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZLjava/lang/String;Landroid/content/ComponentName;)V
    .registers 22
    .param p1, "processName"  # Ljava/lang/String;
    .param p2, "info"  # Landroid/content/pm/ApplicationInfo;
    .param p3, "knownToBeDead"  # Z
    .param p4, "hostingType"  # Ljava/lang/String;
    .param p5, "hostingName"  # Landroid/content/ComponentName;

    move-object/from16 v1, p0

    .line 19294
    const-wide/16 v2, 0x40

    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 19295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startProcess:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_5a

    move-object/from16 v4, p1

    :try_start_17
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_24

    .line 19294
    :cond_22
    move-object/from16 v4, p1

    .line 19298
    :goto_24
    iget-object v14, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_58

    :try_start_27
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 19299
    iget-object v5, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x0

    new-instance v10, Lcom/android/server/am/HostingRecord;
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_4c

    move-object/from16 v15, p4

    move-object/from16 v13, p5

    :try_start_33
    invoke-direct {v10, v15, v13}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Landroid/content/ComponentName;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v0, 0x1

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move v13, v0

    invoke-virtual/range {v5 .. v13}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;ZZZ)Lcom/android/server/am/ProcessRecord;

    .line 19303
    monitor-exit v14
    :try_end_44
    .catchall {:try_start_33 .. :try_end_44} :catchall_56

    :try_start_44
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_54

    .line 19305
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 19306
    nop

    .line 19307
    return-void

    .line 19303
    :catchall_4c
    move-exception v0

    move-object/from16 v15, p4

    :goto_4f
    :try_start_4f
    monitor-exit v14
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_56

    :try_start_50
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .end local p0  # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .end local p1  # "processName":Ljava/lang/String;
    .end local p2  # "info":Landroid/content/pm/ApplicationInfo;
    .end local p3  # "knownToBeDead":Z
    .end local p4  # "hostingType":Ljava/lang/String;
    .end local p5  # "hostingName":Landroid/content/ComponentName;
    throw v0
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_54

    .line 19305
    .restart local p0  # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .restart local p1  # "processName":Ljava/lang/String;
    .restart local p2  # "info":Landroid/content/pm/ApplicationInfo;
    .restart local p3  # "knownToBeDead":Z
    .restart local p4  # "hostingType":Ljava/lang/String;
    .restart local p5  # "hostingName":Landroid/content/ComponentName;
    :catchall_54
    move-exception v0

    goto :goto_5f

    .line 19303
    :catchall_56
    move-exception v0

    goto :goto_4f

    .line 19305
    :catchall_58
    move-exception v0

    goto :goto_5d

    :catchall_5a
    move-exception v0

    move-object/from16 v4, p1

    :goto_5d
    move-object/from16 v15, p4

    :goto_5f
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public startServiceInPackage(ILandroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;IZ)Landroid/content/ComponentName;
    .registers 26
    .param p1, "uid"  # I
    .param p2, "service"  # Landroid/content/Intent;
    .param p3, "resolvedType"  # Ljava/lang/String;
    .param p4, "fgRequired"  # Z
    .param p5, "callingPackage"  # Ljava/lang/String;
    .param p6, "userId"  # I
    .param p7, "allowBackgroundActivityStarts"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 19126
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 19127
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    if-eqz v0, :cond_32

    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startServiceInPackage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_62

    move-object/from16 v4, p2

    :try_start_1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " type="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_30

    move-object/from16 v15, p3

    :try_start_25
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 19139
    :catchall_30
    move-exception v0

    goto :goto_65

    .line 19127
    :cond_32
    move-object/from16 v4, p2

    move-object/from16 v15, p3

    .line 19129
    :goto_36
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_3a
    .catchall {:try_start_25 .. :try_end_3a} :catchall_6c

    move-wide/from16 v16, v5

    .line 19132
    .local v16, "origId":J
    :try_start_3c
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    const/4 v6, 0x0

    const/4 v9, -0x1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v10, p1

    move/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    invoke-virtual/range {v5 .. v14}, Lcom/android/server/am/ActiveServices;->startServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IIZLjava/lang/String;IZ)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_54
    .catchall {:try_start_3c .. :try_end_54} :catchall_5d

    .line 19136
    .local v0, "res":Landroid/content/ComponentName;
    :try_start_54
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 19137
    nop

    .line 19138
    monitor-exit v2
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_6c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 19136
    .end local v0  # "res":Landroid/content/ComponentName;
    :catchall_5d
    move-exception v0

    :try_start_5e
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .end local p1  # "uid":I
    .end local p2  # "service":Landroid/content/Intent;
    .end local p3  # "resolvedType":Ljava/lang/String;
    .end local p4  # "fgRequired":Z
    .end local p5  # "callingPackage":Ljava/lang/String;
    .end local p6  # "userId":I
    .end local p7  # "allowBackgroundActivityStarts":Z
    throw v0

    .line 19139
    .end local v16  # "origId":J
    .restart local p0  # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .restart local p1  # "uid":I
    .restart local p2  # "service":Landroid/content/Intent;
    .restart local p3  # "resolvedType":Ljava/lang/String;
    .restart local p4  # "fgRequired":Z
    .restart local p5  # "callingPackage":Ljava/lang/String;
    .restart local p6  # "userId":I
    .restart local p7  # "allowBackgroundActivityStarts":Z
    :catchall_62
    move-exception v0

    move-object/from16 v4, p2

    :goto_65
    move-object/from16 v15, p3

    :goto_67
    monitor-exit v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_6c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_6c
    move-exception v0

    goto :goto_67
.end method

.method public tempWhitelistForPendingIntent(IIIJLjava/lang/String;)V
    .registers 15
    .param p1, "callerPid"  # I
    .param p2, "callerUid"  # I
    .param p3, "targetUid"  # I
    .param p4, "duration"  # J
    .param p6, "tag"  # Ljava/lang/String;

    .line 19102
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 19103
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityManagerService;->tempWhitelistForPendingIntentLocked(IIIJLjava/lang/String;)V

    .line 19105
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 19106
    return-void

    .line 19105
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public trimApplications()V
    .registers 3

    .line 18907
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "updateOomAdj_activityChange"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->trimApplications(Ljava/lang/String;)V

    .line 18908
    return-void
.end method

.method public unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    .registers 3
    .param p1, "processObserver"  # Landroid/app/IProcessObserver;

    .line 19399
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 19400
    return-void
.end method

.method public updateActivityUsageStats(Landroid/content/ComponentName;IILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 13
    .param p1, "activity"  # Landroid/content/ComponentName;
    .param p2, "userId"  # I
    .param p3, "event"  # I
    .param p4, "appToken"  # Landroid/os/IBinder;
    .param p5, "taskRoot"  # Landroid/content/ComponentName;

    .line 18983
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18984
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->updateActivityUsageStats(Landroid/content/ComponentName;IILandroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 18986
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18987
    return-void

    .line 18986
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public updateBatteryStats(Landroid/content/ComponentName;IIZ)V
    .registers 7
    .param p1, "activity"  # Landroid/content/ComponentName;
    .param p2, "uid"  # I
    .param p3, "userId"  # I
    .param p4, "resumed"  # Z

    .line 18975
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18976
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService;->updateBatteryStats(Landroid/content/ComponentName;IIZ)V

    .line 18977
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18978
    return-void

    .line 18977
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public updateCpuStats()V
    .registers 3

    .line 18967
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18968
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 18969
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18970
    return-void

    .line 18969
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
    .param p1, "appids"  # [I
    .param p2, "changingAppId"  # I
    .param p3, "adding"  # Z

    .line 18744
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18745
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p1, v1, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleTempWhitelist:[I

    .line 18746
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->setAppIdTempWhitelistStateLocked(IZ)V

    .line 18747
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18748
    return-void

    .line 18747
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public updateForegroundTimeIfOnBattery(Ljava/lang/String;IJ)V
    .registers 8
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "cpuTimeDiff"  # J

    .line 18992
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18993
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->isOnBattery()Z

    move-result v1

    if-nez v1, :cond_15

    .line 18994
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_31

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 18996
    :cond_15
    :try_start_15
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v1

    .line 18997
    .local v1, "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v1
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_31

    .line 18998
    nop

    .line 18999
    :try_start_1f
    invoke-virtual {v1, p2, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v2

    .line 19000
    .local v2, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v2, :cond_28

    .line 19001
    invoke-virtual {v2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addForegroundTimeLocked(J)V

    .line 19003
    .end local v2  # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_2e

    .line 19004
    .end local v1  # "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_31

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 19005
    return-void

    .line 19003
    .restart local v1  # "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    :catchall_2e
    move-exception v2

    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    .end local p0  # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "uid":I
    .end local p3  # "cpuTimeDiff":J
    :try_start_30
    throw v2

    .line 19004
    .end local v1  # "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local p0  # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .restart local p1  # "packageName":Ljava/lang/String;
    .restart local p2  # "uid":I
    .restart local p3  # "cpuTimeDiff":J
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_31

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public updateOomAdj()V
    .registers 4

    .line 18960
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 18961
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "updateOomAdj_meh"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 18962
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 18963
    return-void

    .line 18962
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
    .registers 5
    .param p1, "displayId"  # I

    .line 19176
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 19177
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v1, :cond_17

    .line 19178
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessList;->applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V

    .line 19180
    :cond_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 19181
    return-void

    .line 19180
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
