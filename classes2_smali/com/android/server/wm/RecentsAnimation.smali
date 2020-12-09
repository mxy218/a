.class Lcom/android/server/wm/RecentsAnimation;
.super Ljava/lang/Object;
.source "RecentsAnimation.java"

# interfaces
.implements Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;
.implements Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;


# static fields
.field private static final DEBUG:Z = false

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

    .line 53
    const-class v0, Lcom/android/server/wm/RecentsAnimation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStartController;Lcom/android/server/wm/WindowManagerService;Landroid/content/Intent;Landroid/content/ComponentName;ILcom/android/server/wm/WindowProcessController;)V
    .registers 9

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 83
    iput-object p2, p0, Lcom/android/server/wm/RecentsAnimation;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 84
    iget-object p2, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p2}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    .line 85
    iput-object p3, p0, Lcom/android/server/wm/RecentsAnimation;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 86
    iput-object p4, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 87
    iput-object p5, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    .line 88
    iput-object p6, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsComponent:Landroid/content/ComponentName;

    .line 89
    iput p7, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsUid:I

    .line 90
    iput-object p8, p0, Lcom/android/server/wm/RecentsAnimation;->mCaller:Lcom/android/server/wm/WindowProcessController;

    .line 91
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/RecentsAnimation;->mUserId:I

    .line 92
    nop

    .line 93
    nop

    .line 92
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_37

    .line 93
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p6, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 94
    const/4 p1, 0x3

    goto :goto_38

    .line 95
    :cond_37
    const/4 p1, 0x2

    :goto_38
    iput p1, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    .line 96
    return-void
.end method

.method private finishAnimation(IZ)V
    .registers 7
    .param p1  # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param

    .line 270
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 276
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityDisplay;->unregisterStackOrderChangedListener(Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;)V

    .line 278
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 279
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    .line 280
    if-nez v1, :cond_1a

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 284
    :cond_1a
    if-eqz p1, :cond_23

    .line 285
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->sendPowerHintForLaunchEndIfNeeded()V

    .line 289
    :cond_23
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2b

    .line 290
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->stopAppSwitches()V

    .line 293
    :cond_2b
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mCaller:Lcom/android/server/wm/WindowProcessController;

    if-eqz v2, :cond_35

    .line 294
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mCaller:Lcom/android/server/wm/WindowProcessController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowProcessController;->setRunningRecentsAnimation(Z)V

    .line 297
    :cond_35
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$reh_wG2afVmsOkGOZzt-QbWe4gE;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$reh_wG2afVmsOkGOZzt-QbWe4gE;-><init>(Lcom/android/server/wm/RecentsAnimation;IZLcom/android/server/wm/RecentsAnimationController;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 394
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_1c .. :try_end_40} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 395
    return-void

    .line 394
    :catchall_44
    move-exception p1

    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method private getTargetActivity(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityRecord;
    .registers 7

    .line 488
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 489
    return-object v0

    .line 492
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_a
    if-ltz v1, :cond_32

    .line 493
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityStack;->getChildAt(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    .line 494
    iget v3, v2, Lcom/android/server/wm/TaskRecord;->userId:I

    iget v4, p0, Lcom/android/server/wm/RecentsAnimation;->mUserId:I

    if-ne v3, v4, :cond_2f

    .line 495
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

    .line 496
    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    return-object p1

    .line 492
    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 499
    :cond_32
    return-object v0
.end method

.method private getTopNonAlwaysOnTopStack()Lcom/android/server/wm/ActivityStack;
    .registers 4

    .line 473
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1f

    .line 474
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 475
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 476
    nop

    .line 473
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 478
    :cond_1e
    return-object v1

    .line 480
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method static notifyAnimationCancelBeforeStart(Landroid/view/IRecentsAnimationRunner;)V
    .registers 3

    .line 463
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p0, v0}, Landroid/view/IRecentsAnimationRunner;->onAnimationCanceled(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5

    .line 466
    goto :goto_d

    .line 464
    :catch_5
    move-exception p0

    .line 465
    sget-object v0, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    const-string v1, "Failed to cancel recents animation before start"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 467
    :goto_d
    return-void
.end method

.method private startRecentsActivityInBackground(Ljava/lang/String;)V
    .registers 5

    .line 444
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 445
    iget v1, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 446
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->setAvoidMoveToFront()V

    .line 447
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    const/high16 v2, 0x10010000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 449
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    .line 450
    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    iget v1, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsUid:I

    .line 451
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsComponent:Landroid/content/ComponentName;

    .line 452
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    new-instance v1, Lcom/android/server/wm/SafeActivityOptions;

    invoke-direct {v1, v0}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    .line 453
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    iget v0, p0, Lcom/android/server/wm/RecentsAnimation;->mUserId:I

    .line 454
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStarter;->setMayWait(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 455
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStarter;->execute()I

    .line 456
    return-void
.end method


# virtual methods
.method public synthetic lambda$finishAnimation$0$RecentsAnimation(IZLcom/android/server/wm/RecentsAnimationController;)V
    .registers 16

    .line 298
    const-wide/16 v0, 0x40

    const-string v2, "RecentsAnimation#onAnimationFinished_inSurfaceTransaction"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 300
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 302
    :try_start_c
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->cleanupRecentsAnimation(I)V

    .line 304
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    iget v3, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/ActivityDisplay;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 308
    const/4 v2, 0x0

    if-eqz v5, :cond_24

    .line 309
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimation;->mLaunchedTargetActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/ActivityStack;->isInStackLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_23} :catch_a4
    .catchall {:try_start_c .. :try_end_23} :catchall_a2

    goto :goto_25

    .line 310
    :cond_24
    move-object v3, v2

    .line 314
    :goto_25
    if-nez v3, :cond_30

    .line 390
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 391
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 315
    return-void

    .line 319
    :cond_30
    :try_start_30
    iput-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    .line 321
    const/4 v11, 0x1

    if-ne p1, v11, :cond_56

    .line 323
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimation;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    if-eqz p2, :cond_50

    .line 327
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimation;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-boolean v11, p1, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    .line 328
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, v3, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v10, "RecentsAnimation.onAnimationFinished()"

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/wm/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    goto :goto_63

    .line 333
    :cond_50
    const-string p1, "RecentsAnimation.onAnimationFinished()"

    invoke-virtual {v5, p1}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    goto :goto_63

    .line 343
    :cond_56
    const/4 p2, 0x2

    if-ne p1, p2, :cond_8a

    .line 345
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object p1

    .line 346
    iget-object p2, p0, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {p1, v5, p2}, Lcom/android/server/wm/ActivityDisplay;->moveStackBehindStack(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStack;)V

    .line 357
    nop

    .line 373
    :goto_63
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v4, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 374
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p1, v2, v4, v4}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 375
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 379
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 385
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v11}, Lcom/android/server/wm/WindowManagerService;->checkSplitScreenMinimizedChanged(Z)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_80} :catch_a4
    .catchall {:try_start_30 .. :try_end_80} :catchall_a2

    .line 390
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 391
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 392
    nop

    .line 393
    return-void

    .line 363
    :cond_8a
    :try_start_8a
    invoke-virtual {p3}, Lcom/android/server/wm/RecentsAnimationController;->shouldDeferCancelWithScreenshot()Z

    move-result p1

    if-nez p1, :cond_99

    .line 364
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->isFocusedStackOnDisplay()Z

    move-result p1

    if-nez p1, :cond_99

    .line 365
    invoke-virtual {v5, v2, v4, v4}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/wm/ActivityRecord;IZ)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_99} :catch_a4
    .catchall {:try_start_8a .. :try_end_99} :catchall_a2

    .line 390
    :cond_99
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 391
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 370
    return-void

    .line 390
    :catchall_a2
    move-exception p1

    goto :goto_ad

    .line 386
    :catch_a4
    move-exception p1

    .line 387
    :try_start_a5
    sget-object p2, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    const-string p3, "Failed to clean up recents activity"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    throw p1
    :try_end_ad
    .catchall {:try_start_a5 .. :try_end_ad} :catchall_a2

    .line 390
    :goto_ad
    iget-object p2, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 391
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method public synthetic lambda$onAnimationFinished$1$RecentsAnimation(IZ)V
    .registers 3

    .line 403
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/RecentsAnimation;->finishAnimation(IZ)V

    return-void
.end method

.method public onAnimationFinished(IZZ)V
    .registers 5
    .param p1  # I
        .annotation build Lcom/android/server/wm/RecentsAnimationController$ReorderMode;
        .end annotation
    .end param

    .line 400
    if-eqz p2, :cond_6

    .line 401
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/RecentsAnimation;->finishAnimation(IZ)V

    goto :goto_12

    .line 403
    :cond_6
    iget-object p2, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v0, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$fjw2Vw5snMqEP-wvbelHZx-rg1Q;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$fjw2Vw5snMqEP-wvbelHZx-rg1Q;-><init>(Lcom/android/server/wm/RecentsAnimation;IZ)V

    invoke-virtual {p2, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 405
    :goto_12
    return-void
.end method

.method public onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V
    .registers 5

    .line 410
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityDisplay;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_61

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_61

    .line 414
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 415
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 416
    if-nez v0, :cond_1a

    .line 417
    return-void

    .line 420
    :cond_1a
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 421
    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 422
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    .line 423
    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->shouldDeferCancelUntilNextTransition()Z

    move-result v2

    .line 422
    invoke-virtual {v1, v2}, Lcom/android/server/wm/BoundsAnimationController;->setAnimationType(I)V

    .line 429
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4a

    .line 430
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentsAnimationController;->isTargetApp(Lcom/android/server/wm/AppWindowToken;)Z

    move-result p1

    if-eqz p1, :cond_59

    .line 431
    :cond_4a
    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->shouldDeferCancelUntilNextTransition()Z

    move-result p1

    if-eqz p1, :cond_59

    .line 433
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v2, v2}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 434
    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->setCancelOnNextTransitionStart()V

    goto :goto_60

    .line 438
    :cond_59
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const-string v0, "stackOrderChanged"

    invoke-virtual {p1, v2, v0}, Lcom/android/server/wm/WindowManagerService;->cancelRecentsAnimationSynchronously(ILjava/lang/String;)V

    .line 441
    :goto_60
    return-void

    .line 412
    :cond_61
    :goto_61
    return-void
.end method

.method preloadRecentsActivity()V
    .registers 7

    .line 105
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    iget v1, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ActivityDisplay;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 107
    invoke-direct {p0, v0}, Lcom/android/server/wm/RecentsAnimation;->getTargetActivity(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 108
    const-string v3, "preloadRecents"

    const/4 v4, 0x1

    if-eqz v1, :cond_28

    .line 109
    iget-boolean v5, v1, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v5, :cond_27

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_27

    .line 113
    :cond_1d
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v5

    if-eqz v5, :cond_52

    .line 117
    invoke-virtual {v1, v2, v2, v4}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZZ)Z

    goto :goto_52

    .line 111
    :cond_27
    :goto_27
    return-void

    .line 124
    :cond_28
    invoke-direct {p0, v3}, Lcom/android/server/wm/RecentsAnimation;->startRecentsActivityInBackground(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    iget v1, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ActivityDisplay;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 126
    invoke-direct {p0, v0}, Lcom/android/server/wm/RecentsAnimation;->getTargetActivity(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 127
    if-nez v1, :cond_52

    .line 128
    sget-object v0, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void

    .line 133
    :cond_52
    :goto_52
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v5

    if-nez v5, :cond_6e

    .line 135
    iget-object v5, p0, Lcom/android/server/wm/RecentsAnimation;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v5, v1, v2, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 138
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_6e

    .line 139
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 140
    invoke-virtual {v2, v5}, Lcom/android/server/wm/UnknownAppVisibilityController;->appRemovedOrHidden(Lcom/android/server/wm/AppWindowToken;)V

    .line 146
    :cond_6e
    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v1, v2, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v2

    if-nez v2, :cond_7b

    .line 152
    invoke-virtual {v0, v1, v4, v4, v3}, Lcom/android/server/wm/ActivityStack;->addToStopping(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V

    .line 155
    :cond_7b
    return-void
.end method

.method startRecentsActivity(Landroid/view/IRecentsAnimationRunner;)V
    .registers 16

    .line 159
    const-wide/16 v0, 0x40

    const-string v2, "RecentsAnimation#startRecentsActivity"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 162
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 163
    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 164
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->canStartRecentsAnimation()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 165
    invoke-static {p1}, Lcom/android/server/wm/RecentsAnimation;->notifyAnimationCancelBeforeStart(Landroid/view/IRecentsAnimationRunner;)V

    .line 168
    return-void

    .line 172
    :cond_1d
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    iget v3, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/ActivityDisplay;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 174
    invoke-direct {p0, v2}, Lcom/android/server/wm/RecentsAnimation;->getTargetActivity(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 175
    const/4 v5, 0x1

    if-eqz v3, :cond_2f

    move v6, v5

    goto :goto_30

    :cond_2f
    move v6, v4

    .line 176
    :goto_30
    if-eqz v6, :cond_44

    .line 177
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v7

    .line 178
    invoke-virtual {v7, v2}, Lcom/android/server/wm/ActivityDisplay;->getStackAbove(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityStack;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindStack:Lcom/android/server/wm/ActivityStack;

    .line 179
    iget-object v7, p0, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindStack:Lcom/android/server/wm/ActivityStack;

    if-nez v7, :cond_44

    .line 180
    invoke-static {p1}, Lcom/android/server/wm/RecentsAnimation;->notifyAnimationCancelBeforeStart(Landroid/view/IRecentsAnimationRunner;)V

    .line 182
    return-void

    .line 188
    :cond_44
    if-eqz v3, :cond_4a

    iget-boolean v7, v3, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v7, :cond_51

    .line 189
    :cond_4a
    iget-object v7, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v7, v5, v3}, Lcom/android/server/wm/RootActivityContainer;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 193
    :cond_51
    iget-object v7, p0, Lcom/android/server/wm/RecentsAnimation;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-virtual {v7, v8}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;)V

    .line 195
    iget-object v7, p0, Lcom/android/server/wm/RecentsAnimation;->mCaller:Lcom/android/server/wm/WindowProcessController;

    if-eqz v7, :cond_63

    .line 196
    invoke-virtual {v7, v5}, Lcom/android/server/wm/WindowProcessController;->setRunningRecentsAnimation(Z)V

    .line 199
    :cond_63
    iget-object v7, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 201
    const-string v7, "startRecentsActivity"

    if-eqz v6, :cond_83

    .line 203
    :try_start_6c
    iget-object v6, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v6, v2}, Lcom/android/server/wm/ActivityDisplay;->moveStackBehindBottomMostVisibleStack(Lcom/android/server/wm/ActivityStack;)V

    .line 210
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v8

    if-eq v6, v8, :cond_a3

    .line 211
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    invoke-virtual {v2, v6, v5, v7}, Lcom/android/server/wm/ActivityStack;->addTask(Lcom/android/server/wm/TaskRecord;ZLjava/lang/String;)V

    goto :goto_a3

    .line 216
    :cond_83
    const-string v2, "startRecentsActivity_noTargetActivity"

    invoke-direct {p0, v2}, Lcom/android/server/wm/RecentsAnimation;->startRecentsActivityInBackground(Ljava/lang/String;)V

    .line 219
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    iget v3, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/ActivityDisplay;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 221
    invoke-direct {p0, v2}, Lcom/android/server/wm/RecentsAnimation;->getTargetActivity(Lcom/android/server/wm/ActivityStack;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 222
    iget-object v6, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v6, v2}, Lcom/android/server/wm/ActivityDisplay;->moveStackBehindBottomMostVisibleStack(Lcom/android/server/wm/ActivityStack;)V

    .line 228
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v4, v4}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 229
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 238
    :cond_a3
    :goto_a3
    iput-boolean v5, v3, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    .line 239
    iput-object v3, p0, Lcom/android/server/wm/RecentsAnimation;->mLaunchedTargetActivity:Lcom/android/server/wm/ActivityRecord;

    .line 244
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v7}, Lcom/android/server/wm/WindowManagerService;->cancelRecentsAnimationSynchronously(ILjava/lang/String;)V

    .line 246
    iget-object v8, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v9, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    iget v12, v2, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 248
    invoke-virtual {v2}, Lcom/android/server/wm/RecentTasks;->getRecentTaskIds()Landroid/util/SparseBooleanArray;

    move-result-object v13

    .line 246
    move-object v10, p1

    move-object v11, p0

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/wm/WindowManagerService;->initializeRecentsAnimation(ILandroid/view/IRecentsAnimationRunner;Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;ILandroid/util/SparseBooleanArray;)V

    .line 252
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v4, v5}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 254
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimation;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object p1

    invoke-virtual {p1, v6, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/wm/ActivityRecord;)V

    .line 258
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityDisplay;->registerStackOrderChangedListener(Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;)V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_d8} :catch_e4
    .catchall {:try_start_6c .. :try_end_d8} :catchall_e2

    .line 263
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 264
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 265
    nop

    .line 266
    return-void

    .line 263
    :catchall_e2
    move-exception p1

    goto :goto_ed

    .line 259
    :catch_e4
    move-exception p1

    .line 260
    :try_start_e5
    sget-object v2, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    const-string v3, "Failed to start recents activity"

    invoke-static {v2, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    throw p1
    :try_end_ed
    .catchall {:try_start_e5 .. :try_end_ed} :catchall_e2

    .line 263
    :goto_ed
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 264
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method
