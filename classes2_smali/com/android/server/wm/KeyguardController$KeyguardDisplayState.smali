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

.field private mOccluded:Z

.field private mRequestDismissKeyguard:Z

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;I)V
    .registers 3

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    iput-object p1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 460
    iput p2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    .line 461
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityRecord;
    .registers 1

    .line 450
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z
    .registers 1

    .line 450
    iget-boolean p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mRequestDismissKeyguard:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z
    .registers 1

    .line 450
    iget-boolean p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;
    .registers 1

    .line 450
    iget-object p0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    return-object p0
.end method

.method private getStackForControllingOccluding(Lcom/android/server/wm/ActivityDisplay;)Lcom/android/server/wm/ActivityStack;
    .registers 5

    .line 528
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1e

    .line 529
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 530
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 531
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 532
    return-object v1

    .line 528
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 535
    :cond_1e
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method acquiredSleepToken()V
    .registers 4

    .line 469
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-nez v0, :cond_10

    .line 470
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    const-string v2, "keyguard"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->acquireSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 472
    :cond_10
    return-void
.end method

.method dumpStatus(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 540
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    const-string p2, "  Occluded="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 542
    const-string p2, " DismissingKeyguardActivity="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 543
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 544
    const-string p2, " at display="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    .line 545
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 547
    return-void
.end method

.method onRemoved()V
    .registers 2

    .line 464
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 465
    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->releaseSleepToken()V

    .line 466
    return-void
.end method

.method releaseSleepToken()V
    .registers 2

    .line 475
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    if-eqz v0, :cond_a

    .line 476
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;->release()V

    .line 477
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mSleepToken:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 479
    :cond_a
    return-void
.end method

.method visibilitiesUpdated(Lcom/android/server/wm/KeyguardController;Lcom/android/server/wm/ActivityDisplay;)V
    .registers 9

    .line 482
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 483
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 484
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mRequestDismissKeyguard:Z

    .line 485
    iput-boolean v2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 486
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 488
    invoke-direct {p0, p2}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->getStackForControllingOccluding(Lcom/android/server/wm/ActivityDisplay;)Lcom/android/server/wm/ActivityStack;

    move-result-object p2

    .line 489
    const/4 v3, 0x1

    if-eqz p2, :cond_56

    .line 490
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getTopDismissingKeyguardActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 491
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->topActivityOccludesKeyguard()Z

    move-result v5

    if-nez v5, :cond_2e

    if-eqz v4, :cond_2c

    .line 492
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-ne v5, v4, :cond_2c

    .line 493
    invoke-virtual {p1, v3, v2}, Lcom/android/server/wm/KeyguardController;->canShowWhileOccluded(ZZ)Z

    move-result v4

    if-eqz v4, :cond_2c

    goto :goto_2e

    :cond_2c
    move v4, v2

    goto :goto_2f

    :cond_2e
    :goto_2e
    move v4, v3

    :goto_2f
    iput-boolean v4, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 496
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getTopDismissingKeyguardActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_3d

    .line 497
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getTopDismissingKeyguardActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 500
    :cond_3d
    iget v4, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    if-eqz v4, :cond_56

    .line 501
    iget-boolean v4, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->canShowWithInsecureKeyguard()Z

    move-result p2

    if-eqz p2, :cond_51

    .line 502
    invoke-virtual {p1}, Lcom/android/server/wm/KeyguardController;->canDismissKeyguard()Z

    move-result p2

    if-eqz p2, :cond_51

    move v2, v3

    goto :goto_52

    :cond_51
    nop

    :goto_52
    or-int p2, v4, v2

    iput-boolean p2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 506
    :cond_56
    iget p2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    if-nez p2, :cond_67

    .line 507
    iget-boolean p2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    invoke-static {p1}, Lcom/android/server/wm/KeyguardController;->access$400(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isShowingDream()Z

    move-result v2

    or-int/2addr p2, v2

    iput-boolean p2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    .line 510
    :cond_67
    iget-boolean p2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    if-eq v0, p2, :cond_70

    .line 511
    iget p2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    invoke-static {p1, p2}, Lcom/android/server/wm/KeyguardController;->access$500(Lcom/android/server/wm/KeyguardController;I)V

    .line 513
    :cond_70
    iget-object p2, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v1, p2, :cond_8e

    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    if-nez v0, :cond_8e

    if-eqz p2, :cond_8e

    .line 515
    invoke-static {p1}, Lcom/android/server/wm/KeyguardController;->access$400(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p2

    .line 516
    invoke-static {p1}, Lcom/android/server/wm/KeyguardController;->access$600(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result p1

    .line 515
    invoke-virtual {p2, p1}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    move-result p1

    if-eqz p1, :cond_8e

    .line 517
    iput-boolean v3, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mRequestDismissKeyguard:Z

    .line 519
    :cond_8e
    return-void
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 550
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 551
    iget v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mDisplayId:I

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 552
    iget-boolean v0, p0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->mOccluded:Z

    const-wide v1, 0x10800000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 553
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 554
    return-void
.end method
