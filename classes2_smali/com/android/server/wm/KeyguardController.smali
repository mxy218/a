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

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    .line 81
    iput-object p1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 82
    iput-object p2, p0, Lcom/android/server/wm/KeyguardController;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 83
    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/wm/KeyguardController;I)V
    .registers 2

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->handleOccludedChanged(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object p0
.end method

.method private convertTransitFlags(I)I
    .registers 4

    .line 233
    nop

    .line 234
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_7

    .line 235
    const/4 v0, 0x1

    goto :goto_8

    .line 234
    :cond_7
    const/4 v0, 0x0

    .line 237
    :goto_8
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_e

    .line 238
    or-int/lit8 v0, v0, 0x2

    .line 240
    :cond_e
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_14

    .line 241
    or-int/lit8 v0, v0, 0x4

    .line 243
    :cond_14
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_1a

    .line 244
    or-int/lit8 v0, v0, 0x8

    .line 246
    :cond_1a
    return v0
.end method

.method private dismissDockedStackIfNeeded()V
    .registers 4

    .line 400
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 405
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 406
    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 407
    if-nez v0, :cond_18

    .line 408
    return-void

    .line 410
    :cond_18
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 411
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isFocusedStackOnDisplay()Z

    move-result v2

    .line 410
    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;Z)V

    .line 413
    :cond_21
    return-void
.end method

.method private dumpDisplayStates(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 576
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 577
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->dumpStatus(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 576
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 579
    :cond_17
    return-void
.end method

.method private failCallback(Lcom/android/internal/policy/IKeyguardDismissCallback;)V
    .registers 4

    .line 226
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissError()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 229
    goto :goto_c

    .line 227
    :catch_4
    move-exception p1

    .line 228
    const-string v0, "ActivityTaskManager"

    const-string v1, "Failed to call callback"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    :goto_c
    return-void
.end method

.method private getDisplay(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    .registers 4

    .line 433
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 434
    if-nez v0, :cond_16

    .line 435
    new-instance v0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;I)V

    .line 436
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 438
    :cond_16
    return-object v0
.end method

.method private handleDismissKeyguard()V
    .registers 6

    .line 344
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 345
    return-void

    .line 348
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mDismissalRequested:Z

    .line 353
    iget-object v2, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 354
    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 355
    iget-boolean v3, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    if-eqz v3, :cond_44

    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->canDismissKeyguard()Z

    move-result v3

    if-eqz v3, :cond_44

    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 356
    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v3

    const/16 v4, 0x17

    if-ne v3, v4, :cond_44

    .line 357
    iget v3, p0, Lcom/android/server/wm/KeyguardController;->mBeforeUnoccludeTransit:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4, v0}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    .line 359
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0, v1, v4, v4}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 360
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 362
    :cond_44
    return-void
.end method

.method private handleOccludedChanged(I)V
    .registers 5

    .line 314
    if-eqz p1, :cond_6

    .line 315
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken(I)V

    .line 316
    return-void

    .line 319
    :cond_6
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowManagerService;->onKeyguardOccludedChanged(Z)V

    .line 320
    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result p1

    if-eqz p1, :cond_46

    .line 321
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 323
    :try_start_1b
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 324
    invoke-direct {p0}, Lcom/android/server/wm/KeyguardController;->resolveOccludeTransit()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v0, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    .line 327
    invoke-direct {p0, v0}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken(I)V

    .line 328
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v0}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 329
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V
    :try_end_39
    .catchall {:try_start_1b .. :try_end_39} :catchall_3f

    .line 331
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 332
    goto :goto_46

    .line 331
    :catchall_3f
    move-exception p1

    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw p1

    .line 334
    :cond_46
    :goto_46
    invoke-direct {p0}, Lcom/android/server/wm/KeyguardController;->dismissDockedStackIfNeeded()V

    .line 335
    return-void
.end method

.method private isDisplayOccluded(I)Z
    .registers 2

    .line 365
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplay(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->access$200(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result p1

    return p1
.end method

.method private resolveOccludeTransit()I
    .registers 6

    .line 377
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 378
    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 379
    iget v1, p0, Lcom/android/server/wm/KeyguardController;->mBeforeUnoccludeTransit:I

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v1, v4, :cond_23

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 380
    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v1

    if-ne v1, v2, :cond_23

    .line 382
    invoke-direct {p0, v3}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 386
    iget v0, p0, Lcom/android/server/wm/KeyguardController;->mBeforeUnoccludeTransit:I

    return v0

    .line 388
    :cond_23
    invoke-direct {p0, v3}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v1

    if-nez v1, :cond_32

    .line 391
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/KeyguardController;->mBeforeUnoccludeTransit:I

    .line 392
    return v2

    .line 394
    :cond_32
    const/16 v0, 0x16

    return v0
.end method

.method private setKeyguardGoingAway(Z)V
    .registers 3

    .line 220
    iput-boolean p1, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardGoingAway:Z

    .line 221
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->setKeyguardGoingAway(Z)V

    .line 222
    return-void
.end method

.method private updateKeyguardSleepToken()V
    .registers 3

    .line 416
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 417
    :goto_8
    if-ltz v0, :cond_18

    .line 418
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/RootActivityContainer;->getChildAt(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    .line 419
    iget v1, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-direct {p0, v1}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken(I)V

    .line 417
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 421
    :cond_18
    return-void
.end method

.method private updateKeyguardSleepToken(I)V
    .registers 4

    .line 424
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplay(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    .line 425
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->isKeyguardUnoccludedOrAodShowing(I)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->access$300(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object v1

    if-nez v1, :cond_14

    .line 426
    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->acquiredSleepToken()V

    goto :goto_23

    .line 427
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->isKeyguardUnoccludedOrAodShowing(I)Z

    move-result p1

    if-nez p1, :cond_23

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->access$300(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 428
    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->releaseSleepToken()V

    .line 430
    :cond_23
    :goto_23
    return-void
.end method

.method private visibilitiesUpdated()V
    .registers 5

    .line 291
    nop

    .line 292
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    .line 293
    :goto_a
    if-ltz v0, :cond_23

    .line 294
    iget-object v2, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/RootActivityContainer;->getChildAt(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    .line 295
    iget v3, v2, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-direct {p0, v3}, Lcom/android/server/wm/KeyguardController;->getDisplay(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v3

    .line 296
    invoke-virtual {v3, p0, v2}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->visibilitiesUpdated(Lcom/android/server/wm/KeyguardController;Lcom/android/server/wm/ActivityDisplay;)V

    .line 297
    invoke-static {v3}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->access$100(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 293
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 301
    :cond_23
    if-eqz v1, :cond_28

    .line 302
    invoke-direct {p0}, Lcom/android/server/wm/KeyguardController;->handleDismissKeyguard()V

    .line 304
    :cond_28
    return-void
.end method

.method private writeDisplayStatesToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 6

    .line 582
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 583
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 582
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 585
    :cond_17
    return-void
.end method


# virtual methods
.method beginActivityVisibilityUpdate()V
    .registers 2

    .line 253
    iget v0, p0, Lcom/android/server/wm/KeyguardController;->mVisibilityTransactionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/KeyguardController;->mVisibilityTransactionDepth:I

    .line 254
    return-void
.end method

.method canDismissKeyguard()Z
    .registers 3

    .line 372
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardTrusted()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 373
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

    .line 372
    :goto_1a
    return v0
.end method

.method canShowActivityWhileKeyguardShowing(Lcom/android/server/wm/ActivityRecord;Z)Z
    .registers 3

    .line 276
    if-eqz p2, :cond_26

    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->canDismissKeyguard()Z

    move-result p2

    if-eqz p2, :cond_26

    iget-boolean p2, p0, Lcom/android/server/wm/KeyguardController;->mAodShowing:Z

    if-nez p2, :cond_26

    iget-boolean p2, p0, Lcom/android/server/wm/KeyguardController;->mDismissalRequested:Z

    if-nez p2, :cond_24

    .line 278
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result p2

    if-eqz p2, :cond_26

    .line 279
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/server/wm/KeyguardController;->getDisplay(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->access$000(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    if-eq p2, p1, :cond_26

    :cond_24
    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    .line 276
    :goto_27
    return p1
.end method

.method canShowWhileOccluded(ZZ)Z
    .registers 3

    .line 286
    if-nez p2, :cond_15

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 287
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p1, 0x1

    .line 286
    :goto_16
    return p1
.end method

.method dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .registers 6

    .line 203
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 204
    if-eqz p1, :cond_3a

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-nez v0, :cond_b

    goto :goto_3a

    .line 208
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity requesting to dismiss Keyguard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTurnScreenOnFlag()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    move-result p1

    if-eqz p1, :cond_34

    .line 213
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const-string v0, "dismissKeyguard"

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->wakeUp(Ljava/lang/String;)V

    .line 216
    :cond_34
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 217
    return-void

    .line 205
    :cond_3a
    :goto_3a
    invoke-direct {p0, p2}, Lcom/android/server/wm/KeyguardController;->failCallback(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    .line 206
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "KeyguardController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
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

    .line 560
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

    .line 561
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

    .line 562
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/KeyguardController;->dumpDisplayStates(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 563
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

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  mVisibilityTransactionDepth="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/wm/KeyguardController;->mVisibilityTransactionDepth:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 565
    return-void
.end method

.method endActivityVisibilityUpdate()V
    .registers 2

    .line 261
    iget v0, p0, Lcom/android/server/wm/KeyguardController;->mVisibilityTransactionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/KeyguardController;->mVisibilityTransactionDepth:I

    .line 262
    iget v0, p0, Lcom/android/server/wm/KeyguardController;->mVisibilityTransactionDepth:I

    if-nez v0, :cond_d

    .line 263
    invoke-direct {p0}, Lcom/android/server/wm/KeyguardController;->visibilitiesUpdated()V

    .line 265
    :cond_d
    return-void
.end method

.method isKeyguardGoingAway()Z
    .registers 2

    .line 131
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

    .line 123
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

    .line 95
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mAodShowing:Z

    if-eqz v0, :cond_14

    :cond_8
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardGoingAway:Z

    if-nez v0, :cond_14

    .line 96
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result p1

    if-nez p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    .line 95
    :goto_15
    return p1
.end method

.method isKeyguardShowing(I)Z
    .registers 3

    .line 116
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardGoingAway:Z

    if-nez v0, :cond_10

    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result p1

    if-nez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method isKeyguardUnoccludedOrAodShowing(I)Z
    .registers 3

    .line 105
    if-nez p1, :cond_8

    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mAodShowing:Z

    if-eqz v0, :cond_8

    .line 106
    const/4 p1, 0x1

    return p1

    .line 108
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result p1

    return p1
.end method

.method keyguardGoingAway(I)V
    .registers 9

    .line 174
    const-string v0, "keyguardGoingAway: surfaceLayout"

    iget-boolean v1, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    if-nez v1, :cond_7

    .line 175
    return-void

    .line 177
    :cond_7
    const-wide/16 v1, 0x40

    const-string v3, "keyguardGoingAway"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 178
    iget-object v3, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 180
    const/4 v3, 0x1

    :try_start_14
    invoke-direct {p0, v3}, Lcom/android/server/wm/KeyguardController;->setKeyguardGoingAway(Z)V

    .line 181
    iget-object v4, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v5, 0x14

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->convertTransitFlags(I)I

    move-result p1

    .line 182
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, p1, v6}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZIZ)V

    .line 185
    invoke-direct {p0}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken()V

    .line 188
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 189
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v6, v6}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 190
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p1, v3}, Lcom/android/server/wm/RootActivityContainer;->addStartingWindowsForVisibleActivities(Z)V

    .line 192
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V
    :try_end_41
    .catchall {:try_start_14 .. :try_end_41} :catchall_51

    .line 194
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 195
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 196
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 198
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 199
    nop

    .line 200
    return-void

    .line 194
    :catchall_51
    move-exception p1

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 196
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 198
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method onDisplayRemoved(I)V
    .registers 3

    .line 442
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 443
    if-eqz v0, :cond_12

    .line 444
    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->onRemoved()V

    .line 445
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 447
    :cond_12
    return-void
.end method

.method setKeyguardShown(ZZ)V
    .registers 7

    .line 139
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

    .line 141
    :goto_10
    iget-boolean v3, p0, Lcom/android/server/wm/KeyguardController;->mAodShowing:Z

    if-eq p2, v3, :cond_15

    goto :goto_16

    :cond_15
    move v1, v2

    .line 142
    :goto_16
    if-nez v0, :cond_1b

    if-nez v1, :cond_1b

    .line 143
    return-void

    .line 145
    :cond_1b
    iput-boolean p1, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    .line 146
    iput-boolean p2, p0, Lcom/android/server/wm/KeyguardController;->mAodShowing:Z

    .line 147
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/WindowManagerService;->setAodShowing(Z)V

    .line 149
    if-eqz v0, :cond_30

    .line 151
    invoke-direct {p0}, Lcom/android/server/wm/KeyguardController;->dismissDockedStackIfNeeded()V

    .line 152
    invoke-direct {p0, v2}, Lcom/android/server/wm/KeyguardController;->setKeyguardGoingAway(Z)V

    .line 153
    if-eqz p1, :cond_30

    .line 154
    iput-boolean v2, p0, Lcom/android/server/wm/KeyguardController;->mDismissalRequested:Z

    .line 158
    :cond_30
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 159
    invoke-virtual {p0, v2}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result p2

    .line 158
    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowManagerService;->setKeyguardOrAodShowingOnDefaultDisplay(Z)V

    .line 163
    invoke-direct {p0}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken()V

    .line 164
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v2, v2}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 165
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 87
    iget-object p1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iput-object p1, p0, Lcom/android/server/wm/KeyguardController;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 88
    return-void
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 568
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 569
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mAodShowing:Z

    const-wide v1, 0x10800000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 570
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController;->mKeyguardShowing:Z

    const-wide v1, 0x10800000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 571
    const-wide v0, 0x20b00000002L

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/KeyguardController;->writeDisplayStatesToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 572
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 573
    return-void
.end method
