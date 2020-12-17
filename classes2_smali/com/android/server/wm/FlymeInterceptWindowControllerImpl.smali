.class Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;
.super Ljava/lang/Object;
.source "FlymeInterceptWindowControllerImpl.java"

# interfaces
.implements Lcom/android/server/wm/FlymeInterceptWindowController;


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private isReady:Z

.field private mAccessControlService:Lcom/meizu/server/AccessControlService;

.field private mActivityManager:Landroid/app/IActivityManager;

.field private mFlymePackageManagerService:Lcom/android/server/pm/FlymePackageManagerService;

.field private mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->isReady:Z

    return-void
.end method

.method private isIntercept(Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkgName"  # Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Try to Intercept package in flyme "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->mFlymePackageManagerService:Lcom/android/server/pm/FlymePackageManagerService;

    if-nez v0, :cond_1c

    .line 56
    const/4 v0, 0x0

    return v0

    .line 58
    :cond_1c
    invoke-virtual {v0}, Lcom/android/server/pm/FlymePackageManagerService;->getInterceptPackage()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private mayIntercept(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "level"  # I

    .line 62
    iget-object v0, p0, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->mFlymePackageManagerService:Lcom/android/server/pm/FlymePackageManagerService;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 63
    return v1

    .line 65
    :cond_6
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1d

    .line 66
    invoke-virtual {v0}, Lcom/android/server/pm/FlymePackageManagerService;->getMayInterceptPackage()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 67
    iget-object v0, p0, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->mFlymePackageManagerService:Lcom/android/server/pm/FlymePackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/FlymePackageManagerService;->getMayInterceptPackage()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 68
    return v2

    .line 71
    :cond_1d
    const/4 v0, 0x2

    if-ne p2, v0, :cond_27

    .line 72
    iget-object v0, p0, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->mFlymePackageManagerService:Lcom/android/server/pm/FlymePackageManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/FlymePackageManagerService;->getKeyGuardPackage(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 74
    :cond_27
    return v1
.end method

.method private sendBroadcast(Lcom/android/server/wm/AppWindowToken;Ljava/lang/String;Z)V
    .registers 23
    .param p1, "windowToken"  # Lcom/android/server/wm/AppWindowToken;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "finishActivity"  # Z

    .line 29
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v1, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 30
    if-nez v2, :cond_1c

    .line 31
    const-string v0, "WindowManager"

    const-string v5, "Failed to intercept beacuse windowToken is null"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    monitor-exit v4
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_97

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 34
    :cond_1c
    :try_start_1c
    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_97

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 35
    iget-object v0, v1, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingOrOccluded()Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, v1, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_96

    .line 36
    :cond_34
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v15, v0

    .line 37
    .local v15, "intent":Landroid/content/Intent;
    const-string v0, "com.meizu.safe.ACTION_BLOCK_LOCKED_SCREEN_SHOW"

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 38
    const-string v4, "com.meizu.safe"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 39
    const-string v4, "pkgName"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    :try_start_4b
    const-string v0, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Send broadcast to meizu.safe. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v4, v1, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x0

    iget-object v6, v1, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v6, v6, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_73} :catch_8c

    move/from16 v17, v6

    move-object v6, v15

    move-object/from16 v18, v15

    .end local v15  # "intent":Landroid/content/Intent;
    .local v18, "intent":Landroid/content/Intent;
    move v15, v0

    :try_start_79
    invoke-interface/range {v4 .. v17}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    .line 44
    if-eqz p3, :cond_89

    .line 45
    iget-object v0, v1, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v4, v2, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xa

    invoke-interface {v0, v4, v5, v6, v7}, Landroid/app/IActivityManager;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_89} :catch_8a

    .line 49
    :cond_89
    goto :goto_96

    .line 47
    :catch_8a
    move-exception v0

    goto :goto_8f

    .end local v18  # "intent":Landroid/content/Intent;
    .restart local v15  # "intent":Landroid/content/Intent;
    :catch_8c
    move-exception v0

    move-object/from16 v18, v15

    .line 48
    .end local v15  # "intent":Landroid/content/Intent;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18  # "intent":Landroid/content/Intent;
    :goto_8f
    const-string v4, "WindowManager"

    const-string v5, "Some fatal exception in intercept"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .end local v0  # "e":Ljava/lang/Exception;
    .end local v18  # "intent":Landroid/content/Intent;
    :cond_96
    :goto_96
    return-void

    .line 34
    :catchall_97
    move-exception v0

    :try_start_98
    monitor-exit v4
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private shouldFinish(Ljava/lang/String;Landroid/os/IBinder;I)Z
    .registers 11
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "token"  # Landroid/os/IBinder;
    .param p3, "displayId"  # I

    .line 141
    iget-object v0, p0, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 142
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    const/4 v1, 0x0

    .line 143
    .local v1, "appToken":Lcom/android/server/wm/AppWindowToken;
    const/4 v2, 0x0

    if-eqz v0, :cond_99

    .line 144
    invoke-virtual {v0, p2}, Lcom/android/server/wm/DisplayContent;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v3

    move-object v1, v3

    if-nez v3, :cond_15

    goto/16 :goto_99

    .line 148
    :cond_15
    const/4 v3, 0x0

    .line 149
    .local v3, "isFinish":I
    iget-object v4, p0, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->mFlymePackageManagerService:Lcom/android/server/pm/FlymePackageManagerService;

    if-nez v4, :cond_1b

    .line 150
    const/4 v3, 0x0

    .line 152
    :cond_1b
    const/4 v4, 0x2

    invoke-direct {p0, p1, v4}, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->mayIntercept(Ljava/lang/String;I)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_33

    .line 153
    iget-object v4, p0, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->mFlymePackageManagerService:Lcom/android/server/pm/FlymePackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/FlymePackageManagerService;->getkeyguardBlackForSystem()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 154
    const/4 v3, -0x1

    goto :goto_6b

    .line 156
    :cond_31
    const/4 v3, 0x1

    goto :goto_6b

    .line 158
    :cond_33
    iget-object v4, p0, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingOrOccluded()Z

    move-result v4

    if-nez v4, :cond_4d

    iget-object v4, p0, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-direct {p0, p1, v5}, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->mayIntercept(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 159
    :cond_4d
    invoke-direct {p0, p1}, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->isIntercept(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6b

    .line 160
    iget-object v4, p0, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->mFlymePackageManagerService:Lcom/android/server/pm/FlymePackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/FlymePackageManagerService;->getkeyguardBlackForSystem()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 161
    const/4 v3, -0x1

    goto :goto_6b

    .line 163
    :cond_61
    iget-object v4, p0, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->mFlymePackageManagerService:Lcom/android/server/pm/FlymePackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/FlymePackageManagerService;->getMayInterceptPackage()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 164
    const/4 v3, 0x1

    .line 168
    :cond_6b
    :goto_6b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Detect finish states is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "WindowManager"

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    add-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_8d

    iget v4, v1, Lcom/android/server/wm/AppWindowToken;->mKeyguardlsitActivity:I

    const/high16 v6, 0x2000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_8d

    .line 172
    const/4 v3, 0x1

    .line 174
    :cond_8d
    iget v4, v1, Lcom/android/server/wm/AppWindowToken;->mKeyguardlsitActivity:I

    const/high16 v6, 0x4000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_95

    .line 175
    const/4 v3, 0x2

    .line 177
    :cond_95
    if-ne v3, v5, :cond_98

    .line 178
    return v5

    .line 180
    :cond_98
    return v2

    .line 145
    .end local v3  # "isFinish":I
    :cond_99
    :goto_99
    return v2
.end method


# virtual methods
.method public init(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3
    .param p1, "wms"  # Lcom/android/server/wm/WindowManagerService;

    .line 79
    iput-object p1, p0, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 80
    const-string v0, "flyme_packagemanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/FlymePackageManagerService;

    iput-object v0, p0, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->mFlymePackageManagerService:Lcom/android/server/pm/FlymePackageManagerService;

    .line 81
    const-string v0, "access_control"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/meizu/server/AccessControlService;

    iput-object v0, p0, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->mAccessControlService:Lcom/meizu/server/AccessControlService;

    .line 82
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->mActivityManager:Landroid/app/IActivityManager;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->isReady:Z

    .line 84
    return-void
.end method

.method public synthetic lambda$shouldFinishWithAccessControl$0$FlymeInterceptWindowControllerImpl(Lcom/android/server/wm/AppWindowToken;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "wtoken"  # Lcom/android/server/wm/AppWindowToken;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "finishActivity"  # Z

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->sendBroadcast(Lcom/android/server/wm/AppWindowToken;Ljava/lang/String;Z)V

    return-void
.end method

.method public onFinishActivityWithKeyguard(ILcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "finishTask"  # I
    .param p2, "record"  # Lcom/android/server/wm/ActivityRecord;

    .line 124
    iget-boolean v0, p0, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->isReady:Z

    if-eqz v0, :cond_5e

    const/16 v0, 0xa

    if-ne p1, v0, :cond_5e

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->mFlymePackageManagerService:Lcom/android/server/pm/FlymePackageManagerService;

    if-eqz v0, :cond_5e

    .line 126
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/TaskRecord;->taskId:I

    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/FlymePackageManagerService;->compareActivity(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 127
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5e

    .line 128
    iget-object v0, p0, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingOrOccluded()Z

    move-result v0

    if-nez v0, :cond_5e

    .line 129
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 130
    .local v0, "tr":Lcom/android/server/wm/TaskRecord;
    if-eqz v0, :cond_5e

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_5e

    .line 131
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    iget v2, v0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStack;->moveTaskToBackLocked(I)Z

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished by key-guard let`s move task to back:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .end local v0  # "tr":Lcom/android/server/wm/TaskRecord;
    :cond_5e
    return-void
.end method

.method public shouldFinishWithAccessControl(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;Z)Z
    .registers 16
    .param p1, "wtoken"  # Lcom/android/server/wm/AppWindowToken;
    .param p2, "win"  # Lcom/android/server/wm/WindowState;
    .param p3, "finishActivity"  # Z

    .line 88
    const-string v0, "WindowManager"

    const/4 v1, 0x0

    .line 89
    .local v1, "result":Z
    iget-boolean v2, p0, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->isReady:Z

    if-eqz v2, :cond_e3

    .line 90
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 92
    .local v2, "origId":J
    :try_start_b
    iget-object v4, p0, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingOrOccluded()Z

    move-result v4

    if-nez v4, :cond_1f

    iget-object v4, p0, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    if-nez v4, :cond_d1

    .line 93
    :cond_1f
    if-eqz p2, :cond_28

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    goto :goto_2c

    :cond_28
    iget-object v4, p1, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2c} :catch_d4
    .catchall {:try_start_b .. :try_end_2c} :catchall_d2

    .line 94
    .local v4, "packageName":Ljava/lang/String;
    :goto_2c
    const-string v5, "keyguard is showing!"

    const-string v6, "screen is off!"

    const-string v7, ",because it is added when "

    const/4 v8, 0x0

    if-eqz p2, :cond_8a

    .line 95
    :try_start_35
    iget-object v9, p1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v10

    invoke-direct {p0, v4, v9, v10}, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->shouldFinish(Ljava/lang/String;Landroid/os/IBinder;I)Z

    move-result v9

    if-nez v9, :cond_59

    iget-object v9, p0, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->mAccessControlService:Lcom/meizu/server/AccessControlService;

    if-eqz v9, :cond_57

    iget-object v9, p0, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->mAccessControlService:Lcom/meizu/server/AccessControlService;

    .line 96
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/meizu/server/AccessControlService;->isPopupUnlockingActivity(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_57

    goto :goto_59

    :cond_57
    move v9, v8

    goto :goto_5a

    :cond_59
    :goto_59
    const/4 v9, 0x1

    :goto_5a
    move v1, v9

    .line 97
    if-eqz v1, :cond_c1

    .line 98
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "not to show win:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v10}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v7, p0, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingOrOccluded()Z

    move-result v7

    if-eqz v7, :cond_7e

    goto :goto_7f

    :cond_7e
    move-object v5, v6

    :goto_7f
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 98
    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c1

    .line 102
    :cond_8a
    iget-object v9, p1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v10

    invoke-direct {p0, v4, v9, v10}, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->shouldFinish(Ljava/lang/String;Landroid/os/IBinder;I)Z

    move-result v9

    move v1, v9

    .line 103
    if-eqz v1, :cond_c1

    .line 104
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "not to show AppWindowToken:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-object v7, p0, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingOrOccluded()Z

    move-result v7

    if-eqz v7, :cond_b6

    goto :goto_b7

    :cond_b6
    move-object v5, v6

    :goto_b7
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 104
    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_c1
    :goto_c1
    if-eqz v1, :cond_d1

    .line 109
    iput v8, p1, Lcom/android/server/wm/AppWindowToken;->mKeyguardlsitActivity:I

    .line 110
    iget-object v5, p0, Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v6, Lcom/android/server/wm/-$$Lambda$FlymeInterceptWindowControllerImpl$ZYp855DbcUW1Wfqq2z0s5MBAh7Y;

    invoke-direct {v6, p0, p1, v4, p3}, Lcom/android/server/wm/-$$Lambda$FlymeInterceptWindowControllerImpl$ZYp855DbcUW1Wfqq2z0s5MBAh7Y;-><init>(Lcom/android/server/wm/FlymeInterceptWindowControllerImpl;Lcom/android/server/wm/AppWindowToken;Ljava/lang/String;Z)V

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_d1} :catch_d4
    .catchall {:try_start_35 .. :try_end_d1} :catchall_d2

    .line 116
    .end local v4  # "packageName":Ljava/lang/String;
    :cond_d1
    goto :goto_db

    :catchall_d2
    move-exception v0

    goto :goto_df

    .line 113
    :catch_d4
    move-exception v4

    .line 114
    .local v4, "e":Ljava/lang/Exception;
    :try_start_d5
    const-string v5, "shouldFinishWithAccessControl err"

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_da
    .catchall {:try_start_d5 .. :try_end_da} :catchall_d2

    .line 116
    nop

    .end local v4  # "e":Ljava/lang/Exception;
    :goto_db
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 117
    goto :goto_e3

    .line 116
    :goto_df
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 119
    .end local v2  # "origId":J
    :cond_e3
    :goto_e3
    return v1
.end method
