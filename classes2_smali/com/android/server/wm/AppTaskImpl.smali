.class Lcom/android/server/wm/AppTaskImpl;
.super Landroid/app/IAppTask$Stub;
.source "AppTaskImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppTaskImpl"


# instance fields
.field private mCallingUid:I

.field private mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mTaskId:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;II)V
    .registers 4
    .param p1, "service"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "taskId"  # I
    .param p3, "callingUid"  # I

    .line 44
    invoke-direct {p0}, Landroid/app/IAppTask$Stub;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 46
    iput p2, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    .line 47
    iput p3, p0, Lcom/android/server/wm/AppTaskImpl;->mCallingUid:I

    .line 48
    return-void
.end method

.method private checkCaller()V
    .registers 4

    .line 51
    iget v0, p0, Lcom/android/server/wm/AppTaskImpl;->mCallingUid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 55
    return-void

    .line 52
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/AppTaskImpl;->mCallingUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not match caller of getAppTasks(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public finishAndRemoveTask()V
    .registers 9

    .line 59
    invoke-direct {p0}, Lcom/android/server/wm/AppTaskImpl;->checkCaller()V

    .line 61
    iget-object v0, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 62
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_46

    .line 65
    .local v1, "origId":J
    :try_start_f
    iget-object v3, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v4, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "finish-and-remove-task"

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_41

    if-eqz v3, :cond_28

    .line 70
    :try_start_1f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 71
    nop

    .line 72
    .end local v1  # "origId":J
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_46

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 73
    return-void

    .line 67
    .restart local v1  # "origId":J
    :cond_28
    :try_start_28
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find task ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1  # "origId":J
    .end local p0  # "this":Lcom/android/server/wm/AppTaskImpl;
    throw v3
    :try_end_41
    .catchall {:try_start_28 .. :try_end_41} :catchall_41

    .line 70
    .restart local v1  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/AppTaskImpl;
    :catchall_41
    move-exception v3

    :try_start_42
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/AppTaskImpl;
    throw v3

    .line 72
    .end local v1  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/AppTaskImpl;
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_46

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;
    .registers 8

    .line 77
    invoke-direct {p0}, Lcom/android/server/wm/AppTaskImpl;->checkCaller()V

    .line 79
    iget-object v0, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 80
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_4c

    .line 82
    .local v1, "origId":J
    :try_start_f
    iget-object v3, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v4, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    .line 84
    .local v3, "tr":Lcom/android/server/wm/TaskRecord;
    if-eqz v3, :cond_2e

    .line 87
    iget-object v4, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/wm/RecentTasks;->createRecentTaskInfo(Lcom/android/server/wm/TaskRecord;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v4
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_47

    .line 89
    :try_start_26
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_4c

    .line 87
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v4

    .line 85
    :cond_2e
    :try_start_2e
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find task ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1  # "origId":J
    .end local p0  # "this":Lcom/android/server/wm/AppTaskImpl;
    throw v4
    :try_end_47
    .catchall {:try_start_2e .. :try_end_47} :catchall_47

    .line 89
    .end local v3  # "tr":Lcom/android/server/wm/TaskRecord;
    .restart local v1  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/AppTaskImpl;
    :catchall_47
    move-exception v3

    :try_start_48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/AppTaskImpl;
    throw v3

    .line 91
    .end local v1  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/AppTaskImpl;
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_48 .. :try_end_4e} :catchall_4c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public moveToFront(Landroid/app/IApplicationThread;Ljava/lang/String;)V
    .registers 23
    .param p1, "appThread"  # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"  # Ljava/lang/String;

    .line 96
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v13, p2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTaskImpl;->checkCaller()V

    .line 98
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    .line 99
    .local v14, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 100
    .local v15, "callingUid":I
    iget-object v0, v1, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v15, v13}, Lcom/android/server/wm/ActivityTaskManagerService;->isSameApp(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 106
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 108
    .local v16, "origId":J
    :try_start_1d
    iget-object v0, v1, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v12, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v12
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_98

    :try_start_22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 109
    iget-object v3, v1, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const-string v8, "Move to front"

    move v4, v14

    move v5, v15

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityTaskManagerService;->checkAppSwitchAllowedLocked(IIIILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 111
    monitor-exit v12
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_8e

    .line 129
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 111
    return-void

    .line 113
    :cond_3b
    const/4 v0, 0x0

    .line 114
    .local v0, "callerApp":Lcom/android/server/wm/WindowProcessController;
    if-eqz v2, :cond_45

    .line 115
    :try_start_3e
    iget-object v3, v1, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    move-object v0, v3

    .line 117
    :cond_45
    iget-object v3, v1, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v3

    const-string v4, "moveToFront"

    const/4 v11, 0x0

    invoke-virtual {v3, v11, v4}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3
    :try_end_52
    .catchall {:try_start_3e .. :try_end_52} :catchall_8e

    .line 119
    .local v3, "starter":Lcom/android/server/wm/ActivityStarter;
    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v10, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move v4, v15

    move v5, v14

    move-object/from16 v6, p2

    move-object v9, v0

    move/from16 v11, v18

    move-object/from16 v18, v12

    move-object/from16 v12, v19

    :try_start_64
    invoke-virtual/range {v3 .. v12}, Lcom/android/server/wm/ActivityStarter;->shouldAbortBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLandroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 121
    iget-object v4, v1, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->isBackgroundActivityStartsEnabled()Z

    move-result v4

    if-nez v4, :cond_7a

    .line 122
    monitor-exit v18
    :try_end_73
    .catchall {:try_start_64 .. :try_end_73} :catchall_96

    .line 129
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    return-void

    .line 125
    :cond_7a
    :try_start_7a
    iget-object v4, v1, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v5, v1, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    const/4 v6, 0x0

    invoke-virtual {v4, v14, v15, v5, v6}, Lcom/android/server/wm/ActivityStackSupervisor;->startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;)I

    .line 127
    nop

    .end local v0  # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v3  # "starter":Lcom/android/server/wm/ActivityStarter;
    monitor-exit v18
    :try_end_86
    .catchall {:try_start_7a .. :try_end_86} :catchall_96

    :try_start_86
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_98

    .line 129
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 130
    nop

    .line 131
    return-void

    .line 127
    :catchall_8e
    move-exception v0

    move-object/from16 v18, v12

    :goto_91
    :try_start_91
    monitor-exit v18
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_96

    :try_start_92
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v14  # "callingPid":I
    .end local v15  # "callingUid":I
    .end local v16  # "origId":J
    .end local p0  # "this":Lcom/android/server/wm/AppTaskImpl;
    .end local p1  # "appThread":Landroid/app/IApplicationThread;
    .end local p2  # "callingPackage":Ljava/lang/String;
    throw v0
    :try_end_96
    .catchall {:try_start_92 .. :try_end_96} :catchall_98

    .restart local v14  # "callingPid":I
    .restart local v15  # "callingUid":I
    .restart local v16  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/AppTaskImpl;
    .restart local p1  # "appThread":Landroid/app/IApplicationThread;
    .restart local p2  # "callingPackage":Ljava/lang/String;
    :catchall_96
    move-exception v0

    goto :goto_91

    .line 129
    :catchall_98
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 101
    .end local v16  # "origId":J
    :cond_9d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: moveToFront() from pid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " as package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "msg":Ljava/lang/String;
    const-string v3, "AppTaskImpl"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setExcludeFromRecents(Z)V
    .registers 9
    .param p1, "exclude"  # Z

    .line 165
    invoke-direct {p0}, Lcom/android/server/wm/AppTaskImpl;->checkCaller()V

    .line 167
    iget-object v0, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 168
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_5a

    .line 170
    .local v1, "origId":J
    :try_start_f
    iget-object v3, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v4, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    .line 172
    .local v3, "tr":Lcom/android/server/wm/TaskRecord;
    if-eqz v3, :cond_3c

    .line 175
    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v4

    .line 176
    .local v4, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_28

    .line 177
    const/high16 v5, 0x800000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_33

    .line 179
    :cond_28
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const v6, -0x800001

    and-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_33
    .catchall {:try_start_f .. :try_end_33} :catchall_55

    .line 183
    .end local v3  # "tr":Lcom/android/server/wm/TaskRecord;
    .end local v4  # "intent":Landroid/content/Intent;
    :goto_33
    :try_start_33
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 184
    nop

    .line 185
    .end local v1  # "origId":J
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_5a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 186
    return-void

    .line 173
    .restart local v1  # "origId":J
    .restart local v3  # "tr":Lcom/android/server/wm/TaskRecord;
    :cond_3c
    :try_start_3c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find task ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1  # "origId":J
    .end local p0  # "this":Lcom/android/server/wm/AppTaskImpl;
    .end local p1  # "exclude":Z
    throw v4
    :try_end_55
    .catchall {:try_start_3c .. :try_end_55} :catchall_55

    .line 183
    .end local v3  # "tr":Lcom/android/server/wm/TaskRecord;
    .restart local v1  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/AppTaskImpl;
    .restart local p1  # "exclude":Z
    :catchall_55
    move-exception v3

    :try_start_56
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/AppTaskImpl;
    .end local p1  # "exclude":Z
    throw v3

    .line 185
    .end local v1  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/AppTaskImpl;
    .restart local p1  # "exclude":Z
    :catchall_5a
    move-exception v1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_56 .. :try_end_5c} :catchall_5a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public startActivity(Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 13
    .param p1, "whoThread"  # Landroid/os/IBinder;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "intent"  # Landroid/content/Intent;
    .param p4, "resolvedType"  # Ljava/lang/String;
    .param p5, "bOptions"  # Landroid/os/Bundle;

    .line 136
    invoke-direct {p0}, Lcom/android/server/wm/AppTaskImpl;->checkCaller()V

    .line 138
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 141
    .local v0, "callingUser":I
    iget-object v1, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 142
    iget-object v2, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v3, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    .line 144
    .local v2, "tr":Lcom/android/server/wm/TaskRecord;
    if-eqz v2, :cond_66

    .line 147
    invoke-static {p1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v3

    .line 148
    .local v3, "appThread":Landroid/app/IApplicationThread;
    if-eqz v3, :cond_4f

    .line 151
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_7f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 153
    iget-object v1, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    const-string v4, "AppTaskImpl"

    invoke-virtual {v1, p3, v4}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 154
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 155
    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 156
    invoke-virtual {v1, p4}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 157
    invoke-virtual {v1, p5}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 158
    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityStarter;->setMayWait(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 159
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setInTask(Lcom/android/server/wm/TaskRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 160
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v1

    .line 153
    return v1

    .line 149
    :cond_4f
    :try_start_4f
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad app thread "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0  # "callingUser":I
    .end local p0  # "this":Lcom/android/server/wm/AppTaskImpl;
    .end local p1  # "whoThread":Landroid/os/IBinder;
    .end local p2  # "callingPackage":Ljava/lang/String;
    .end local p3  # "intent":Landroid/content/Intent;
    .end local p4  # "resolvedType":Ljava/lang/String;
    .end local p5  # "bOptions":Landroid/os/Bundle;
    throw v4

    .line 145
    .end local v3  # "appThread":Landroid/app/IApplicationThread;
    .restart local v0  # "callingUser":I
    .restart local p0  # "this":Lcom/android/server/wm/AppTaskImpl;
    .restart local p1  # "whoThread":Landroid/os/IBinder;
    .restart local p2  # "callingPackage":Ljava/lang/String;
    .restart local p3  # "intent":Landroid/content/Intent;
    .restart local p4  # "resolvedType":Ljava/lang/String;
    .restart local p5  # "bOptions":Landroid/os/Bundle;
    :cond_66
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find task ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0  # "callingUser":I
    .end local p0  # "this":Lcom/android/server/wm/AppTaskImpl;
    .end local p1  # "whoThread":Landroid/os/IBinder;
    .end local p2  # "callingPackage":Ljava/lang/String;
    .end local p3  # "intent":Landroid/content/Intent;
    .end local p4  # "resolvedType":Ljava/lang/String;
    .end local p5  # "bOptions":Landroid/os/Bundle;
    throw v3

    .line 151
    .end local v2  # "tr":Lcom/android/server/wm/TaskRecord;
    .restart local v0  # "callingUser":I
    .restart local p0  # "this":Lcom/android/server/wm/AppTaskImpl;
    .restart local p1  # "whoThread":Landroid/os/IBinder;
    .restart local p2  # "callingPackage":Ljava/lang/String;
    .restart local p3  # "intent":Landroid/content/Intent;
    .restart local p4  # "resolvedType":Ljava/lang/String;
    .restart local p5  # "bOptions":Landroid/os/Bundle;
    :catchall_7f
    move-exception v2

    monitor-exit v1
    :try_end_81
    .catchall {:try_start_4f .. :try_end_81} :catchall_7f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method
