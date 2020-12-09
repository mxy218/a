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
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_46

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 73
    return-void

    .line 67
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

    throw v3
    :try_end_41
    .catchall {:try_start_28 .. :try_end_41} :catchall_41

    .line 70
    :catchall_41
    move-exception v3

    :try_start_42
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 72
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_46

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;
    .registers 7

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
    :try_start_f
    iget-object v3, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v4, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    .line 84
    if-eqz v3, :cond_2e

    .line 87
    iget-object v4, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/wm/RecentTasks;->createRecentTaskInfo(Lcom/android/server/wm/TaskRecord;)Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v3
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

    return-object v3

    .line 85
    :cond_2e
    :try_start_2e
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

    throw v3
    :try_end_47
    .catchall {:try_start_2e .. :try_end_47} :catchall_47

    .line 89
    :catchall_47
    move-exception v3

    :try_start_48
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 91
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_48 .. :try_end_4e} :catchall_4c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public moveToFront(Landroid/app/IApplicationThread;Ljava/lang/String;)V
    .registers 21

    .line 96
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTaskImpl;->checkCaller()V

    .line 98
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 99
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 100
    iget-object v2, v0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, v12, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->isSameApp(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 106
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 108
    :try_start_1d
    iget-object v2, v0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v15
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_93

    :try_start_22
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 109
    iget-object v5, v0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v8, -0x1

    const/4 v9, -0x1

    const-string v10, "Move to front"

    move v6, v11

    move v7, v12

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/ActivityTaskManagerService;->checkAppSwitchAllowedLocked(IIIILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 111
    monitor-exit v15
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_8d

    .line 129
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 111
    return-void

    .line 113
    :cond_3b
    nop

    .line 114
    const/4 v10, 0x0

    if-eqz v1, :cond_47

    .line 115
    :try_start_3f
    iget-object v2, v0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    move-object v7, v1

    goto :goto_48

    .line 114
    :cond_47
    move-object v7, v10

    .line 117
    :goto_48
    iget-object v1, v0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    const-string v2, "moveToFront"

    invoke-virtual {v1, v10, v2}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 119
    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    move v2, v12

    move v3, v11

    move-object/from16 v4, p2

    move/from16 v17, v11

    move-object v11, v10

    move-object/from16 v10, v16

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/wm/ActivityStarter;->shouldAbortBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLandroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_79

    .line 121
    iget-object v1, v0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isBackgroundActivityStartsEnabled()Z

    move-result v1

    if-nez v1, :cond_79

    .line 122
    monitor-exit v15
    :try_end_72
    .catchall {:try_start_3f .. :try_end_72} :catchall_8d

    .line 129
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    return-void

    .line 125
    :cond_79
    :try_start_79
    iget-object v1, v0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v0, v0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    move/from16 v2, v17

    invoke-virtual {v1, v2, v12, v0, v11}, Lcom/android/server/wm/ActivityStackSupervisor;->startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;)I

    .line 127
    monitor-exit v15
    :try_end_85
    .catchall {:try_start_79 .. :try_end_85} :catchall_8d

    :try_start_85
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_93

    .line 129
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 130
    nop

    .line 131
    return-void

    .line 127
    :catchall_8d
    move-exception v0

    :try_start_8e
    monitor-exit v15
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    :try_start_8f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_93
    .catchall {:try_start_8f .. :try_end_93} :catchall_93

    .line 129
    :catchall_93
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 101
    :cond_98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: moveToFront() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " as package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    const-string v1, "AppTaskImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setExcludeFromRecents(Z)V
    .registers 8

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
    :try_start_f
    iget-object v3, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v4, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    .line 172
    if-eqz v3, :cond_3c

    .line 175
    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v3

    .line 176
    if-eqz p1, :cond_28

    .line 177
    const/high16 p1, 0x800000

    invoke-virtual {v3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_33

    .line 179
    :cond_28
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result p1

    const v4, -0x800001

    and-int/2addr p1, v4

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_33
    .catchall {:try_start_f .. :try_end_33} :catchall_55

    .line 183
    :goto_33
    :try_start_33
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 184
    nop

    .line 185
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_5a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 186
    return-void

    .line 173
    :cond_3c
    :try_start_3c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find task ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_55
    .catchall {:try_start_3c .. :try_end_55} :catchall_55

    .line 183
    :catchall_55
    move-exception p1

    :try_start_56
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 185
    :catchall_5a
    move-exception p1

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_56 .. :try_end_5c} :catchall_5a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public startActivity(Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 11

    .line 136
    invoke-direct {p0}, Lcom/android/server/wm/AppTaskImpl;->checkCaller()V

    .line 138
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 141
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
    if-eqz v2, :cond_66

    .line 147
    invoke-static {p1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object p1

    .line 148
    if-eqz p1, :cond_4f

    .line 151
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_7f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 153
    iget-object v1, p0, Lcom/android/server/wm/AppTaskImpl;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    const-string v3, "AppTaskImpl"

    invoke-virtual {v1, p3, v3}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p3

    .line 154
    invoke-virtual {p3, p1}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 155
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 156
    invoke-virtual {p1, p4}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 157
    invoke-virtual {p1, p5}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 158
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStarter;->setMayWait(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 159
    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityStarter;->setInTask(Lcom/android/server/wm/TaskRecord;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result p1

    .line 153
    return p1

    .line 149
    :cond_4f
    :try_start_4f
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Bad app thread "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 145
    :cond_66
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to find task ID "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/wm/AppTaskImpl;->mTaskId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 151
    :catchall_7f
    move-exception p1

    monitor-exit v1
    :try_end_81
    .catchall {:try_start_4f .. :try_end_81} :catchall_7f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method
