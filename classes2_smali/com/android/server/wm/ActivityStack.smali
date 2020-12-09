.class Lcom/android/server/wm/ActivityStack;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityStack$ActivityStackHandler;,
        Lcom/android/server/wm/ActivityStack$ScheduleDestroyArgs;,
        Lcom/android/server/wm/ActivityStack$ActivityState;,
        Lcom/android/server/wm/ActivityStack$StackVisibility;
    }
.end annotation


# static fields
.field static final DESTROY_ACTIVITIES_MSG:I = 0x69

.field private static final DESTROY_TIMEOUT:I = 0x2710

.field static final DESTROY_TIMEOUT_MSG:I = 0x66

.field static final FINISH_AFTER_PAUSE:I = 0x1

.field static final FINISH_AFTER_VISIBLE:I = 0x2

.field static final FINISH_IMMEDIATELY:I = 0x0

.field static final LAUNCH_TICK:I = 0x1f4

.field static final LAUNCH_TICK_MSG:I = 0x67

.field private static final MAX_STOPPING_TO_FORCE:I = 0x3

.field private static final PAUSE_TIMEOUT:I = 0x1f4

.field static final PAUSE_TIMEOUT_MSG:I = 0x65

.field protected static final REMOVE_TASK_MODE_DESTROYING:I = 0x0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final REMOVE_TASK_MODE_MOVING:I = 0x1

.field static final REMOVE_TASK_MODE_MOVING_TO_TOP:I = 0x2

.field private static final SHOW_APP_STARTING_PREVIEW:Z = true

.field static final STACK_VISIBILITY_INVISIBLE:I = 0x2

.field static final STACK_VISIBILITY_VISIBLE:I = 0x0

.field static final STACK_VISIBILITY_VISIBLE_BEHIND_TRANSLUCENT:I = 0x1

.field private static final STOP_TIMEOUT:I = 0x2af8

.field static final STOP_TIMEOUT_MSG:I = 0x68

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_ADD_REMOVE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_APP:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_CLEANUP:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_CONTAINERS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_PAUSE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RELEASE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RESULTS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_SAVED_STATE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_STACK:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_STATES:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_TRANSITION:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_USER_LEAVING:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_VISIBILITY:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TRANSLUCENT_CONVERSION_TIMEOUT:J = 0x7d0L

.field static final TRANSLUCENT_TIMEOUT_MSG:I = 0x6a


# instance fields
.field mConfigWillChange:Z

.field mCurrentUser:I

.field private final mDeferredBounds:Landroid/graphics/Rect;

.field private final mDeferredDisplayedBounds:Landroid/graphics/Rect;

.field mDisplayId:I

.field mForceHidden:Z

.field final mHandler:Landroid/os/Handler;

.field mInResumeTopActivity:Z

.field private final mLRUActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

.field mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

.field mPausingActivity:Lcom/android/server/wm/ActivityRecord;

.field private mRestoreOverrideWindowingMode:I

.field mResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field protected final mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

.field final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field final mStackId:I

.field protected final mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field private final mTaskHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field mTaskStack:Lcom/android/server/wm/TaskStack;

.field private final mTmpActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpOptions:Landroid/app/ActivityOptions;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private mTopActivityOccludesKeyguard:Z

.field private mTopDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

.field mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

.field mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateBoundsDeferred:Z

.field private mUpdateBoundsDeferredCalled:Z

.field private mUpdateDisplayedBoundsDeferredCalled:Z

.field final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityDisplay;ILcom/android/server/wm/ActivityStackSupervisor;IIZ)V
    .registers 14

    .line 510
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 347
    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 354
    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    .line 359
    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 367
    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mForceHidden:Z

    .line 384
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    .line 389
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    .line 390
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mDeferredDisplayedBounds:Landroid/graphics/Rect;

    .line 399
    iput v0, p0, Lcom/android/server/wm/ActivityStack;->mRestoreOverrideWindowingMode:I

    .line 401
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTmpRect:Landroid/graphics/Rect;

    .line 402
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    .line 403
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTmpOptions:Landroid/app/ActivityOptions;

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    .line 511
    iput-object p3, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 512
    iget-object v0, p3, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 513
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 514
    new-instance v0, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;

    iget-object p3, p3, Lcom/android/server/wm/ActivityStackSupervisor;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, p3}, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;-><init>(Lcom/android/server/wm/ActivityStack;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    .line 515
    iget-object p3, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object p3, p0, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 516
    iput p2, p0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    .line 517
    iget-object p2, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p2}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/ActivityStack;->mCurrentUser:I

    .line 520
    iget p2, p1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    iput p2, p0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    .line 521
    invoke-virtual {p0, p5}, Lcom/android/server/wm/ActivityStack;->setActivityType(I)V

    .line 522
    iget p2, p1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    iget-object p3, p0, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p6, p3}, Lcom/android/server/wm/ActivityStack;->createTaskStack(IZLandroid/graphics/Rect;)V

    .line 523
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZZZZZ)V

    .line 526
    if-eqz p6, :cond_98

    const p2, 0x7fffffff

    goto :goto_9a

    :cond_98
    const/high16 p2, -0x80000000

    :goto_9a
    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/ActivityDisplay;->addChild(Lcom/android/server/wm/ActivityStack;I)V

    .line 527
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    .registers 3

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityStack;->destroyActivitiesLocked(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    return-void
.end method

.method private adjustFocusToNextFocusableStack(Ljava/lang/String;Z)Lcom/android/server/wm/ActivityStack;
    .registers 6

    .line 3734
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 3735
    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p0, p2}, Lcom/android/server/wm/RootActivityContainer;->getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object p2

    .line 3736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " adjustFocusToNextFocusableStack"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3737
    if-nez p2, :cond_1d

    .line 3738
    const/4 p1, 0x0

    return-object p1

    .line 3741
    :cond_1d
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3743
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_35

    if-eqz v1, :cond_2d

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v1, :cond_35

    .line 3746
    :cond_2d
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityDisplay;->moveHomeActivityToTop(Ljava/lang/String;)V

    .line 3747
    return-object p2

    .line 3750
    :cond_35
    invoke-virtual {p2, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 3751
    return-object p2
.end method

.method private adjustFocusedActivityStack(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .registers 6

    .line 3674
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/RootActivityContainer;->isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v0, p1, :cond_f

    if-eqz v0, :cond_f

    goto :goto_7a

    .line 3679
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " adjustFocus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3682
    if-ne v0, p1, :cond_32

    .line 3683
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootActivityContainer;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 3684
    if-eqz p1, :cond_31

    .line 3685
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    .line 3687
    :cond_31
    return-void

    .line 3690
    :cond_32
    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 3692
    return-void

    .line 3697
    :cond_3b
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 3699
    if-eqz v0, :cond_63

    .line 3704
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;)Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    .line 3705
    if-eqz p1, :cond_5b

    .line 3706
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 3707
    if-eqz p1, :cond_5a

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne p1, v0, :cond_5a

    .line 3711
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 3713
    :cond_5a
    return-void

    .line 3717
    :cond_5b
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityDisplay;->moveHomeActivityToTop(Ljava/lang/String;)V

    .line 3718
    return-void

    .line 3700
    :cond_63
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activity no longer associated with task:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3676
    :cond_7a
    :goto_7a
    return-void
.end method

.method private bottomTask()Lcom/android/server/wm/TaskRecord;
    .registers 3

    .line 1160
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1161
    const/4 v0, 0x0

    return-object v0

    .line 1163
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskRecord;

    return-object v0
.end method

.method private canEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .registers 6

    .line 3297
    const/4 v0, 0x0

    if-eqz p4, :cond_a

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->disallowEnterPictureInPictureWhileLaunching()Z

    move-result p4

    if-eqz p4, :cond_a

    .line 3299
    return v0

    .line 3301
    :cond_a
    if-eqz p1, :cond_29

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_29

    .line 3305
    :cond_13
    if-eqz p2, :cond_1a

    .line 3306
    invoke-virtual {p2}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    goto :goto_1e

    :cond_1a
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    .line 3307
    :goto_1e
    if-eqz p1, :cond_27

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeAssistant()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 3309
    return v0

    .line 3311
    :cond_27
    const/4 p1, 0x1

    return p1

    .line 3303
    :cond_29
    :goto_29
    return v0
.end method

.method private checkTranslucentActivityWaiting(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 2357
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eq v0, p1, :cond_1a

    .line 2358
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2359
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_13

    .line 2361
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 2362
    iput-object p1, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 2364
    :cond_13
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x6a

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2366
    :cond_1a
    return-void
.end method

.method private cleanUpActivityLocked(Lcom/android/server/wm/ActivityRecord;ZZ)V
    .registers 8

    .line 4398
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->onActivityRemovedFromStack(Lcom/android/server/wm/ActivityRecord;)V

    .line 4400
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    .line 4401
    iput-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->frozenBeforeDestroy:Z

    .line 4403
    const/4 v1, 0x0

    if-eqz p3, :cond_14

    .line 4405
    sget-object p3, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v2, "cleanupActivityLocked"

    invoke-virtual {p1, p3, v2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4407
    iput-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 4411
    :cond_14
    iget-object p3, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p3, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->cleanupActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 4415
    iget-boolean p3, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz p3, :cond_45

    iget-object p3, p1, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz p3, :cond_45

    .line 4416
    iget-object p3, p1, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {p3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_27
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 4417
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PendingIntentRecord;

    .line 4418
    if-eqz v2, :cond_42

    .line 4419
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    invoke-virtual {v3, v2, v0}, Lcom/android/server/am/PendingIntentController;->cancelIntentSender(Lcom/android/server/am/PendingIntentRecord;Z)V

    .line 4421
    :cond_42
    goto :goto_27

    .line 4422
    :cond_43
    iput-object v1, p1, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 4425
    :cond_45
    if-eqz p2, :cond_4a

    .line 4426
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 4430
    :cond_4a
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 4433
    iget-object p2, p0, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/WindowManagerService;->notifyAppRelaunchesCleared(Landroid/os/IBinder;)V

    .line 4434
    return-void
.end method

.method private cleanUpActivityServicesLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 4501
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-nez v0, :cond_5

    .line 4502
    return-void

    .line 4505
    :cond_5
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->disconnectActivityFromServices()V

    .line 4506
    return-void
.end method

.method private clearLaunchTime(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 1507
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1508
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 1509
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 1511
    :cond_14
    return-void
.end method

.method private completePauseLocked(ZLcom/android/server/wm/ActivityRecord;)V
    .registers 12

    .line 1794
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1797
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_54

    .line 1798
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->setWillCloseOrEnterPip(Z)V

    .line 1799
    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v3

    .line 1800
    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v5, "completePausedLocked"

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1801
    iget-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v6, 0x1

    if-eqz v4, :cond_21

    .line 1803
    const/4 v3, 0x2

    invoke-virtual {p0, v0, v3, v2, v5}, Lcom/android/server/wm/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/wm/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_4d

    .line 1805
    :cond_21
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 1808
    iget-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-eqz v4, :cond_31

    .line 1811
    iget-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->preserveWindowOnDeferredRelaunch:Z

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/ActivityRecord;->relaunchActivityLocked(ZZ)V

    goto :goto_4d

    .line 1813
    :cond_31
    if-eqz v3, :cond_39

    .line 1817
    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0, v3, v5}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    goto :goto_4d

    .line 1818
    :cond_39
    iget-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v3, :cond_43

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 1820
    :cond_43
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->setDeferHidingClient(Z)V

    .line 1823
    const-string v3, "completePauseLocked"

    invoke-virtual {p0, v0, v6, v2, v3}, Lcom/android/server/wm/ActivityStack;->addToStopping(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V

    goto :goto_4d

    .line 1828
    :cond_4c
    move-object v0, v1

    .line 1833
    :cond_4d
    :goto_4d
    if-eqz v0, :cond_52

    .line 1834
    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 1836
    :cond_52
    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1839
    :cond_54
    if-eqz p1, :cond_7a

    .line 1840
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    .line 1841
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v3

    if-nez v3, :cond_68

    .line 1842
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p1, v0, v1}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_7a

    .line 1844
    :cond_68
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->checkReadyForSleep()V

    .line 1845
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 1846
    if-eqz p1, :cond_75

    if-eqz v0, :cond_7a

    if-eq p1, v0, :cond_7a

    .line 1851
    :cond_75
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 1856
    :cond_7a
    :goto_7a
    if-eqz v0, :cond_bf

    .line 1857
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 1859
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result p1

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_bd

    iget-wide v5, v0, Lcom/android/server/wm/ActivityRecord;->cpuTimeAtResume:J

    cmp-long p1, v5, v3

    if-lez p1, :cond_bd

    .line 1860
    iget-object p1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getCpuTime()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/android/server/wm/ActivityRecord;->cpuTimeAtResume:J

    sub-long/2addr v5, v7

    .line 1861
    cmp-long p1, v5, v3

    if-lez p1, :cond_bd

    .line 1862
    sget-object p1, Lcom/android/server/wm/-$$Lambda$1636dquQO0UvkFayOGf_gceB4iw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$1636dquQO0UvkFayOGf_gceB4iw;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1865
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1866
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1862
    invoke-static {p1, v1, v7, v8, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 1867
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 1870
    :cond_bd
    iput-wide v3, v0, Lcom/android/server/wm/ActivityRecord;->cpuTimeAtResume:J

    .line 1876
    :cond_bf
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-boolean p1, p1, Lcom/android/server/wm/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    if-nez p1, :cond_d5

    .line 1877
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object p1

    if-eqz p1, :cond_e2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityDisplay;->hasPinnedStack()Z

    move-result p1

    if-eqz p1, :cond_e2

    .line 1878
    :cond_d5
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 1879
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-boolean v2, p1, Lcom/android/server/wm/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    .line 1882
    :cond_e2
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p1, p2, v2, v2}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1883
    return-void
.end method

.method private containsActivityFromStack(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .line 1621
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 1622
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-ne v0, p0, :cond_18

    .line 1623
    const/4 p1, 0x1

    return p1

    .line 1625
    :cond_18
    goto :goto_4

    .line 1626
    :cond_19
    const/4 p1, 0x0

    return p1
.end method

.method private destroyActivitiesLocked(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    .registers 11

    .line 4515
    nop

    .line 4516
    nop

    .line 4517
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ltz v0, :cond_4c

    .line 4518
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskRecord;

    iget-object v4, v4, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4519
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v1

    :goto_1d
    if-ltz v5, :cond_49

    .line 4520
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    .line 4521
    iget-boolean v7, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v7, :cond_2a

    .line 4522
    goto :goto_46

    .line 4524
    :cond_2a
    iget-boolean v7, v6, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    if-eqz v7, :cond_2f

    .line 4525
    move v3, v1

    .line 4527
    :cond_2f
    if-eqz p1, :cond_36

    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v7, p1, :cond_36

    .line 4528
    goto :goto_46

    .line 4530
    :cond_36
    if-nez v3, :cond_39

    .line 4531
    goto :goto_46

    .line 4533
    :cond_39
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isDestroyable()Z

    move-result v7

    if-eqz v7, :cond_46

    .line 4538
    invoke-virtual {p0, v6, v1, p2}, Lcom/android/server/wm/ActivityStack;->destroyActivityLocked(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 4539
    move v2, v1

    .line 4519
    :cond_46
    :goto_46
    add-int/lit8 v5, v5, -0x1

    goto :goto_1d

    .line 4517
    :cond_49
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 4544
    :cond_4c
    if-eqz v2, :cond_53

    .line 4545
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 4547
    :cond_53
    return-void
.end method

.method private finishActivityResultsLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;)V
    .registers 12

    .line 3952
    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 3953
    const/4 v7, 0x0

    if-eqz v6, :cond_3d

    .line 3957
    iget v0, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eq v0, v1, :cond_12

    .line 3958
    if-eqz p3, :cond_12

    .line 3959
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p3, v0}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    .line 3962
    :cond_12
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-lez v0, :cond_30

    .line 3963
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 3965
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v4

    iget v5, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 3963
    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionFromIntent(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/uri/UriPermissionOwner;I)V

    .line 3967
    :cond_30
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    move-object v0, v6

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityRecord;->addResultLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3968
    iput-object v7, p1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 3975
    :cond_3d
    iput-object v7, p1, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 3976
    iput-object v7, p1, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 3977
    iput-object v7, p1, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 3978
    iput-object v7, p1, Lcom/android/server/wm/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 3979
    return-void
.end method

.method private insertTaskAtBottom(Lcom/android/server/wm/TaskRecord;)V
    .registers 4

    .line 3139
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3140
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/wm/TaskRecord;ILcom/android/server/wm/ActivityRecord;)I

    move-result v0

    .line 3141
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3142
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ActivityStack;->updateTaskMovement(Lcom/android/server/wm/TaskRecord;Z)V

    .line 3143
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->positionChildWindowContainerAtBottom(Lcom/android/server/wm/TaskRecord;)V

    .line 3144
    return-void
.end method

.method private insertTaskAtPosition(Lcom/android/server/wm/TaskRecord;I)V
    .registers 5

    .line 3111
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lt p2, v0, :cond_d

    .line 3112
    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/ActivityStack;->insertTaskAtTop(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 3113
    return-void

    .line 3114
    :cond_d
    if-gtz p2, :cond_13

    .line 3115
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStack;->insertTaskAtBottom(Lcom/android/server/wm/TaskRecord;)V

    .line 3116
    return-void

    .line 3118
    :cond_13
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/wm/TaskRecord;ILcom/android/server/wm/ActivityRecord;)I

    move-result p2

    .line 3119
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3120
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3121
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_2c

    .line 3123
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/TaskStack;->positionChildAt(Lcom/android/server/wm/Task;I)V

    .line 3125
    :cond_2c
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityStack;->updateTaskMovement(Lcom/android/server/wm/TaskRecord;Z)V

    .line 3126
    return-void
.end method

.method private insertTaskAtTop(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 3130
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3132
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/wm/TaskRecord;ILcom/android/server/wm/ActivityRecord;)I

    move-result p2

    .line 3133
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3134
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityStack;->updateTaskMovement(Lcom/android/server/wm/TaskRecord;Z)V

    .line 3135
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->positionChildWindowContainerAtTop(Lcom/android/server/wm/TaskRecord;)V

    .line 3136
    return-void
.end method

.method private isATopFinishingTask(Lcom/android/server/wm/TaskRecord;)Z
    .registers 7

    .line 3659
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    const/4 v2, 0x0

    if-ltz v0, :cond_20

    .line 3660
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    .line 3661
    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 3662
    if-eqz v4, :cond_1a

    .line 3664
    return v2

    .line 3666
    :cond_1a
    if-ne v3, p1, :cond_1d

    .line 3667
    return v1

    .line 3659
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3670
    :cond_20
    return v2
.end method

.method private isTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 3316
    if-eqz p2, :cond_e

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object p2

    if-eq p1, p2, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method private static isTransientWindowingMode(I)Z
    .registers 2

    .line 684
    const/4 v0, 0x3

    if-eq p0, v0, :cond_9

    const/4 v0, 0x4

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p0, 0x1

    :goto_a
    return p0
.end method

.method static logStartActivity(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;)V
    .registers 7

    .line 5046
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 5047
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 5049
    :goto_e
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 5050
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget p2, p2, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    const/4 p2, 0x3

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v2, v1, p2

    const/4 p2, 0x4

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 5051
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p2

    const/4 p2, 0x5

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 5052
    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p2

    const/4 p2, 0x6

    aput-object v0, v1, p2

    const/4 p2, 0x7

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p2

    .line 5049
    invoke-static {p0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5053
    return-void
.end method

.method private makeInvisible(Lcom/android/server/wm/ActivityRecord;)V
    .registers 9

    .line 2399
    const-string v0, "makeInvisible"

    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v1, :cond_7

    .line 2401
    return-void

    .line 2407
    :cond_7
    const/4 v1, 0x1

    :try_start_8
    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v2

    .line 2416
    const/4 v3, 0x0

    if-eqz v2, :cond_1d

    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 2417
    invoke-virtual {p1, v4, v5, v6}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v4

    if-nez v4, :cond_1d

    move v4, v1

    goto :goto_1e

    :cond_1d
    move v4, v3

    .line 2418
    :goto_1e
    invoke-virtual {p1, v4}, Lcom/android/server/wm/ActivityRecord;->setDeferHidingClient(Z)V

    .line 2419
    invoke-virtual {p1, v3}, Lcom/android/server/wm/ActivityRecord;->setVisible(Z)V

    .line 2421
    sget-object v4, Lcom/android/server/wm/ActivityStack$1;->$SwitchMap$com$android$server$wm$ActivityStack$ActivityState:[I

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack$ActivityState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_76

    goto :goto_56

    .line 2440
    :pswitch_34  #0x3, 0x4, 0x5, 0x6
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/android/server/wm/ActivityStack;->addToStopping(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V

    .line 2442
    goto :goto_56

    .line 2424
    :pswitch_38  #0x1, 0x2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 2427
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 2428
    invoke-static {v3}, Landroid/app/servertransaction/WindowVisibilityItem;->obtain(Z)Landroid/app/servertransaction/WindowVisibilityItem;

    move-result-object v4

    .line 2427
    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 2433
    :cond_53
    iput-boolean v3, p1, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_55} :catch_57

    .line 2434
    nop

    .line 2450
    :goto_56
    goto :goto_74

    .line 2447
    :catch_57
    move-exception v0

    .line 2449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown making hidden: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2451
    :goto_74
    return-void

    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_38  #00000001
        :pswitch_38  #00000002
        :pswitch_34  #00000003
        :pswitch_34  #00000004
        :pswitch_34  #00000005
        :pswitch_34  #00000006
    .end packed-switch
.end method

.method private makeVisibleAndRestartIfNeeded(Lcom/android/server/wm/ActivityRecord;IZZLcom/android/server/wm/ActivityRecord;)Z
    .registers 7

    .line 2374
    const/4 v0, 0x0

    if-nez p3, :cond_7

    iget-boolean p3, p5, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez p3, :cond_29

    .line 2378
    :cond_7
    if-eq p5, p1, :cond_e

    .line 2379
    iget-object p3, p5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p5, p3, p2}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/wm/WindowProcessController;I)V

    .line 2381
    :cond_e
    iget-boolean p2, p5, Lcom/android/server/wm/ActivityRecord;->visible:Z

    const/4 p3, 0x1

    if-eqz p2, :cond_17

    iget-boolean p2, p5, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz p2, :cond_1a

    .line 2383
    :cond_17
    invoke-virtual {p5, p3}, Lcom/android/server/wm/ActivityRecord;->setVisible(Z)V

    .line 2385
    :cond_1a
    if-eq p5, p1, :cond_29

    .line 2389
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    if-eqz p4, :cond_25

    iget-boolean p2, p5, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-nez p2, :cond_25

    move v0, p3

    :cond_25
    invoke-virtual {p1, p5, v0, p3}, Lcom/android/server/wm/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 2391
    return p3

    .line 2394
    :cond_29
    return v0
.end method

.method private postAddTask(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityStack;Z)V
    .registers 4

    .line 5621
    if-eqz p3, :cond_a

    if-eqz p2, :cond_a

    .line 5622
    iget-object p3, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityStack;)V

    goto :goto_19

    .line 5623
    :cond_a
    iget-object p2, p1, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz p2, :cond_19

    .line 5625
    :try_start_e
    iget-object p2, p1, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object p3, p1, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    iget p1, p1, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-interface {p2, p3, p1}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_18

    .line 5627
    goto :goto_19

    .line 5626
    :catch_18
    move-exception p1

    .line 5629
    :cond_19
    :goto_19
    return-void
.end method

.method private preAddTask(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;Z)Lcom/android/server/wm/ActivityStack;
    .registers 5

    .line 5606
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 5607
    if-eqz v0, :cond_11

    if-eq v0, p0, :cond_11

    .line 5608
    nop

    .line 5609
    if-eqz p3, :cond_d

    const/4 p3, 0x2

    goto :goto_e

    :cond_d
    const/4 p3, 0x1

    .line 5608
    :goto_e
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/ActivityStack;->removeTask(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;I)V

    .line 5611
    :cond_11
    return-object v0
.end method

.method private prepareActivityHideTransitionAnimation(Lcom/android/server/wm/ActivityRecord;I)V
    .registers 5

    .line 4098
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 4099
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 4100
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 4101
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 4102
    return-void
.end method

.method private removeActivityFromHistoryLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .registers 13

    .line 4445
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/wm/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;)V

    .line 4446
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->makeFinishingLocked()V

    .line 4450
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->takeFromHistory()V

    .line 4451
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 4454
    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v3, "removeActivityFromHistoryLocked"

    invoke-virtual {p1, v2, v3}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4456
    iput-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 4457
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->removeWindowContainer()V

    .line 4458
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 4459
    if-eqz v0, :cond_25

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskRecord;->removeActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    goto :goto_26

    :cond_25
    move v2, v1

    .line 4462
    :goto_26
    if-eqz v0, :cond_2d

    .line 4463
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskRecord;->onlyHasTaskOverlayActivities(Z)Z

    move-result v3

    goto :goto_2e

    :cond_2d
    move v3, v1

    .line 4465
    :goto_2e
    if-nez v2, :cond_32

    if-eqz v3, :cond_44

    .line 4475
    :cond_32
    if-eqz v3, :cond_3f

    .line 4483
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v5, v0, Lcom/android/server/wm/TaskRecord;->taskId:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v9, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTaskByIdLocked(IZZZLjava/lang/String;)Z

    .line 4489
    :cond_3f
    if-eqz v2, :cond_44

    .line 4490
    invoke-virtual {p0, v0, p2, v1}, Lcom/android/server/wm/ActivityStack;->removeTask(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;I)V

    .line 4493
    :cond_44
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 4494
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->removeUriPermissionsLocked()V

    .line 4495
    return-void
.end method

.method private removeFromDisplay()V
    .registers 2

    .line 918
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 919
    if-eqz v0, :cond_9

    .line 920
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityDisplay;->removeChild(Lcom/android/server/wm/ActivityStack;)V

    .line 922
    :cond_9
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    .line 923
    return-void
.end method

.method private removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Lcom/android/server/wm/WindowProcessController;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4742
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    .line 4745
    :goto_4
    if-lez p3, :cond_19

    .line 4746
    add-int/lit8 p3, p3, -0x1

    .line 4747
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 4749
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v1, p2, :cond_18

    .line 4751
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4752
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 4754
    :cond_18
    goto :goto_4

    .line 4755
    :cond_19
    return-void
.end method

.method private removeHistoryRecordsForAppLocked(Lcom/android/server/wm/WindowProcessController;)Z
    .registers 19

    .line 4758
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    const-string v3, "mLRUActivities"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/wm/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    .line 4759
    iget-object v2, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    const-string v3, "mStoppingActivities"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/wm/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    .line 4761
    iget-object v2, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string v3, "mGoingToSleepActivities"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/wm/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    .line 4763
    iget-object v2, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const-string v3, "mFinishingActivities"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/wm/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    .line 4766
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowProcessController;->isRemoved()Z

    move-result v2

    .line 4767
    if-eqz v2, :cond_2f

    .line 4771
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowProcessController;->makeFinishingForProcessRemoved()V

    .line 4774
    :cond_2f
    nop

    .line 4777
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->numActivities()I

    .line 4780
    iget-object v3, v0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v5, 0x0

    move v6, v5

    :goto_3d
    if-ltz v3, :cond_126

    .line 4781
    iget-object v7, v0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/TaskRecord;

    iget-object v7, v7, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4782
    iget-object v8, v0, Lcom/android/server/wm/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 4783
    iget-object v8, v0, Lcom/android/server/wm/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4785
    :goto_53
    iget-object v7, v0, Lcom/android/server/wm/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_122

    .line 4786
    iget-object v7, v0, Lcom/android/server/wm/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v4

    .line 4787
    iget-object v8, v0, Lcom/android/server/wm/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    .line 4791
    iget-object v8, v7, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v8, v1, :cond_120

    .line 4792
    iget-boolean v8, v7, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v8, :cond_73

    .line 4793
    move v6, v4

    .line 4796
    :cond_73
    iget v8, v7, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eq v8, v4, :cond_7d

    iget v8, v7, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    if-ne v8, v10, :cond_87

    :cond_7d
    iget v8, v7, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    if-ge v8, v9, :cond_87

    iget-boolean v8, v7, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v8, :cond_87

    .line 4802
    move v8, v5

    goto :goto_b6

    .line 4803
    :cond_87
    iget-boolean v8, v7, Lcom/android/server/wm/ActivityRecord;->haveState:Z

    if-nez v8, :cond_97

    iget-boolean v8, v7, Lcom/android/server/wm/ActivityRecord;->stateNotNeeded:Z

    if-nez v8, :cond_97

    sget-object v8, Lcom/android/server/wm/ActivityStack$ActivityState;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 4804
    invoke-virtual {v7, v8}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v8

    if-eqz v8, :cond_9b

    :cond_97
    iget-boolean v8, v7, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v8, :cond_9d

    .line 4807
    :cond_9b
    move v8, v4

    goto :goto_b6

    .line 4808
    :cond_9d
    iget-boolean v8, v7, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v8, :cond_b5

    iget v8, v7, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    if-le v8, v10, :cond_b5

    iget-wide v11, v7, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    .line 4809
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    const-wide/32 v15, 0xea60

    sub-long/2addr v13, v15

    cmp-long v8, v11, v13

    if-lez v8, :cond_b5

    .line 4815
    move v8, v4

    goto :goto_b6

    .line 4818
    :cond_b5
    move v8, v5

    .line 4820
    :goto_b6
    if-eqz v8, :cond_109

    .line 4827
    iget-boolean v11, v7, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v11, :cond_be

    if-eqz v2, :cond_116

    .line 4828
    :cond_be
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Force removing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ": app died, no saved state"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ActivityTaskManager"

    invoke-static {v12, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4829
    const/16 v11, 0x7531

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    iget v13, v7, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 4830
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v5

    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v4

    .line 4831
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v13

    iget v13, v13, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v10

    iget-object v10, v7, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v10, v12, v9

    const/4 v9, 0x4

    const-string v10, "proc died without state saved"

    aput-object v10, v12, v9

    .line 4829
    invoke-static {v11, v12}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_116

    .line 4840
    :cond_109
    const/4 v9, 0x0

    iput-object v9, v7, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 4845
    iget-boolean v10, v7, Lcom/android/server/wm/ActivityRecord;->visible:Z

    iput-boolean v10, v7, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    .line 4846
    iget-boolean v10, v7, Lcom/android/server/wm/ActivityRecord;->haveState:Z

    if-nez v10, :cond_116

    .line 4849
    iput-object v9, v7, Lcom/android/server/wm/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 4852
    :cond_116
    :goto_116
    invoke-direct {v0, v7, v4, v4}, Lcom/android/server/wm/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 4853
    if-eqz v8, :cond_120

    .line 4854
    const-string v8, "appDied"

    invoke-direct {v0, v7, v8}, Lcom/android/server/wm/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 4857
    :cond_120
    goto/16 :goto_53

    .line 4780
    :cond_122
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_3d

    .line 4860
    :cond_126
    return v6
.end method

.method private removeTimeoutsForActivityLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 4437
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 4438
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4439
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4440
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4441
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->finishLaunchTickingLocked()V

    .line 4442
    return-void
.end method

.method private resetAffinityTaskIfNeededLocked(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/TaskRecord;ZZI)I
    .registers 22

    .line 3483
    move-object/from16 v0, p2

    .line 3484
    iget v1, v0, Lcom/android/server/wm/TaskRecord;->taskId:I

    .line 3485
    iget-object v1, v0, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    .line 3487
    move-object/from16 v2, p1

    iget-object v3, v2, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3488
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3489
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->findEffectiveRootIndex()I

    move-result v2

    .line 3492
    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/4 v6, -0x1

    move/from16 v7, p5

    move v8, v6

    :goto_18
    if-le v4, v2, :cond_cf

    .line 3493
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/ActivityRecord;

    .line 3494
    iget-boolean v10, v9, Lcom/android/server/wm/ActivityRecord;->frontOfTask:Z

    if-eqz v10, :cond_26

    .line 3495
    goto/16 :goto_cf

    .line 3497
    :cond_26
    iget-object v10, v9, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v10, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3498
    and-int/lit8 v11, v10, 0x2

    const/4 v12, 0x0

    if-eqz v11, :cond_31

    move v11, v5

    goto :goto_32

    :cond_31
    move v11, v12

    .line 3499
    :goto_32
    and-int/lit8 v10, v10, 0x40

    if-eqz v10, :cond_37

    move v12, v5

    .line 3501
    :cond_37
    iget-object v10, v9, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v10, :cond_40

    .line 3508
    if-gez v8, :cond_cb

    .line 3509
    move v8, v4

    goto/16 :goto_cb

    .line 3511
    :cond_40
    if-eqz p3, :cond_cb

    if-eqz v12, :cond_cb

    if-eqz v1, :cond_cb

    iget-object v10, v9, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 3514
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_cb

    .line 3525
    if-nez p4, :cond_a9

    if-eqz v11, :cond_53

    goto :goto_a9

    .line 3538
    :cond_53
    if-gez v7, :cond_5b

    .line 3539
    iget-object v7, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 3543
    :cond_5b
    if-ltz v8, :cond_5e

    goto :goto_5f

    :cond_5e
    move v8, v4

    .line 3547
    :goto_5f
    nop

    :goto_60
    if-lt v8, v4, :cond_70

    .line 3548
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/ActivityRecord;

    .line 3549
    const-string v11, "resetAffinityTaskIfNeededLocked"

    invoke-virtual {v10, v0, v7, v11}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskRecord;ILjava/lang/String;)V

    .line 3547
    add-int/lit8 v8, v8, -0x1

    goto :goto_60

    .line 3557
    :cond_70
    move-object/from16 v8, p0

    invoke-virtual {v8, v0}, Lcom/android/server/wm/ActivityStack;->positionChildWindowContainerAtTop(Lcom/android/server/wm/TaskRecord;)V

    .line 3563
    iget-object v10, v9, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v10, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-ne v10, v5, :cond_ca

    .line 3564
    iget-object v10, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3565
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 3566
    if-lez v11, :cond_ca

    .line 3567
    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lcom/android/server/wm/ActivityRecord;

    .line 3568
    iget-object v10, v11, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    iget-object v9, v9, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ca

    .line 3569
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const-string v14, "replace"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    goto :goto_ca

    .line 3526
    :cond_a9
    :goto_a9
    if-ltz v8, :cond_ac

    goto :goto_ad

    :cond_ac
    move v8, v4

    .line 3529
    :goto_ad
    nop

    :goto_ae
    if-lt v8, v4, :cond_c9

    .line 3530
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lcom/android/server/wm/ActivityRecord;

    .line 3531
    iget-boolean v9, v11, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v9, :cond_bc

    .line 3532
    goto :goto_c6

    .line 3534
    :cond_bc
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const-string v14, "move-affinity"

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3529
    :goto_c6
    add-int/lit8 v8, v8, -0x1

    goto :goto_ae

    .line 3537
    :cond_c9
    nop

    .line 3576
    :cond_ca
    :goto_ca
    move v8, v6

    .line 3492
    :cond_cb
    :goto_cb
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_18

    .line 3579
    :cond_cf
    :goto_cf
    return v7
.end method

.method private resetTargetTaskIfNeededLocked(Lcom/android/server/wm/TaskRecord;Z)Landroid/app/ActivityOptions;
    .registers 23

    .line 3332
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 3334
    nop

    .line 3335
    nop

    .line 3339
    iget-object v9, v8, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3340
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3341
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->findEffectiveRootIndex()I

    move-result v10

    .line 3342
    const/4 v11, 0x1

    sub-int/2addr v0, v11

    move v14, v0

    move/from16 v17, v11

    const/4 v15, 0x0

    const/16 v16, -0x1

    :goto_18
    if-le v14, v10, :cond_166

    .line 3343
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    .line 3344
    iget-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->frontOfTask:Z

    if-eqz v0, :cond_27

    .line 3345
    goto/16 :goto_166

    .line 3347
    :cond_27
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3348
    and-int/lit8 v1, v0, 0x2

    const/4 v5, 0x0

    if-eqz v1, :cond_32

    move v1, v11

    goto :goto_33

    :cond_32
    move v1, v5

    .line 3350
    :goto_33
    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_39

    move v0, v11

    goto :goto_3a

    :cond_39
    move v0, v5

    .line 3352
    :goto_3a
    iget-object v2, v6, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3353
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-eqz v2, :cond_47

    move v2, v11

    goto :goto_48

    :cond_47
    move v2, v5

    .line 3355
    :goto_48
    if-nez v1, :cond_56

    if-nez v2, :cond_56

    iget-object v3, v6, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_56

    .line 3364
    if-gez v16, :cond_162

    .line 3365
    move/from16 v16, v14

    goto/16 :goto_162

    .line 3367
    :cond_56
    if-nez v1, :cond_104

    if-nez v2, :cond_104

    if-eqz v0, :cond_104

    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v0, :cond_104

    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v3, v8, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    .line 3371
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_102

    .line 3380
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_93

    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskRecord;

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_93

    .line 3381
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskRecord;

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    goto :goto_94

    :cond_93
    const/4 v0, 0x0

    .line 3382
    :goto_94
    if-eqz v0, :cond_ae

    iget-object v1, v6, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v1, :cond_ae

    iget-object v1, v6, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 3383
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 3387
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    move v12, v5

    goto :goto_ce

    .line 3391
    :cond_ae
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v1, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 3392
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v1

    iget-object v2, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 3391
    move-object/from16 v0, p0

    move v12, v5

    move-object/from16 v5, v18

    move-object v13, v6

    move/from16 v6, v19

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 3394
    iget-object v1, v13, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v1, v0, Lcom/android/server/wm/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .line 3399
    :goto_ce
    nop

    .line 3400
    if-gez v16, :cond_d3

    move/from16 v16, v14

    .line 3401
    :cond_d3
    move/from16 v1, v16

    move/from16 v5, v17

    :goto_d7
    if-lt v1, v14, :cond_fa

    .line 3402
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 3403
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_e4

    .line 3404
    goto :goto_f7

    .line 3407
    :cond_e4
    nop

    .line 3408
    if-eqz v5, :cond_f0

    if-nez v15, :cond_f0

    .line 3409
    invoke-virtual {v2, v12}, Lcom/android/server/wm/ActivityRecord;->takeOptionsLocked(Z)Landroid/app/ActivityOptions;

    move-result-object v15

    .line 3410
    if-eqz v15, :cond_f0

    .line 3411
    move v5, v12

    .line 3419
    :cond_f0
    const-string v3, "resetTargetTaskIfNeeded"

    invoke-virtual {v2, v0, v12, v3}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskRecord;ILjava/lang/String;)V

    move/from16 v17, v12

    .line 3401
    :goto_f7
    add-int/lit8 v1, v1, -0x1

    goto :goto_d7

    .line 3422
    :cond_fa
    invoke-virtual {v7, v0}, Lcom/android/server/wm/ActivityStack;->positionChildWindowContainerAtBottom(Lcom/android/server/wm/TaskRecord;)V

    .line 3423
    nop

    .line 3424
    const/16 v16, -0x1

    goto/16 :goto_162

    .line 3371
    :cond_102
    move v12, v5

    goto :goto_105

    .line 3367
    :cond_104
    move v12, v5

    .line 3424
    :goto_105
    if-nez p2, :cond_10f

    if-nez v1, :cond_10f

    if-eqz v2, :cond_10c

    goto :goto_10f

    .line 3466
    :cond_10c
    const/16 v16, -0x1

    goto :goto_162

    .line 3430
    :cond_10f
    :goto_10f
    if-eqz v2, :cond_117

    .line 3434
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v11

    goto :goto_11d

    .line 3435
    :cond_117
    if-gez v16, :cond_11b

    .line 3436
    move v0, v14

    goto :goto_11d

    .line 3438
    :cond_11b
    move/from16 v0, v16

    .line 3440
    :goto_11d
    nop

    .line 3441
    move v13, v0

    move v6, v14

    move/from16 v5, v17

    :goto_122
    if-gt v6, v13, :cond_15f

    .line 3442
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 3443
    iget-boolean v0, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_130

    .line 3444
    goto :goto_15d

    .line 3446
    :cond_130
    nop

    .line 3447
    if-eqz v5, :cond_141

    if-nez v15, :cond_141

    .line 3448
    invoke-virtual {v1, v12}, Lcom/android/server/wm/ActivityRecord;->takeOptionsLocked(Z)Landroid/app/ActivityOptions;

    move-result-object v15

    .line 3449
    if-eqz v15, :cond_13e

    .line 3450
    move/from16 v16, v12

    goto :goto_143

    .line 3449
    :cond_13e
    move/from16 v16, v5

    goto :goto_143

    .line 3455
    :cond_141
    move/from16 v16, v5

    :goto_143
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string v4, "reset-task"

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_159

    .line 3457
    add-int/lit8 v13, v13, -0x1

    .line 3458
    add-int/lit8 v6, v6, -0x1

    move/from16 v17, v12

    move/from16 v5, v16

    goto :goto_15d

    .line 3455
    :cond_159
    move/from16 v17, v12

    move/from16 v5, v16

    .line 3441
    :goto_15d
    add-int/2addr v6, v11

    goto :goto_122

    .line 3461
    :cond_15f
    nop

    .line 3462
    const/16 v16, -0x1

    .line 3342
    :cond_162
    :goto_162
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_18

    .line 3470
    :cond_166
    :goto_166
    return-object v15
.end method

.method private resumeNextFocusableActivityWhenStackIsEmpty(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .registers 5

    .line 3063
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v0

    const-string v1, "noMoreActivities"

    if-nez v0, :cond_16

    .line 3064
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 3065
    if-eqz v0, :cond_16

    .line 3069
    iget-object p2, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result p1

    return p1

    .line 3076
    :cond_16
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 3079
    iget-object p2, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v0, p0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    invoke-virtual {p2, p1, v1, v0}, Lcom/android/server/wm/RootActivityContainer;->resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method private resumeTopActivityInnerLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .registers 19
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2617
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v1

    const/4 v9, 0x0

    if-nez v1, :cond_18

    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v1

    if-nez v1, :cond_18

    .line 2619
    return v9

    .line 2625
    :cond_18
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    .line 2627
    if-eqz v11, :cond_21

    move v1, v10

    goto :goto_22

    :cond_21
    move v1, v9

    .line 2630
    :goto_22
    if-eqz v1, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 2631
    return v9

    .line 2634
    :cond_2b
    iget-object v2, v7, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->cancelInitializingActivities()V

    .line 2638
    iget-object v2, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    .line 2639
    iget-object v3, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-boolean v9, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    .line 2641
    if-nez v1, :cond_3f

    .line 2643
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wm/ActivityStack;->resumeNextFocusableActivityWhenStackIsEmpty(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0

    .line 2646
    :cond_3f
    iput-boolean v9, v11, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    .line 2647
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v12

    .line 2650
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v1, v11, :cond_5b

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v11, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 2651
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityDisplay;->allResumedActivitiesComplete()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 2654
    invoke-virtual {v7, v0}, Lcom/android/server/wm/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 2657
    return v9

    .line 2660
    :cond_5b
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->canResumeByCompat()Z

    move-result v1

    if-nez v1, :cond_62

    .line 2661
    return v9

    .line 2666
    :cond_62
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v1

    const/4 v13, 0x0

    if-eqz v1, :cond_af

    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v1, v11, :cond_af

    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 2668
    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->allPausedActivitiesComplete()Z

    move-result v1

    if-eqz v1, :cond_af

    .line 2671
    nop

    .line 2672
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-nez v1, :cond_a8

    .line 2673
    iget-boolean v1, v7, Lcom/android/server/wm/ActivityStack;->mTopActivityOccludesKeyguard:Z

    if-nez v1, :cond_88

    .line 2674
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v1

    if-eqz v1, :cond_88

    move v1, v10

    goto :goto_89

    :cond_88
    move v1, v9

    .line 2675
    :goto_89
    iget-object v3, v7, Lcom/android/server/wm/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v3, v11, :cond_9b

    iget-object v3, v11, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_9b

    iget-object v3, v11, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 2677
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->containsDismissKeyguardWindow()Z

    move-result v3

    if-eqz v3, :cond_9b

    move v3, v10

    goto :goto_9c

    :cond_9b
    move v3, v9

    .line 2679
    :goto_9c
    if-nez v1, :cond_a0

    if-eqz v3, :cond_a8

    .line 2680
    :cond_a0
    invoke-virtual {v7, v13, v9, v9}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 2682
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v1

    goto :goto_a9

    .line 2685
    :cond_a8
    move v1, v10

    :goto_a9
    if-eqz v1, :cond_af

    .line 2688
    invoke-virtual {v7, v0}, Lcom/android/server/wm/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 2691
    return v9

    .line 2698
    :cond_af
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v3, v11, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v1, v3}, Landroid/app/ActivityManagerInternal;->hasStartedUserState(I)Z

    move-result v1

    const-string v14, "ActivityTaskManager"

    if-nez v1, :cond_e1

    .line 2699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping resume of top activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v11, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is stopped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    return v9

    .line 2706
    :cond_e1
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2707
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2708
    iput-boolean v9, v11, Lcom/android/server/wm/ActivityRecord;->sleeping:Z

    .line 2713
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->allPausedActivitiesComplete()Z

    move-result v1

    if-nez v1, :cond_fa

    .line 2717
    return v9

    .line 2720
    :cond_fa
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v11, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->setLaunchSource(I)V

    .line 2722
    nop

    .line 2723
    nop

    .line 2724
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityDisplay;->getLastFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v15

    .line 2725
    if-eqz v15, :cond_12e

    if-eq v15, v7, :cond_12e

    .line 2728
    iget-object v1, v15, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2729
    if-eqz v2, :cond_120

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->inMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_120

    invoke-virtual {v15, v11}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_120

    .line 2734
    move v2, v9

    .line 2736
    :cond_120
    if-eqz v1, :cond_12c

    const-string v3, "resumeTopActivity"

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_12c

    move v3, v10

    goto :goto_130

    :cond_12c
    move v3, v9

    goto :goto_130

    .line 2743
    :cond_12e
    move v3, v9

    move-object v1, v13

    :goto_130
    iget-object v4, v11, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x4000

    if-eqz v4, :cond_13c

    if-nez v3, :cond_13c

    move v3, v10

    goto :goto_13d

    :cond_13c
    move v3, v9

    .line 2746
    :goto_13d
    invoke-virtual {v12, v2, v11, v9}, Lcom/android/server/wm/ActivityDisplay;->pauseBackStacks(ZLcom/android/server/wm/ActivityRecord;Z)Z

    move-result v4

    .line 2747
    iget-object v5, v7, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_14a

    .line 2750
    invoke-virtual {v7, v2, v9, v11, v9}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Z)Z

    move-result v2

    or-int/2addr v4, v2

    .line 2752
    :cond_14a
    if-eqz v4, :cond_17b

    if-nez v3, :cond_17b

    .line 2759
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_15a

    .line 2760
    iget-object v0, v11, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v9, v10, v9}, Lcom/android/server/wm/WindowProcessController;->updateProcessInfo(ZZZ)V

    goto :goto_175

    .line 2762
    :cond_15a
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->isProcessRunning()Z

    move-result v0

    if-nez v0, :cond_175

    .line 2766
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-ne v7, v0, :cond_168

    move v0, v10

    goto :goto_169

    :cond_168
    move v0, v9

    .line 2767
    :goto_169
    iget-object v2, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2768
    if-eqz v0, :cond_170

    const-string v3, "pre-top-activity"

    goto :goto_172

    :cond_170
    const-string v3, "pre-activity"

    .line 2767
    :goto_172
    invoke-virtual {v2, v11, v9, v0, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->startProcessAsync(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V

    .line 2770
    :cond_175
    :goto_175
    if-eqz v1, :cond_17a

    .line 2771
    invoke-virtual {v1, v10}, Lcom/android/server/wm/ActivityRecord;->setWillCloseOrEnterPip(Z)V

    .line 2773
    :cond_17a
    return v10

    .line 2774
    :cond_17b
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v1, v11, :cond_191

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v11, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v1

    if-eqz v1, :cond_191

    .line 2775
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityDisplay;->allResumedActivitiesComplete()Z

    move-result v1

    if-eqz v1, :cond_191

    .line 2781
    invoke-virtual {v7, v0}, Lcom/android/server/wm/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 2784
    return v10

    .line 2790
    :cond_191
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-eqz v0, :cond_1af

    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1af

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1af

    .line 2794
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string v5, "resume-no-history"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 2796
    iput-object v13, v7, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2799
    :cond_1af
    if-eqz v8, :cond_1be

    if-eq v8, v11, :cond_1be

    iget-boolean v0, v11, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v0, :cond_1be

    .line 2809
    iget-boolean v0, v8, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_1be

    .line 2810
    invoke-virtual {v8, v9}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 2825
    :cond_1be
    :try_start_1be
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, v11, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v2, v11, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-interface {v0, v1, v9, v2}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_1c9
    .catch Landroid/os/RemoteException; {:try_start_1be .. :try_end_1c9} :catch_1ea
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1be .. :try_end_1c9} :catch_1ca

    goto :goto_1eb

    .line 2828
    :catch_1ca
    move-exception v0

    .line 2829
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed trying to unstop package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ec

    .line 2827
    :catch_1ea
    move-exception v0

    .line 2831
    :goto_1eb
    nop

    .line 2836
    :goto_1ec
    nop

    .line 2837
    iget-object v0, v12, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2838
    const/4 v1, 0x6

    if-eqz v8, :cond_248

    .line 2839
    iget-boolean v2, v8, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_21e

    .line 2842
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_206

    .line 2843
    nop

    .line 2844
    invoke-virtual {v0, v9, v9}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    move v1, v9

    goto :goto_21a

    .line 2846
    :cond_206
    nop

    .line 2847
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    if-ne v1, v2, :cond_213

    const/4 v1, 0x7

    goto :goto_215

    .line 2848
    :cond_213
    const/16 v1, 0x9

    :goto_215
    nop

    .line 2846
    invoke-virtual {v0, v1, v9}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    move v1, v10

    .line 2850
    :goto_21a
    invoke-virtual {v8, v9}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    goto :goto_25c

    .line 2854
    :cond_21e
    iget-object v2, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22e

    .line 2855
    nop

    .line 2856
    invoke-virtual {v0, v9, v9}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    move v1, v9

    goto :goto_25c

    .line 2858
    :cond_22e
    nop

    .line 2859
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    if-ne v2, v3, :cond_23a

    goto :goto_243

    .line 2860
    :cond_23a
    iget-boolean v1, v11, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_241

    const/16 v1, 0x10

    goto :goto_243

    .line 2861
    :cond_241
    const/16 v1, 0x8

    :goto_243
    nop

    .line 2858
    invoke-virtual {v0, v1, v9}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    goto :goto_25b

    .line 2866
    :cond_248
    iget-object v2, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_258

    .line 2867
    nop

    .line 2868
    invoke-virtual {v0, v9, v9}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    move v1, v9

    goto :goto_25c

    .line 2870
    :cond_258
    invoke-virtual {v0, v1, v9}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 2874
    :goto_25b
    move v1, v10

    :goto_25c
    if-eqz v1, :cond_262

    .line 2875
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->applyOptionsLocked()V

    goto :goto_265

    .line 2877
    :cond_262
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->clearOptionsLocked()V

    .line 2880
    :goto_265
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2882
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1

    if-eqz v1, :cond_3d1

    .line 2893
    if-eqz v15, :cond_284

    .line 2894
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityStack;->inMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_282

    iget-object v1, v15, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_284

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    if-nez v1, :cond_284

    :cond_282
    move v1, v10

    goto :goto_285

    :cond_284
    move v1, v9

    .line 2899
    :goto_285
    iget-boolean v2, v11, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v2, :cond_28f

    iget-boolean v2, v11, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-nez v2, :cond_28f

    if-eqz v1, :cond_292

    .line 2900
    :cond_28f
    invoke-virtual {v11, v10}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 2904
    :cond_292
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->startLaunchTickingLocked()V

    .line 2907
    if-nez v15, :cond_299

    move-object v1, v13

    goto :goto_29b

    :cond_299
    iget-object v1, v15, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2908
    :goto_29b
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v2

    .line 2910
    iget-object v3, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->updateCpuStats()V

    .line 2915
    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v4, "resumeTopActivityInnerLocked"

    invoke-virtual {v11, v3, v4}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 2917
    iget-object v3, v11, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3, v9, v10, v10}, Lcom/android/server/wm/WindowProcessController;->updateProcessInfo(ZZZ)V

    .line 2919
    invoke-virtual {v7, v11}, Lcom/android/server/wm/ActivityStack;->updateLRUListLocked(Lcom/android/server/wm/ActivityRecord;)Z

    .line 2923
    nop

    .line 2927
    invoke-virtual {v7, v11}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_2c4

    .line 2936
    iget-object v3, v7, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v5, v7, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    invoke-virtual {v3, v11, v5, v10, v9}, Lcom/android/server/wm/RootActivityContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    move-result v3

    xor-int/2addr v3, v10

    goto :goto_2c5

    .line 2927
    :cond_2c4
    move v3, v10

    .line 2940
    :goto_2c5
    if-eqz v3, :cond_2e1

    .line 2946
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2950
    if-eq v0, v11, :cond_2d2

    .line 2952
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    .line 2954
    :cond_2d2
    iget-boolean v0, v11, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v0, :cond_2da

    iget-boolean v0, v11, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-eqz v0, :cond_2dd

    .line 2955
    :cond_2da
    invoke-virtual {v11, v10}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 2957
    :cond_2dd
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V

    .line 2958
    return v10

    .line 2962
    :cond_2e1
    :try_start_2e1
    iget-object v3, v11, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 2963
    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    iget-object v5, v11, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-static {v3, v5}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v3

    .line 2965
    iget-object v5, v11, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 2966
    if-eqz v5, :cond_302

    .line 2967
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2968
    iget-boolean v8, v11, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v8, :cond_302

    if-lez v6, :cond_302

    .line 2971
    invoke-static {v5}, Landroid/app/servertransaction/ActivityResultItem;->obtain(Ljava/util/List;)Landroid/app/servertransaction/ActivityResultItem;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 2975
    :cond_302
    iget-object v5, v11, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-eqz v5, :cond_30f

    .line 2976
    iget-object v5, v11, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 2977
    invoke-static {v5, v10}, Landroid/app/servertransaction/NewIntentItem;->obtain(Ljava/util/List;Z)Landroid/app/servertransaction/NewIntentItem;

    move-result-object v5

    .line 2976
    invoke-virtual {v3, v5}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 2982
    :cond_30f
    iget-boolean v5, v11, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    invoke-virtual {v11, v5}, Lcom/android/server/wm/ActivityRecord;->notifyAppResumed(Z)V

    .line 2984
    const/16 v5, 0x7537

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    iget v8, v11, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v9

    .line 2985
    invoke-static {v11}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v10

    const/4 v8, 0x2

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v12

    iget v12, v12, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v6, v8

    const/4 v8, 0x3

    iget-object v12, v11, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v12, v6, v8

    .line 2984
    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2988
    iput-boolean v9, v11, Lcom/android/server/wm/ActivityRecord;->sleeping:Z

    .line 2989
    iget-object v5, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppWarningsLocked()Lcom/android/server/wm/AppWarnings;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/android/server/wm/AppWarnings;->onResumeActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 2990
    iget-object v5, v11, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v6, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowProcessController;->setPendingUiCleanAndForceProcessStateUpTo(I)V

    .line 2991
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->clearOptionsLocked()V

    .line 2992
    iget-object v5, v11, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 2993
    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessController;->getReportedProcState()I

    move-result v5

    .line 2994
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    move-result v0

    .line 2993
    invoke-static {v5, v0}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(IZ)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v0

    .line 2992
    invoke-virtual {v3, v0}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 2995
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    :try_end_371
    .catch Ljava/lang/Exception; {:try_start_2e1 .. :try_end_371} :catch_39a

    .line 3020
    nop

    .line 3025
    :try_start_372
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V
    :try_end_375
    .catch Ljava/lang/Exception; {:try_start_372 .. :try_end_375} :catch_377

    .line 3033
    nop

    .line 3034
    goto :goto_3e0

    .line 3026
    :catch_377
    move-exception v0

    move-object v1, v0

    .line 3029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown during resume of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3030
    iget-object v2, v11, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    const-string v5, "resume-exception"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3032
    return v10

    .line 2999
    :catch_39a
    move-exception v0

    .line 3003
    invoke-virtual {v11, v2, v4}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3006
    if-eqz v1, :cond_3a5

    .line 3007
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v1, v0, v4}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3010
    :cond_3a5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restarting because process died: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3011
    iget-boolean v0, v11, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    if-nez v0, :cond_3c0

    .line 3012
    iput-boolean v10, v11, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    goto :goto_3cb

    .line 3013
    :cond_3c0
    if-eqz v15, :cond_3cb

    .line 3014
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityStack;->isTopStackOnDisplay()Z

    move-result v0

    if-eqz v0, :cond_3cb

    .line 3015
    invoke-virtual {v11, v13, v9, v9}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 3018
    :cond_3cb
    :goto_3cb
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, v11, v10, v9}, Lcom/android/server/wm/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 3019
    return v10

    .line 3036
    :cond_3d1
    iget-boolean v0, v11, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    if-nez v0, :cond_3d8

    .line 3037
    iput-boolean v10, v11, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    goto :goto_3db

    .line 3040
    :cond_3d8
    invoke-virtual {v11, v13, v9, v9}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 3046
    :goto_3db
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, v11, v10, v10}, Lcom/android/server/wm/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 3049
    :goto_3e0
    return v10
.end method

.method private returnsToHomeStack()Z
    .registers 3

    .line 1247
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 1248
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 1249
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->returnsToHomeStack()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    nop

    .line 1247
    :goto_20
    return v1
.end method

.method private schedulePauseTimeout(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 1634
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1635
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1636
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/wm/ActivityRecord;->pauseTime:J

    .line 1637
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1639
    return-void
.end method

.method private setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .registers 3

    .line 2605
    iget-object p2, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne p2, p1, :cond_5

    .line 2606
    return-void

    .line 2611
    :cond_5
    iput-object p1, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2612
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStackSupervisor;->updateTopResumedActivityIfNeeded()V

    .line 2613
    return-void
.end method

.method private setWindowingModeInSurfaceTransaction(IZZZZZ)V
    .registers 29

    .line 712
    move-object/from16 v1, p0

    move/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v2

    .line 713
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideWindowingMode()I

    move-result v3

    .line 714
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v4

    .line 715
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v5

    .line 716
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 717
    nop

    .line 718
    if-nez v0, :cond_24

    .line 719
    invoke-static {v2}, Lcom/android/server/wm/ActivityStack;->isTransientWindowingMode(I)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 721
    iget v7, v1, Lcom/android/server/wm/ActivityStack;->mRestoreOverrideWindowingMode:I

    goto :goto_25

    .line 723
    :cond_24
    move v7, v0

    :goto_25
    iget-object v8, v1, Lcom/android/server/wm/ActivityStack;->mTmpOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8, v7}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 727
    const/4 v8, 0x0

    if-nez p6, :cond_36

    .line 728
    nop

    .line 729
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v9

    .line 728
    invoke-virtual {v4, v7, v8, v5, v9}, Lcom/android/server/wm/ActivityDisplay;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;I)I

    move-result v7

    .line 731
    :cond_36
    const/4 v9, 0x4

    if-ne v6, v1, :cond_3d

    if-ne v7, v9, :cond_3d

    .line 735
    iget v7, v1, Lcom/android/server/wm/ActivityStack;->mRestoreOverrideWindowingMode:I

    .line 738
    :cond_3d
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityDisplay;->hasSplitScreenPrimaryStack()Z

    move-result v10

    .line 742
    nop

    .line 744
    const/4 v11, 0x1

    xor-int/lit8 v12, p4, 0x1

    const/4 v14, 0x3

    if-eqz v10, :cond_7f

    if-ne v7, v11, :cond_7f

    if-eqz v12, :cond_7f

    .line 745
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v15

    if-eqz v15, :cond_7f

    .line 746
    if-eq v0, v14, :cond_59

    if-ne v0, v9, :cond_57

    goto :goto_59

    :cond_57
    const/4 v0, 0x0

    goto :goto_5a

    :cond_59
    :goto_59
    move v0, v11

    .line 749
    :goto_5a
    if-nez v0, :cond_5e

    if-eqz p6, :cond_7f

    .line 753
    :cond_5e
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityDismissingDockedStack()V

    .line 754
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v15

    .line 755
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    .line 758
    if-ne v15, v1, :cond_7a

    move/from16 v21, p6

    goto :goto_7c

    :cond_7a
    const/16 v21, 0x0

    .line 755
    :goto_7c
    invoke-direct/range {v15 .. v21}, Lcom/android/server/wm/ActivityStack;->setWindowingModeInSurfaceTransaction(IZZZZZ)V

    .line 762
    :cond_7f
    if-ne v2, v7, :cond_8b

    .line 766
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v7}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 767
    return-void

    .line 770
    :cond_8b
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 771
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 776
    nop

    .line 777
    if-nez v7, :cond_a6

    .line 778
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v16

    .line 779
    if-eqz v16, :cond_a1

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v16

    goto :goto_a3

    .line 780
    :cond_a1
    move/from16 v16, v11

    :goto_a3
    move/from16 v13, v16

    goto :goto_a7

    .line 777
    :cond_a6
    move v13, v7

    .line 782
    :goto_a7
    if-eqz v12, :cond_c6

    if-eq v13, v11, :cond_c6

    if-eqz v0, :cond_c6

    .line 783
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isNonResizableOrForcedResizable()Z

    move-result v12

    if-eqz v12, :cond_c6

    iget-boolean v12, v0, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-nez v12, :cond_c6

    .line 787
    iget-object v12, v0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 788
    iget-object v13, v1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v13

    iget v5, v5, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v13, v5, v11, v12}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    .line 792
    :cond_c6
    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 794
    const-string v5, "setWindowingMode"

    if-nez p2, :cond_d6

    if-eqz v0, :cond_d6

    .line 795
    :try_start_cf
    iget-object v12, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v12, v12, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    :cond_d6
    invoke-super {v1, v7}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    .line 800
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v7
    :try_end_dd
    .catchall {:try_start_cf .. :try_end_dd} :catchall_17a

    .line 802
    if-eqz p6, :cond_fb

    .line 840
    if-eqz p3, :cond_f7

    if-nez v10, :cond_f7

    iget v0, v1, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    if-nez v0, :cond_f7

    if-ne v7, v14, :cond_f7

    .line 855
    invoke-virtual {v4, v9, v14, v11}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 858
    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 860
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    .line 862
    :cond_f7
    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 804
    return-void

    .line 807
    :cond_fb
    const/4 v0, 0x2

    if-eq v7, v0, :cond_172

    if-eq v2, v0, :cond_172

    .line 815
    if-ne v7, v14, :cond_10d

    if-nez v6, :cond_105

    goto :goto_10d

    .line 819
    :cond_105
    :try_start_105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Setting primary split-screen windowing mode while there is already one isn\'t currently supported"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 823
    :cond_10d
    :goto_10d
    invoke-static {v7}, Lcom/android/server/wm/ActivityStack;->isTransientWindowingMode(I)Z

    move-result v0

    if-eqz v0, :cond_11b

    invoke-static {v2}, Lcom/android/server/wm/ActivityStack;->isTransientWindowingMode(I)Z

    move-result v0

    if-nez v0, :cond_11b

    .line 824
    iput v3, v1, Lcom/android/server/wm/ActivityStack;->mRestoreOverrideWindowingMode:I

    .line 827
    :cond_11b
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 828
    if-eq v7, v11, :cond_137

    .line 829
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result v0

    if-eqz v0, :cond_130

    .line 830
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_137

    .line 832
    :cond_130
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    iget-object v2, v1, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskStack;->getRawBounds(Landroid/graphics/Rect;)V

    .line 836
    :cond_137
    :goto_137
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_148

    .line 837
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v8, v8}, Lcom/android/server/wm/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_148
    .catchall {:try_start_105 .. :try_end_148} :catchall_17a

    .line 840
    :cond_148
    if-eqz p3, :cond_160

    if-nez v10, :cond_160

    iget v0, v1, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    if-nez v0, :cond_160

    if-ne v7, v14, :cond_160

    .line 855
    invoke-virtual {v4, v9, v14, v11}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 858
    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 860
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    .line 862
    :cond_160
    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 863
    nop

    .line 865
    if-nez p5, :cond_171

    .line 866
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v2, 0x0

    invoke-virtual {v0, v8, v2, v11}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 867
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 869
    :cond_171
    return-void

    .line 811
    :cond_172
    :try_start_172
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Changing pinned windowing mode not currently supported"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17a
    .catchall {:try_start_172 .. :try_end_17a} :catchall_17a

    .line 840
    :catchall_17a
    move-exception v0

    if-eqz p3, :cond_193

    if-nez v10, :cond_193

    iget v2, v1, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    if-nez v2, :cond_193

    if-ne v7, v14, :cond_193

    .line 855
    invoke-virtual {v4, v9, v14, v11}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 858
    invoke-virtual {v2, v5}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 860
    iget-object v1, v1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    .line 862
    :cond_193
    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method private updateBehindFullscreen(ZZLcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 2455
    iget-boolean p1, p3, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    if-eqz p1, :cond_5

    .line 2460
    const/4 p2, 0x1

    .line 2462
    :cond_5
    return p2
.end method

.method private updateTaskMovement(Lcom/android/server/wm/TaskRecord;Z)V
    .registers 7

    .line 4876
    iget-boolean v0, p1, Lcom/android/server/wm/TaskRecord;->isPersistable:Z

    if-eqz v0, :cond_13

    .line 4877
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/wm/TaskRecord;->mLastTimeMoved:J

    .line 4881
    if-nez p2, :cond_13

    .line 4882
    iget-wide v0, p1, Lcom/android/server/wm/TaskRecord;->mLastTimeMoved:J

    const-wide/16 v2, -0x1

    mul-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/wm/TaskRecord;->mLastTimeMoved:J

    .line 4885
    :cond_13
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootActivityContainer;->invalidateTaskLayers()V

    .line 4886
    return-void
.end method

.method private updateTransitLocked(ILandroid/app/ActivityOptions;)V
    .registers 5

    .line 4864
    if-eqz p2, :cond_17

    .line 4865
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 4866
    if-eqz v0, :cond_14

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 4867
    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    goto :goto_17

    .line 4869
    :cond_14
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 4872
    :cond_17
    :goto_17
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 4873
    return-void
.end method


# virtual methods
.method final activityDestroyedLocked(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 5

    .line 4711
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4713
    :try_start_4
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityStack;->activityDestroyedLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    .line 4715
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4716
    nop

    .line 4717
    return-void

    .line 4715
    :catchall_10
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method final activityDestroyedLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .registers 5

    .line 4724
    if-eqz p1, :cond_9

    .line 4725
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4730
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->isInStackLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 4731
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4732
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 4733
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 4737
    :cond_21
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 4738
    return-void
.end method

.method final activityPausedLocked(Landroid/os/IBinder;Z)V
    .registers 9

    .line 1760
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 1762
    const/4 p2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_71

    .line 1763
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1764
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x1

    if-ne v1, p1, :cond_30

    .line 1767
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 1769
    :try_start_1b
    invoke-direct {p0, v2, p2}, Lcom/android/server/wm/ActivityStack;->completePauseLocked(ZLcom/android/server/wm/ActivityRecord;)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_27

    .line 1771
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1772
    nop

    .line 1773
    return-void

    .line 1771
    :catchall_27
    move-exception p1

    iget-object p2, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw p1

    .line 1775
    :cond_30
    const/16 v1, 0x753c

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 1776
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v2, v3, v4

    const/4 v2, 0x3

    .line 1777
    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_54

    .line 1778
    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    goto :goto_56

    :cond_54
    const-string v5, "(none)"

    :goto_56
    aput-object v5, v3, v2

    .line 1775
    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1779
    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 1780
    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v2, "activityPausedLocked"

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1781
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_71

    .line 1784
    invoke-virtual {p0, p1, v4, v0, v2}, Lcom/android/server/wm/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/wm/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    .line 1790
    :cond_71
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p1, p2, v0, v0}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1791
    return-void
.end method

.method addStartingWindowsForVisibleActivities(Z)V
    .registers 4

    .line 2253
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 2254
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskRecord;->addStartingWindowsForVisibleActivities(Z)V

    .line 2253
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2256
    :cond_18
    return-void
.end method

.method addTask(Lcom/android/server/wm/TaskRecord;IZLjava/lang/String;)V
    .registers 7

    .line 5558
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5559
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isSingleTaskInstance()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_2b

    .line 5560
    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can only have one child on stack="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5563
    :cond_2b
    :goto_2b
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/wm/TaskRecord;ILcom/android/server/wm/ActivityRecord;)I

    move-result p2

    .line 5564
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_3a

    const/4 v0, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    .line 5565
    :goto_3b
    invoke-direct {p0, p1, p4, v0}, Lcom/android/server/wm/ActivityStack;->preAddTask(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object p4

    .line 5567
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5568
    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskRecord;->setStack(Lcom/android/server/wm/ActivityStack;)V

    .line 5570
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ActivityStack;->updateTaskMovement(Lcom/android/server/wm/TaskRecord;Z)V

    .line 5572
    invoke-direct {p0, p1, p4, p3}, Lcom/android/server/wm/ActivityStack;->postAddTask(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityStack;Z)V

    .line 5573
    return-void
.end method

.method addTask(Lcom/android/server/wm/TaskRecord;ZLjava/lang/String;)V
    .registers 6

    .line 5546
    if-eqz p2, :cond_6

    const v0, 0x7fffffff

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/server/wm/ActivityStack;->addTask(Lcom/android/server/wm/TaskRecord;IZLjava/lang/String;)V

    .line 5547
    if-eqz p2, :cond_10

    .line 5549
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->positionChildWindowContainerAtTop(Lcom/android/server/wm/TaskRecord;)V

    .line 5551
    :cond_10
    return-void
.end method

.method addToStopping(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V
    .registers 12

    .line 1886
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez v0, :cond_35

    .line 1887
    const/16 v0, 0x7572

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    .line 1888
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v5, 0x2

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object p4, v4, v2

    .line 1887
    invoke-static {v0, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1889
    iget-object p4, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p4, p4, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1896
    :cond_35
    iget-object p4, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p4, p4, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-gt p4, v2, :cond_4d

    iget-boolean p4, p1, Lcom/android/server/wm/ActivityRecord;->frontOfTask:Z

    if-eqz p4, :cond_4c

    iget-object p4, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 1897
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-gt p4, v3, :cond_4c

    goto :goto_4d

    :cond_4c
    goto :goto_4e

    :cond_4d
    :goto_4d
    move v1, v3

    .line 1898
    :goto_4e
    if-nez p2, :cond_57

    if-eqz v1, :cond_53

    goto :goto_57

    .line 1907
    :cond_53
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->checkReadyForSleep()V

    goto :goto_64

    .line 1901
    :cond_57
    :goto_57
    if-nez p3, :cond_5f

    .line 1902
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleIdleLocked()V

    goto :goto_64

    .line 1904
    :cond_5f
    iget-object p2, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 1909
    :goto_64
    return-void
.end method

.method adjustFocusToNextFocusableStack(Ljava/lang/String;)Lcom/android/server/wm/ActivityStack;
    .registers 3

    .line 3725
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    return-object p1
.end method

.method affectedBySplitScreenResize()Z
    .registers 4

    .line 2282
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->supportsSplitScreenWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2283
    return v1

    .line 2285
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    .line 2286
    const/4 v2, 0x5

    if-eq v0, v2, :cond_13

    const/4 v2, 0x2

    if-eq v0, v2, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1
.end method

.method animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V
    .registers 7

    .line 5683
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 5684
    :cond_7
    if-nez p2, :cond_2d

    .line 5685
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 5686
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningNonOverlayTaskActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 5687
    if-eqz v1, :cond_2d

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityRecord;->isConfigurationCompatible(Landroid/content/res/Configuration;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 5690
    iget-object p1, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    const/16 p2, 0x100

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/wm/WindowProcessController;I)V

    .line 5691
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget p2, p0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->moveTasksToFullscreenStack(IZ)V

    .line 5692
    return-void

    .line 5695
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-nez v0, :cond_34

    return-void

    .line 5696
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3, p4}, Lcom/android/server/wm/TaskStack;->animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    .line 5698
    return-void
.end method

.method awakeFromSleepingLocked()V
    .registers 7

    .line 1515
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_2b

    .line 1516
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    iget-object v2, v2, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1517
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_19
    if-ltz v3, :cond_28

    .line 1518
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityRecord;->setSleeping(Z)V

    .line 1517
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 1515
    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1521
    :cond_2b
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_3d

    .line 1522
    const-string v0, "ActivityTaskManager"

    const-string v2, "awakeFromSleepingLocked: previously pausing activity didn\'t pause"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityStack;->activityPausedLocked(Landroid/os/IBinder;Z)V

    .line 1525
    :cond_3d
    return-void
.end method

.method canShowWithInsecureKeyguard()Z
    .registers 4

    .line 2346
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 2347
    if-eqz v0, :cond_14

    .line 2352
    iget-object v0, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    .line 2353
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0

    .line 2348
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stack is not attached to any display, stackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method cancelInitializingActivities()V
    .registers 10

    .line 2520
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2521
    nop

    .line 2524
    nop

    .line 2526
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_13

    .line 2529
    nop

    .line 2530
    move v1, v2

    move v4, v3

    goto :goto_15

    .line 2526
    :cond_13
    move v4, v2

    move v1, v3

    .line 2533
    :goto_15
    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    :goto_1c
    if-ltz v5, :cond_4a

    .line 2534
    iget-object v6, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/TaskRecord;

    iget-object v6, v6, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2535
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v3

    :goto_2d
    if-ltz v7, :cond_47

    .line 2536
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/ActivityRecord;

    .line 2537
    if-eqz v1, :cond_3e

    .line 2538
    if-ne v8, v0, :cond_3a

    .line 2539
    move v1, v2

    .line 2541
    :cond_3a
    iget-boolean v8, v8, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    or-int/2addr v4, v8

    .line 2542
    goto :goto_44

    .line 2545
    :cond_3e
    invoke-virtual {v8, v4}, Lcom/android/server/wm/ActivityRecord;->removeOrphanedStartingWindow(Z)V

    .line 2546
    iget-boolean v8, v8, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    or-int/2addr v4, v8

    .line 2535
    :goto_44
    add-int/lit8 v7, v7, -0x1

    goto :goto_2d

    .line 2533
    :cond_47
    add-int/lit8 v5, v5, -0x1

    goto :goto_1c

    .line 2549
    :cond_4a
    return-void
.end method

.method checkKeyguardVisibility(Lcom/android/server/wm/ActivityRecord;ZZ)Z
    .registers 11

    .line 2304
    iget v0, p0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    goto :goto_8

    :cond_7
    move v0, v1

    .line 2305
    :goto_8
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v2

    .line 2306
    invoke-virtual {v2, v0}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v0

    .line 2307
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result v2

    .line 2308
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v3

    .line 2309
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v5, 0x1

    if-eqz v4, :cond_2f

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 2310
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->containsDismissKeyguardWindow()Z

    move-result v4

    if-eqz v4, :cond_2f

    move v4, v5

    goto :goto_30

    :cond_2f
    move v4, v1

    .line 2311
    :goto_30
    if-eqz p2, :cond_59

    .line 2312
    if-eqz v4, :cond_3a

    iget-object v6, p0, Lcom/android/server/wm/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v6, :cond_3a

    .line 2313
    iput-object p1, p0, Lcom/android/server/wm/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2318
    :cond_3a
    if-eqz p3, :cond_41

    .line 2319
    iget-boolean p3, p0, Lcom/android/server/wm/ActivityStack;->mTopActivityOccludesKeyguard:Z

    or-int/2addr p3, v3

    iput-boolean p3, p0, Lcom/android/server/wm/ActivityStack;->mTopActivityOccludesKeyguard:Z

    .line 2322
    :cond_41
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->canShowWithInsecureKeyguard()Z

    move-result p3

    if-eqz p3, :cond_55

    iget-object p3, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 2323
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/wm/KeyguardController;->canDismissKeyguard()Z

    move-result p3

    if-eqz p3, :cond_55

    move p3, v5

    goto :goto_56

    :cond_55
    move p3, v1

    .line 2324
    :goto_56
    if-eqz p3, :cond_59

    .line 2325
    return v5

    .line 2328
    :cond_59
    if-eqz v0, :cond_6d

    .line 2331
    if-eqz p2, :cond_6b

    iget-object p2, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object p2

    .line 2332
    invoke-virtual {p2, p1, v4}, Lcom/android/server/wm/KeyguardController;->canShowActivityWhileKeyguardShowing(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result p1

    if-eqz p1, :cond_6b

    move v1, v5

    goto :goto_6c

    :cond_6b
    nop

    .line 2331
    :goto_6c
    return v1

    .line 2333
    :cond_6d
    if-eqz v2, :cond_7f

    .line 2334
    if-eqz p2, :cond_7e

    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Lcom/android/server/wm/KeyguardController;->canShowWhileOccluded(ZZ)Z

    move-result p1

    if-eqz p1, :cond_7e

    move v1, v5

    :cond_7e
    return v1

    .line 2337
    :cond_7f
    return p2
.end method

.method checkReadyForSleep()V
    .registers 3

    .line 1544
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->goToSleepIfPossible(Z)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1545
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 1547
    :cond_13
    return-void
.end method

.method clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V
    .registers 7

    .line 2472
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_2f

    .line 2473
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 2474
    iget-object v1, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2475
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1a
    if-ltz v2, :cond_2c

    .line 2476
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 2477
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eq v4, p1, :cond_29

    .line 2478
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 2475
    :cond_29
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 2472
    :cond_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2482
    :cond_2f
    return-void
.end method

.method closeSystemDialogsLocked()V
    .registers 11

    .line 5183
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_3a

    .line 5184
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    iget-object v1, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5185
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1a
    if-ltz v2, :cond_37

    .line 5186
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 5187
    iget-object v3, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_34

    .line 5188
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    const-string v8, "close-sys"

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 5185
    :cond_34
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 5183
    :cond_37
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 5192
    :cond_3a
    return-void
.end method

.method continueUpdateBounds()V
    .registers 2

    .line 1022
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mUpdateBoundsDeferred:Z

    if-eqz v0, :cond_1e

    .line 1023
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mUpdateBoundsDeferred:Z

    .line 1024
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mUpdateBoundsDeferredCalled:Z

    if-eqz v0, :cond_15

    .line 1025
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->setTaskBounds(Landroid/graphics/Rect;)V

    .line 1026
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->setBounds(Landroid/graphics/Rect;)I

    .line 1028
    :cond_15
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mUpdateDisplayedBoundsDeferredCalled:Z

    if-eqz v0, :cond_1e

    .line 1029
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mDeferredDisplayedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->setTaskDisplayedBounds(Landroid/graphics/Rect;)V

    .line 1032
    :cond_1e
    return-void
.end method

.method convertActivityToTranslucent(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 2466
    iput-object p1, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 2467
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2468
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x6a

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2469
    return-void
.end method

.method createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/wm/TaskRecord;
    .registers 17

    .line 5517
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/wm/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    return-object v0
.end method

.method createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/TaskRecord;
    .registers 25

    .line 5525
    move-object v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p6

    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/TaskRecord;->create(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    .line 5528
    const-string v2, "createTaskRecord"

    invoke-virtual {p0, v1, v8, v2}, Lcom/android/server/wm/ActivityStack;->addTask(Lcom/android/server/wm/TaskRecord;ZLjava/lang/String;)V

    .line 5529
    iget v2, v0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v2, v4, :cond_21

    goto :goto_22

    :cond_21
    move v2, v3

    .line 5530
    :goto_22
    iget-object v4, v0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v4

    .line 5531
    invoke-virtual {v4, v2}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v2

    .line 5532
    iget-object v4, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v9

    iget-object v11, v7, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 5533
    move-object v10, v1

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v4

    if-nez v4, :cond_58

    .line 5534
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->matchParentBounds()Z

    move-result v4

    if-nez v4, :cond_58

    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v4

    if-eqz v4, :cond_58

    if-nez v2, :cond_58

    .line 5535
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 5537
    :cond_58
    iget v0, v7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_5f

    const/4 v3, 0x1

    :cond_5f
    invoke-virtual {v1, v8, v3}, Lcom/android/server/wm/TaskRecord;->createTask(ZZ)V

    .line 5538
    return-object v1
.end method

.method createTaskStack(IZLandroid/graphics/Rect;)V
    .registers 7

    .line 530
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 531
    if-eqz v0, :cond_2e

    .line 535
    new-instance p1, Lcom/android/server/wm/TaskStack;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v2, p0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-direct {p1, v1, v2, p0}, Lcom/android/server/wm/TaskStack;-><init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/ActivityStack;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    .line 536
    iget p1, p0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/wm/DisplayContent;->setStackOnDisplay(IZLcom/android/server/wm/TaskStack;)V

    .line 537
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 538
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2d

    .line 540
    :cond_28
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {p1, p3}, Lcom/android/server/wm/TaskStack;->getRawBounds(Landroid/graphics/Rect;)V

    .line 542
    :goto_2d
    return-void

    .line 532
    :cond_2e
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Trying to add stackId="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to unknown displayId="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method deferScheduleMultiWindowModeChanged()Z
    .registers 3

    .line 992
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 999
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-nez v0, :cond_e

    return v1

    .line 1000
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->deferScheduleMultiWindowModeChanged()Z

    move-result v0

    return v0

    .line 1002
    :cond_17
    return v1
.end method

.method deferUpdateBounds()V
    .registers 2

    .line 1010
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mUpdateBoundsDeferred:Z

    if-nez v0, :cond_a

    .line 1011
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mUpdateBoundsDeferred:Z

    .line 1012
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mUpdateBoundsDeferredCalled:Z

    .line 1014
    :cond_a
    return-void
.end method

.method final destroyActivityLocked(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)Z
    .registers 12

    .line 4615
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 4618
    return v1

    .line 4621
    :cond_c
    const/16 v0, 0x7542

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 4622
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    .line 4623
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v5, v2, v3

    const/4 v3, 0x4

    aput-object p3, v2, v3

    .line 4621
    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4625
    nop

    .line 4627
    invoke-direct {p0, p1, v1, v1}, Lcom/android/server/wm/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 4629
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v0

    .line 4631
    const/4 v2, 0x0

    if-eqz v0, :cond_cc

    .line 4632
    if-eqz p2, :cond_6a

    .line 4633
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/WindowProcessController;->removeActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 4634
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result p2

    if-nez p2, :cond_5d

    .line 4635
    iget-object p2, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V

    .line 4637
    :cond_5d
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result p2

    if-nez p2, :cond_6a

    .line 4641
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p2, v4, v1, v4}, Lcom/android/server/wm/WindowProcessController;->updateProcessInfo(ZZZ)V

    .line 4646
    :cond_6a
    nop

    .line 4650
    :try_start_6b
    iget-object p2, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object p2

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v6, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    iget v7, p1, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    .line 4651
    invoke-static {v6, v7}, Landroid/app/servertransaction/DestroyActivityItem;->obtain(ZI)Landroid/app/servertransaction/DestroyActivityItem;

    move-result-object v6

    .line 4650
    invoke-virtual {p2, v3, v5, v6}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_84} :catch_85

    .line 4662
    goto :goto_a1

    .line 4652
    :catch_85
    move-exception p2

    .line 4657
    iget-boolean p2, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz p2, :cond_a1

    .line 4658
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " exceptionInScheduleDestroy"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 4659
    nop

    .line 4660
    move p2, v4

    goto :goto_a3

    .line 4664
    :cond_a1
    :goto_a1
    move p2, v1

    move v4, p2

    :goto_a3
    iput-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    .line 4673
    iget-boolean p3, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz p3, :cond_c2

    if-nez v4, :cond_c2

    .line 4676
    sget-object p3, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v2, "destroyActivityLocked. finishing and not skipping destroy"

    invoke-virtual {p1, p3, v2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4678
    iget-object p3, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {p3, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    .line 4679
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, p3, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4680
    goto :goto_cb

    .line 4683
    :cond_c2
    sget-object p3, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v3, "destroyActivityLocked. not finishing or skipping destroy"

    invoke-virtual {p1, p3, v3}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4686
    iput-object v2, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 4688
    :goto_cb
    goto :goto_f0

    .line 4690
    :cond_cc
    iget-boolean p2, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz p2, :cond_e6

    .line 4691
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " hadNoApp"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 4692
    move p2, v4

    goto :goto_f0

    .line 4695
    :cond_e6
    sget-object p2, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string p3, "destroyActivityLocked. not finishing and had no app"

    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4697
    iput-object v2, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    move p2, v1

    .line 4701
    :goto_f0
    iput v1, p1, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    .line 4703
    iget-object p3, p0, Lcom/android/server/wm/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_117

    if-eqz v0, :cond_117

    .line 4704
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Activity "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " being finished, but not in LRU list"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ActivityTaskManager"

    invoke-static {p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4707
    :cond_117
    return p2
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Z)Z
    .registers 23

    .line 5343
    move-object/from16 v0, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Stack #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5344
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5345
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5343
    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  isSleeping="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5349
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/wm/ActivityStack;->dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Z)Z

    move-result v15

    .line 5352
    iget-object v3, v0, Lcom/android/server/wm/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    xor-int/lit8 v7, p3, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    const-string v4, "    "

    const-string v5, "Run"

    const/4 v6, 0x0

    const-string v11, "    Running activities (most recent first):"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p5

    invoke-static/range {v1 .. v12}, Lcom/android/server/wm/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/wm/TaskRecord;)Z

    move-result v1

    or-int/2addr v1, v15

    .line 5356
    nop

    .line 5357
    iget-object v2, v0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v3, "    mPausingActivity: "

    invoke-static {v13, v2, v14, v1, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v2

    .line 5359
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_9a

    .line 5360
    nop

    .line 5361
    move v1, v3

    move v2, v4

    goto :goto_9b

    .line 5359
    :cond_9a
    move v2, v1

    .line 5363
    :goto_9b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    const-string v6, "    mResumedActivity: "

    invoke-static {v13, v5, v14, v1, v6}, Lcom/android/server/wm/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v5

    .line 5365
    if-eqz v5, :cond_aa

    .line 5366
    nop

    .line 5367
    move v1, v3

    move v2, v4

    .line 5369
    :cond_aa
    if-eqz p3, :cond_c2

    .line 5370
    iget-object v3, v0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v5, "    mLastPausedActivity: "

    invoke-static {v13, v3, v14, v1, v5}, Lcom/android/server/wm/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v3

    .line 5372
    if-eqz v3, :cond_b9

    .line 5373
    nop

    .line 5374
    move v1, v4

    move v2, v1

    .line 5376
    :cond_b9
    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v3, "    mLastNoHistoryActivity: "

    invoke-static {v13, v0, v14, v1, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v0

    or-int/2addr v2, v0

    .line 5379
    :cond_c2
    return v2
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Z)Z
    .registers 23

    .line 5385
    move-object/from16 v0, p0

    move-object/from16 v13, p2

    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 5386
    const/4 v0, 0x0

    return v0

    .line 5389
    :cond_e
    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v14, 0x1

    sub-int/2addr v1, v14

    move v15, v1

    :goto_17
    if-ltz v15, :cond_d4

    .line 5390
    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/server/wm/TaskRecord;

    .line 5391
    if-eqz p6, :cond_29

    .line 5392
    const-string v1, ""

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5394
    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Task id #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v12, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/wm/TaskRecord;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mMinWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v12, Lcom/android/server/wm/TaskRecord;->mMinWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mMinHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v12, Lcom/android/server/wm/TaskRecord;->mMinHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mLastNonFullscreenBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    * "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5400
    const-string v1, "      "

    invoke-virtual {v12, v13, v1}, Lcom/android/server/wm/TaskRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5401
    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    iget-object v3, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v6, 0x1

    xor-int/lit8 v7, p3, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v4, "    "

    const-string v5, "Hist"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v8, p4

    move-object/from16 v9, p5

    invoke-static/range {v1 .. v12}, Lcom/android/server/wm/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/wm/TaskRecord;)Z

    .line 5389
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_17

    .line 5404
    :cond_d4
    return v14
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/wm/ActivityRecord;IZ)V
    .registers 5

    .line 2122
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 2124
    return-void
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .registers 24

    .line 2134
    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move/from16 v8, p4

    const/4 v9, 0x0

    iput-boolean v9, v7, Lcom/android/server/wm/ActivityStack;->mTopActivityOccludesKeyguard:Z

    .line 2135
    const/4 v10, 0x0

    iput-object v10, v7, Lcom/android/server/wm/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2136
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/KeyguardController;->beginActivityVisibilityUpdate()V

    .line 2138
    :try_start_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    .line 2141
    if-eqz v11, :cond_1e

    .line 2142
    invoke-direct {v7, v11}, Lcom/android/server/wm/ActivityStack;->checkTranslucentActivityWaiting(Lcom/android/server/wm/ActivityRecord;)V

    .line 2147
    :cond_1e
    const/4 v12, 0x1

    if-eqz v11, :cond_23

    move v1, v12

    goto :goto_24

    :cond_23
    move v1, v9

    .line 2148
    :goto_24
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v13

    .line 2149
    if-nez v13, :cond_2c

    move v2, v12

    goto :goto_2d

    :cond_2c
    move v2, v9

    .line 2150
    :goto_2d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/ActivityStack;->isInStackLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_3b

    move v3, v12

    goto :goto_3c

    :cond_3b
    move v3, v9

    .line 2151
    :goto_3c
    iget-object v4, v7, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v12

    move v14, v4

    move v4, v3

    move/from16 v3, p2

    :goto_47
    if-ltz v14, :cond_123

    .line 2152
    iget-object v5, v7, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskRecord;

    .line 2153
    iget-object v15, v5, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2154
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v12

    move/from16 v16, v3

    move/from16 v17, v4

    move v6, v5

    :goto_5d
    if-ltz v6, :cond_109

    .line 2155
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 2156
    iget-boolean v3, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_6c

    .line 2157
    goto/16 :goto_104

    .line 2159
    :cond_6c
    if-ne v5, v11, :cond_70

    move v4, v12

    goto :goto_71

    :cond_70
    move v4, v9

    .line 2160
    :goto_71
    if-eqz v1, :cond_77

    if-nez v4, :cond_77

    .line 2161
    goto/16 :goto_104

    .line 2163
    :cond_77
    nop

    .line 2166
    invoke-virtual {v5, v2}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisibleIgnoringKeyguard(Z)Z

    move-result v1

    .line 2168
    invoke-virtual {v5, v2}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible(Z)Z

    move-result v3

    .line 2169
    if-eqz v1, :cond_8e

    .line 2170
    if-nez v13, :cond_86

    move v1, v12

    goto :goto_87

    :cond_86
    move v1, v9

    :goto_87
    invoke-direct {v7, v1, v2, v5}, Lcom/android/server/wm/ActivityStack;->updateBehindFullscreen(ZZLcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    move/from16 v18, v2

    goto :goto_90

    .line 2169
    :cond_8e
    move/from16 v18, v2

    .line 2173
    :goto_90
    if-eqz v3, :cond_fb

    .line 2178
    if-eq v5, v0, :cond_9c

    if-eqz v8, :cond_9c

    .line 2179
    move/from16 v3, p3

    invoke-virtual {v5, v9, v3, v12}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZZ)Z

    goto :goto_9e

    .line 2178
    :cond_9c
    move/from16 v3, p3

    .line 2183
    :goto_9e
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1

    if-nez v1, :cond_cf

    .line 2184
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v16

    move-object/from16 p2, v5

    move/from16 v5, v17

    move v9, v6

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/ActivityStack;->makeVisibleAndRestartIfNeeded(Lcom/android/server/wm/ActivityRecord;IZZLcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_cc

    .line 2186
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v9, v1, :cond_c6

    .line 2188
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v12

    move-object/from16 v3, p2

    move v6, v1

    goto :goto_f3

    .line 2190
    :cond_c6
    move-object/from16 v3, p2

    move v6, v9

    const/16 v17, 0x0

    goto :goto_f3

    .line 2184
    :cond_cc
    move-object/from16 v3, p2

    goto :goto_f2

    .line 2193
    :cond_cf
    move-object/from16 p2, v5

    move v9, v6

    move-object/from16 v3, p2

    iget-boolean v1, v3, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v1, :cond_ef

    .line 2198
    iget-boolean v1, v3, Lcom/android/server/wm/ActivityRecord;->mClientVisibilityDeferred:Z

    if-eqz v1, :cond_e1

    if-eqz v8, :cond_e1

    .line 2199
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->makeClientVisible()V

    .line 2202
    :cond_e1
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->handleAlreadyVisible()Z

    move-result v1

    if-eqz v1, :cond_e9

    .line 2203
    const/16 v17, 0x0

    .line 2206
    :cond_e9
    if-eqz v8, :cond_f2

    .line 2207
    invoke-virtual {v3, v0}, Lcom/android/server/wm/ActivityRecord;->makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    goto :goto_f2

    .line 2210
    :cond_ef
    invoke-virtual {v3, v0, v8}, Lcom/android/server/wm/ActivityRecord;->makeVisibleIfNeeded(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 2213
    :cond_f2
    :goto_f2
    move v6, v9

    :goto_f3
    iget v1, v3, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    or-int v16, v16, v1

    move/from16 v2, v18

    const/4 v1, 0x0

    goto :goto_104

    .line 2220
    :cond_fb
    move-object v3, v5

    move v9, v6

    invoke-direct {v7, v3}, Lcom/android/server/wm/ActivityStack;->makeInvisible(Lcom/android/server/wm/ActivityRecord;)V

    move v6, v9

    move/from16 v2, v18

    const/4 v1, 0x0

    .line 2154
    :goto_104
    add-int/lit8 v6, v6, -0x1

    const/4 v9, 0x0

    goto/16 :goto_5d

    .line 2223
    :cond_109
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v3

    .line 2224
    const/4 v4, 0x5

    if-ne v3, v4, :cond_113

    .line 2228
    xor-int/lit8 v2, v13, 0x1

    goto :goto_11a

    .line 2229
    :cond_113
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_11a

    .line 2238
    move v2, v12

    .line 2151
    :cond_11a
    :goto_11a
    add-int/lit8 v14, v14, -0x1

    move/from16 v3, v16

    move/from16 v4, v17

    const/4 v9, 0x0

    goto/16 :goto_47

    .line 2242
    :cond_123
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_132

    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 2243
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_132

    .line 2245
    invoke-virtual {v7, v10}, Lcom/android/server/wm/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V
    :try_end_132
    .catchall {:try_start_15 .. :try_end_132} :catchall_13d

    .line 2248
    :cond_132
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController;->endActivityVisibilityUpdate()V

    .line 2249
    nop

    .line 2250
    return-void

    .line 2248
    :catchall_13d
    move-exception v0

    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/KeyguardController;->endActivityVisibilityUpdate()V

    throw v0
.end method

.method ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 12

    .line 5059
    if-eqz p1, :cond_58

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v0, :cond_7

    goto :goto_58

    .line 5063
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 5064
    nop

    .line 5065
    nop

    .line 5067
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_16
    if-ltz v0, :cond_50

    .line 5068
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskRecord;

    .line 5069
    iget-object v5, v4, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5070
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    const/4 v7, 0x1

    if-ne v6, v4, :cond_2e

    .line 5071
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    goto :goto_33

    :cond_2e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v7

    .line 5072
    :goto_33
    if-ltz v4, :cond_4a

    .line 5073
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    .line 5074
    invoke-virtual {v6, v1, p2}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    move-result v8

    or-int/2addr v2, v8

    .line 5076
    iget-boolean v6, v6, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    if-eqz v6, :cond_47

    .line 5077
    nop

    .line 5078
    move v3, v7

    goto :goto_4a

    .line 5072
    :cond_47
    add-int/lit8 v4, v4, -0x1

    goto :goto_33

    .line 5081
    :cond_4a
    :goto_4a
    if-eqz v3, :cond_4d

    .line 5082
    goto :goto_50

    .line 5067
    :cond_4d
    add-int/lit8 v0, v0, -0x1

    goto :goto_16

    .line 5085
    :cond_50
    :goto_50
    if-eqz v2, :cond_57

    .line 5088
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 5090
    :cond_57
    return-void

    .line 5060
    :cond_58
    :goto_58
    return-void
.end method

.method executeAppTransition(Landroid/app/ActivityOptions;)V
    .registers 3

    .line 5767
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 5768
    invoke-static {p1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 5769
    return-void
.end method

.method findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;
    .registers 10

    .line 1437
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1438
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 1439
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    :cond_11
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 1443
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_21
    if-ltz v1, :cond_68

    .line 1444
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    .line 1445
    iget-object v2, v2, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1447
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_33
    if-ltz v3, :cond_65

    .line 1448
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 1449
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v5

    if-nez v5, :cond_42

    .line 1450
    goto :goto_62

    .line 1452
    :cond_42
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v5, :cond_62

    iget v5, v4, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v5, p2, :cond_62

    .line 1453
    if-eqz p3, :cond_55

    .line 1454
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, p1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 1455
    return-object v4

    .line 1458
    :cond_55
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 1459
    return-object v4

    .line 1447
    :cond_62
    :goto_62
    add-int/lit8 v3, v3, -0x1

    goto :goto_33

    .line 1443
    :cond_65
    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    .line 1466
    :cond_68
    const/4 p1, 0x0

    return-object p1
.end method

.method findTaskLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/RootActivityContainer$FindTaskResult;)V
    .registers 19

    .line 1340
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1341
    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1342
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 1343
    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v6, :cond_1b

    .line 1344
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    :cond_1b
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1347
    invoke-virtual {v3}, Landroid/content/Intent;->isDocument()Z

    move-result v6

    const/4 v7, 0x1

    and-int/2addr v6, v7

    .line 1349
    if-eqz v6, :cond_30

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    goto :goto_31

    :cond_30
    const/4 v3, 0x0

    .line 1352
    :goto_31
    iget-object v9, v0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v7

    :goto_38
    if-ltz v9, :cond_e3

    .line 1353
    iget-object v10, v0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/TaskRecord;

    .line 1354
    iget-object v11, v10, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v11, :cond_48

    .line 1357
    goto/16 :goto_df

    .line 1359
    :cond_48
    iget v11, v10, Lcom/android/server/wm/TaskRecord;->userId:I

    if-eq v11, v4, :cond_4e

    .line 1362
    goto/16 :goto_df

    .line 1366
    :cond_4e
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/wm/TaskRecord;->getTopActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    .line 1367
    if-eqz v12, :cond_df

    iget-boolean v13, v12, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v13, :cond_df

    iget v13, v12, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v13, v4, :cond_df

    iget v13, v12, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_64

    .line 1370
    goto/16 :goto_df

    .line 1372
    :cond_64
    invoke-virtual {v12, v1}, Lcom/android/server/wm/ActivityRecord;->hasCompatibleActivityType(Lcom/android/server/wm/ConfigurationContainer;)Z

    move-result v13

    if-nez v13, :cond_6c

    .line 1374
    goto/16 :goto_df

    .line 1377
    :cond_6c
    iget-object v13, v10, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    .line 1378
    iget-object v14, v10, Lcom/android/server/wm/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .line 1381
    if-eqz v13, :cond_7f

    invoke-virtual {v13}, Landroid/content/Intent;->isDocument()Z

    move-result v15

    if-eqz v15, :cond_7f

    .line 1382
    nop

    .line 1383
    invoke-virtual {v13}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    move v15, v7

    goto :goto_91

    .line 1384
    :cond_7f
    if-eqz v14, :cond_8e

    invoke-virtual {v14}, Landroid/content/Intent;->isDocument()Z

    move-result v13

    if-eqz v13, :cond_8e

    .line 1385
    nop

    .line 1386
    invoke-virtual {v14}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    move v15, v7

    goto :goto_91

    .line 1388
    :cond_8e
    nop

    .line 1389
    move v15, v11

    const/4 v13, 0x0

    .line 1397
    :goto_91
    iget-object v8, v10, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v8, :cond_a8

    iget-object v8, v10, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v8, v5}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v8

    if-nez v8, :cond_a8

    .line 1398
    invoke-static {v3, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a8

    .line 1403
    iput-object v12, v2, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1404
    iput-boolean v7, v2, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mIdealMatch:Z

    .line 1405
    goto :goto_e3

    .line 1406
    :cond_a8
    if-eqz v14, :cond_c5

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_c5

    .line 1407
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v8

    if-nez v8, :cond_c5

    .line 1408
    invoke-static {v3, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c5

    .line 1413
    iput-object v12, v2, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1414
    iput-boolean v7, v2, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mIdealMatch:Z

    .line 1415
    goto :goto_e3

    .line 1416
    :cond_c5
    if-nez v6, :cond_df

    if-nez v15, :cond_df

    iget-object v8, v2, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v8, :cond_df

    iget-object v8, v10, Lcom/android/server/wm/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v8, :cond_df

    .line 1418
    iget-object v8, v10, Lcom/android/server/wm/TaskRecord;->rootAffinity:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_df

    .line 1423
    iput-object v12, v2, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1424
    iput-boolean v11, v2, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mIdealMatch:Z

    .line 1352
    :cond_df
    :goto_df
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_38

    .line 1428
    :cond_e3
    :goto_e3
    return-void
.end method

.method final finishActivityAffinityLocked(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 11

    .line 3939
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3940
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    :goto_a
    if-ltz v1, :cond_2a

    .line 3941
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 3942
    iget-object v2, v4, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 3943
    goto :goto_2a

    .line 3945
    :cond_1e
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    const-string v7, "request-affinity"

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3940
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 3947
    :cond_2a
    :goto_2a
    const/4 p1, 0x1

    return p1
.end method

.method final finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    .registers 13

    .line 3986
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;ZZ)Z

    move-result p1

    return p1
.end method

.method final finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;ZZ)Z
    .registers 15

    .line 3995
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 3996
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Duplicate finish request for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityTaskManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3997
    return v1

    .line 4000
    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 4002
    :try_start_21
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->makeFinishingLocked()V

    .line 4003
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 4004
    const/16 v2, 0x7531

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 4005
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget v4, v0, Lcom/android/server/wm/TaskRecord;->taskId:I

    .line 4006
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    const/4 v4, 0x3

    iget-object v7, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v7, v3, v4

    const/4 v4, 0x4

    aput-object p4, v3, v4

    .line 4004
    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4007
    iget-object p4, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4008
    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 4009
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v5

    if-ge v2, v3, :cond_7c

    .line 4010
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->setFrontOfTask()V

    .line 4011
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-eqz v3, :cond_7c

    .line 4015
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/wm/ActivityRecord;

    .line 4016
    iget-object p4, p4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p4, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4020
    :cond_7c
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 4022
    const-string p4, "finishActivity"

    invoke-direct {p0, p1, p4}, Lcom/android/server/wm/ActivityStack;->adjustFocusedActivityStack(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 4024
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;)V

    .line 4026
    if-gtz v2, :cond_91

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->isClearingToReuseTask()Z

    move-result p2

    if-nez p2, :cond_91

    move p2, v5

    goto :goto_92

    :cond_91
    move p2, v1

    .line 4027
    :goto_92
    if-eqz p2, :cond_97

    const/16 p3, 0x9

    goto :goto_98

    :cond_97
    const/4 p3, 0x7

    .line 4028
    :goto_98
    iget-object p4, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne p4, p1, :cond_e9

    .line 4031
    if-eqz p2, :cond_ab

    .line 4032
    iget-object p4, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p4

    .line 4033
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p5

    .line 4032
    invoke-virtual {p4, p5}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 4035
    :cond_ab
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object p4

    iget-object p4, p4, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p4, p3, v1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 4039
    iget-object p3, p0, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p3, p3, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    if-eqz p3, :cond_d2

    .line 4040
    new-array p3, v5, [Lcom/android/server/wm/Task;

    iget-object p4, v0, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    aput-object p4, p3, v1

    invoke-static {p3}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object p3

    .line 4041
    iget-object p4, p0, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p4, p4, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {p4, p3}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    .line 4042
    iget-object p4, p0, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p4, p4, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {p4, p3}, Lcom/android/server/wm/TaskSnapshotController;->addSkipClosingAppSnapshotTasks(Landroid/util/ArraySet;)V

    .line 4046
    :cond_d2
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 4048
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez p1, :cond_dd

    .line 4052
    const/4 p1, 0x0

    invoke-virtual {p0, v1, v1, p1, p6}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Z)Z

    .line 4055
    :cond_dd
    if-eqz p2, :cond_133

    .line 4056
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/TaskRecord;)V

    goto :goto_133

    .line 4058
    :cond_e9
    sget-object p2, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result p2

    if-nez p2, :cond_133

    .line 4062
    iget-boolean p2, p1, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz p2, :cond_f8

    .line 4063
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/ActivityStack;->prepareActivityHideTransitionAnimation(Lcom/android/server/wm/ActivityRecord;I)V

    .line 4066
    :cond_f8
    iget-boolean p2, p1, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez p2, :cond_102

    iget-boolean p2, p1, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz p2, :cond_101

    goto :goto_102

    .line 4067
    :cond_101
    move v6, v5

    .line 4068
    :cond_102
    :goto_102
    const-string p2, "finishActivityLocked"

    invoke-virtual {p0, p1, v6, p5, p2}, Lcom/android/server/wm/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/wm/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_10b

    move v1, v5

    .line 4078
    :cond_10b
    invoke-virtual {v0, v5}, Lcom/android/server/wm/TaskRecord;->onlyHasTaskOverlayActivities(Z)Z

    move-result p1

    if-eqz p1, :cond_12c

    .line 4079
    iget-object p1, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_117
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_12c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    .line 4080
    iget-boolean p4, p2, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-nez p4, :cond_128

    .line 4081
    goto :goto_117

    .line 4083
    :cond_128
    invoke-direct {p0, p2, p3}, Lcom/android/server/wm/ActivityStack;->prepareActivityHideTransitionAnimation(Lcom/android/server/wm/ActivityRecord;I)V
    :try_end_12b
    .catchall {:try_start_21 .. :try_end_12b} :catchall_13a

    .line 4084
    goto :goto_117

    .line 4086
    :cond_12c
    nop

    .line 4093
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 4086
    return v1

    .line 4091
    :cond_133
    :goto_133
    nop

    .line 4093
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 4091
    return v1

    .line 4093
    :catchall_13a
    move-exception p1

    iget-object p2, p0, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw p1
.end method

.method finishAllActivitiesLocked(Z)V
    .registers 10

    .line 4203
    nop

    .line 4204
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v2, v1

    :goto_a
    if-ltz v0, :cond_53

    .line 4205
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    iget-object v3, v3, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4206
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    const/4 v5, 0x0

    :goto_1c
    if-ltz v4, :cond_50

    .line 4207
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 4208
    nop

    .line 4209
    iget-boolean v6, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_2c

    if-nez p1, :cond_2c

    .line 4210
    goto :goto_4c

    .line 4212
    :cond_2c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "finishAllActivitiesLocked: finishing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " immediately"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ActivityTaskManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4213
    const-string v6, "finishAllActivitiesLocked"

    invoke-virtual {p0, v2, v5, v5, v6}, Lcom/android/server/wm/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/wm/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    .line 4206
    :goto_4c
    add-int/lit8 v4, v4, -0x1

    move v2, v5

    goto :goto_1c

    .line 4204
    :cond_50
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 4217
    :cond_53
    if-eqz v2, :cond_58

    .line 4218
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->remove()V

    .line 4220
    :cond_58
    return-void
.end method

.method final finishCurrentActivityLocked(Lcom/android/server/wm/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/wm/ActivityRecord;
    .registers 14

    .line 4119
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 4120
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityDisplay;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 4121
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v3

    .line 4126
    const/4 v4, 0x0

    if-eqz v2, :cond_20

    iget-boolean v5, v2, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v5, :cond_1e

    iget-boolean v5, v2, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v5, :cond_20

    :cond_1e
    move v5, v1

    goto :goto_21

    :cond_20
    move v5, v4

    .line 4127
    :goto_21
    const/4 v6, 0x2

    const-string v7, "finishCurrentActivityLocked"

    if-ne p2, v6, :cond_4c

    iget-boolean v8, p1, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v8, :cond_2e

    iget-boolean v8, p1, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v8, :cond_4c

    :cond_2e
    if-eqz v5, :cond_4c

    if-nez v3, :cond_4c

    .line 4129
    iget-object p2, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p2, p2, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3f

    .line 4130
    invoke-virtual {p0, p1, v4, v4, v7}, Lcom/android/server/wm/ActivityStack;->addToStopping(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V

    .line 4135
    :cond_3f
    sget-object p2, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p1, p2, v7}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4136
    if-eqz p3, :cond_4b

    .line 4137
    iget-object p2, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V

    .line 4139
    :cond_4b
    return-object p1

    .line 4143
    :cond_4c
    iget-object p3, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p3, p3, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4144
    iget-object p3, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p3, p3, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4145
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object p3

    .line 4148
    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p1, v3, v7}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4154
    if-nez v2, :cond_73

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_73

    .line 4155
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getHomeStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    if-nez v3, :cond_73

    move v3, v1

    goto :goto_74

    :cond_73
    move v3, v4

    .line 4156
    :goto_74
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eq v5, v0, :cond_80

    move v0, v1

    goto :goto_81

    :cond_80
    move v0, v4

    .line 4157
    :goto_81
    if-ne p2, v6, :cond_8d

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne p3, v5, :cond_8d

    if-nez v0, :cond_8b

    if-eqz v3, :cond_8d

    :cond_8b
    move v0, v1

    goto :goto_8e

    :cond_8d
    move v0, v4

    .line 4160
    :goto_8e
    if-eqz p2, :cond_ca

    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne p3, v3, :cond_9c

    if-eq p2, v1, :cond_ca

    .line 4162
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result p2

    if-nez p2, :cond_ca

    :cond_9c
    if-nez v0, :cond_ca

    sget-object p2, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq p3, p2, :cond_ca

    sget-object p2, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq p3, p2, :cond_ca

    sget-object p2, Lcom/android/server/wm/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne p3, p2, :cond_ab

    goto :goto_ca

    .line 4190
    :cond_ab
    iget-object p2, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p2, p2, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4191
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 4192
    iget-object p2, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p2}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 4195
    sget-object p2, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result p2

    if-eqz p2, :cond_c9

    iget-object p2, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz p2, :cond_c9

    .line 4196
    invoke-virtual {p0, v4, v4, v2, v4}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Z)Z

    .line 4199
    :cond_c9
    return-object p1

    .line 4167
    :cond_ca
    :goto_ca
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->makeFinishingLocked()V

    .line 4168
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "finish-imm:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/wm/ActivityStack;->destroyActivityLocked(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)Z

    move-result p2

    .line 4170
    if-eqz v0, :cond_eb

    .line 4175
    iget-object p3, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget p4, p0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    invoke-virtual {p3, v2, p4, v4, v1}, Lcom/android/server/wm/RootActivityContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    .line 4178
    :cond_eb
    if-eqz p2, :cond_f2

    .line 4179
    iget-object p3, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p3}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 4184
    :cond_f2
    if-eqz p2, :cond_f5

    const/4 p1, 0x0

    :cond_f5
    return-object p1
.end method

.method finishDisabledPackageActivitiesLocked(Ljava/lang/String;Ljava/util/Set;ZZI)Z
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZI)Z"
        }
    .end annotation

    .line 5196
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p5

    .line 5197
    nop

    .line 5198
    nop

    .line 5199
    iget-object v0, v6, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v10, 0x1

    sub-int/2addr v0, v10

    const/4 v1, 0x0

    const/4 v11, 0x0

    move v12, v0

    move-object v2, v1

    move v0, v11

    :goto_17
    if-ltz v12, :cond_dc

    .line 5200
    iget-object v3, v6, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    iget-object v3, v3, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5201
    iget-object v4, v6, Lcom/android/server/wm/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 5202
    iget-object v4, v6, Lcom/android/server/wm/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5204
    :goto_2d
    iget-object v3, v6, Lcom/android/server/wm/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d8

    .line 5205
    iget-object v3, v6, Lcom/android/server/wm/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 5206
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 5207
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    if-eqz v8, :cond_59

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 5208
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_59

    :cond_53
    if-nez v7, :cond_5b

    iget v4, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v4, v9, :cond_5b

    :cond_59
    move v4, v10

    goto :goto_5c

    :cond_5b
    move v4, v11

    .line 5210
    :goto_5c
    const/4 v5, -0x1

    if-eq v9, v5, :cond_63

    iget v5, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v5, v9, :cond_d6

    :cond_63
    if-nez v4, :cond_6b

    .line 5211
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    if-ne v4, v1, :cond_d6

    :cond_6b
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v4, :cond_79

    if-nez p4, :cond_79

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 5212
    invoke-virtual {v4}, Lcom/android/server/wm/WindowProcessController;->isPersistent()Z

    move-result v4

    if-nez v4, :cond_d6

    .line 5213
    :cond_79
    if-nez p3, :cond_81

    .line 5214
    iget-boolean v3, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_80

    .line 5217
    goto :goto_2d

    .line 5219
    :cond_80
    return v10

    .line 5221
    :cond_81
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v4

    const-string v5, "ActivityTaskManager"

    if-eqz v4, :cond_ac

    .line 5222
    if-eqz v2, :cond_a8

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 5223
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skip force-stop again "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5224
    goto :goto_2d

    .line 5226
    :cond_a8
    iget-object v2, v3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    move-object v13, v2

    goto :goto_ad

    .line 5221
    :cond_ac
    move-object v13, v2

    .line 5229
    :goto_ad
    nop

    .line 5230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Force finishing activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5231
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v14

    .line 5232
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v15, "force-stop"

    move-object/from16 v0, p0

    move-object v1, v3

    move-object v3, v4

    move-object v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move v0, v10

    move-object v2, v13

    move-object v1, v14

    .line 5235
    :cond_d6
    goto/16 :goto_2d

    .line 5199
    :cond_d8
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_17

    .line 5237
    :cond_dc
    return v0
.end method

.method final finishSubActivityLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V
    .registers 14

    .line 3833
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_4c

    .line 3834
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    iget-object v1, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3835
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1a
    if-ltz v2, :cond_49

    .line 3836
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 3837
    iget-object v3, v5, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-ne v3, p1, :cond_46

    iget v3, v5, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    if-ne v3, p3, :cond_46

    .line 3838
    iget-object v3, v5, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    if-nez v3, :cond_31

    if-eqz p2, :cond_3d

    :cond_31
    iget-object v3, v5, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v3, :cond_46

    iget-object v3, v5, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 3839
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 3840
    :cond_3d
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-string v8, "request-sub"

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3835
    :cond_46
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 3833
    :cond_49
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3846
    :cond_4c
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V

    .line 3847
    return-void
.end method

.method final finishTopCrashedActivityLocked(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)Lcom/android/server/wm/TaskRecord;
    .registers 14

    .line 3858
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3859
    nop

    .line 3860
    if-eqz v1, :cond_c0

    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v0, p1, :cond_d

    goto/16 :goto_c0

    .line 3863
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Force finishing activity "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3864
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3863
    const-string v7, "ActivityTaskManager"

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3865
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v8

    .line 3866
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 3867
    nop

    .line 3868
    iget-object v0, v8, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 3869
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v2, 0x1a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 3871
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3872
    nop

    .line 3876
    add-int/lit8 v10, v10, -0x1

    .line 3877
    if-gez v10, :cond_6e

    .line 3879
    :cond_57
    add-int/lit8 v9, v9, -0x1

    .line 3880
    if-gez v9, :cond_5c

    .line 3881
    goto :goto_6e

    .line 3883
    :cond_5c
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskRecord;

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .line 3884
    if-ltz v10, :cond_57

    .line 3886
    :cond_6e
    :goto_6e
    if-ltz v10, :cond_bf

    .line 3887
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskRecord;

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 3888
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 3889
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v0, v2, :cond_bf

    .line 3890
    :cond_9b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3891
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3890
    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3892
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3896
    :cond_bf
    return-object v8

    .line 3861
    :cond_c0
    :goto_c0
    const/4 v0, 0x0

    return-object v0
.end method

.method final finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .registers 14

    .line 3900
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 3901
    nop

    .line 3902
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_e
    if-ltz v0, :cond_81

    .line 3903
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    .line 3904
    iget-object v4, v3, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v4, :cond_47

    iget-object v4, v3, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v4}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, p1, :cond_47

    .line 3905
    iget-object v4, v3, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_2b
    if-ltz v4, :cond_7e

    .line 3906
    iget-object v5, v3, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    .line 3907
    iget-boolean v5, v7, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v5, :cond_44

    .line 3908
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-string v10, "finish-voice"

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3910
    move v2, v1

    .line 3905
    :cond_44
    add-int/lit8 v4, v4, -0x1

    goto :goto_2b

    .line 3915
    :cond_47
    iget-object v4, v3, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_4e
    if-ltz v4, :cond_7e

    .line 3916
    iget-object v5, v3, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 3917
    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v6, :cond_7b

    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v6}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v6, p1, :cond_7b

    .line 3919
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->clearVoiceSessionLocked()V

    .line 3921
    :try_start_67
    iget-object v3, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    iget-object v4, v5, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/app/IApplicationThread;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_73} :catch_74

    .line 3925
    goto :goto_75

    .line 3923
    :catch_74
    move-exception v3

    .line 3926
    :goto_75
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->finishRunningVoiceLocked()V

    .line 3927
    goto :goto_7e

    .line 3915
    :cond_7b
    add-int/lit8 v4, v4, -0x1

    goto :goto_4e

    .line 3902
    :cond_7e
    :goto_7e
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 3933
    :cond_81
    if-eqz v2, :cond_88

    .line 3934
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V

    .line 3936
    :cond_88
    return-void
.end method

.method getAdjustedPositionForTask(Lcom/android/server/wm/TaskRecord;ILcom/android/server/wm/ActivityRecord;)I
    .registers 6

    .line 3086
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3087
    if-eqz p3, :cond_e

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v1

    if-nez v1, :cond_16

    :cond_e
    if-nez p3, :cond_1b

    .line 3088
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->okToShowLocked()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 3090
    :cond_16
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    .line 3094
    :cond_1b
    :goto_1b
    if-lez v0, :cond_3b

    .line 3095
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 p3, v0, -0x1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/TaskRecord;

    .line 3096
    iget-object p3, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v1, p1, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {p3, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result p3

    if-eqz p3, :cond_3b

    .line 3097
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_38

    .line 3098
    goto :goto_3b

    .line 3100
    :cond_38
    add-int/lit8 v0, v0, -0x1

    .line 3101
    goto :goto_1b

    .line 3103
    :cond_3b
    :goto_3b
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method getAllRunningVisibleActivitiesLocked(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .line 1070
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1071
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_b
    if-ltz v0, :cond_1b

    .line 1072
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskRecord;->getAllRunningVisibleActivitiesLocked(Ljava/util/ArrayList;)V

    .line 1071
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 1074
    :cond_1b
    return-void
.end method

.method getAllTasks()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskRecord;",
            ">;"
        }
    .end annotation

    .line 5542
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getAnimationOrCurrentBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 5705
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 5706
    if-nez v0, :cond_a

    .line 5707
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 5708
    return-void

    .line 5710
    :cond_a
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskStack;->getAnimationOrCurrentBounds(Landroid/graphics/Rect;)V

    .line 5711
    return-void
.end method

.method protected bridge synthetic getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 180
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->getChildAt(I)Lcom/android/server/wm/TaskRecord;

    move-result-object p1

    return-object p1
.end method

.method protected getChildAt(I)Lcom/android/server/wm/TaskRecord;
    .registers 3

    .line 253
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/TaskRecord;

    return-object p1
.end method

.method protected getChildCount()I
    .registers 2

    .line 248
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getDefaultPictureInPictureBounds(F)Landroid/graphics/Rect;
    .registers 4

    .line 5677
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 5678
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/TaskStack;->getPictureInPictureBounds(FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method getDisplay()Lcom/android/server/wm/ActivityDisplay;
    .registers 3

    .line 936
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v1, p0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    return-object v0
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation

    .line 5408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5410
    const-string v1, "all"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 5411
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_15
    if-ltz p1, :cond_94

    .line 5412
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    iget-object v1, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5411
    add-int/lit8 p1, p1, -0x1

    goto :goto_15

    .line 5414
    :cond_27
    const-string v1, "top"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 5415
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 5416
    if-ltz p1, :cond_54

    .line 5417
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/TaskRecord;

    iget-object p1, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5418
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 5419
    if-ltz v1, :cond_54

    .line 5420
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5423
    :cond_54
    goto :goto_94

    .line 5424
    :cond_55
    new-instance v1, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct {v1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    .line 5425
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build(Ljava/lang/String;)V

    .line 5427
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_65
    if-ltz p1, :cond_94

    .line 5428
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    iget-object v2, v2, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_75
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_91

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 5429
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_90

    .line 5430
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5432
    :cond_90
    goto :goto_75

    .line 5427
    :cond_91
    add-int/lit8 p1, p1, -0x1

    goto :goto_65

    .line 5436
    :cond_94
    :goto_94
    return-object v0
.end method

.method protected getParent()Lcom/android/server/wm/ActivityDisplay;
    .registers 2

    .line 258
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getParent()Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 180
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    return-object v0
.end method

.method getPresentUIDs(Landroid/util/IntArray;)V
    .registers 5

    .line 1213
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 1214
    iget-object v1, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 1215
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/IntArray;->add(I)V

    .line 1216
    goto :goto_18

    .line 1217
    :cond_2c
    goto :goto_6

    .line 1218
    :cond_2d
    return-void
.end method

.method protected getResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 2601
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method getRunningTasks(Ljava/util/List;IIIZZLandroid/util/ArraySet;)V
    .registers 16
    .param p2  # I
        .annotation build Landroid/app/WindowConfiguration$ActivityType;
        .end annotation
    .end param
    .param p3  # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/TaskRecord;",
            ">;IIIZZ",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 5248
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p0, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    .line 5249
    :goto_d
    nop

    .line 5250
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 5251
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_19
    if-ltz v4, :cond_6d

    .line 5252
    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskRecord;

    .line 5253
    invoke-virtual {v5}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-nez v6, :cond_2a

    .line 5255
    goto :goto_6a

    .line 5257
    :cond_2a
    iget v6, v5, Lcom/android/server/wm/TaskRecord;->effectiveUid:I

    if-eq v6, p4, :cond_4a

    .line 5258
    iget v6, v5, Lcom/android/server/wm/TaskRecord;->userId:I

    if-eq v6, v3, :cond_41

    if-nez p6, :cond_41

    iget v6, v5, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p7, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_41

    .line 5261
    goto :goto_6a

    .line 5263
    :cond_41
    if-nez p5, :cond_4a

    invoke-virtual {v5}, Lcom/android/server/wm/TaskRecord;->isActivityTypeHome()Z

    move-result v6

    if-nez v6, :cond_4a

    .line 5266
    goto :goto_6a

    .line 5269
    :cond_4a
    if-eqz p2, :cond_53

    .line 5270
    invoke-virtual {v5}, Lcom/android/server/wm/TaskRecord;->getActivityType()I

    move-result v6

    if-ne v6, p2, :cond_53

    .line 5272
    goto :goto_6a

    .line 5274
    :cond_53
    if-eqz p3, :cond_5c

    .line 5275
    invoke-virtual {v5}, Lcom/android/server/wm/TaskRecord;->getWindowingMode()I

    move-result v6

    if-ne v6, p3, :cond_5c

    .line 5277
    goto :goto_6a

    .line 5279
    :cond_5c
    if-eqz v0, :cond_67

    if-eqz v2, :cond_67

    .line 5283
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/server/wm/TaskRecord;->lastActiveTime:J

    .line 5284
    move v2, v1

    .line 5286
    :cond_67
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5251
    :goto_6a
    add-int/lit8 v4, v4, -0x1

    goto :goto_19

    .line 5288
    :cond_6d
    return-void
.end method

.method getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 11

    .line 944
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_14

    .line 945
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TaskStack;->getStackDockedModeBoundsLocked(Landroid/content/res/Configuration;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_1a

    .line 948
    :cond_14
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 949
    invoke-virtual {p4}, Landroid/graphics/Rect;->setEmpty()V

    .line 951
    :goto_1a
    return-void
.end method

.method public getStackId()I
    .registers 2

    .line 5746
    iget v0, p0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    return v0
.end method

.method getTaskStack()Lcom/android/server/wm/TaskStack;
    .registers 2

    .line 545
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    return-object v0
.end method

.method getTopActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 3

    .line 1142
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    .line 1143
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1144
    if-eqz v1, :cond_19

    .line 1145
    return-object v1

    .line 1142
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1148
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method getTopDismissingKeyguardActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 2293
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method getVisibility(Lcom/android/server/wm/ActivityRecord;)I
    .registers 20
    .annotation build Lcom/android/server/wm/ActivityStack$StackVisibility;
    .end annotation

    .line 1985
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_dc

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStack;->mForceHidden:Z

    if-eqz v2, :cond_10

    goto/16 :goto_dc

    .line 1989
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    .line 1990
    nop

    .line 1991
    nop

    .line 1992
    nop

    .line 1993
    nop

    .line 1994
    nop

    .line 1995
    nop

    .line 1996
    nop

    .line 1997
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v4

    .line 1998
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeAssistant()Z

    move-result v5

    .line 1999
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_2f
    const/4 v8, 0x3

    if-ltz v6, :cond_b9

    .line 2000
    invoke-virtual {v2, v6}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v15

    .line 2001
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v17

    if-eqz v17, :cond_3f

    move/from16 v17, v7

    goto :goto_41

    :cond_3f
    const/16 v17, 0x0

    .line 2002
    :goto_41
    if-ne v15, v0, :cond_57

    .line 2005
    if-nez v17, :cond_54

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/ActivityStack;->isInStackLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_54

    .line 2006
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_52

    goto :goto_54

    :cond_52
    const/4 v0, 0x0

    goto :goto_55

    :cond_54
    :goto_54
    move v0, v7

    .line 2007
    :goto_55
    goto/16 :goto_ba

    .line 2010
    :cond_57
    if-nez v17, :cond_5a

    .line 2011
    goto :goto_b4

    .line 2014
    :cond_5a
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v3

    .line 2016
    if-ne v3, v7, :cond_80

    .line 2023
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v3

    .line 2024
    if-ne v4, v8, :cond_75

    .line 2025
    const/4 v7, 0x2

    if-eq v3, v7, :cond_b9

    const/4 v7, 0x4

    if-ne v3, v7, :cond_75

    iget-object v3, v0, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 2027
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v3

    if-eqz v3, :cond_75

    .line 2028
    goto :goto_b9

    .line 2031
    :cond_75
    invoke-virtual {v15, v1}, Lcom/android/server/wm/ActivityStack;->isStackTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 2033
    nop

    .line 2034
    const/4 v11, 0x1

    goto :goto_b4

    .line 2036
    :cond_7e
    const/4 v0, 0x2

    return v0

    .line 2037
    :cond_80
    if-ne v3, v8, :cond_94

    if-nez v9, :cond_94

    .line 2039
    nop

    .line 2040
    invoke-virtual {v15, v1}, Lcom/android/server/wm/ActivityStack;->isStackTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v12

    .line 2041
    nop

    .line 2042
    xor-int/lit8 v9, v12, 0x1

    if-ne v4, v8, :cond_92

    if-eqz v9, :cond_92

    .line 2045
    const/4 v0, 0x2

    return v0

    .line 2058
    :cond_92
    const/4 v14, 0x1

    goto :goto_a8

    .line 2047
    :cond_94
    const/4 v7, 0x4

    if-ne v3, v7, :cond_a8

    if-nez v10, :cond_a8

    .line 2049
    nop

    .line 2050
    invoke-virtual {v15, v1}, Lcom/android/server/wm/ActivityStack;->isStackTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v13

    .line 2051
    nop

    .line 2052
    xor-int/lit8 v10, v13, 0x1

    const/4 v3, 0x4

    if-ne v4, v3, :cond_92

    if-eqz v10, :cond_92

    .line 2055
    const/4 v0, 0x2

    return v0

    .line 2058
    :cond_a8
    :goto_a8
    if-eqz v9, :cond_ae

    if-eqz v10, :cond_ae

    .line 2061
    const/4 v3, 0x2

    return v3

    .line 2058
    :cond_ae
    const/4 v3, 0x2

    .line 2063
    if-eqz v5, :cond_b4

    if-eqz v14, :cond_b4

    .line 2067
    return v3

    .line 1999
    :cond_b4
    :goto_b4
    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x1

    goto/16 :goto_2f

    .line 2071
    :cond_b9
    :goto_b9
    const/4 v0, 0x1

    :goto_ba
    if-nez v0, :cond_be

    .line 2072
    const/4 v0, 0x2

    return v0

    .line 2076
    :cond_be
    const/4 v0, 0x1

    if-eq v4, v0, :cond_cd

    if-eq v4, v8, :cond_ca

    const/4 v1, 0x4

    if-eq v4, v1, :cond_c7

    goto :goto_d2

    .line 2090
    :cond_c7
    if-eqz v13, :cond_d2

    .line 2092
    return v0

    .line 2084
    :cond_ca
    if-eqz v12, :cond_d2

    .line 2086
    return v0

    .line 2078
    :cond_cd
    if-nez v12, :cond_da

    if-eqz v13, :cond_d2

    goto :goto_da

    .line 2098
    :cond_d2
    :goto_d2
    if-eqz v11, :cond_d7

    const/16 v16, 0x1

    goto :goto_d9

    .line 2099
    :cond_d7
    const/16 v16, 0x0

    .line 2098
    :goto_d9
    return v16

    .line 2080
    :cond_da
    :goto_da
    const/4 v0, 0x1

    return v0

    .line 1986
    :cond_dc
    :goto_dc
    const/4 v0, 0x2

    return v0
.end method

.method getWindowContainerBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 961
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_8

    .line 962
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 963
    return-void

    .line 965
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 966
    return-void
.end method

.method goToSleep()V
    .registers 10

    .line 1604
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v0}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1609
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_d
    if-ltz v0, :cond_3d

    .line 1610
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    iget-object v2, v2, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1611
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_1e
    if-ltz v3, :cond_3a

    .line 1612
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 1613
    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 1614
    invoke-virtual {v4, v1}, Lcom/android/server/wm/ActivityRecord;->setSleeping(Z)V

    .line 1611
    :cond_37
    add-int/lit8 v3, v3, -0x1

    goto :goto_1e

    .line 1609
    :cond_3a
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 1618
    :cond_3d
    return-void
.end method

.method goToSleepIfPossible(Z)Z
    .registers 5

    .line 1561
    nop

    .line 1563
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    .line 1569
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v1, v0, v2}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Z)Z

    .line 1570
    move v1, v2

    goto :goto_12

    .line 1571
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_12

    .line 1574
    move v1, v2

    .line 1577
    :cond_12
    :goto_12
    if-nez p1, :cond_2f

    .line 1578
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStack;->containsActivityFromStack(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 1583
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 1584
    move v1, v2

    .line 1587
    :cond_24
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStack;->containsActivityFromStack(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 1591
    move v1, v2

    .line 1595
    :cond_2f
    if-eqz v1, :cond_34

    .line 1596
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->goToSleep()V

    .line 1599
    :cond_34
    return v1
.end method

.method handleAppCrash(Lcom/android/server/wm/WindowProcessController;)V
    .registers 9

    .line 5323
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_60

    .line 5324
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    iget-object v1, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5325
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1a
    if-ltz v2, :cond_5d

    .line 5326
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 5327
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v4, p1, :cond_5a

    .line 5328
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Force finishing activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 5329
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5328
    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5331
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 5332
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v5, 0x1a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 5334
    const-string v4, "handleAppCrashedLocked"

    invoke-virtual {p0, v3, v6, v6, v4}, Lcom/android/server/wm/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/wm/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    .line 5325
    :cond_5a
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 5323
    :cond_5d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 5339
    :cond_60
    return-void
.end method

.method handleAppDiedLocked(Lcom/android/server/wm/WindowProcessController;)Z
    .registers 4

    .line 5309
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v0, p1, :cond_b

    .line 5312
    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 5314
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_17

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v0, p1, :cond_17

    .line 5315
    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 5316
    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    .line 5319
    :cond_17
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStack;->removeHistoryRecordsForAppLocked(Lcom/android/server/wm/WindowProcessController;)Z

    move-result p1

    return p1
.end method

.method inFrontOfStandardStack()Z
    .registers 4

    .line 4224
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 4225
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 4226
    return v1

    .line 4228
    :cond_8
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityDisplay;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v2

    .line 4229
    if-nez v2, :cond_f

    .line 4230
    return v1

    .line 4232
    :cond_f
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 4233
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandard()Z

    move-result v0

    return v0
.end method

.method isAnimatingBoundsToFullscreen()Z
    .registers 2

    .line 5724
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 5725
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isAnimatingBoundsToFullscreen()Z

    move-result v0

    return v0
.end method

.method final isAttached()Z
    .registers 2

    .line 1331
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1332
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isCompatible(II)Z
    .registers 3

    .line 874
    if-nez p2, :cond_3

    .line 877
    const/4 p2, 0x1

    .line 879
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/ConfigurationContainer;->isCompatible(II)Z

    move-result p1

    return p1
.end method

.method isFocusable()Z
    .registers 3

    .line 1322
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1323
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/RootActivityContainer;->isFocusable(Lcom/android/server/wm/ConfigurationContainer;Z)Z

    move-result v0

    return v0
.end method

.method isFocusableAndVisible()Z
    .registers 2

    .line 1327
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method isFocusedStackOnDisplay()Z
    .registers 2

    .line 1960
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1961
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-ne p0, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method final isHomeOrRecentsStack()Z
    .registers 2

    .line 1239
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 1177
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 1178
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->isInStackLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    return-object p1
.end method

.method isInStackLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 6

    .line 1182
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1183
    return-object v0

    .line 1185
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    .line 1186
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1187
    if-eqz v2, :cond_28

    iget-object v3, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1188
    if-eq v2, p0, :cond_27

    const-string v0, "ActivityTaskManager"

    const-string v1, "Illegal state! task does not point to stack it is in."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    :cond_27
    return-object p1

    .line 1192
    :cond_28
    return-object v0
.end method

.method isInStackLocked(Lcom/android/server/wm/TaskRecord;)Z
    .registers 3

    .line 1196
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final isOnHomeDisplay()Z
    .registers 2

    .line 1243
    iget v0, p0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isSingleTaskInstance()Z
    .registers 2

    .line 1222
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1223
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->isSingleTaskInstance()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method isStackTranslucent(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1919
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4a

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mForceHidden:Z

    if-eqz v0, :cond_c

    goto :goto_4a

    .line 1922
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_13
    if-ltz v0, :cond_49

    .line 1923
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    .line 1924
    iget-object v2, v2, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1925
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_24
    if-ltz v3, :cond_46

    .line 1926
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 1928
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_31

    .line 1931
    goto :goto_41

    .line 1934
    :cond_31
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-nez v5, :cond_38

    if-eq v4, p1, :cond_38

    .line 1937
    goto :goto_41

    .line 1940
    :cond_38
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    if-nez v5, :cond_44

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityRecord;->hasWallpaper:Z

    if-eqz v4, :cond_41

    goto :goto_44

    .line 1925
    :cond_41
    :goto_41
    add-int/lit8 v3, v3, -0x1

    goto :goto_24

    .line 1943
    :cond_44
    :goto_44
    const/4 p1, 0x0

    return p1

    .line 1922
    :cond_46
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 1947
    :cond_49
    return v1

    .line 1920
    :cond_4a
    :goto_4a
    return v1
.end method

.method isTopActivityVisible()Z
    .registers 2

    .line 1965
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1966
    if-eqz v0, :cond_c

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method isTopStackOnDisplay()Z
    .registers 2

    .line 1951
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1952
    if-eqz v0, :cond_e

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityDisplay;->isTopStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method isUidPresent(I)Z
    .registers 5

    .line 1201
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 1202
    iget-object v1, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 1203
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v2

    if-ne v2, p1, :cond_2c

    .line 1204
    const/4 p1, 0x1

    return p1

    .line 1206
    :cond_2c
    goto :goto_18

    .line 1207
    :cond_2d
    goto :goto_6

    .line 1208
    :cond_2e
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$setWindowingMode$0$ActivityStack(IZZZZZ)V
    .registers 7

    .line 704
    invoke-direct/range {p0 .. p6}, Lcom/android/server/wm/ActivityStack;->setWindowingModeInSurfaceTransaction(IZZZZZ)V

    return-void
.end method

.method minimalResumeActivityLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 1499
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v1, "minimalResumeActivityLocked"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1500
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V

    .line 1503
    return-void
.end method

.method final moveTaskToBackLocked(I)Z
    .registers 7

    .line 4980
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->taskForIdLocked(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 4981
    const-string v1, "ActivityTaskManager"

    const/4 v2, 0x0

    if-nez v0, :cond_1e

    .line 4982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveTaskToBack: bad taskId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4983
    return v2

    .line 4985
    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveTaskToBack: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4989
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/LockTaskController;->canMoveTaskToBack(Lcom/android/server/wm/TaskRecord;)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 4990
    return v2

    .line 4996
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isTopStackOnDisplay()Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_75

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v1, :cond_75

    .line 4997
    invoke-virtual {p0, v4, p1}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 4998
    if-nez p1, :cond_57

    .line 4999
    invoke-virtual {p0, v4, v2}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 5001
    :cond_57
    if-eqz p1, :cond_75

    .line 5003
    nop

    .line 5005
    :try_start_5a
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v1, p1}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result p1
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_64} :catch_65

    .line 5009
    goto :goto_72

    .line 5006
    :catch_65
    move-exception p1

    .line 5007
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v4, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 5008
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    move p1, v3

    .line 5010
    :goto_72
    if-nez p1, :cond_75

    .line 5011
    return v2

    .line 5018
    :cond_75
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5019
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5020
    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/ActivityStack;->updateTaskMovement(Lcom/android/server/wm/TaskRecord;Z)V

    .line 5022
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 5023
    const-string p1, "moveTaskToBackLocked"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityStack;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/TaskRecord;)V

    .line 5025
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_9e

    .line 5026
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->removeStack(Lcom/android/server/wm/ActivityStack;)V

    .line 5027
    return v3

    .line 5030
    :cond_9e
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityDisplay;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 5031
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 5032
    if-eqz v0, :cond_c1

    if-eq v0, p0, :cond_c1

    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result p1

    if-eqz p1, :cond_c1

    .line 5036
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 5037
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    .line 5036
    invoke-virtual {p1, v4, v0, v2, v2}, Lcom/android/server/wm/RootActivityContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    .line 5041
    :cond_c1
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 5042
    return v3
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/wm/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V
    .registers 12

    .line 4892
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 4893
    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_11

    :cond_10
    move-object v0, v1

    .line 4894
    :goto_11
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4895
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 4896
    const/16 v4, 0xa

    if-eqz v2, :cond_d6

    if-gez v3, :cond_25

    goto/16 :goto_d6

    .line 4906
    :cond_25
    const/4 v2, 0x1

    if-eqz p4, :cond_3e

    .line 4908
    iget-object v3, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_2f
    if-ltz v3, :cond_3e

    .line 4909
    iget-object v5, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    iput-object p4, v5, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 4908
    add-int/lit8 v3, v3, -0x1

    goto :goto_2f

    .line 4917
    :cond_3e
    :try_start_3e
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityDisplay;->deferUpdateImeTarget()V

    .line 4921
    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/ActivityStack;->insertTaskAtTop(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 4924
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p4

    .line 4925
    if-eqz p4, :cond_b5

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v3

    if-nez v3, :cond_55

    goto :goto_b5

    .line 4934
    :cond_55
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object p4

    .line 4935
    if-eqz p4, :cond_5e

    .line 4936
    invoke-virtual {p4, p5}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    .line 4940
    :cond_5e
    const/4 p5, 0x0

    if-eqz p2, :cond_77

    .line 4941
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p2, p5, p5}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 4942
    if-eqz p4, :cond_73

    .line 4943
    iget-object p2, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p2, p2, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4945
    :cond_73
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_7a

    .line 4947
    :cond_77
    invoke-direct {p0, v4, p3}, Lcom/android/server/wm/ActivityStack;->updateTransitLocked(ILandroid/app/ActivityOptions;)V

    .line 4955
    :goto_7a
    invoke-direct {p0, v0, p1, v1, p3}, Lcom/android/server/wm/ActivityStack;->canEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result p2

    if-eqz p2, :cond_82

    .line 4957
    iput-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 4960
    :cond_82
    iget-object p2, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p2}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 4961
    const/16 p2, 0x7532

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    iget p4, p1, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, p5

    iget p4, p1, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v2

    invoke-static {p2, p3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4962
    iget-object p2, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskMovedToFront(Landroid/app/TaskInfo;)V
    :try_end_ac
    .catchall {:try_start_3e .. :try_end_ac} :catchall_cd

    .line 4964
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityDisplay;->continueUpdateImeTarget()V

    .line 4965
    nop

    .line 4966
    return-void

    .line 4926
    :cond_b5
    :goto_b5
    if-eqz p4, :cond_c2

    .line 4927
    :try_start_b7
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/TaskRecord;)V

    .line 4929
    :cond_c2
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V
    :try_end_c5
    .catchall {:try_start_b7 .. :try_end_c5} :catchall_cd

    .line 4964
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityDisplay;->continueUpdateImeTarget()V

    .line 4930
    return-void

    .line 4964
    :catchall_cd
    move-exception p1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityDisplay;->continueUpdateImeTarget()V

    throw p1

    .line 4898
    :cond_d6
    :goto_d6
    if-eqz p2, :cond_dc

    .line 4899
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_df

    .line 4901
    :cond_dc
    invoke-direct {p0, v4, p3}, Lcom/android/server/wm/ActivityStack;->updateTransitLocked(ILandroid/app/ActivityOptions;)V

    .line 4903
    :goto_df
    return-void
.end method

.method moveToBack(Ljava/lang/String;Lcom/android/server/wm/TaskRecord;)V
    .registers 5

    .line 1303
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1304
    return-void

    .line 1311
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    .line 1312
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    .line 1315
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/ActivityDisplay;->positionChildAtBottom(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V

    .line 1316
    if-eqz p2, :cond_1e

    .line 1317
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityStack;->insertTaskAtBottom(Lcom/android/server/wm/TaskRecord;)V

    .line 1319
    :cond_1e
    return-void
.end method

.method moveToFront(Ljava/lang/String;)V
    .registers 3

    .line 1253
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/TaskRecord;)V

    .line 1254
    return-void
.end method

.method moveToFront(Ljava/lang/String;Lcom/android/server/wm/TaskRecord;)V
    .registers 8

    .line 1261
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1262
    return-void

    .line 1265
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1267
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3b

    .line 1273
    nop

    .line 1274
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1275
    if-eqz v1, :cond_3b

    .line 1276
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1277
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityDisplay;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v1

    .line 1278
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityDisplay;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v4

    if-le v1, v4, :cond_3b

    .line 1279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " splitScreenToTop"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1284
    :cond_3b
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v1

    if-nez v1, :cond_5b

    invoke-direct {p0}, Lcom/android/server/wm/ActivityStack;->returnsToHomeStack()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 1287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " returnToHome"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityDisplay;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 1290
    :cond_5b
    if-eqz p2, :cond_5e

    goto :goto_5f

    :cond_5e
    const/4 v2, 0x0

    .line 1291
    :goto_5f
    xor-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/server/wm/ActivityDisplay;->positionChildAtTop(Lcom/android/server/wm/ActivityStack;ZLjava/lang/String;)V

    .line 1292
    if-eqz v2, :cond_6a

    .line 1294
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/android/server/wm/ActivityStack;->insertTaskAtTop(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 1296
    :cond_6a
    return-void
.end method

.method moveToFrontAndResumeStateIfNeeded(Lcom/android/server/wm/ActivityRecord;ZZZLjava/lang/String;)V
    .registers 7

    .line 5648
    if-nez p2, :cond_3

    .line 5649
    return-void

    .line 5652
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object p2

    .line 5656
    if-eqz p3, :cond_13

    .line 5657
    sget-object p3, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v0, "moveToFrontAndResumeStateIfNeeded"

    invoke-virtual {p1, p3, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 5658
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->updateLRUListLocked(Lcom/android/server/wm/ActivityRecord;)Z

    .line 5661
    :cond_13
    if-eqz p4, :cond_1a

    .line 5662
    iput-object p1, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 5663
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStack;->schedulePauseTimeout(Lcom/android/server/wm/ActivityRecord;)V

    .line 5666
    :cond_1a
    invoke-virtual {p0, p5}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 5669
    sget-object p3, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne p2, p3, :cond_2e

    iget-object p2, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p2}, Lcom/android/server/wm/RootActivityContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    if-ne p1, p2, :cond_2e

    .line 5671
    iget-object p2, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2, p1, p5}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 5673
    :cond_2e
    return-void
.end method

.method final navigateUpToLocked(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;ILandroid/content/Intent;)Z
    .registers 24

    .line 4271
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_e

    .line 4274
    return v10

    .line 4276
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 4277
    iget-object v11, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4278
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 4279
    iget-object v2, v7, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_143

    if-gez v1, :cond_24

    goto/16 :goto_143

    .line 4282
    :cond_24
    add-int/lit8 v0, v1, -0x1

    .line 4283
    const/4 v12, 0x0

    if-gez v0, :cond_2b

    move-object v2, v12

    goto :goto_31

    :cond_2b
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 4284
    :goto_31
    nop

    .line 4285
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 4286
    const/4 v13, 0x1

    if-lez v1, :cond_6b

    if-eqz v3, :cond_6b

    .line 4287
    move v4, v0

    :goto_3c
    if-ltz v4, :cond_6b

    .line 4288
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 4289
    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_68

    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 4290
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_68

    .line 4291
    nop

    .line 4292
    nop

    .line 4293
    nop

    .line 4294
    move v15, v4

    move-object v14, v5

    move/from16 v16, v13

    goto :goto_6f

    .line 4287
    :cond_68
    add-int/lit8 v4, v4, -0x1

    goto :goto_3c

    .line 4301
    :cond_6b
    move v15, v0

    move-object v14, v2

    move/from16 v16, v10

    :goto_6f
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 4302
    if-eqz v0, :cond_95

    .line 4303
    iget-object v2, v8, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v7, v2, v10}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 4304
    if-eqz v2, :cond_95

    .line 4306
    nop

    .line 4308
    :try_start_7e
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v0
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_84} :catch_85

    .line 4312
    goto :goto_92

    .line 4309
    :catch_85
    move-exception v0

    .line 4310
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v12, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 4311
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    move v0, v13

    .line 4314
    :goto_92
    if-nez v0, :cond_95

    .line 4315
    return v10

    .line 4319
    :cond_95
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 4320
    move/from16 v3, p3

    move-object/from16 v4, p4

    move v0, v1

    :goto_9e
    if-le v0, v15, :cond_b7

    .line 4321
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 4322
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v6, 0x1

    const-string v5, "navigate-up"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4324
    nop

    .line 4325
    nop

    .line 4320
    add-int/lit8 v0, v0, -0x1

    move v3, v10

    move-object v4, v12

    goto :goto_9e

    .line 4328
    :cond_b7
    if-eqz v14, :cond_13f

    if-eqz v16, :cond_13f

    .line 4329
    iget-object v0, v8, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4330
    iget-object v1, v14, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 4331
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    .line 4332
    const/4 v5, 0x3

    if-eq v1, v5, :cond_13a

    const/4 v5, 0x2

    if-eq v1, v5, :cond_13a

    if-eq v1, v13, :cond_13a

    const/high16 v1, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_d7

    goto :goto_13a

    .line 4339
    :cond_d7
    :try_start_d7
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 4340
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v5, 0x400

    iget v6, v8, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 4339
    invoke-interface {v1, v2, v5, v6}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 4343
    iget-object v2, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v2

    const-string v5, "navigateUpTo"

    .line 4344
    invoke-virtual {v2, v9, v5}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    iget-object v5, v8, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 4345
    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 4346
    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    iget-object v2, v14, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 4347
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 4348
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 4349
    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    iget-object v5, v8, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 4350
    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 4351
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 4352
    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 4353
    invoke-virtual {v0, v13}, Lcom/android/server/wm/ActivityStarter;->setComponentSpecified(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 4354
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v0
    :try_end_126
    .catch Landroid/os/RemoteException; {:try_start_d7 .. :try_end_126} :catch_12c

    .line 4355
    if-nez v0, :cond_129

    move v10, v13

    .line 4358
    :cond_129
    move/from16 v16, v10

    goto :goto_12f

    .line 4356
    :catch_12c
    move-exception v0

    .line 4357
    move/from16 v16, v10

    .line 4359
    :goto_12f
    iget-object v2, v14, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v6, 0x1

    const-string v5, "navigate-top"

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    goto :goto_13f

    .line 4336
    :cond_13a
    :goto_13a
    iget-object v1, v8, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v0, v9, v1}, Lcom/android/server/wm/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 4363
    :cond_13f
    :goto_13f
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4364
    return v16

    .line 4280
    :cond_143
    :goto_143
    return v10
.end method

.method notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6

    .line 2493
    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 2494
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 2495
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2498
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 2499
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 2500
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2501
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2503
    if-eqz v0, :cond_43

    .line 2504
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaque(Landroid/os/IBinder;Z)V

    .line 2505
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 2507
    :try_start_33
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eqz p1, :cond_3e

    const/4 v3, 0x1

    :cond_3e
    invoke-interface {v1, v0, v3}, Landroid/app/IApplicationThread;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_41} :catch_42

    .line 2510
    goto :goto_43

    .line 2509
    :catch_42
    move-exception p1

    .line 2514
    :cond_43
    :goto_43
    return-void
.end method

.method numActivities()I
    .registers 4

    .line 502
    nop

    .line 503
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_a
    if-ltz v0, :cond_1e

    .line 504
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    iget-object v2, v2, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 503
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 506
    :cond_1e
    return v1
.end method

.method onActivityAddedToStack(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 4383
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v0, v1, :cond_d

    .line 4384
    const-string v0, "onActivityAddedToStack"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ActivityStack;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 4386
    :cond_d
    return-void
.end method

.method onActivityRemovedFromStack(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 4372
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 4374
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    if-ne v0, p1, :cond_f

    .line 4375
    const-string v0, "onActivityRemovedFromStack"

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/ActivityStack;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 4377
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_17

    if-ne v0, p1, :cond_17

    .line 4378
    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 4380
    :cond_17
    return-void
.end method

.method onActivityStateChanged(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V
    .registers 7

    .line 557
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v1, " - onActivityStateChanged"

    if-ne p1, v0, :cond_1d

    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq p2, v0, :cond_1d

    .line 558
    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/ActivityStack;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 561
    :cond_1d
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne p2, v0, :cond_4b

    .line 564
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityStack;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 565
    iget-object p2, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p2}, Lcom/android/server/wm/RootActivityContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    if-ne p1, p2, :cond_40

    .line 567
    iget-object p2, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2, p1, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 569
    :cond_40
    iget-object p2, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p2, p2, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/TaskRecord;)V

    .line 571
    :cond_4b
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 19

    .line 575
    move-object/from16 v8, p0

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v1

    .line 576
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v9

    .line 577
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    .line 578
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    .line 579
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 580
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 581
    iget-object v6, v8, Lcom/android/server/wm/ActivityStack;->mTmpRect:Landroid/graphics/Rect;

    .line 584
    invoke-virtual {v8, v6}, Lcom/android/server/wm/ActivityStack;->getBounds(Landroid/graphics/Rect;)V

    .line 586
    invoke-super/range {p0 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 587
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v10

    .line 588
    if-eqz v10, :cond_10d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v7

    if-nez v7, :cond_3c

    goto/16 :goto_10d

    .line 592
    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v7

    if-eq v1, v7, :cond_44

    const/4 v1, 0x1

    goto :goto_45

    :cond_44
    const/4 v1, 0x0

    .line 593
    :goto_45
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideWindowingMode()I

    move-result v7

    .line 595
    nop

    .line 597
    const/4 v13, 0x2

    const/4 v14, 0x4

    const/4 v15, 0x3

    if-ne v7, v13, :cond_59

    .line 599
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/wm/TaskStack;->calculatePinnedBoundsForConfigChange(Landroid/graphics/Rect;)Z

    move-result v0

    move v12, v0

    goto :goto_ab

    .line 600
    :cond_59
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->matchParentBounds()Z

    move-result v13

    if-nez v13, :cond_aa

    .line 603
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v13

    .line 604
    if-eq v2, v13, :cond_6c

    const/16 v16, 0x1

    goto :goto_6e

    :cond_6c
    const/16 v16, 0x0

    .line 605
    :goto_6e
    if-eqz v16, :cond_7d

    .line 606
    iget-object v12, v10, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v11, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 607
    invoke-virtual {v11}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    .line 606
    invoke-virtual {v12, v11, v2, v13, v6}, Lcom/android/server/wm/DisplayContent;->rotateBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 609
    const/4 v11, 0x1

    goto :goto_7e

    .line 605
    :cond_7d
    const/4 v11, 0x0

    .line 613
    :goto_7e
    if-eq v7, v15, :cond_82

    if-ne v7, v14, :cond_9f

    .line 617
    :cond_82
    if-nez v16, :cond_a1

    if-nez v1, :cond_a1

    .line 618
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    if-ne v3, v2, :cond_a1

    .line 619
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    if-ne v4, v2, :cond_a1

    .line 620
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v5, v2, :cond_9f

    goto :goto_a1

    .line 627
    :cond_9f
    move v12, v11

    goto :goto_ab

    .line 621
    :cond_a1
    :goto_a1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    invoke-virtual {v2, v0, v6}, Lcom/android/server/wm/TaskStack;->calculateDockedBoundsForConfigChange(Landroid/content/res/Configuration;Landroid/graphics/Rect;)V

    .line 622
    const/4 v12, 0x1

    goto :goto_ab

    .line 600
    :cond_aa
    const/4 v12, 0x0

    .line 627
    :goto_ab
    if-eqz v1, :cond_ef

    .line 629
    const/4 v0, 0x0

    if-ne v7, v15, :cond_c2

    .line 630
    iget-object v1, v8, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v8, v0, v0, v6, v1}, Lcom/android/server/wm/ActivityStack;->getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 633
    invoke-virtual {v8, v0}, Lcom/android/server/wm/ActivityStack;->setTaskDisplayedBounds(Landroid/graphics/Rect;)V

    .line 634
    invoke-virtual {v8, v6}, Lcom/android/server/wm/ActivityStack;->setTaskBounds(Landroid/graphics/Rect;)V

    .line 635
    invoke-virtual {v8, v6}, Lcom/android/server/wm/ActivityStack;->setBounds(Landroid/graphics/Rect;)I

    .line 636
    invoke-virtual {v6, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_ec

    .line 637
    :cond_c2
    if-ne v7, v14, :cond_ec

    .line 638
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 639
    iget-object v2, v10, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 640
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v2

    .line 641
    if-eqz v2, :cond_e6

    .line 642
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    .line 643
    if-eqz v2, :cond_e6

    .line 644
    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 647
    :cond_e6
    iget-object v2, v8, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v8, v1, v0, v6, v2}, Lcom/android/server/wm/ActivityStack;->getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 649
    const/4 v12, 0x1

    .line 651
    :cond_ec
    :goto_ec
    invoke-virtual {v10, v8}, Lcom/android/server/wm/ActivityDisplay;->onStackWindowingModeChanged(Lcom/android/server/wm/ActivityStack;)V

    .line 653
    :cond_ef
    if-eqz v12, :cond_102

    .line 656
    iget-object v0, v8, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/RootActivityContainer;->resizeStack(Lcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    .line 660
    :cond_102
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v0

    if-eq v9, v0, :cond_10c

    .line 664
    const/4 v0, 0x0

    invoke-virtual {v10, v8, v0}, Lcom/android/server/wm/ActivityDisplay;->positionChildAtTop(Lcom/android/server/wm/ActivityStack;Z)V

    .line 666
    :cond_10c
    return-void

    .line 589
    :cond_10d
    :goto_10d
    return-void
.end method

.method onLockTaskPackagesUpdated()V
    .registers 3

    .line 5761
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 5762
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->setLockTaskAuth()V

    .line 5761
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 5764
    :cond_18
    return-void
.end method

.method protected onParentChanged()V
    .registers 11

    .line 271
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_17

    .line 280
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 281
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    .line 280
    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 283
    :cond_17
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->onParentChanged()V

    .line 284
    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 287
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/android/server/wm/ActivityStack;->getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 289
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mTmpRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 292
    :cond_3a
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->updateUIDsPresentOnDisplay()V

    .line 293
    return-void
.end method

.method onPipAnimationEndResize()V
    .registers 2

    .line 5120
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_5

    return-void

    .line 5121
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->onPipAnimationEndResize()V

    .line 5122
    return-void
.end method

.method positionChildAt(Lcom/android/server/wm/TaskRecord;I)V
    .registers 7

    .line 5577
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-ne v0, p0, :cond_5a

    .line 5582
    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfigurationForStack(Lcom/android/server/wm/ActivityStack;)V

    .line 5584
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 5585
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_19

    move v1, v2

    goto :goto_1a

    :cond_19
    move v1, v3

    .line 5586
    :goto_1a
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityStack;->insertTaskAtPosition(Lcom/android/server/wm/TaskRecord;I)V

    .line 5587
    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskRecord;->setStack(Lcom/android/server/wm/ActivityStack;)V

    .line 5588
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/wm/ActivityStack;->postAddTask(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityStack;Z)V

    .line 5590
    if-eqz v1, :cond_51

    .line 5591
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_4a

    .line 5592
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mResumedActivity was already set when moving mResumedActivity from other stack to this stack mResumedActivity="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " other mResumedActivity="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5596
    :cond_4a
    sget-object p1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v1, "positionChildAt"

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 5601
    :cond_51
    invoke-virtual {p0, p2, v3, v3}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 5602
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 5603
    return-void

    .line 5578
    :cond_5a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AS.positionChildAt: task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not a child of stack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " current parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5579
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method positionChildWindowContainerAtBottom(Lcom/android/server/wm/TaskRecord;)V
    .registers 5

    .line 979
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 980
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 979
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityDisplay;->getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 981
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_1c

    .line 983
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-nez v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/TaskStack;->positionChildAtBottom(Lcom/android/server/wm/Task;Z)V

    .line 986
    :cond_1c
    return-void
.end method

.method positionChildWindowContainerAtTop(Lcom/android/server/wm/TaskRecord;)V
    .registers 4

    .line 969
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_c

    .line 971
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/TaskStack;->positionChildAtTop(Lcom/android/server/wm/Task;Z)V

    .line 973
    :cond_c
    return-void
.end method

.method postReparent()V
    .registers 4

    .line 905
    const-string v0, "reparent"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;Z)Lcom/android/server/wm/ActivityStack;

    .line 906
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 909
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 911
    return-void
.end method

.method prepareFreezingTaskBounds()V
    .registers 2

    .line 954
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_7

    .line 956
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->prepareFreezingTaskBounds()V

    .line 958
    :cond_7
    return-void
.end method

.method final rankTaskLayers(I)I
    .registers 7

    .line 2103
    nop

    .line 2104
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_a
    if-ltz v0, :cond_30

    .line 2105
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    .line 2106
    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 2107
    if-eqz v3, :cond_2a

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v4, :cond_2a

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v3, :cond_23

    goto :goto_2a

    .line 2110
    :cond_23
    add-int/lit8 v3, v1, 0x1

    add-int/2addr v1, p1

    iput v1, v2, Lcom/android/server/wm/TaskRecord;->mLayerRank:I

    move v1, v3

    goto :goto_2d

    .line 2108
    :cond_2a
    :goto_2a
    const/4 v3, -0x1

    iput v3, v2, Lcom/android/server/wm/TaskRecord;->mLayerRank:I

    .line 2104
    :goto_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 2113
    :cond_30
    return v1
.end method

.method final releaseSomeActivitiesLocked(Lcom/android/server/wm/WindowProcessController;Landroid/util/ArraySet;Ljava/lang/String;)I
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowProcessController;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/TaskRecord;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 4563
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 4564
    const/4 v1, 0x1

    if-ge v0, v1, :cond_a

    .line 4565
    move v0, v1

    .line 4567
    :cond_a
    nop

    .line 4568
    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    move v4, v0

    :goto_f
    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_63

    if-lez v3, :cond_63

    .line 4569
    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskRecord;

    .line 4570
    invoke-virtual {p2, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_28

    .line 4571
    goto :goto_61

    .line 4574
    :cond_28
    nop

    .line 4575
    iget-object v6, v5, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4576
    move v7, v2

    move v8, v7

    :goto_2d
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_52

    .line 4577
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/ActivityRecord;

    .line 4578
    iget-object v10, v9, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v10, p1, :cond_50

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->isDestroyable()Z

    move-result v10

    if-eqz v10, :cond_50

    .line 4582
    invoke-virtual {p0, v9, v1, p3}, Lcom/android/server/wm/ActivityStack;->destroyActivityLocked(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)Z

    .line 4583
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eq v10, v9, :cond_4e

    .line 4585
    add-int/lit8 v7, v7, -0x1

    .line 4587
    :cond_4e
    add-int/lit8 v8, v8, 0x1

    .line 4576
    :cond_50
    add-int/2addr v7, v1

    goto :goto_2d

    .line 4590
    :cond_52
    if-lez v8, :cond_61

    .line 4591
    add-int/2addr v4, v8

    .line 4592
    add-int/lit8 v3, v3, -0x1

    .line 4593
    iget-object v6, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v5, :cond_61

    .line 4595
    add-int/lit8 v0, v0, -0x1

    .line 4568
    :cond_61
    :goto_61
    add-int/2addr v0, v1

    goto :goto_f

    .line 4601
    :cond_63
    return v4
.end method

.method remove()V
    .registers 2

    .line 927
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStack;->removeFromDisplay()V

    .line 928
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_d

    .line 929
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->removeIfPossible()V

    .line 930
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    .line 932
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->onParentChanged()V

    .line 933
    return-void
.end method

.method final removeActivitiesFromLRUListLocked(Lcom/android/server/wm/TaskRecord;)V
    .registers 4

    .line 1227
    iget-object p1, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 1228
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1229
    goto :goto_6

    .line 1230
    :cond_18
    return-void
.end method

.method removeTask(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;I)V
    .registers 10

    .line 5470
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 5472
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_24

    .line 5473
    const/16 v0, 0x756d

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p1, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getStackId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5476
    :cond_24
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->removeActivitiesFromLRUListLocked(Lcom/android/server/wm/TaskRecord;)V

    .line 5477
    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/ActivityStack;->updateTaskMovement(Lcom/android/server/wm/TaskRecord;Z)V

    .line 5479
    if-nez p3, :cond_2f

    .line 5480
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->cleanUpResourcesForDestroy()V

    .line 5483
    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 5484
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 5488
    if-eq p3, v1, :cond_65

    iget-object p3, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 5489
    invoke-virtual {p3, p0}, Lcom/android/server/wm/RootActivityContainer;->isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result p3

    if-eqz p3, :cond_65

    .line 5490
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " leftTaskHistoryEmpty"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5491
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inMultiWindowMode()Z

    move-result p3

    if-eqz p3, :cond_62

    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;)Lcom/android/server/wm/ActivityStack;

    move-result-object p3

    if-nez p3, :cond_65

    .line 5492
    :cond_62
    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityDisplay;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 5495
    :cond_65
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result p2

    if-eqz p2, :cond_6e

    .line 5496
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityDisplay;->positionChildAtBottom(Lcom/android/server/wm/ActivityStack;)V

    .line 5498
    :cond_6e
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result p2

    if-eqz p2, :cond_7a

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result p2

    if-nez p2, :cond_7d

    .line 5499
    :cond_7a
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->remove()V

    .line 5503
    :cond_7d
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/server/wm/TaskRecord;->setStack(Lcom/android/server/wm/ActivityStack;)V

    .line 5506
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_90

    .line 5507
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityUnpinned()V

    .line 5509
    :cond_90
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->isSingleTaskInstance()Z

    move-result p1

    if-eqz p1, :cond_9d

    .line 5510
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget p2, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->notifySingleTaskDisplayEmpty(I)V

    .line 5512
    :cond_9d
    return-void
.end method

.method reparent(Lcom/android/server/wm/ActivityDisplay;ZZ)V
    .registers 7

    .line 886
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStack;->removeFromDisplay()V

    .line 889
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 890
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_14

    .line 892
    const-string v0, "ActivityTaskManager"

    const-string v1, "Task stack is not valid when reparenting."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 894
    :cond_14
    iget v1, p1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/wm/TaskStack;->reparent(ILandroid/graphics/Rect;Z)V

    .line 896
    :goto_1b
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    goto :goto_27

    :cond_25
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    :goto_27
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->setBounds(Landroid/graphics/Rect;)I

    .line 897
    if-eqz p2, :cond_30

    const p2, 0x7fffffff

    goto :goto_32

    :cond_30
    const/high16 p2, -0x80000000

    :goto_32
    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/ActivityDisplay;->addChild(Lcom/android/server/wm/ActivityStack;I)V

    .line 898
    if-nez p3, :cond_3a

    .line 899
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->postReparent()V

    .line 901
    :cond_3a
    return-void
.end method

.method final requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    .registers 12

    .line 3819
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3824
    if-nez v1, :cond_8

    .line 3825
    const/4 p1, 0x0

    return p1

    .line 3828
    :cond_8
    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3829
    const/4 p1, 0x1

    return p1
.end method

.method requestResize(Landroid/graphics/Rect;)V
    .registers 9

    .line 5094
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, p0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    .line 5097
    return-void
.end method

.method final resetTaskIfNeededLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 14

    .line 3584
    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p2, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 p2, p2, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_c

    move p2, v1

    goto :goto_d

    :cond_c
    move p2, v0

    .line 3586
    :goto_d
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v8

    .line 3590
    nop

    .line 3593
    const/4 v2, 0x0

    .line 3596
    nop

    .line 3598
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    const/4 v4, -0x1

    move v9, v0

    move-object v10, v2

    move v0, v3

    move v7, v4

    :goto_20
    if-ltz v0, :cond_3f

    .line 3599
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    .line 3601
    if-ne v3, v8, :cond_34

    .line 3602
    invoke-direct {p0, v8, p2}, Lcom/android/server/wm/ActivityStack;->resetTargetTaskIfNeededLocked(Lcom/android/server/wm/TaskRecord;Z)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 3603
    move v9, v1

    move-object v10, v2

    goto :goto_3c

    .line 3605
    :cond_34
    move-object v2, p0

    move-object v4, v8

    move v5, v9

    move v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/ActivityStack;->resetAffinityTaskIfNeededLocked(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/TaskRecord;ZZI)I

    move-result v7

    .line 3598
    :goto_3c
    add-int/lit8 v0, v0, -0x1

    goto :goto_20

    .line 3610
    :cond_3f
    iget-object p2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 3611
    if-ltz p2, :cond_5c

    .line 3613
    :goto_47
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/TaskRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 3614
    if-nez p1, :cond_5c

    if-gez v0, :cond_5a

    goto :goto_5c

    :cond_5a
    move p2, v0

    goto :goto_47

    .line 3617
    :cond_5c
    :goto_5c
    if-eqz v10, :cond_67

    .line 3620
    if-eqz p1, :cond_64

    .line 3621
    invoke-virtual {p1, v10}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    goto :goto_67

    .line 3623
    :cond_64
    invoke-virtual {v10}, Landroid/app/ActivityOptions;->abort()V

    .line 3627
    :cond_67
    :goto_67
    return-object p1
.end method

.method resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7

    .line 5102
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->updateBoundsAllowed(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 5103
    return-void

    .line 5107
    :cond_7
    if-eqz p2, :cond_a

    goto :goto_b

    :cond_a
    move-object p2, p1

    .line 5109
    :goto_b
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_13
    if-ltz v0, :cond_29

    .line 5110
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 5111
    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 5112
    invoke-virtual {v1, p2, p3}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 5109
    :cond_26
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 5116
    :cond_29
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->setBounds(Landroid/graphics/Rect;)I

    .line 5117
    return-void
.end method

.method resizeStackWithLaunchBounds()Z
    .registers 2

    .line 2270
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v0

    return v0
.end method

.method restartPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;
    .registers 10

    .line 5440
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 5444
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_c
    if-ltz v1, :cond_46

    .line 5445
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    iget-object v3, v3, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5446
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_1d
    if-ltz v4, :cond_43

    .line 5447
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 5448
    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 5449
    iput-boolean v2, v5, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    .line 5450
    if-eqz v0, :cond_40

    if-ne v5, v0, :cond_40

    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v6, :cond_40

    .line 5451
    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    const/16 v7, 0x100

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/wm/WindowProcessController;I)V

    .line 5446
    :cond_40
    add-int/lit8 v4, v4, -0x1

    goto :goto_1d

    .line 5444
    :cond_43
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 5458
    :cond_46
    return-object v0
.end method

.method resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2568
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 2570
    return v1

    .line 2573
    :cond_6
    nop

    .line 2576
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    .line 2577
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityStack;->resumeTopActivityInnerLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result p1

    .line 2586
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    .line 2587
    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result p2

    if-nez p2, :cond_1d

    .line 2588
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->checkReadyForSleep()V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_21

    .line 2591
    :cond_1d
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    .line 2592
    nop

    .line 2594
    return p1

    .line 2591
    :catchall_21
    move-exception p1

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    throw p1
.end method

.method final safelyDestroyActivityLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .registers 4

    .line 4550
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isDestroyable()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4554
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/ActivityStack;->destroyActivityLocked(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)Z

    move-result p1

    return p1

    .line 4556
    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method final scheduleDestroyActivities(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    .registers 5

    .line 4509
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4510
    new-instance v1, Lcom/android/server/wm/ActivityStack$ScheduleDestroyArgs;

    invoke-direct {v1, p1, p2}, Lcom/android/server/wm/ActivityStack$ScheduleDestroyArgs;-><init>(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4511
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4512
    return-void
.end method

.method sendActivityResultLocked(ILcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .registers 15

    .line 3633
    if-lez p1, :cond_13

    .line 3634
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 3635
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v5

    iget v6, p2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 3634
    move v2, p1

    move-object v4, p6

    invoke-interface/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionFromIntent(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/uri/UriPermissionOwner;I)V

    .line 3641
    :cond_13
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne p1, p2, :cond_57

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result p1

    if-eqz p1, :cond_57

    .line 3643
    :try_start_1d
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3644
    new-instance v0, Landroid/app/ResultInfo;

    invoke-direct {v0, p3, p4, p5, p6}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3646
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 3647
    invoke-static {p1}, Landroid/app/servertransaction/ActivityResultItem;->obtain(Ljava/util/List;)Landroid/app/servertransaction/ActivityResultItem;

    move-result-object p1

    .line 3646
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3f} :catch_40

    .line 3648
    return-void

    .line 3649
    :catch_40
    move-exception p1

    .line 3650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception thrown sending result to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3654
    :cond_57
    const/4 v3, 0x0

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityRecord;->addResultLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3655
    return-void
.end method

.method public setAlwaysOnTop(Z)V
    .registers 3

    .line 5632
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v0

    if-ne v0, p1, :cond_7

    .line 5633
    return-void

    .line 5635
    :cond_7
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setAlwaysOnTop(Z)V

    .line 5636
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object p1

    .line 5642
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/ActivityDisplay;->positionChildAtTop(Lcom/android/server/wm/ActivityStack;Z)V

    .line 5643
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)I
    .registers 3

    .line 1062
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 p1, 0x0

    :cond_7
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result p1

    return p1
.end method

.method setParent(Lcom/android/server/wm/ActivityDisplay;)V
    .registers 3

    .line 262
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 263
    if-eq v0, p1, :cond_d

    .line 264
    iget p1, p1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    iput p1, p0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    .line 265
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->onParentChanged()V

    .line 267
    :cond_d
    return-void
.end method

.method setPictureInPictureActions(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .line 5719
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 5720
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskStack;->setPictureInPictureActions(Ljava/util/List;)V

    .line 5721
    return-void
.end method

.method setPictureInPictureAspectRatio(F)V
    .registers 3

    .line 5714
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 5715
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskStack;->setPictureInPictureAspectRatio(F)V

    .line 5716
    return-void
.end method

.method setTaskBounds(Landroid/graphics/Rect;)V
    .registers 5

    .line 5130
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->updateBoundsAllowed(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 5131
    return-void

    .line 5134
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_f
    if-ltz v0, :cond_2a

    .line 5135
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 5136
    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 5137
    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskRecord;->setBounds(Landroid/graphics/Rect;)I

    goto :goto_27

    .line 5139
    :cond_23
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskRecord;->setBounds(Landroid/graphics/Rect;)I

    .line 5134
    :goto_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 5142
    :cond_2a
    return-void
.end method

.method setTaskDisplayedBounds(Landroid/graphics/Rect;)V
    .registers 5

    .line 5146
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->updateDisplayedBoundsAllowed(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 5147
    return-void

    .line 5150
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_f
    if-ltz v0, :cond_33

    .line 5151
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 5152
    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_2c

    .line 5154
    :cond_22
    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 5155
    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskRecord;->setDisplayedBounds(Landroid/graphics/Rect;)V

    goto :goto_30

    .line 5153
    :cond_2c
    :goto_2c
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskRecord;->setDisplayedBounds(Landroid/graphics/Rect;)V

    .line 5150
    :cond_30
    :goto_30
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 5158
    :cond_33
    return-void
.end method

.method public setWindowingMode(I)V
    .registers 9

    .line 670
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZZZZZ)V

    .line 673
    return-void
.end method

.method setWindowingMode(IZZZZZ)V
    .registers 17

    .line 704
    move-object v1, p0

    iget-object v8, v1, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v9, Lcom/android/server/wm/-$$Lambda$ActivityStack$7heVv97BezfdSlHS0oo3lugbypI;

    move-object v0, v9

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/-$$Lambda$ActivityStack$7heVv97BezfdSlHS0oo3lugbypI;-><init>(Lcom/android/server/wm/ActivityStack;IZZZZZ)V

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 707
    return-void
.end method

.method shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 1975
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method shouldSleepActivities()Z
    .registers 3

    .line 5772
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 5776
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isFocusedStackOnDisplay()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 5777
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/KeyguardController;->isKeyguardGoingAway()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 5778
    const/4 v0, 0x0

    return v0

    .line 5781
    :cond_18
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->isSleeping()Z

    move-result v0

    goto :goto_25

    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingLocked()Z

    move-result v0

    :goto_25
    return v0
.end method

.method shouldSleepOrShutDownActivities()Z
    .registers 2

    .line 5785
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method shouldUpRecreateTaskLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .registers 6

    .line 4239
    const/4 v0, 0x1

    if-eqz p1, :cond_6b

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_6b

    .line 4240
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_18

    goto :goto_6b

    .line 4247
    :cond_18
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object p2

    .line 4248
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->frontOfTask:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_6a

    invoke-virtual {p2}, Lcom/android/server/wm/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_6a

    invoke-virtual {p2}, Lcom/android/server/wm/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->isDocument()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 4250
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inFrontOfStandardStack()Z

    move-result v1

    if-nez v1, :cond_38

    .line 4252
    return v0

    .line 4255
    :cond_38
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 4256
    if-gtz v1, :cond_57

    .line 4257
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "shouldUpRecreateTask: task not in history for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityTaskManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4258
    return v2

    .line 4260
    :cond_57
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/TaskRecord;

    .line 4261
    iget-object p2, p2, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6a

    .line 4263
    return v0

    .line 4266
    :cond_6a
    return v2

    .line 4241
    :cond_6b
    :goto_6b
    return v0
.end method

.method startActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZZLandroid/app/ActivityOptions;)V
    .registers 15

    .line 3148
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 3149
    iget v1, v0, Lcom/android/server/wm/TaskRecord;->taskId:I

    .line 3150
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p5, :cond_13

    invoke-virtual {p5}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v4

    if-nez v4, :cond_11

    goto :goto_13

    :cond_11
    move v4, v2

    goto :goto_14

    :cond_13
    :goto_13
    move v4, v3

    .line 3152
    :goto_14
    iget-boolean v5, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-nez v5, :cond_25

    if-eqz v4, :cond_25

    .line 3153
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityStack;->taskForIdLocked(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    if-eqz v1, :cond_22

    if-eqz p3, :cond_25

    .line 3157
    :cond_22
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/ActivityStack;->insertTaskAtTop(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 3159
    :cond_25
    nop

    .line 3160
    const/4 v1, 0x0

    if-nez p3, :cond_57

    .line 3162
    nop

    .line 3163
    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    move-object v7, v1

    move v6, v3

    :goto_33
    if-ltz v5, :cond_58

    .line 3164
    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/TaskRecord;

    .line 3165
    invoke-virtual {v7}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    if-nez v8, :cond_44

    .line 3167
    goto :goto_54

    .line 3169
    :cond_44
    if-ne v7, v0, :cond_4f

    .line 3173
    if-nez v6, :cond_58

    .line 3176
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->createAppWindowToken()V

    .line 3177
    invoke-static {p5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 3178
    return-void

    .line 3181
    :cond_4f
    iget v8, v7, Lcom/android/server/wm/TaskRecord;->numFullscreen:I

    if-lez v8, :cond_54

    .line 3182
    move v6, v2

    .line 3163
    :cond_54
    :goto_54
    add-int/lit8 v5, v5, -0x1

    goto :goto_33

    .line 3160
    :cond_57
    move-object v7, v1

    .line 3191
    :cond_58
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 3192
    if-ne v7, v0, :cond_71

    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v3

    if-eq v5, v6, :cond_71

    .line 3193
    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-boolean v2, v5, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    .line 3198
    :cond_71
    nop

    .line 3206
    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v5, :cond_79

    .line 3207
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->createAppWindowToken()V

    .line 3210
    :cond_79
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->setFrontOfTask()V

    .line 3214
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->numActivities()I

    move-result v0

    if-lez v0, :cond_124

    :cond_88
    if-eqz v4, :cond_124

    .line 3215
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 3218
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x10000

    and-int/2addr v4, v5

    if-eqz v4, :cond_a6

    .line 3219
    invoke-virtual {v0, v2, p4}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 3220
    iget-object p4, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p4, p4, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d1

    .line 3222
    :cond_a6
    const/4 v4, 0x6

    .line 3223
    if-eqz p3, :cond_c7

    .line 3224
    iget-boolean v4, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v4, :cond_b0

    .line 3225
    const/16 v4, 0x10

    goto :goto_c7

    .line 3226
    :cond_b0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityDisplay;->isSingleTaskInstance()Z

    move-result v4

    if-eqz v4, :cond_bd

    .line 3227
    const/16 v4, 0x1c

    goto :goto_c7

    .line 3233
    :cond_bd
    invoke-direct {p0, p2, v1, p1, p5}, Lcom/android/server/wm/ActivityStack;->canEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v4

    if-eqz v4, :cond_c5

    .line 3235
    iput-boolean v3, p2, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 3237
    :cond_c5
    const/16 v4, 0x8

    .line 3240
    :cond_c7
    :goto_c7
    invoke-virtual {v0, v4, p4}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 3241
    iget-object p4, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p4, p4, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3243
    :goto_d1
    nop

    .line 3244
    if-eqz p3, :cond_ec

    .line 3250
    iget-object p4, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p4}, Landroid/content/Intent;->getFlags()I

    move-result p4

    const/high16 p5, 0x200000

    and-int/2addr p4, p5

    if-eqz p4, :cond_f7

    .line 3251
    invoke-virtual {p0, p1, p1}, Lcom/android/server/wm/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 3252
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p4

    if-ne p4, p1, :cond_ea

    move p4, v3

    goto :goto_f8

    :cond_ea
    move p4, v2

    goto :goto_f8

    .line 3254
    :cond_ec
    if-eqz p5, :cond_f7

    invoke-virtual {p5}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result p4

    const/4 p5, 0x5

    if-ne p4, p5, :cond_f7

    .line 3256
    move p4, v2

    goto :goto_f8

    .line 3258
    :cond_f7
    move p4, v3

    :goto_f8
    iget-boolean p5, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz p5, :cond_103

    .line 3261
    invoke-virtual {p1, v3}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 3262
    invoke-virtual {p0, v1, v2, v2}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/wm/ActivityRecord;IZ)V

    goto :goto_123

    .line 3263
    :cond_103
    if-eqz p4, :cond_123

    .line 3268
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object p4

    .line 3269
    invoke-virtual {p4}, Lcom/android/server/wm/TaskRecord;->topRunningActivityWithStartingWindowLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object p5

    .line 3270
    if-eqz p5, :cond_11b

    .line 3273
    invoke-virtual {p5}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    if-eq v0, p4, :cond_116

    .line 3274
    goto :goto_11c

    .line 3277
    :cond_116
    iget-boolean p4, p5, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz p4, :cond_11b

    .line 3278
    goto :goto_11c

    .line 3281
    :cond_11b
    move-object v1, p5

    :goto_11c
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityStack;->isTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p2

    invoke-virtual {p1, v1, p3, p2}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 3283
    :cond_123
    :goto_123
    goto :goto_127

    .line 3286
    :cond_124
    invoke-static {p5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 3288
    :goto_127
    return-void
.end method

.method final startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Z)Z
    .registers 14

    .line 1658
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v1, "ActivityTaskManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_34

    .line 1659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Going to pause when pause is already pending for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " state="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1660
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1659
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-nez v0, :cond_34

    .line 1665
    invoke-direct {p0, v2, p3}, Lcom/android/server/wm/ActivityStack;->completePauseLocked(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1668
    :cond_34
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1670
    if-nez v0, :cond_45

    .line 1671
    if-nez p3, :cond_44

    .line 1672
    const-string p1, "Trying to pause when nothing is resumed"

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 1675
    :cond_44
    return v2

    .line 1678
    :cond_45
    if-ne v0, p3, :cond_4d

    .line 1679
    const-string p1, "Trying to pause activity that is in process of being resumed"

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    return v2

    .line 1685
    :cond_4d
    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1686
    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1687
    nop

    .line 1688
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1687
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x40000000  # 2.0f

    and-int/2addr v3, v4

    const/4 v4, 0x0

    if-nez v3, :cond_69

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_67

    goto :goto_69

    .line 1688
    :cond_67
    move-object v3, v4

    goto :goto_6a

    :cond_69
    :goto_69
    move-object v3, v0

    :goto_6a
    iput-object v3, p0, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1689
    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v5, "startPausingLocked"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1690
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->touchActiveTime()V

    .line 1691
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityStack;->clearLaunchTime(Lcom/android/server/wm/ActivityRecord;)V

    .line 1693
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->updateCpuStats()V

    .line 1695
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v3

    if-eqz v3, :cond_cb

    .line 1698
    :try_start_88
    iget v3, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "userLeaving="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v5, v6, v7}, Lcom/android/server/am/EventLogTags;->writeAmPauseActivity(IILjava/lang/String;Ljava/lang/String;)V

    .line 1701
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v7, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    iget v8, v0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    .line 1702
    invoke-static {v7, p1, v8, p4}, Landroid/app/servertransaction/PauseActivityItem;->obtain(ZZIZ)Landroid/app/servertransaction/PauseActivityItem;

    move-result-object p1

    .line 1701
    invoke-virtual {v3, v5, v6, p1}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_bd} :catch_be

    goto :goto_ca

    .line 1704
    :catch_be
    move-exception p1

    .line 1706
    const-string v3, "Exception thrown during pause"

    invoke-static {v1, v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1707
    iput-object v4, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1708
    iput-object v4, p0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1709
    iput-object v4, p0, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1710
    :goto_ca
    goto :goto_d1

    .line 1712
    :cond_cb
    iput-object v4, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1713
    iput-object v4, p0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1714
    iput-object v4, p0, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1719
    :goto_d1
    if-nez p2, :cond_e0

    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result p1

    if-nez p1, :cond_e0

    .line 1720
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStackSupervisor;->acquireLaunchWakelock()V

    .line 1723
    :cond_e0
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_f4

    .line 1728
    if-nez p2, :cond_e9

    .line 1729
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 1734
    :cond_e9
    if-eqz p4, :cond_ef

    .line 1737
    invoke-direct {p0, v2, p3}, Lcom/android/server/wm/ActivityStack;->completePauseLocked(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1738
    return v2

    .line 1741
    :cond_ef
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityStack;->schedulePauseTimeout(Lcom/android/server/wm/ActivityRecord;)V

    .line 1742
    const/4 p1, 0x1

    return p1

    .line 1749
    :cond_f4
    if-nez p3, :cond_fb

    .line 1750
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 1752
    :cond_fb
    return v2
.end method

.method final stopActivityLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 10

    .line 3756
    const-string v0, "stopActivityLocked"

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x40000000  # 2.0f

    and-int/2addr v1, v2

    if-nez v1, :cond_15

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_31

    .line 3758
    :cond_15
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v1, :cond_31

    .line 3759
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v1

    if-nez v1, :cond_31

    .line 3761
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v6, "stop-no-history"

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 3765
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 3766
    return-void

    .line 3775
    :cond_31
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 3776
    const-string v1, "stopActivity"

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/ActivityStack;->adjustFocusedActivityStack(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 3777
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 3779
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_41
    iput-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    .line 3782
    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p1, v3, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3785
    iget-boolean v3, p1, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v3, :cond_4f

    .line 3786
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->setVisible(Z)V

    .line 3788
    :cond_4f
    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 3789
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 3788
    invoke-static {v1, v3, v4}, Lcom/android/server/am/EventLogTags;->writeAmStopActivity(IILjava/lang/String;)V

    .line 3790
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v1

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v5, p1, Lcom/android/server/wm/ActivityRecord;->visible:Z

    iget v6, p1, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    .line 3791
    invoke-static {v5, v6}, Landroid/app/servertransaction/StopActivityItem;->obtain(ZI)Landroid/app/servertransaction/StopActivityItem;

    move-result-object v5

    .line 3790
    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 3792
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 3793
    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->setSleeping(Z)V

    .line 3795
    :cond_7c
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x68

    invoke-virtual {v1, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3796
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2af8

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_8b} :catch_8c

    .line 3809
    goto :goto_a4

    .line 3797
    :catch_8c
    move-exception v1

    .line 3801
    const-string v3, "ActivityTaskManager"

    const-string v4, "Exception thrown during pause"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3803
    iput-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    .line 3805
    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3806
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-eqz v0, :cond_a4

    .line 3807
    const-string v0, "stop-except"

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/wm/ActivityStack;->destroyActivityLocked(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)Z

    .line 3811
    :cond_a4
    :goto_a4
    return-void
.end method

.method public supportsSplitScreenWindowingMode()Z
    .registers 3

    .line 2275
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 2276
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->supportsSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_14

    if-eqz v0, :cond_12

    .line 2277
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 2276
    :goto_15
    return v0
.end method

.method final switchUserLocked(I)V
    .registers 5

    .line 1473
    iget v0, p0, Lcom/android/server/wm/ActivityStack;->mCurrentUser:I

    if-ne v0, p1, :cond_5

    .line 1474
    return-void

    .line 1476
    :cond_5
    iput p1, p0, Lcom/android/server/wm/ActivityStack;->mCurrentUser:I

    .line 1479
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 1480
    const/4 v0, 0x0

    :goto_e
    if-ge v0, p1, :cond_2e

    .line 1481
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 1483
    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->okToShowLocked()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1486
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1487
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1488
    add-int/lit8 p1, p1, -0x1

    goto :goto_2d

    .line 1491
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    .line 1493
    :goto_2d
    goto :goto_e

    .line 1494
    :cond_2e
    return-void
.end method

.method taskForIdLocked(I)Lcom/android/server/wm/TaskRecord;
    .registers 5

    .line 1167
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    .line 1168
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 1169
    iget v2, v1, Lcom/android/server/wm/TaskRecord;->taskId:I

    if-ne v2, p1, :cond_17

    .line 1170
    return-object v1

    .line 1167
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1173
    :cond_1a
    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 5751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityStack{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5752
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5753
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5754
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " translucent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5755
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityStack;->isStackTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 5757
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tasks}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5751
    return-object v0
.end method

.method topActivityOccludesKeyguard()Z
    .registers 2

    .line 2262
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mTopActivityOccludesKeyguard:Z

    return v0
.end method

.method topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 1066
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method final topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;
    .registers 8

    .line 1124
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_3c

    .line 1125
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 1126
    iget v2, v1, Lcom/android/server/wm/TaskRecord;->taskId:I

    if-ne v2, p2, :cond_17

    .line 1127
    goto :goto_39

    .line 1129
    :cond_17
    iget-object v1, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1130
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1f
    if-ltz v2, :cond_39

    .line 1131
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1133
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v4, :cond_36

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eq p1, v4, :cond_36

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1134
    return-object v3

    .line 1130
    :cond_36
    add-int/lit8 v2, v2, -0x1

    goto :goto_1f

    .line 1124
    :cond_39
    :goto_39
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1138
    :cond_3c
    const/4 p1, 0x0

    return-object p1
.end method

.method topRunningActivityLocked(Z)Lcom/android/server/wm/ActivityRecord;
    .registers 5

    .line 1077
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_24

    .line 1078
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1079
    if-eqz v1, :cond_21

    if-eqz p1, :cond_20

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1080
    :cond_20
    return-object v1

    .line 1077
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1083
    :cond_24
    const/4 p1, 0x0

    return-object p1
.end method

.method topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 7

    .line 1101
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_39

    .line 1102
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 1103
    iget-object v1, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1104
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1a
    if-ltz v2, :cond_36

    .line 1105
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1106
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v4, :cond_33

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    if-nez v4, :cond_33

    if-eq v3, p1, :cond_33

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1107
    return-object v3

    .line 1104
    :cond_33
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 1101
    :cond_36
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1111
    :cond_39
    const/4 p1, 0x0

    return-object p1
.end method

.method topRunningNonOverlayTaskActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 6

    .line 1087
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_31

    .line 1088
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 1089
    iget-object v1, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1090
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1a
    if-ltz v2, :cond_2e

    .line 1091
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1092
    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v4, :cond_2b

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-nez v4, :cond_2b

    .line 1093
    return-object v3

    .line 1090
    :cond_2b
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 1087
    :cond_2e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1097
    :cond_31
    const/4 v0, 0x0

    return-object v0
.end method

.method final topTask()Lcom/android/server/wm/TaskRecord;
    .registers 3

    .line 1152
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1153
    if-lez v0, :cond_13

    .line 1154
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskRecord;

    return-object v0

    .line 1156
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method unhandledBackLocked()V
    .registers 8

    .line 5291
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 5293
    if-ltz v0, :cond_2c

    .line 5294
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskRecord;

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5295
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 5296
    if-ltz v1, :cond_2c

    .line 5297
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    const-string v5, "unhandled-back"

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 5301
    :cond_2c
    return-void
.end method

.method updateActivityApplicationInfoLocked(Landroid/content/pm/ApplicationInfo;)V
    .registers 9

    .line 1528
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1529
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1531
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_10
    if-ltz v2, :cond_3f

    .line 1532
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    iget-object v3, v3, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1533
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_22
    if-ltz v4, :cond_3c

    .line 1534
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 1536
    iget v6, v5, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v1, v6, :cond_39

    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 1537
    invoke-virtual {v5, p1}, Lcom/android/server/wm/ActivityRecord;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;)V

    .line 1533
    :cond_39
    add-int/lit8 v4, v4, -0x1

    goto :goto_22

    .line 1531
    :cond_3c
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 1541
    :cond_3f
    return-void
.end method

.method updateBoundsAllowed(Landroid/graphics/Rect;)Z
    .registers 4

    .line 1035
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mUpdateBoundsDeferred:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 1036
    return v1

    .line 1038
    :cond_6
    if-eqz p1, :cond_e

    .line 1039
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_13

    .line 1041
    :cond_e
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1043
    :goto_13
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStack;->mUpdateBoundsDeferredCalled:Z

    .line 1044
    const/4 p1, 0x0

    return p1
.end method

.method updateDisplayedBoundsAllowed(Landroid/graphics/Rect;)Z
    .registers 4

    .line 1048
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mUpdateBoundsDeferred:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 1049
    return v1

    .line 1051
    :cond_6
    if-eqz p1, :cond_e

    .line 1052
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mDeferredDisplayedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_13

    .line 1054
    :cond_e
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack;->mDeferredDisplayedBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1056
    :goto_13
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStack;->mUpdateDisplayedBoundsDeferredCalled:Z

    .line 1057
    const/4 p1, 0x0

    return p1
.end method

.method final updateLRUListLocked(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 1233
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 1234
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1235
    return v0
.end method

.method public updatePictureInPictureModeForPinnedStackAnimation(Landroid/graphics/Rect;Z)V
    .registers 8

    .line 5733
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5734
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v1

    if-nez v1, :cond_13

    .line 5735
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 5737
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 5738
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 5739
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->updatePictureInPictureMode(Lcom/android/server/wm/TaskRecord;Landroid/graphics/Rect;Z)V

    .line 5738
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 5742
    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_13 .. :try_end_2d} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5743
    return-void

    .line 5742
    :catchall_31
    move-exception p1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method willActivityBeVisibleLocked(Landroid/os/IBinder;)Z
    .registers 9

    .line 5161
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    const/4 v2, 0x0

    if-ltz v0, :cond_36

    .line 5162
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    iget-object v3, v3, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5163
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_1a
    if-ltz v4, :cond_33

    .line 5164
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 5165
    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-ne v6, p1, :cond_27

    .line 5166
    return v1

    .line 5168
    :cond_27
    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    if-eqz v6, :cond_30

    iget-boolean v5, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v5, :cond_30

    .line 5169
    return v2

    .line 5163
    :cond_30
    add-int/lit8 v4, v4, -0x1

    goto :goto_1a

    .line 5161
    :cond_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 5173
    :cond_36
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 5174
    if-nez p1, :cond_3d

    .line 5175
    return v2

    .line 5177
    :cond_3d
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_57

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "willActivityBeVisibleLocked: Returning false, would have returned true for r="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5179
    :cond_57
    iget-boolean p1, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/2addr p1, v1

    return p1
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 9

    .line 5790
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 5791
    const-wide v0, 0x10b00000001L

    invoke-super {p0, p1, v0, v1, p4}, Lcom/android/server/wm/ConfigurationContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 5792
    iget v0, p0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5793
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1e
    if-ltz v0, :cond_33

    .line 5794
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 5795
    const-wide v2, 0x20b00000003L

    invoke-virtual {v1, p1, v2, v3, p4}, Lcom/android/server/wm/TaskRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 5793
    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    .line 5797
    :cond_33
    iget-object p4, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz p4, :cond_3f

    .line 5798
    const-wide v0, 0x10b00000004L

    invoke-virtual {p4, p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5800
    :cond_3f
    const-wide v0, 0x10500000005L

    iget p4, p0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5801
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->matchParentBounds()Z

    move-result p4

    if-nez p4, :cond_5b

    .line 5802
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object p4

    .line 5803
    const-wide v0, 0x10b00000007L

    invoke-virtual {p4, p1, v0, v1}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5807
    :cond_5b
    const-wide v0, 0x10800000006L

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->matchParentBounds()Z

    move-result p4

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5808
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5809
    return-void
.end method
