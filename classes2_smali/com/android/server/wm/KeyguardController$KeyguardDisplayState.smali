.class Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
.super Ljava/lang/Object;
.source "KeyguardController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/KeyguardController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyguardDisplayState"
.end annotation


# instance fields
.field private mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

.field private final mDisplayId:I

.field private mHasSleepToken:Z

.field private mOccluded:Z

.field private mRequestDismissKeyguard:Z

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;I)V
    .registers 4
    .param p1, "service"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "displayId"  # I

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mHasSleepToken:Z

    .line 468
    iput-object p1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 469
    iput p2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    .line 470
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityRecord;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 457
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 457
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mRequestDismissKeyguard:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 457
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 457
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    return-object v0
.end method

.method private getStackForControllingOccluding(Lcom/android/server/wm/ActivityDisplay;)Lcom/android/server/wm/ActivityStack;
    .registers 5
    .param p1, "display"  # Lcom/android/server/wm/ActivityDisplay;

    .line 547
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "stackNdx":I
    :goto_6
    if-ltz v0, :cond_1e

    .line 548
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 549
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 550
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 551
    return-object v1

    .line 547
    .end local v1  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 554
    .end local v0  # "stackNdx":I
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method acquiredSleepToken()V
    .registers 5

    .line 479
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 480
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-nez v1, :cond_1f

    iget-boolean v1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mHasSleepToken:Z

    if-nez v1, :cond_1f

    .line 481
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mHasSleepToken:Z

    .line 482
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v2, "keyguard"

    iget v3, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->acquireSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 484
    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 486
    return-void

    .line 484
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method dumpStatus(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 559
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    const-string v1, "  Occluded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 561
    const-string v1, " DismissingKeyguardActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 562
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 563
    const-string v1, " at display="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    .line 564
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    return-void
.end method

.method onRemoved()V
    .registers 2

    .line 473
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 474
    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->releaseSleepToken()V

    .line 475
    return-void
.end method

.method releaseSleepToken()V
    .registers 3

    .line 490
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 491
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mHasSleepToken:Z

    .line 492
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-eqz v1, :cond_17

    .line 493
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;->release()V

    .line 494
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 496
    :cond_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 498
    return-void

    .line 496
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method visibilitiesUpdated(Lcom/android/server/wm/KeyguardController;Lcom/android/server/wm/ActivityDisplay;)V
    .registers 11
    .param p1, "controller"  # Lcom/android/server/wm/KeyguardController;
    .param p2, "display"  # Lcom/android/server/wm/ActivityDisplay;

    .line 501
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 502
    .local v0, "lastOccluded":Z
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 503
    .local v1, "lastDismissActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mRequestDismissKeyguard:Z

    .line 504
    iput-boolean v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 505
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 507
    invoke-direct {p0, p2}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->getStackForControllingOccluding(Lcom/android/server/wm/ActivityDisplay;)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 508
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    const/4 v4, 0x1

    if-eqz v3, :cond_55

    .line 509
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getTopDismissingKeyguardActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 510
    .local v5, "topDismissing":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->topActivityOccludesKeyguard()Z

    move-result v6

    if-nez v6, :cond_2e

    if-eqz v5, :cond_2c

    .line 511
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-ne v6, v5, :cond_2c

    .line 512
    invoke-virtual {p1, v4, v2}, Lcom/android/server/wm/KeyguardController;->canShowWhileOccluded(ZZ)Z

    move-result v6

    if-eqz v6, :cond_2c

    goto :goto_2e

    :cond_2c
    move v6, v2

    goto :goto_2f

    :cond_2e
    :goto_2e
    move v6, v4

    :goto_2f
    iput-boolean v6, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 515
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getTopDismissingKeyguardActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_3d

    .line 516
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getTopDismissingKeyguardActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 519
    :cond_3d
    iget v6, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    if-eqz v6, :cond_55

    .line 520
    iget-boolean v6, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->canShowWithInsecureKeyguard()Z

    move-result v7

    if-eqz v7, :cond_51

    .line 521
    invoke-virtual {p1}, Lcom/android/server/wm/KeyguardController;->canDismissKeyguard()Z

    move-result v7

    if-eqz v7, :cond_51

    move v2, v4

    goto :goto_52

    :cond_51
    nop

    :goto_52
    or-int/2addr v2, v6

    iput-boolean v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 525
    .end local v5  # "topDismissing":Lcom/android/server/wm/ActivityRecord;
    :cond_55
    iget v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    if-nez v2, :cond_66

    .line 526
    iget-boolean v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    invoke-static {p1}, Lcom/android/server/wm/KeyguardController;->access$400(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->isShowingDream()Z

    move-result v5

    or-int/2addr v2, v5

    iput-boolean v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 529
    :cond_66
    iget-boolean v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    if-eq v0, v2, :cond_6f

    .line 530
    iget v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    invoke-static {p1, v2}, Lcom/android/server/wm/KeyguardController;->access$500(Lcom/android/server/wm/KeyguardController;I)V

    .line 532
    :cond_6f
    iget-object v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v1, v2, :cond_8d

    iget-boolean v5, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    if-nez v5, :cond_8d

    if-eqz v2, :cond_8d

    .line 534
    invoke-static {p1}, Lcom/android/server/wm/KeyguardController;->access$400(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    .line 535
    invoke-static {p1}, Lcom/android/server/wm/KeyguardController;->access$600(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v5

    .line 534
    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 536
    iput-boolean v4, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mRequestDismissKeyguard:Z

    .line 538
    :cond_8d
    return-void
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J

    .line 569
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 570
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 571
    iget-boolean v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    const-wide v3, 0x10800000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 572
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 573
    return-void
.end method
