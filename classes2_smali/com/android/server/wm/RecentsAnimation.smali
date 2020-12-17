.class Lcom/android/server/wm/RecentsAnimation;
.super Ljava/lang/Object;
.source "RecentsAnimation.java"

# interfaces
.implements Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;
.implements Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivityStartController:Lcom/android/server/wm/ActivityStartController;

.field private final mCaller:Lcom/android/server/wm/WindowProcessController;

.field private final mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

.field private mLaunchedTargetActivity:Lcom/android/server/wm/ActivityRecord;

.field private final mRecentsComponent:Landroid/content/ComponentName;

.field private final mRecentsUid:I

.field private mRestoreTargetBehindStack:Lcom/android/server/wm/ActivityStack;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field private final mTargetActivityType:I

.field private final mTargetIntent:Landroid/content/Intent;

.field private final mUserId:I

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    const-class v0, Lcom/android/server/wm/RecentsAnimation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    .line 55
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RECENTS_ANIMATIONS:Z

    sput-boolean v0, Lcom/android/server/wm/RecentsAnimation;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStartController;Lcom/android/server/wm/WindowManagerService;Landroid/content/Intent;Landroid/content/ComponentName;ILcom/android/server/wm/WindowProcessController;)V
    .registers 10
    .param p1, "atm"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "stackSupervisor"  # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p3, "activityStartController"  # Lcom/android/server/wm/ActivityStartController;
    .param p4, "wm"  # Lcom/android/server/wm/WindowManagerService;
    .param p5, "targetIntent"  # Landroid/content/Intent;
    .param p6, "recentsComponent"  # Landroid/content/ComponentName;
    .param p7, "recentsUid"  # I
    .param p8, "caller"  # Lcom/android/server/wm/WindowProcessController;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 84
    iput-object p2, p0, Lcom/android/server/wm/RecentsAnimation;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 85
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    .line 86
    iput-object p3, p0, Lcom/android/server/wm/RecentsAnimation;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 87
    iput-object p4, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 88
    iput-object p5, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    .line 89
    iput-object p6, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsComponent:Landroid/content/ComponentName;

    .line 90
    iput p7, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsUid:I

    .line 91
    iput-object p8, p0, Lcom/android/server/wm/RecentsAnimation;->mCaller:Lcom/android/server/wm/WindowProcessController;

    .line 92
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentsAnimation;->mUserId:I

    .line 93
    nop

    .line 94
    nop

    .line 93
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 94
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p6, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 95
    const/4 v0, 0x3

    goto :goto_38

    .line 96
    :cond_37
    const/4 v0, 0x2

    :goto_38
    iput v0, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    .line 97
    return-void
.end method

.method private finishAnimation(IZ)V
    .registers 7
    .param p1, "reorderMode"  # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param
    .param p2, "sendUserLeaveHint"  # Z

    .line 271
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 272
    sget-boolean v1, Lcom/android/server/wm/RecentsAnimation;->DEBUG:Z

    if-eqz v1, :cond_30

    sget-object v1, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAnimationFinished(): controller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 273
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " reorderMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 272
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_30
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityDisplay;->unregisterStackOrderChangedListener(Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;)V

    .line 279
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 280
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    .line 281
    .local v1, "controller":Lcom/android/server/wm/RecentsAnimationController;
    if-nez v1, :cond_42

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_5 .. :try_end_3e} :catchall_77

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 285
    :cond_42
    if-eqz p1, :cond_4b

    .line 286
    :try_start_44
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->sendPowerHintForLaunchEndIfNeeded()V

    .line 290
    :cond_4b
    const/4 v2, 0x1

    if-ne p1, v2, :cond_53

    .line 291
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->stopAppSwitches()V

    .line 294
    :cond_53
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mCaller:Lcom/android/server/wm/WindowProcessController;

    if-eqz v2, :cond_5d

    .line 295
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mCaller:Lcom/android/server/wm/WindowProcessController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowProcessController;->setRunningRecentsAnimation(Z)V

    .line 298
    :cond_5d
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$reh_wG2afVmsOkGOZzt-QbWe4gE;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$reh_wG2afVmsOkGOZzt-QbWe4gE;-><init>(Lcom/android/server/wm/RecentsAnimation;IZLcom/android/server/wm/RecentsAnimationController;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 395
    const-class v2, Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/FlymeWindowManagerInternal;->onRecentsAnimationFinish()V

    .line 396
    .end local v1  # "controller":Lcom/android/server/wm/RecentsAnimationController;
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_44 .. :try_end_73} :catchall_77

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 397
    return-void

    .line 396
    :catchall_77
    move-exception v1

    :try_start_78
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private getTargetActivity(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityRecord;
    .registers 7
    .param p1, "targetStack"  # Lcom/android/server/wm/ActivityStack;

    .line 490
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 491
    return-object v0

    .line 494
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_32

    .line 495
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityStack;->getChildAt(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    .line 496
    .local v2, "task":Lcom/android/server/wm/TaskRecord;
    iget v3, v2, Lcom/android/server/wm/TaskRecord;->userId:I

    iget v4, p0, Lcom/android/server/wm/RecentsAnimation;->mUserId:I

    if-ne v3, v4, :cond_2f

    .line 497
    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 498
    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0

    .line 494
    .end local v2  # "task":Lcom/android/server/wm/TaskRecord;
    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 501
    .end local v1  # "i":I
    :cond_32
    return-object v0
.end method

.method private getTopNonAlwaysOnTopStack()Lcom/android/server/wm/ActivityStack;
    .registers 4

    .line 475
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1f

    .line 476
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 477
    .local v1, "s":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 478
    nop

    .line 475
    .end local v1  # "s":Lcom/android/server/wm/ActivityStack;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 480
    .restart local v1  # "s":Lcom/android/server/wm/ActivityStack;
    :cond_1e
    return-object v1

    .line 482
    .end local v0  # "i":I
    .end local v1  # "s":Lcom/android/server/wm/ActivityStack;
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method static notifyAnimationCancelBeforeStart(Landroid/view/IRecentsAnimationRunner;)V
    .registers 4
    .param p0, "recentsAnimationRunner"  # Landroid/view/IRecentsAnimationRunner;

    .line 465
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p0, v0}, Landroid/view/IRecentsAnimationRunner;->onAnimationCanceled(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5

    .line 468
    goto :goto_d

    .line 466
    :catch_5
    move-exception v0

    .line 467
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    const-string v2, "Failed to cancel recents animation before start"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 469
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_d
    return-void
.end method

.method private startRecentsActivityInBackground(Ljava/lang/String;)V
    .registers 5
    .param p1, "reason"  # Ljava/lang/String;

    .line 446
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 447
    .local v0, "options":Landroid/app/ActivityOptions;
    iget v1, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 448
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->setAvoidMoveToFront()V

    .line 449
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    const/high16 v2, 0x10010000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 451
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    .line 452
    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsUid:I

    .line 453
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsComponent:Landroid/content/ComponentName;

    .line 454
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/SafeActivityOptions;

    invoke-direct {v2, v0}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    .line 455
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/RecentsAnimation;->mUserId:I

    .line 456
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setMayWait(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 457
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->execute()I

    .line 458
    return-void
.end method


# virtual methods
.method public synthetic lambda$finishAnimation$0$RecentsAnimation(IZLcom/android/server/wm/RecentsAnimationController;)V
    .registers 20
    .param p1, "reorderMode"  # I
    .param p2, "sendUserLeaveHint"  # Z
    .param p3, "controller"  # Lcom/android/server/wm/RecentsAnimationController;

    .line 299
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-wide/16 v3, 0x40

    const-string v0, "RecentsAnimation#onAnimationFinished_inSurfaceTransaction"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 301
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 303
    :try_start_10
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->cleanupRecentsAnimation(I)V

    .line 305
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    iget v5, v1, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5}, Lcom/android/server/wm/ActivityDisplay;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 309
    .local v0, "targetStack":Lcom/android/server/wm/ActivityStack;
    const/4 v5, 0x0

    if-eqz v0, :cond_28

    .line 310
    iget-object v7, v1, Lcom/android/server/wm/RecentsAnimation;->mLaunchedTargetActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityStack;->isInStackLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    goto :goto_29

    .line 311
    :cond_28
    move-object v7, v5

    :goto_29
    move-object v13, v7

    .line 312
    .local v13, "targetActivity":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v7, Lcom/android/server/wm/RecentsAnimation;->DEBUG:Z

    if-eqz v7, :cond_56

    sget-object v7, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onAnimationFinished(): targetStack="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " targetActivity="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " mRestoreTargetBehindStack="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_56} :catch_136
    .catchall {:try_start_10 .. :try_end_56} :catchall_134

    .line 315
    :cond_56
    if-nez v13, :cond_61

    .line 391
    iget-object v5, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 392
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 316
    return-void

    .line 320
    :cond_61
    :try_start_61
    iput-boolean v6, v13, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_63} :catch_136
    .catchall {:try_start_61 .. :try_end_63} :catchall_134

    .line 322
    const-string v14, "Expected target stack="

    const/4 v15, 0x1

    if-ne v2, v15, :cond_b0

    .line 324
    :try_start_68
    iget-object v7, v1, Lcom/android/server/wm/RecentsAnimation;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    if-eqz p2, :cond_84

    .line 328
    iget-object v7, v1, Lcom/android/server/wm/RecentsAnimation;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-boolean v15, v7, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    .line 329
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v11, v13, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v12, "RecentsAnimation.onAnimationFinished()"

    move-object v7, v0

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wm/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/wm/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    goto :goto_89

    .line 334
    :cond_84
    const-string v7, "RecentsAnimation.onAnimationFinished()"

    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 337
    :goto_89
    sget-boolean v7, Lcom/android/server/wm/RecentsAnimation;->DEBUG:Z

    if-eqz v7, :cond_f5

    .line 338
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/RecentsAnimation;->getTopNonAlwaysOnTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v7

    .line 339
    .local v7, "topStack":Lcom/android/server/wm/ActivityStack;
    if-eq v7, v0, :cond_af

    .line 340
    sget-object v8, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " to be top most but found stack="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    .end local v7  # "topStack":Lcom/android/server/wm/ActivityStack;
    :cond_af
    goto :goto_f5

    .line 344
    :cond_b0
    const/4 v7, 0x2

    if-ne v2, v7, :cond_11c

    .line 346
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v7

    .line 347
    .local v7, "display":Lcom/android/server/wm/ActivityDisplay;
    iget-object v8, v1, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v7, v0, v8}, Lcom/android/server/wm/ActivityDisplay;->moveStackBehindStack(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack;)V

    .line 348
    sget-boolean v8, Lcom/android/server/wm/RecentsAnimation;->DEBUG:Z

    if-eqz v8, :cond_f4

    .line 349
    iget-object v8, v1, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    .line 350
    invoke-virtual {v8, v0}, Lcom/android/server/wm/ActivityDisplay;->getStackAbove(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityStack;

    move-result-object v8

    .line 351
    .local v8, "aboveTargetStack":Lcom/android/server/wm/ActivityStack;
    iget-object v9, v1, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v9, :cond_f4

    iget-object v9, v1, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindStack:Lcom/android/server/wm/ActivityStack;

    if-eq v8, v9, :cond_f4

    .line 353
    sget-object v9, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " to restored behind stack="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " but it is behind stack="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    .end local v7  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v8  # "aboveTargetStack":Lcom/android/server/wm/ActivityStack;
    :cond_f4
    nop

    .line 374
    :cond_f5
    :goto_f5
    iget-object v7, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7, v6, v6}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 375
    iget-object v7, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v7, v5, v6, v6}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 376
    iget-object v5, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 380
    iget-object v5, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 386
    iget-object v5, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v15}, Lcom/android/server/wm/WindowManagerService;->checkSplitScreenMinimizedChanged(Z)V
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_112} :catch_136
    .catchall {:try_start_68 .. :try_end_112} :catchall_134

    .line 391
    .end local v0  # "targetStack":Lcom/android/server/wm/ActivityStack;
    .end local v13  # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 392
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 393
    nop

    .line 394
    return-void

    .line 364
    .restart local v0  # "targetStack":Lcom/android/server/wm/ActivityStack;
    .restart local v13  # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_11c
    :try_start_11c
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/RecentsAnimationController;->shouldDeferCancelWithScreenshot()Z

    move-result v7

    if-nez v7, :cond_12b

    .line 365
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isFocusedStackOnDisplay()Z

    move-result v7

    if-nez v7, :cond_12b

    .line 366
    invoke-virtual {v0, v5, v6, v6}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/wm/ActivityRecord;IZ)V
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_12b} :catch_136
    .catchall {:try_start_11c .. :try_end_12b} :catchall_134

    .line 391
    :cond_12b
    iget-object v5, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 392
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 371
    return-void

    .line 391
    .end local v0  # "targetStack":Lcom/android/server/wm/ActivityStack;
    .end local v13  # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    :catchall_134
    move-exception v0

    goto :goto_140

    .line 387
    :catch_136
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/Exception;
    :try_start_137
    sget-object v5, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    const-string v6, "Failed to clean up recents activity"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    nop

    .end local p0  # "this":Lcom/android/server/wm/RecentsAnimation;
    .end local p1  # "reorderMode":I
    .end local p2  # "sendUserLeaveHint":Z
    .end local p3  # "controller":Lcom/android/server/wm/RecentsAnimationController;
    throw v0
    :try_end_140
    .catchall {:try_start_137 .. :try_end_140} :catchall_134

    .line 391
    .end local v0  # "e":Ljava/lang/Exception;
    .restart local p0  # "this":Lcom/android/server/wm/RecentsAnimation;
    .restart local p1  # "reorderMode":I
    .restart local p2  # "sendUserLeaveHint":Z
    .restart local p3  # "controller":Lcom/android/server/wm/RecentsAnimationController;
    :goto_140
    iget-object v5, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 392
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public synthetic lambda$onAnimationFinished$1$RecentsAnimation(IZ)V
    .registers 3
    .param p1, "reorderMode"  # I
    .param p2, "sendUserLeaveHint"  # Z

    .line 405
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/RecentsAnimation;->finishAnimation(IZ)V

    return-void
.end method

.method public onAnimationFinished(IZZ)V
    .registers 6
    .param p1, "reorderMode"  # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param
    .param p2, "runSychronously"  # Z
    .param p3, "sendUserLeaveHint"  # Z

    .line 402
    if-eqz p2, :cond_6

    .line 403
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/RecentsAnimation;->finishAnimation(IZ)V

    goto :goto_12

    .line 405
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$fjw2Vw5snMqEP-wvbelHZx-rg1Q;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$fjw2Vw5snMqEP-wvbelHZx-rg1Q;-><init>(Lcom/android/server/wm/RecentsAnimation;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 407
    :goto_12
    return-void
.end method

.method public onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V
    .registers 7
    .param p1, "stack"  # Lcom/android/server/wm/ActivityStack;

    .line 411
    sget-boolean v0, Lcom/android/server/wm/RecentsAnimation;->DEBUG:Z

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStackOrderChanged(): stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityDisplay;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7b

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_7b

    .line 416
    :cond_2b
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 417
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 418
    .local v0, "controller":Lcom/android/server/wm/RecentsAnimationController;
    if-nez v0, :cond_34

    .line 419
    return-void

    .line 422
    :cond_34
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 423
    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 424
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    .line 425
    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->shouldDeferCancelUntilNextTransition()Z

    move-result v3

    .line 424
    invoke-virtual {v2, v3}, Lcom/android/server/wm/BoundsAnimationController;->setAnimationType(I)V

    .line 431
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_64

    .line 432
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RecentsAnimationController;->isTargetApp(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 433
    :cond_64
    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->shouldDeferCancelUntilNextTransition()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 435
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v3, v3}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 436
    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->setCancelOnNextTransitionStart()V

    goto :goto_7a

    .line 440
    :cond_73
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const-string v4, "stackOrderChanged"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->cancelRecentsAnimationSynchronously(ILjava/lang/String;)V

    .line 443
    :goto_7a
    return-void

    .line 414
    .end local v0  # "controller":Lcom/android/server/wm/RecentsAnimationController;
    .end local v1  # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_7b
    :goto_7b
    return-void
.end method

.method preloadRecentsActivity()V
    .registers 9

    .line 105
    sget-boolean v0, Lcom/android/server/wm/RecentsAnimation;->DEBUG:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preload recents with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    iget v1, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ActivityDisplay;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 108
    .local v0, "targetStack":Lcom/android/server/wm/ActivityStack;
    invoke-direct {p0, v0}, Lcom/android/server/wm/RecentsAnimation;->getTargetActivity(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 109
    .local v1, "targetActivity":Lcom/android/server/wm/ActivityRecord;
    const-string v3, "preloadRecents"

    const/4 v4, 0x1

    if-eqz v1, :cond_62

    .line 110
    iget-boolean v5, v1, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v5, :cond_61

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    move-result v5

    if-eqz v5, :cond_39

    goto :goto_61

    .line 114
    :cond_39
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 118
    invoke-virtual {v1, v2, v2, v4}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZZ)Z

    .line 120
    sget-boolean v5, Lcom/android/server/wm/RecentsAnimation;->DEBUG:Z

    if-eqz v5, :cond_8c

    sget-object v5, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updated config="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c

    .line 112
    :cond_61
    :goto_61
    return-void

    .line 125
    :cond_62
    invoke-direct {p0, v3}, Lcom/android/server/wm/RecentsAnimation;->startRecentsActivityInBackground(Ljava/lang/String;)V

    .line 126
    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    iget v6, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v5, v2, v6}, Lcom/android/server/wm/ActivityDisplay;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 127
    invoke-direct {p0, v0}, Lcom/android/server/wm/RecentsAnimation;->getTargetActivity(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 128
    if-nez v1, :cond_8c

    .line 129
    sget-object v2, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void

    .line 134
    :cond_8c
    :goto_8c
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v5

    if-nez v5, :cond_b3

    .line 135
    sget-boolean v5, Lcom/android/server/wm/RecentsAnimation;->DEBUG:Z

    if-eqz v5, :cond_9d

    sget-object v5, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    const-string v6, "Real start recents"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_9d
    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimation;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v5, v1, v2, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 139
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_b3

    .line 140
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 141
    invoke-virtual {v2, v5}, Lcom/android/server/wm/UnknownAppVisibilityController;->appRemovedOrHidden(Lcom/android/server/wm/AppWindowToken;)V

    .line 147
    :cond_b3
    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v1, v2, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v2

    if-nez v2, :cond_c0

    .line 153
    invoke-virtual {v0, v1, v4, v4, v3}, Lcom/android/server/wm/ActivityStack;->addToStopping(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V

    .line 156
    :cond_c0
    return-void
.end method

.method startRecentsActivity(Landroid/view/IRecentsAnimationRunner;)V
    .registers 18
    .param p1, "recentsAnimationRunner"  # Landroid/view/IRecentsAnimationRunner;

    .line 159
    move-object/from16 v7, p0

    sget-boolean v0, Lcom/android/server/wm/RecentsAnimation;->DEBUG:Z

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecentsActivity(): intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_1e
    const-wide/16 v8, 0x40

    const-string v0, "RecentsAnimation#startRecentsActivity"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 163
    iget-object v0, v7, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 164
    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    iget-object v10, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 165
    .local v10, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v0, v7, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->canStartRecentsAnimation()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 166
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/RecentsAnimation;->notifyAnimationCancelBeforeStart(Landroid/view/IRecentsAnimationRunner;)V

    .line 167
    sget-boolean v0, Lcom/android/server/wm/RecentsAnimation;->DEBUG:Z

    if-eqz v0, :cond_5a

    sget-object v0, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t start recents animation, nextAppTransition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 168
    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_5a
    return-void

    .line 173
    :cond_5b
    iget-object v0, v7, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    iget v1, v7, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v1}, Lcom/android/server/wm/ActivityDisplay;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 175
    .local v1, "targetStack":Lcom/android/server/wm/ActivityStack;
    invoke-direct {v7, v1}, Lcom/android/server/wm/RecentsAnimation;->getTargetActivity(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 176
    .local v2, "targetActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v0, 0x1

    if-eqz v2, :cond_6d

    move v3, v0

    goto :goto_6e

    :cond_6d
    move v3, v11

    :goto_6e
    move v12, v3

    .line 177
    .local v12, "hasExistingActivity":Z
    if-eqz v12, :cond_9d

    .line 178
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    .line 179
    .local v3, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivityDisplay;->getStackAbove(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    iput-object v4, v7, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindStack:Lcom/android/server/wm/ActivityStack;

    .line 180
    iget-object v4, v7, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindStack:Lcom/android/server/wm/ActivityStack;

    if-nez v4, :cond_9d

    .line 181
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/RecentsAnimation;->notifyAnimationCancelBeforeStart(Landroid/view/IRecentsAnimationRunner;)V

    .line 182
    sget-boolean v0, Lcom/android/server/wm/RecentsAnimation;->DEBUG:Z

    if-eqz v0, :cond_9c

    sget-object v0, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No stack above target stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_9c
    return-void

    .line 189
    .end local v3  # "display":Lcom/android/server/wm/ActivityDisplay;
    :cond_9d
    if-eqz v2, :cond_a3

    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v3, :cond_aa

    .line 190
    :cond_a3
    iget-object v3, v7, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, v0, v2}, Lcom/android/server/wm/RootActivityContainer;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 194
    :cond_aa
    iget-object v3, v7, Lcom/android/server/wm/RecentsAnimation;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v3

    iget-object v4, v7, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;)V

    .line 196
    iget-object v3, v7, Lcom/android/server/wm/RecentsAnimation;->mCaller:Lcom/android/server/wm/WindowProcessController;

    if-eqz v3, :cond_bc

    .line 197
    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowProcessController;->setRunningRecentsAnimation(Z)V

    .line 200
    :cond_bc
    iget-object v3, v7, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 202
    const-string v3, " behind stack="

    const-string v4, "startRecentsActivity"

    const-string v5, "Moved stack="

    if-eqz v12, :cond_106

    .line 204
    :try_start_c9
    iget-object v6, v7, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v6, v1}, Lcom/android/server/wm/ActivityDisplay;->moveStackBehindBottomMostVisibleStack(Lcom/android/server/wm/ActivityStack;)V

    .line 205
    sget-boolean v6, Lcom/android/server/wm/RecentsAnimation;->DEBUG:Z

    if-eqz v6, :cond_f2

    sget-object v6, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    .line 206
    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivityDisplay;->getStackAbove(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_f2
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v5

    if-eq v3, v5, :cond_103

    .line 212
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    invoke-virtual {v1, v3, v0, v4}, Lcom/android/server/wm/ActivityStack;->addTask(Lcom/android/server/wm/TaskRecord;ZLjava/lang/String;)V

    .line 239
    :cond_103
    :goto_103
    move-object v14, v1

    move-object v13, v2

    goto :goto_169

    .line 217
    :cond_106
    const-string v6, "startRecentsActivity_noTargetActivity"

    invoke-direct {v7, v6}, Lcom/android/server/wm/RecentsAnimation;->startRecentsActivityInBackground(Ljava/lang/String;)V

    .line 220
    iget-object v6, v7, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    iget v13, v7, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v6, v11, v13}, Lcom/android/server/wm/ActivityDisplay;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    move-object v1, v6

    .line 222
    invoke-direct {v7, v1}, Lcom/android/server/wm/RecentsAnimation;->getTargetActivity(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    move-object v2, v6

    .line 223
    iget-object v6, v7, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v6, v1}, Lcom/android/server/wm/ActivityDisplay;->moveStackBehindBottomMostVisibleStack(Lcom/android/server/wm/ActivityStack;)V

    .line 224
    sget-boolean v6, Lcom/android/server/wm/RecentsAnimation;->DEBUG:Z

    if-eqz v6, :cond_142

    .line 225
    sget-object v6, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    .line 226
    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivityDisplay;->getStackAbove(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 225
    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_142
    iget-object v3, v7, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v11, v11}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 230
    iget-object v3, v7, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 234
    sget-boolean v3, Lcom/android/server/wm/RecentsAnimation;->DEBUG:Z

    if-eqz v3, :cond_103

    sget-object v3, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Started intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_168} :catch_1b4
    .catchall {:try_start_c9 .. :try_end_168} :catchall_1b2

    goto :goto_103

    .line 239
    .end local v1  # "targetStack":Lcom/android/server/wm/ActivityStack;
    .end local v2  # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .local v13, "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .local v14, "targetStack":Lcom/android/server/wm/ActivityStack;
    :goto_169
    :try_start_169
    iput-boolean v0, v13, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    .line 240
    iput-object v13, v7, Lcom/android/server/wm/RecentsAnimation;->mLaunchedTargetActivity:Lcom/android/server/wm/ActivityRecord;

    .line 245
    iget-object v1, v7, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v15, 0x2

    invoke-virtual {v1, v15, v4}, Lcom/android/server/wm/WindowManagerService;->cancelRecentsAnimationSynchronously(ILjava/lang/String;)V

    .line 247
    iget-object v1, v7, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v2, v7, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    iget-object v3, v7, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    iget v5, v3, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    iget-object v3, v7, Lcom/android/server/wm/RecentsAnimation;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 249
    invoke-virtual {v3}, Lcom/android/server/wm/RecentTasks;->getRecentTaskIds()Landroid/util/SparseBooleanArray;

    move-result-object v6

    .line 247
    move-object/from16 v3, p1

    move-object/from16 v4, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowManagerService;->initializeRecentsAnimation(ILandroid/view/IRecentsAnimationRunner;Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;ILandroid/util/SparseBooleanArray;)V

    .line 253
    iget-object v1, v7, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v11, v0}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 255
    iget-object v0, v7, Lcom/android/server/wm/RecentsAnimation;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    invoke-virtual {v0, v15, v13}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/wm/ActivityRecord;)V

    .line 259
    iget-object v0, v7, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityDisplay;->registerStackOrderChangedListener(Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;)V
    :try_end_1a0
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_1a0} :catch_1ae
    .catchall {:try_start_169 .. :try_end_1a0} :catchall_1aa

    .line 264
    iget-object v0, v7, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 265
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 266
    nop

    .line 267
    return-void

    .line 264
    :catchall_1aa
    move-exception v0

    move-object v2, v13

    move-object v1, v14

    goto :goto_1be

    .line 260
    :catch_1ae
    move-exception v0

    move-object v2, v13

    move-object v1, v14

    goto :goto_1b5

    .line 264
    .end local v13  # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v14  # "targetStack":Lcom/android/server/wm/ActivityStack;
    .restart local v1  # "targetStack":Lcom/android/server/wm/ActivityStack;
    .restart local v2  # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    :catchall_1b2
    move-exception v0

    goto :goto_1be

    .line 260
    :catch_1b4
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    :goto_1b5
    :try_start_1b5
    sget-object v3, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    const-string v4, "Failed to start recents activity"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    nop

    .end local v1  # "targetStack":Lcom/android/server/wm/ActivityStack;
    .end local v2  # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v10  # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v12  # "hasExistingActivity":Z
    .end local p0  # "this":Lcom/android/server/wm/RecentsAnimation;
    .end local p1  # "recentsAnimationRunner":Landroid/view/IRecentsAnimationRunner;
    throw v0
    :try_end_1be
    .catchall {:try_start_1b5 .. :try_end_1be} :catchall_1b2

    .line 264
    .end local v0  # "e":Ljava/lang/Exception;
    .restart local v1  # "targetStack":Lcom/android/server/wm/ActivityStack;
    .restart local v2  # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v10  # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v12  # "hasExistingActivity":Z
    .restart local p0  # "this":Lcom/android/server/wm/RecentsAnimation;
    .restart local p1  # "recentsAnimationRunner":Landroid/view/IRecentsAnimationRunner;
    :goto_1be
    iget-object v3, v7, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 265
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method
