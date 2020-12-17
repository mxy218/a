.class Lcom/android/server/wm/KeyguardController;
.super Ljava/lang/Object;
.source "KeyguardController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field private mAodShowing:Z

.field private mBeforeUnoccludeTransit:I

.field private mDismissalRequested:Z

.field private final mDisplayStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardGoingAway:Z

.field private mKeyguardShowing:Z

.field private mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

.field private mSecondaryDisplayIdsShowing:[I

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field private mVisibilityTransactionDepth:I

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;)V
    .registers 4
    .param p1, "service"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "stackSupervisor"  # Lcom/android/server/wm/ActivityStackSupervisor;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    .line 79
    iput-object p1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 80
    iput-object p2, p0, Lcom/android/server/wm/KeyguardController;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 81
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/WindowManagerService;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/KeyguardController;

    .line 60
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/KeyguardController;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/KeyguardController;
    .param p1, "x1"  # I

    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->handleOccludedChanged(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/KeyguardController;

    .line 60
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object v0
.end method

.method private convertTransitFlags(I)I
    .registers 4
    .param p1, "keyguardGoingAwayFlags"  # I

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "result":I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_7

    .line 245
    or-int/lit8 v0, v0, 0x1

    .line 247
    :cond_7
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_d

    .line 248
    or-int/lit8 v0, v0, 0x2

    .line 250
    :cond_d
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_13

    .line 251
    or-int/lit8 v0, v0, 0x4

    .line 253
    :cond_13
    return v0
.end method

.method private dismissDockedStackIfNeeded()V
    .registers 4

    .line 407
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 412
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 413
    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 414
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_18

    .line 415
    return-void

    .line 417
    :cond_18
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 418
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isFocusedStackOnDisplay()Z

    move-result v2

    .line 417
    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;Z)V

    .line 420
    .end local v0  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_21
    return-void
.end method

.method private dumpDisplayStates(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 595
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 596
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->dumpStatus(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 595
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 598
    .end local v0  # "i":I
    :cond_17
    return-void
.end method

.method private failCallback(Lcom/android/internal/policy/IKeyguardDismissCallback;)V
    .registers 5
    .param p1, "callback"  # Lcom/android/internal/policy/IKeyguardDismissCallback;

    .line 236
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissError()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 239
    goto :goto_c

    .line 237
    :catch_4
    move-exception v0

    .line 238
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ActivityTaskManager"

    const-string v2, "Failed to call callback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method private getDisplay(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    .registers 5
    .param p1, "displayId"  # I

    .line 440
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 441
    .local v0, "state":Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    if-nez v0, :cond_17

    .line 442
    new-instance v1, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    iget-object v2, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v1, v2, p1}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;I)V

    move-object v0, v1

    .line 443
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 445
    :cond_17
    return-object v0
.end method

.method private handleDismissKeyguard()V
    .registers 6

    .line 351
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 352
    return-void

    .line 355
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mDismissalRequested:Z

    .line 360
    iget-object v2, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 361
    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 362
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    iget-boolean v3, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    if-eqz v3, :cond_44

    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->canDismissKeyguard()Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 363
    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v3

    const/16 v4, 0x17

    if-ne v3, v4, :cond_44

    .line 364
    iget v3, p0, Lcom/android/server/wm/KeyguardController;->mBeforeUnoccludeTransit:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4, v0}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    .line 366
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0, v1, v4, v4}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 367
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 369
    :cond_44
    return-void
.end method

.method private handleOccludedChanged(I)V
    .registers 6
    .param p1, "displayId"  # I

    .line 321
    if-eqz p1, :cond_6

    .line 322
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken(I)V

    .line 323
    return-void

    .line 326
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->onKeyguardOccludedChanged(Z)V

    .line 327
    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 328
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 330
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 331
    invoke-direct {p0}, Lcom/android/server/wm/KeyguardController;->resolveOccludeTransit()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v1, v3}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    .line 334
    invoke-direct {p0, v1}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken(I)V

    .line 335
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 336
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V
    :try_end_39
    .catchall {:try_start_1b .. :try_end_39} :catchall_3f

    .line 338
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 339
    goto :goto_46

    .line 338
    :catchall_3f
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0

    .line 341
    :cond_46
    :goto_46
    invoke-direct {p0}, Lcom/android/server/wm/KeyguardController;->dismissDockedStackIfNeeded()V

    .line 342
    return-void
.end method

.method private isDisplayOccluded(I)Z
    .registers 3
    .param p1, "displayId"  # I

    .line 372
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplay(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->access$200(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v0

    return v0
.end method

.method private resolveOccludeTransit()I
    .registers 6

    .line 384
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 385
    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 386
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    iget v1, p0, Lcom/android/server/wm/KeyguardController;->mBeforeUnoccludeTransit:I

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v1, v4, :cond_23

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 387
    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v1

    if-ne v1, v2, :cond_23

    .line 389
    invoke-direct {p0, v3}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 393
    iget v1, p0, Lcom/android/server/wm/KeyguardController;->mBeforeUnoccludeTransit:I

    return v1

    .line 395
    :cond_23
    invoke-direct {p0, v3}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v1

    if-nez v1, :cond_32

    .line 398
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/KeyguardController;->mBeforeUnoccludeTransit:I

    .line 399
    return v2

    .line 401
    :cond_32
    const/16 v1, 0x16

    return v1
.end method

.method private setKeyguardGoingAway(Z)V
    .registers 3
    .param p1, "keyguardGoingAway"  # Z

    .line 230
    iput-boolean p1, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardGoingAway:Z

    .line 231
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->setKeyguardGoingAway(Z)V

    .line 232
    return-void
.end method

.method private updateKeyguardSleepToken()V
    .registers 4

    .line 423
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 424
    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_18

    .line 425
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/RootActivityContainer;->getChildAt(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    .line 426
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    iget v2, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-direct {p0, v2}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken(I)V

    .line 424
    .end local v1  # "display":Lcom/android/server/wm/ActivityDisplay;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 428
    .end local v0  # "displayNdx":I
    :cond_18
    return-void
.end method

.method private updateKeyguardSleepToken(I)V
    .registers 4
    .param p1, "displayId"  # I

    .line 431
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplay(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    .line 432
    .local v0, "state":Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->isKeyguardUnoccludedOrAodShowing(I)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->access$300(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object v1

    if-nez v1, :cond_14

    .line 433
    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->acquiredSleepToken()V

    goto :goto_23

    .line 434
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->isKeyguardUnoccludedOrAodShowing(I)Z

    move-result v1

    if-nez v1, :cond_23

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->access$300(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 435
    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->releaseSleepToken()V

    .line 437
    :cond_23
    :goto_23
    return-void
.end method

.method private visibilitiesUpdated()V
    .registers 6

    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, "requestDismissKeyguard":Z
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 300
    .local v1, "displayNdx":I
    :goto_9
    if-ltz v1, :cond_22

    .line 301
    iget-object v2, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/RootActivityContainer;->getChildAt(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    .line 302
    .local v2, "display":Lcom/android/server/wm/ActivityDisplay;
    iget v3, v2, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-direct {p0, v3}, Lcom/android/server/wm/KeyguardController;->getDisplay(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v3

    .line 303
    .local v3, "state":Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    invoke-virtual {v3, p0, v2}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->visibilitiesUpdated(Lcom/android/server/wm/KeyguardController;Lcom/android/server/wm/ActivityDisplay;)V

    .line 304
    invoke-static {v3}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->access$100(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 300
    .end local v2  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v3  # "state":Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 308
    .end local v1  # "displayNdx":I
    :cond_22
    if-eqz v0, :cond_27

    .line 309
    invoke-direct {p0}, Lcom/android/server/wm/KeyguardController;->handleDismissKeyguard()V

    .line 311
    :cond_27
    return-void
.end method

.method private writeDisplayStatesToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 6
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J

    .line 601
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 602
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 601
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 604
    .end local v0  # "i":I
    :cond_17
    return-void
.end method


# virtual methods
.method beginActivityVisibilityUpdate()V
    .registers 2

    .line 260
    iget v0, p0, Lcom/android/server/wm/KeyguardController;->mVisibilityTransactionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/KeyguardController;->mVisibilityTransactionDepth:I

    .line 261
    return-void
.end method

.method canDismissKeyguard()Z
    .registers 3

    .line 379
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardTrusted()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 380
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    .line 379
    :goto_1a
    return v0
.end method

.method canShowActivityWhileKeyguardShowing(Lcom/android/server/wm/ActivityRecord;Z)Z
    .registers 4
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "dismissKeyguard"  # Z

    .line 283
    if-eqz p2, :cond_26

    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->canDismissKeyguard()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mAodShowing:Z

    if-nez v0, :cond_26

    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mDismissalRequested:Z

    if-nez v0, :cond_24

    .line 285
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 286
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/KeyguardController;->getDisplay(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->access$000(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eq v0, p1, :cond_26

    :cond_24
    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    .line 283
    :goto_27
    return v0
.end method

.method canShowWhileOccluded(ZZ)Z
    .registers 5
    .param p1, "dismissKeyguard"  # Z
    .param p2, "showWhenLocked"  # Z

    .line 293
    if-nez p2, :cond_15

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 294
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 293
    :goto_16
    return v0
.end method

.method dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .registers 8
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "callback"  # Lcom/android/internal/policy/IKeyguardDismissCallback;
    .param p3, "message"  # Ljava/lang/CharSequence;

    .line 201
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 202
    .local v0, "activityRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_83

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-nez v1, :cond_c

    goto/16 :goto_83

    .line 208
    :cond_c
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/wm/FlymeWindowManagerInternal;->isFeatureOpen(I)Z

    move-result v1

    const-string v2, "ActivityTaskManager"

    if-eqz v1, :cond_56

    .line 209
    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_56

    .line 210
    :cond_2d
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v1

    if-nez v1, :cond_56

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Abort dismissKeyguard: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has no permission \"Display views on lock screen\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-direct {p0, p2}, Lcom/android/server/wm/KeyguardController;->failCallback(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    .line 214
    return-void

    .line 218
    :cond_56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity requesting to dismiss Keyguard: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTurnScreenOnFlag()Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 223
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const-string v2, "dismissKeyguard"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->wakeUp(Ljava/lang/String;)V

    .line 226
    :cond_7d
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 227
    return-void

    .line 203
    :cond_83
    :goto_83
    invoke-direct {p0, p2}, Lcom/android/server/wm/KeyguardController;->failCallback(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    .line 204
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KeyguardController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mKeyguardShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mAodShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/KeyguardController;->mAodShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mKeyguardGoingAway="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardGoingAway:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 581
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/KeyguardController;->dumpDisplayStates(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mDismissalRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/KeyguardController;->mDismissalRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mVisibilityTransactionDepth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/KeyguardController;->mVisibilityTransactionDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 584
    return-void
.end method

.method endActivityVisibilityUpdate()V
    .registers 2

    .line 268
    iget v0, p0, Lcom/android/server/wm/KeyguardController;->mVisibilityTransactionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/KeyguardController;->mVisibilityTransactionDepth:I

    .line 269
    iget v0, p0, Lcom/android/server/wm/KeyguardController;->mVisibilityTransactionDepth:I

    if-nez v0, :cond_d

    .line 270
    invoke-direct {p0}, Lcom/android/server/wm/KeyguardController;->visibilitiesUpdated()V

    .line 272
    :cond_d
    return-void
.end method

.method isKeyguardGoingAway()Z
    .registers 2

    .line 129
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardGoingAway:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method isKeyguardLocked()Z
    .registers 2

    .line 121
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardGoingAway:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method isKeyguardOrAodShowing(I)Z
    .registers 3
    .param p1, "displayId"  # I

    .line 93
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mAodShowing:Z

    if-eqz v0, :cond_14

    :cond_8
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardGoingAway:Z

    if-nez v0, :cond_14

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 93
    :goto_15
    return v0
.end method

.method isKeyguardShowing(I)Z
    .registers 3
    .param p1, "displayId"  # I

    .line 114
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardGoingAway:Z

    if-nez v0, :cond_10

    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method isKeyguardUnoccludedOrAodShowing(I)Z
    .registers 3
    .param p1, "displayId"  # I

    .line 103
    if-nez p1, :cond_8

    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mAodShowing:Z

    if-eqz v0, :cond_8

    .line 104
    const/4 v0, 0x1

    return v0

    .line 106
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v0

    return v0
.end method

.method keyguardGoingAway(I)V
    .registers 10
    .param p1, "flags"  # I

    .line 172
    const-string v0, "keyguardGoingAway: surfaceLayout"

    iget-boolean v1, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    if-nez v1, :cond_7

    .line 173
    return-void

    .line 175
    :cond_7
    const-wide/16 v1, 0x40

    const-string v3, "keyguardGoingAway"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 176
    iget-object v3, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 178
    const/4 v3, 0x1

    :try_start_14
    invoke-direct {p0, v3}, Lcom/android/server/wm/KeyguardController;->setKeyguardGoingAway(Z)V

    .line 179
    iget-object v4, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v5, 0x14

    .line 181
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->convertTransitFlags(I)I

    move-result v6

    .line 180
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6, v7}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    .line 183
    invoke-direct {p0}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken()V

    .line 186
    iget-object v4, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 187
    iget-object v4, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v7, v7}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 188
    iget-object v4, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/RootActivityContainer;->addStartingWindowsForVisibleActivities(Z)V

    .line 190
    iget-object v3, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V
    :try_end_41
    .catchall {:try_start_14 .. :try_end_41} :catchall_51

    .line 192
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 194
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 196
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 197
    nop

    .line 198
    return-void

    .line 192
    :catchall_51
    move-exception v3

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 194
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 196
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v3
.end method

.method onDisplayRemoved(I)V
    .registers 4
    .param p1, "displayId"  # I

    .line 449
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 450
    .local v0, "state":Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    if-eqz v0, :cond_12

    .line 451
    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->onRemoved()V

    .line 452
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 454
    :cond_12
    return-void
.end method

.method setKeyguardShown(ZZ)V
    .registers 8
    .param p1, "keyguardShowing"  # Z
    .param p2, "aodShowing"  # Z

    .line 137
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardGoingAway:Z

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    move v0, v2

    goto :goto_10

    :cond_f
    :goto_f
    move v0, v1

    .line 139
    .local v0, "keyguardChanged":Z
    :goto_10
    iget-boolean v3, p0, Lcom/android/server/wm/KeyguardController;->mAodShowing:Z

    if-eq p2, v3, :cond_15

    goto :goto_16

    :cond_15
    move v1, v2

    .line 140
    .local v1, "aodChanged":Z
    :goto_16
    if-nez v0, :cond_1b

    if-nez v1, :cond_1b

    .line 141
    return-void

    .line 143
    :cond_1b
    iput-boolean p1, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    .line 144
    iput-boolean p2, p0, Lcom/android/server/wm/KeyguardController;->mAodShowing:Z

    .line 145
    iget-object v3, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p2}, Lcom/android/server/wm/WindowManagerService;->setAodShowing(Z)V

    .line 147
    if-eqz v0, :cond_30

    .line 149
    invoke-direct {p0}, Lcom/android/server/wm/KeyguardController;->dismissDockedStackIfNeeded()V

    .line 150
    invoke-direct {p0, v2}, Lcom/android/server/wm/KeyguardController;->setKeyguardGoingAway(Z)V

    .line 151
    if-eqz p1, :cond_30

    .line 152
    iput-boolean v2, p0, Lcom/android/server/wm/KeyguardController;->mDismissalRequested:Z

    .line 156
    :cond_30
    iget-object v3, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 157
    invoke-virtual {p0, v2}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v4

    .line 156
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->setKeyguardOrAodShowingOnDefaultDisplay(Z)V

    .line 161
    invoke-direct {p0}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken()V

    .line 162
    iget-object v3, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2, v2}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 163
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3
    .param p1, "windowManager"  # Lcom/android/server/wm/WindowManagerService;

    .line 84
    iput-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 85
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iput-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 86
    return-void
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J

    .line 587
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 588
    .local v0, "token":J
    iget-boolean v2, p0, Lcom/android/server/wm/KeyguardController;->mAodShowing:Z

    const-wide v3, 0x10800000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 589
    iget-boolean v2, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 590
    const-wide v2, 0x20b00000002L

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/wm/KeyguardController;->writeDisplayStatesToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 591
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 592
    return-void
.end method
