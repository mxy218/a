.class public Lcom/android/server/wm/ActivityStack;
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

.field private static final mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

.field static final mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;


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

.field public mPerf:Landroid/util/BoostFramework;

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

.field private mWindowModeFrame:Lcom/android/server/wm/FlymeWindowModeFrame;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 452
    new-instance v0, Lcom/android/internal/app/ActivityTrigger;

    invoke-direct {v0}, Lcom/android/internal/app/ActivityTrigger;-><init>()V

    sput-object v0, Lcom/android/server/wm/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    .line 454
    new-instance v0, Lcom/android/server/wm/ActivityPluginDelegate;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityPluginDelegate;-><init>()V

    sput-object v0, Lcom/android/server/wm/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityDisplay;ILcom/android/server/wm/ActivityStackSupervisor;IIZ)V
    .registers 16
    .param p1, "display"  # Lcom/android/server/wm/ActivityDisplay;
    .param p2, "stackId"  # I
    .param p3, "supervisor"  # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p4, "windowingMode"  # I
    .param p5, "activityType"  # I
    .param p6, "onTop"  # Z

    .line 530
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    .line 343
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 350
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    .line 356
    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 363
    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 370
    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    .line 375
    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 383
    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 395
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mForceHidden:Z

    .line 400
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    .line 405
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    .line 406
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mDeferredDisplayedBounds:Landroid/graphics/Rect;

    .line 415
    iput v0, p0, Lcom/android/server/wm/ActivityStack;->mRestoreOverrideWindowingMode:I

    .line 417
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTmpRect:Landroid/graphics/Rect;

    .line 418
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    .line 419
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTmpOptions:Landroid/app/ActivityOptions;

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    .line 531
    iput-object p3, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 532
    iget-object v0, p3, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 533
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 534
    new-instance v0, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;

    iget-object v1, p3, Lcom/android/server/wm/ActivityStackSupervisor;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;-><init>(Lcom/android/server/wm/ActivityStack;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    .line 535
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 536
    iput p2, p0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    .line 537
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityStack;->mCurrentUser:I

    .line 540
    iget v0, p1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    iput v0, p0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    .line 541
    invoke-virtual {p0, p5}, Lcom/android/server/wm/ActivityStack;->setActivityType(I)V

    .line 542
    iget v0, p1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p6, v1}, Lcom/android/server/wm/ActivityStack;->createTaskStack(IZLandroid/graphics/Rect;)V

    .line 543
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p0

    move v3, p4

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZZZZZ)V

    .line 546
    if-eqz p6, :cond_9a

    const v0, 0x7fffffff

    goto :goto_9c

    :cond_9a
    const/high16 v0, -0x80000000

    :goto_9c
    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/ActivityDisplay;->addChild(Lcom/android/server/wm/ActivityStack;I)V

    .line 548
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/FlymeWindowManagerInternal;->onActivityStackCreate(Lcom/android/server/wm/ActivityStack;)V

    .line 550
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/wm/ActivityStack;
    .param p1, "x1"  # Lcom/android/server/wm/WindowProcessController;
    .param p2, "x2"  # Ljava/lang/String;

    .line 195
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityStack;->destroyActivitiesLocked(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    return-void
.end method

.method private adjustFocusToNextFocusableStack(Ljava/lang/String;Z)Lcom/android/server/wm/ActivityStack;
    .registers 7
    .param p1, "reason"  # Ljava/lang/String;
    .param p2, "allowFocusSelf"  # Z

    .line 3886
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 3887
    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/RootActivityContainer;->getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 3888
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " adjustFocusToNextFocusableStack"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3889
    .local v1, "myReason":Ljava/lang/String;
    if-nez v0, :cond_1d

    .line 3890
    const/4 v2, 0x0

    return-object v2

    .line 3893
    :cond_1d
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 3895
    .local v2, "top":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_35

    if-eqz v2, :cond_2d

    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v3, :cond_35

    .line 3898
    :cond_2d
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityDisplay;->moveHomeActivityToTop(Ljava/lang/String;)V

    .line 3899
    return-object v0

    .line 3902
    :cond_35
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 3903
    return-object v0
.end method

.method private adjustFocusedActivityStack(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .registers 9
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reason"  # Ljava/lang/String;

    .line 3826
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/RootActivityContainer;->isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v0

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v0, p1, :cond_f

    if-eqz v0, :cond_f

    goto :goto_7a

    .line 3831
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3832
    .local v0, "next":Lcom/android/server/wm/ActivityRecord;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " adjustFocus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3834
    .local v1, "myReason":Ljava/lang/String;
    if-ne v0, p1, :cond_32

    .line 3835
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 3836
    .local v2, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_31

    .line 3837
    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    .line 3839
    :cond_31
    return-void

    .line 3842
    .end local v2  # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_32
    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 3844
    return-void

    .line 3849
    :cond_3b
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    .line 3851
    .local v2, "task":Lcom/android/server/wm/TaskRecord;
    if-eqz v2, :cond_63

    .line 3856
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 3857
    .local v3, "nextFocusableStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_5b

    .line 3858
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 3859
    .local v4, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_5a

    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootActivityContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-ne v4, v5, :cond_5a

    .line 3863
    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5, v4, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 3865
    :cond_5a
    return-void

    .line 3869
    .end local v4  # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_5b
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/wm/ActivityDisplay;->moveHomeActivityToTop(Ljava/lang/String;)V

    .line 3870
    return-void

    .line 3852
    .end local v3  # "nextFocusableStack":Lcom/android/server/wm/ActivityStack;
    :cond_63
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activity no longer associated with task:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3828
    .end local v0  # "next":Lcom/android/server/wm/ActivityRecord;
    .end local v1  # "myReason":Ljava/lang/String;
    .end local v2  # "task":Lcom/android/server/wm/TaskRecord;
    :cond_7a
    :goto_7a
    return-void
.end method

.method private bottomTask()Lcom/android/server/wm/TaskRecord;
    .registers 3

    .line 1195
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1196
    const/4 v0, 0x0

    return-object v0

    .line 1198
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskRecord;

    return-object v0
.end method

.method private canEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .registers 8
    .param p1, "pipCandidate"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "toFrontTask"  # Lcom/android/server/wm/TaskRecord;
    .param p3, "toFrontActivity"  # Lcom/android/server/wm/ActivityRecord;
    .param p4, "opts"  # Landroid/app/ActivityOptions;

    .line 3449
    const/4 v0, 0x0

    if-eqz p4, :cond_a

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->disallowEnterPictureInPictureWhileLaunching()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3451
    return v0

    .line 3453
    :cond_a
    if-eqz p1, :cond_29

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_29

    .line 3457
    :cond_13
    if-eqz p2, :cond_1a

    .line 3458
    invoke-virtual {p2}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    goto :goto_1e

    :cond_1a
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 3459
    .local v1, "targetStack":Lcom/android/server/wm/ActivityStack;
    :goto_1e
    if-eqz v1, :cond_27

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeAssistant()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 3461
    return v0

    .line 3463
    :cond_27
    const/4 v0, 0x1

    return v0

    .line 3455
    .end local v1  # "targetStack":Lcom/android/server/wm/ActivityStack;
    :cond_29
    :goto_29
    return v0
.end method

.method private checkTranslucentActivityWaiting(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "top"  # Lcom/android/server/wm/ActivityRecord;

    .line 2448
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eq v0, p1, :cond_1a

    .line 2449
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2450
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_13

    .line 2452
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 2453
    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 2455
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2457
    :cond_1a
    return-void
.end method

.method private cleanUpActivityLocked(Lcom/android/server/wm/ActivityRecord;ZZ)V
    .registers 10
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "cleanServices"  # Z
    .param p3, "setState"  # Z

    .line 4559
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->onActivityRemovedFromStack(Lcom/android/server/wm/ActivityRecord;)V

    .line 4561
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    .line 4562
    iput-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->frozenBeforeDestroy:Z

    .line 4564
    const/4 v1, 0x0

    if-eqz p3, :cond_4b

    .line 4565
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    const-string v3, "ActivityTaskManager"

    if-eqz v2, :cond_2a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moving to DESTROYED: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (cleaning up)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4566
    :cond_2a
    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v4, "cleanupActivityLocked"

    invoke-virtual {p1, v2, v4}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4567
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_APP:Z

    if-eqz v2, :cond_49

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clearing app during cleanUp for activity "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4568
    :cond_49
    iput-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 4572
    :cond_4b
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->cleanupActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 4576
    iget-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_7c

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz v2, :cond_7c

    .line 4577
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 4578
    .local v3, "apr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    .line 4579
    .local v4, "rec":Lcom/android/server/am/PendingIntentRecord;
    if-eqz v4, :cond_79

    .line 4580
    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    invoke-virtual {v5, v4, v0}, Lcom/android/server/am/PendingIntentController;->cancelIntentSender(Lcom/android/server/am/PendingIntentRecord;Z)V

    .line 4582
    .end local v3  # "apr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v4  # "rec":Lcom/android/server/am/PendingIntentRecord;
    :cond_79
    goto :goto_5e

    .line 4583
    :cond_7a
    iput-object v1, p1, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 4586
    :cond_7c
    if-eqz p2, :cond_81

    .line 4587
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 4591
    :cond_81
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 4594
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->notifyAppRelaunchesCleared(Landroid/os/IBinder;)V

    .line 4595
    return-void
.end method

.method private cleanUpActivityServicesLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 4662
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-nez v0, :cond_5

    .line 4663
    return-void

    .line 4666
    :cond_5
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->disconnectActivityFromServices()V

    .line 4667
    return-void
.end method

.method private clearLaunchTime(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 1552
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1553
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 1554
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_18

    .line 1559
    :cond_15
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/server/wm/ActivityRecord;->startFlag:I

    .line 1562
    :goto_18
    return-void
.end method

.method private completePauseLocked(ZLcom/android/server/wm/ActivityRecord;)V
    .registers 14
    .param p1, "resumeNext"  # Z
    .param p2, "resuming"  # Lcom/android/server/wm/ActivityRecord;

    .line 1872
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1873
    .local v0, "prev":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    const-string v2, "ActivityTaskManager"

    if-eqz v1, :cond_1c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Complete pause: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    :cond_1c
    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_e1

    .line 1876
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->setWillCloseOrEnterPip(Z)V

    .line 1877
    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v4

    .line 1878
    .local v4, "wasStopping":Z
    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v6, "completePausedLocked"

    invoke-virtual {v0, v5, v6}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1879
    iget-boolean v5, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v7, 0x1

    if-eqz v5, :cond_54

    .line 1880
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v5, :cond_4d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Executing finish of activity: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    :cond_4d
    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2, v3, v6}, Lcom/android/server/wm/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/wm/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto/16 :goto_da

    .line 1883
    :cond_54
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v5

    if-eqz v5, :cond_c1

    .line 1884
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v5, :cond_84

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Enqueue pending stop if needed: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " wasStopping="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " visible="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v0, Lcom/android/server/wm/ActivityRecord;->visible:Z

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    :cond_84
    iget-boolean v5, v0, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-eqz v5, :cond_a6

    .line 1888
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v5, :cond_a0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Re-launching after pause: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    :cond_a0
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->preserveWindowOnDeferredRelaunch:Z

    invoke-virtual {v0, v3, v2}, Lcom/android/server/wm/ActivityRecord;->relaunchActivityLocked(ZZ)V

    goto :goto_da

    .line 1891
    :cond_a6
    if-eqz v4, :cond_ae

    .line 1895
    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0, v2, v6}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    goto :goto_da

    .line 1896
    :cond_ae
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v2, :cond_b8

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v2

    if-eqz v2, :cond_da

    .line 1898
    :cond_b8
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->setDeferHidingClient(Z)V

    .line 1901
    const-string v2, "completePauseLocked"

    invoke-virtual {p0, v0, v7, v3, v2}, Lcom/android/server/wm/ActivityStack;->addToStopping(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V

    goto :goto_da

    .line 1905
    :cond_c1
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v5, :cond_d9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App died during pause, not stopping: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    :cond_d9
    const/4 v0, 0x0

    .line 1911
    :cond_da
    :goto_da
    if-eqz v0, :cond_df

    .line 1912
    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 1914
    :cond_df
    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1917
    .end local v4  # "wasStopping":Z
    :cond_e1
    if-eqz p1, :cond_107

    .line 1918
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1919
    .local v2, "topStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v4

    if-nez v4, :cond_f5

    .line 1920
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v4, v2, v0, v1}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_107

    .line 1922
    :cond_f5
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->checkReadyForSleep()V

    .line 1923
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1924
    .local v1, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_102

    if-eqz v0, :cond_107

    if-eq v1, v0, :cond_107

    .line 1929
    :cond_102
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 1934
    .end local v1  # "top":Lcom/android/server/wm/ActivityRecord;
    .end local v2  # "topStack":Lcom/android/server/wm/ActivityStack;
    :cond_107
    :goto_107
    if-eqz v0, :cond_14c

    .line 1935
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 1937
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v1

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_14a

    iget-wide v1, v0, Lcom/android/server/wm/ActivityRecord;->cpuTimeAtResume:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_14a

    .line 1938
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getCpuTime()J

    move-result-wide v1

    iget-wide v6, v0, Lcom/android/server/wm/ActivityRecord;->cpuTimeAtResume:J

    sub-long/2addr v1, v6

    .line 1939
    .local v1, "diff":J
    cmp-long v6, v1, v4

    if-lez v6, :cond_14a

    .line 1940
    sget-object v6, Lcom/android/server/wm/-$$Lambda$1636dquQO0UvkFayOGf_gceB4iw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$1636dquQO0UvkFayOGf_gceB4iw;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v8, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1943
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1944
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 1940
    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v6

    .line 1945
    .local v6, "r":Ljava/lang/Runnable;
    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v7, v6}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 1948
    .end local v1  # "diff":J
    .end local v6  # "r":Ljava/lang/Runnable;
    :cond_14a
    iput-wide v4, v0, Lcom/android/server/wm/ActivityRecord;->cpuTimeAtResume:J

    .line 1954
    :cond_14c
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    if-nez v1, :cond_162

    .line 1955
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    if-eqz v1, :cond_16f

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->hasPinnedStack()Z

    move-result v1

    if-eqz v1, :cond_16f

    .line 1956
    :cond_162
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 1957
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-boolean v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    .line 1960
    :cond_16f
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1, p2, v3, v3}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1961
    return-void
.end method

.method private containsActivityFromStack(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .line 1672
    .local p1, "rs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1673
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    if-ne v2, p0, :cond_18

    .line 1674
    const/4 v0, 0x1

    return v0

    .line 1676
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_18
    goto :goto_4

    .line 1677
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method private destroyActivitiesLocked(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    .registers 12
    .param p1, "owner"  # Lcom/android/server/wm/WindowProcessController;
    .param p2, "reason"  # Ljava/lang/String;

    .line 4676
    const/4 v0, 0x0

    .line 4677
    .local v0, "lastIsOpaque":Z
    const/4 v1, 0x0

    .line 4678
    .local v1, "activityRemoved":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "taskNdx":I
    :goto_a
    if-ltz v2, :cond_8d

    .line 4679
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskRecord;

    iget-object v4, v4, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4680
    .local v4, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    .local v5, "activityNdx":I
    :goto_1b
    if-ltz v5, :cond_89

    .line 4681
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    .line 4682
    .local v6, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v7, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v7, :cond_28

    .line 4683
    goto :goto_86

    .line 4685
    :cond_28
    iget-boolean v7, v6, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    if-eqz v7, :cond_2d

    .line 4686
    const/4 v0, 0x1

    .line 4688
    :cond_2d
    if-eqz p1, :cond_34

    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v7, p1, :cond_34

    .line 4689
    goto :goto_86

    .line 4691
    :cond_34
    if-nez v0, :cond_37

    .line 4692
    goto :goto_86

    .line 4694
    :cond_37
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isDestroyable()Z

    move-result v7

    if-eqz v7, :cond_86

    .line 4695
    sget-boolean v7, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v7, :cond_7f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Destroying "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " in state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4696
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " resumed="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " pausing="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " for reason "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4695
    const-string v8, "ActivityTaskManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4699
    :cond_7f
    invoke-virtual {p0, v6, v3, p2}, Lcom/android/server/wm/ActivityStack;->destroyActivityLocked(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_86

    .line 4700
    const/4 v1, 0x1

    .line 4680
    .end local v6  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_86
    :goto_86
    add-int/lit8 v5, v5, -0x1

    goto :goto_1b

    .line 4678
    .end local v4  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v5  # "activityNdx":I
    :cond_89
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_a

    .line 4705
    .end local v2  # "taskNdx":I
    :cond_8d
    if-eqz v1, :cond_94

    .line 4706
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 4708
    :cond_94
    return-void
.end method

.method private finishActivityResultsLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;)V
    .registers 12
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "resultCode"  # I
    .param p3, "resultData"  # Landroid/content/Intent;

    .line 4116
    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 4117
    .local v6, "resultTo":Lcom/android/server/wm/ActivityRecord;
    const-string v0, "ActivityTaskManager"

    const/4 v7, 0x0

    if-eqz v6, :cond_7c

    .line 4118
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    if-eqz v1, :cond_43

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding result to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " who="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " req="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " res="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4121
    :cond_43
    iget v0, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eq v0, v1, :cond_50

    .line 4122
    if-eqz p3, :cond_50

    .line 4123
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p3, v0}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    .line 4126
    :cond_50
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-lez v0, :cond_6e

    .line 4127
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 4129
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v4

    iget v5, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 4127
    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionFromIntent(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/uri/UriPermissionOwner;I)V

    .line 4131
    :cond_6e
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    move-object v0, v6

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityRecord;->addResultLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 4132
    iput-object v7, p1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    goto :goto_94

    .line 4134
    :cond_7c
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    if-eqz v1, :cond_94

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No result destination from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4139
    :cond_94
    :goto_94
    iput-object v7, p1, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 4140
    iput-object v7, p1, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 4141
    iput-object v7, p1, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 4142
    iput-object v7, p1, Lcom/android/server/wm/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 4143
    return-void
.end method

.method private insertTaskAtBottom(Lcom/android/server/wm/TaskRecord;)V
    .registers 4
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;

    .line 3282
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3283
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/wm/TaskRecord;ILcom/android/server/wm/ActivityRecord;)I

    move-result v0

    .line 3284
    .local v0, "position":I
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3285
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/ActivityStack;->updateTaskMovement(Lcom/android/server/wm/TaskRecord;Z)V

    .line 3286
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->positionChildWindowContainerAtBottom(Lcom/android/server/wm/TaskRecord;)V

    .line 3287
    return-void
.end method

.method private insertTaskAtPosition(Lcom/android/server/wm/TaskRecord;I)V
    .registers 5
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "position"  # I

    .line 3254
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lt p2, v0, :cond_d

    .line 3255
    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/ActivityStack;->insertTaskAtTop(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 3256
    return-void

    .line 3257
    :cond_d
    if-gtz p2, :cond_13

    .line 3258
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStack;->insertTaskAtBottom(Lcom/android/server/wm/TaskRecord;)V

    .line 3259
    return-void

    .line 3261
    :cond_13
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/wm/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/wm/TaskRecord;ILcom/android/server/wm/ActivityRecord;)I

    move-result p2

    .line 3262
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3263
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3264
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_2c

    .line 3266
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/TaskStack;->positionChildAt(Lcom/android/server/wm/Task;I)V

    .line 3268
    :cond_2c
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ActivityStack;->updateTaskMovement(Lcom/android/server/wm/TaskRecord;Z)V

    .line 3269
    return-void
.end method

.method private insertTaskAtTop(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;)V
    .registers 5
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "starting"  # Lcom/android/server/wm/ActivityRecord;

    .line 3273
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3275
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/wm/TaskRecord;ILcom/android/server/wm/ActivityRecord;)I

    move-result v0

    .line 3276
    .local v0, "position":I
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3277
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/ActivityStack;->updateTaskMovement(Lcom/android/server/wm/TaskRecord;Z)V

    .line 3278
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->positionChildWindowContainerAtTop(Lcom/android/server/wm/TaskRecord;)V

    .line 3279
    return-void
.end method

.method private isATopFinishingTask(Lcom/android/server/wm/TaskRecord;)Z
    .registers 7
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;

    .line 3811
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    const/4 v2, 0x0

    if-ltz v0, :cond_20

    .line 3812
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    .line 3813
    .local v3, "current":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 3814
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_1a

    .line 3816
    return v2

    .line 3818
    :cond_1a
    if-ne v3, p1, :cond_1d

    .line 3819
    return v1

    .line 3811
    .end local v3  # "current":Lcom/android/server/wm/TaskRecord;
    .end local v4  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3822
    .end local v0  # "i":I
    :cond_20
    return v2
.end method

.method private isBehindWindowMode(I)Z
    .registers 3
    .param p1, "windowingMode"  # I

    .line 5977
    const/4 v0, 0x5

    if-eq p1, v0, :cond_9

    const/4 v0, 0x6

    if-ne p1, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method private isFullScreenWindowMode(I)Z
    .registers 5
    .param p1, "windowingMode"  # I

    .line 5981
    const/4 v0, 0x1

    if-eq p1, v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_d

    if-ne p1, v2, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :cond_e
    :goto_e
    return v0
.end method

.method private isTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "topFocusedActivity"  # Lcom/android/server/wm/ActivityRecord;

    .line 3468
    if-eqz p2, :cond_e

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private static isTransientWindowingMode(I)Z
    .registers 2
    .param p0, "windowingMode"  # I

    .line 714
    const/4 v0, 0x3

    if-eq p0, v0, :cond_9

    const/4 v0, 0x4

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method static logStartActivity(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;)V
    .registers 8
    .param p0, "tag"  # I
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "task"  # Lcom/android/server/wm/TaskRecord;

    .line 5207
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 5208
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 5210
    .local v1, "strData":Ljava/lang/String;
    :goto_e
    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 5211
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p2, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 5212
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 5213
    invoke-virtual {v4}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    aput-object v1, v2, v3

    const/4 v3, 0x7

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 5210
    invoke-static {p0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5214
    return-void
.end method

.method private makeInvisible(Lcom/android/server/wm/ActivityRecord;)V
    .registers 10
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 2490
    const-string v0, "makeInvisible"

    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->visible:Z

    const-string v2, "ActivityTaskManager"

    if-nez v1, :cond_21

    .line 2491
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already invisible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    :cond_20
    return-void

    .line 2496
    :cond_21
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v1, :cond_45

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Making invisible: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    :cond_45
    const/4 v1, 0x1

    :try_start_46
    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v3

    .line 2507
    .local v3, "canEnterPictureInPicture":Z
    const/4 v4, 0x0

    if-eqz v3, :cond_5b

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 2508
    invoke-virtual {p1, v5, v6, v7}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v5

    if-nez v5, :cond_5b

    move v5, v1

    goto :goto_5c

    :cond_5b
    move v5, v4

    .line 2509
    .local v5, "deferHidingClient":Z
    :goto_5c
    invoke-virtual {p1, v5}, Lcom/android/server/wm/ActivityRecord;->setDeferHidingClient(Z)V

    .line 2510
    invoke-virtual {p1, v4}, Lcom/android/server/wm/ActivityRecord;->setVisible(Z)V

    .line 2512
    sget-object v6, Lcom/android/server/wm/ActivityStack$1;->$SwitchMap$com$android$server$wm$ActivityStack$ActivityState:[I

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack$ActivityState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_ca

    goto :goto_ac

    .line 2531
    :pswitch_72  #0x3, 0x4, 0x5, 0x6
    invoke-virtual {p0, p1, v1, v3, v0}, Lcom/android/server/wm/ActivityStack;->addToStopping(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V

    .line 2533
    goto :goto_ac

    .line 2515
    :pswitch_76  #0x1, 0x2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 2516
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_94

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheduling invisibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    :cond_94
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 2519
    invoke-static {v4}, Landroid/app/servertransaction/WindowVisibilityItem;->obtain(Z)Landroid/app/servertransaction/WindowVisibilityItem;

    move-result-object v7

    .line 2518
    invoke-virtual {v0, v1, v6, v7}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 2524
    :cond_a9
    iput-boolean v4, p1, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_ab} :catch_ad

    .line 2525
    nop

    .line 2541
    .end local v3  # "canEnterPictureInPicture":Z
    .end local v5  # "deferHidingClient":Z
    :goto_ac
    goto :goto_c8

    .line 2538
    :catch_ad
    move-exception v0

    .line 2540
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown making hidden: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2542
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_c8
    return-void

    nop

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_76  #00000001
        :pswitch_76  #00000002
        :pswitch_72  #00000003
        :pswitch_72  #00000004
        :pswitch_72  #00000005
        :pswitch_72  #00000006
    .end packed-switch
.end method

.method private makeVisibleAndRestartIfNeeded(Lcom/android/server/wm/ActivityRecord;IZZLcom/android/server/wm/ActivityRecord;)Z
    .registers 11
    .param p1, "starting"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"  # I
    .param p3, "isTop"  # Z
    .param p4, "andResume"  # Z
    .param p5, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 2465
    const/4 v0, 0x0

    if-nez p3, :cond_7

    iget-boolean v1, p5, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v1, :cond_5b

    .line 2468
    :cond_7
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    const-string v2, "ActivityTaskManager"

    if-eqz v1, :cond_21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start and freeze screen for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2469
    :cond_21
    if-eq p5, p1, :cond_28

    .line 2470
    iget-object v1, p5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p5, v1, p2}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/wm/WindowProcessController;I)V

    .line 2472
    :cond_28
    iget-boolean v1, p5, Lcom/android/server/wm/ActivityRecord;->visible:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_31

    iget-boolean v1, p5, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_4c

    .line 2473
    :cond_31
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v1, :cond_49

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting and making visible: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    :cond_49
    invoke-virtual {p5, v3}, Lcom/android/server/wm/ActivityRecord;->setVisible(Z)V

    .line 2476
    :cond_4c
    if-eq p5, p1, :cond_5b

    .line 2480
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    if-eqz p4, :cond_57

    iget-boolean v2, p5, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-nez v2, :cond_57

    move v0, v3

    :cond_57
    invoke-virtual {v1, p5, v0, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 2482
    return v3

    .line 2485
    :cond_5b
    return v0
.end method

.method private postAddTask(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityStack;Z)V
    .registers 7
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "prevStack"  # Lcom/android/server/wm/ActivityStack;
    .param p3, "schedulePictureInPictureModeChange"  # Z

    .line 5782
    if-eqz p3, :cond_a

    if-eqz p2, :cond_a

    .line 5783
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityStack;)V

    goto :goto_19

    .line 5784
    :cond_a
    iget-object v0, p1, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_19

    .line 5786
    :try_start_e
    iget-object v0, p1, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v1, p1, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    iget v2, p1, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-interface {v0, v1, v2}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_18

    .line 5788
    goto :goto_19

    .line 5787
    :catch_18
    move-exception v0

    .line 5790
    :cond_19
    :goto_19
    return-void
.end method

.method private preAddTask(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;Z)Lcom/android/server/wm/ActivityStack;
    .registers 6
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "reason"  # Ljava/lang/String;
    .param p3, "toTop"  # Z

    .line 5767
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 5768
    .local v0, "prevStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_11

    if-eq v0, p0, :cond_11

    .line 5769
    nop

    .line 5770
    if-eqz p3, :cond_d

    const/4 v1, 0x2

    goto :goto_e

    :cond_d
    const/4 v1, 0x1

    .line 5769
    :goto_e
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/wm/ActivityStack;->removeTask(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;I)V

    .line 5772
    :cond_11
    return-object v0
.end method

.method private prepareActivityHideTransitionAnimation(Lcom/android/server/wm/ActivityRecord;I)V
    .registers 5
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "transit"  # I

    .line 4254
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 4255
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 4256
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 4257
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 4258
    return-void
.end method

.method private removeActivityFromHistoryLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .registers 15
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reason"  # Ljava/lang/String;

    .line 4606
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/wm/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;)V

    .line 4607
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->makeFinishingLocked()V

    .line 4608
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    const-string v3, "ActivityTaskManager"

    if-eqz v2, :cond_2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing activity "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from stack callers="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    .line 4609
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4608
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4611
    :cond_2f
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->takeFromHistory()V

    .line 4612
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 4613
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v2, :cond_52

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moving to DESTROYED: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " (removed from history)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4615
    :cond_52
    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v4, "removeActivityFromHistoryLocked"

    invoke-virtual {p1, v2, v4}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4616
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_APP:Z

    if-eqz v2, :cond_71

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clearing app during remove for activity "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4617
    :cond_71
    iput-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 4618
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->removeWindowContainer()V

    .line 4619
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 4620
    .local v0, "task":Lcom/android/server/wm/TaskRecord;
    if-eqz v0, :cond_81

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskRecord;->removeActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    goto :goto_82

    :cond_81
    move v2, v1

    .line 4623
    .local v2, "lastActivity":Z
    :goto_82
    if-eqz v0, :cond_89

    .line 4624
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskRecord;->onlyHasTaskOverlayActivities(Z)Z

    move-result v4

    goto :goto_8a

    :cond_89
    move v4, v1

    .line 4626
    .local v4, "onlyHasTaskOverlays":Z
    :goto_8a
    if-nez v2, :cond_8e

    if-eqz v4, :cond_c0

    .line 4627
    :cond_8e
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v5, :cond_ae

    .line 4628
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeActivityFromHistoryLocked: last activity removed from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " onlyHasTaskOverlays="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4636
    :cond_ae
    if-eqz v4, :cond_bb

    .line 4644
    iget-object v6, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v7, v0, Lcom/android/server/wm/TaskRecord;->taskId:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v11, p2

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTaskByIdLocked(IZZZLjava/lang/String;)Z

    .line 4650
    :cond_bb
    if-eqz v2, :cond_c0

    .line 4651
    invoke-virtual {p0, v0, p2, v1}, Lcom/android/server/wm/ActivityStack;->removeTask(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;I)V

    .line 4654
    :cond_c0
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 4655
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->removeUriPermissionsLocked()V

    .line 4656
    return-void
.end method

.method private removeFromDisplay()V
    .registers 3

    .line 953
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 954
    .local v0, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v0, :cond_9

    .line 955
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityDisplay;->removeChild(Lcom/android/server/wm/ActivityStack;)V

    .line 957
    :cond_9
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    .line 958
    return-void
.end method

.method private removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    .registers 9
    .param p2, "app"  # Lcom/android/server/wm/WindowProcessController;
    .param p3, "listName"  # Ljava/lang/String;
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

    .line 4903
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4904
    .local v0, "i":I
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    const-string v2, "ActivityTaskManager"

    if-eqz v1, :cond_33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing app "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from list "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " entries"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4906
    :cond_33
    :goto_33
    if-lez v0, :cond_71

    .line 4907
    add-int/lit8 v0, v0, -0x1

    .line 4908
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 4909
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v3, :cond_5d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Record #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4910
    :cond_5d
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v3, p2, :cond_70

    .line 4911
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v3, :cond_6a

    const-string v3, "---> REMOVING this entry!"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4912
    :cond_6a
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4913
    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 4915
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_70
    goto :goto_33

    .line 4916
    :cond_71
    return-void
.end method

.method private removeHistoryRecordsForAppLocked(Lcom/android/server/wm/WindowProcessController;)Z
    .registers 22
    .param p1, "app"  # Lcom/android/server/wm/WindowProcessController;

    .line 4919
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    const-string v3, "mLRUActivities"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/wm/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    .line 4920
    iget-object v2, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    const-string v3, "mStoppingActivities"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/wm/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    .line 4922
    iget-object v2, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string v3, "mGoingToSleepActivities"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/wm/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    .line 4924
    iget-object v2, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const-string v3, "mFinishingActivities"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/wm/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    .line 4927
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowProcessController;->isRemoved()Z

    move-result v2

    .line 4928
    .local v2, "isProcessRemoved":Z
    if-eqz v2, :cond_2f

    .line 4932
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowProcessController;->makeFinishingForProcessRemoved()V

    .line 4935
    :cond_2f
    const/4 v3, 0x0

    .line 4938
    .local v3, "hasVisibleActivities":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->numActivities()I

    move-result v4

    .line 4939
    .local v4, "i":I
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    const-string v6, "ActivityTaskManager"

    if-eqz v5, :cond_5b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing app "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " from history with "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " entries"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4941
    :cond_5b
    iget-object v5, v0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    .local v5, "taskNdx":I
    :goto_63
    if-ltz v5, :cond_20a

    .line 4942
    iget-object v8, v0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/TaskRecord;

    iget-object v8, v8, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4943
    .local v8, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    iget-object v9, v0, Lcom/android/server/wm/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 4944
    iget-object v9, v0, Lcom/android/server/wm/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4946
    :goto_79
    iget-object v9, v0, Lcom/android/server/wm/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_206

    .line 4947
    iget-object v9, v0, Lcom/android/server/wm/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v7

    .line 4948
    .local v9, "targetIndex":I
    iget-object v10, v0, Lcom/android/server/wm/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/ActivityRecord;

    .line 4949
    .local v10, "r":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v11, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v11, :cond_ba

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Record #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ": app="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4952
    :cond_ba
    iget-object v11, v10, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v11, v1, :cond_204

    .line 4953
    iget-boolean v11, v10, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v11, :cond_c3

    .line 4954
    const/4 v3, 0x1

    .line 4957
    :cond_c3
    iget v11, v10, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    const/4 v12, 0x3

    const/4 v13, 0x2

    if-eq v11, v7, :cond_cd

    iget v11, v10, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    if-ne v11, v13, :cond_d7

    :cond_cd
    iget v11, v10, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    if-ge v11, v12, :cond_d7

    iget-boolean v11, v10, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v11, :cond_d7

    .line 4963
    const/4 v11, 0x0

    .local v11, "remove":Z
    goto :goto_107

    .line 4964
    .end local v11  # "remove":Z
    :cond_d7
    iget-boolean v11, v10, Lcom/android/server/wm/ActivityRecord;->haveState:Z

    if-nez v11, :cond_e7

    iget-boolean v11, v10, Lcom/android/server/wm/ActivityRecord;->stateNotNeeded:Z

    if-nez v11, :cond_e7

    sget-object v11, Lcom/android/server/wm/ActivityStack$ActivityState;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 4965
    invoke-virtual {v10, v11}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v11

    if-eqz v11, :cond_eb

    :cond_e7
    iget-boolean v11, v10, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v11, :cond_ed

    .line 4968
    :cond_eb
    const/4 v11, 0x1

    .restart local v11  # "remove":Z
    goto :goto_107

    .line 4969
    .end local v11  # "remove":Z
    :cond_ed
    iget-boolean v11, v10, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v11, :cond_106

    iget v11, v10, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    if-le v11, v13, :cond_106

    iget-wide v14, v10, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    .line 4970
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    const-wide/32 v18, 0xea60

    sub-long v16, v16, v18

    cmp-long v11, v14, v16

    if-lez v11, :cond_106

    .line 4976
    const/4 v11, 0x1

    .restart local v11  # "remove":Z
    goto :goto_107

    .line 4979
    .end local v11  # "remove":Z
    :cond_106
    const/4 v11, 0x0

    .line 4981
    .restart local v11  # "remove":Z
    :goto_107
    if-eqz v11, :cond_1b4

    .line 4982
    sget-boolean v14, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    const/4 v15, 0x5

    if-nez v14, :cond_112

    sget-boolean v14, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v14, :cond_164

    :cond_112
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Removing activity "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " from stack at "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ": haveState="

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v10, Lcom/android/server/wm/ActivityRecord;->haveState:Z

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " stateNotNeeded="

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v10, Lcom/android/server/wm/ActivityRecord;->stateNotNeeded:Z

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " finishing="

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, v10, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " state="

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4987
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " callers="

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 4982
    invoke-static {v6, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4988
    :cond_164
    iget-boolean v12, v10, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v12, :cond_16a

    if-eqz v2, :cond_1fa

    .line 4989
    :cond_16a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Force removing "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ": app died, no saved state"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4990
    new-array v14, v15, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget v12, v10, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 4991
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v14, v15

    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v14, v7

    .line 4992
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v12

    iget v12, v12, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v14, v13

    iget-object v12, v10, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/4 v13, 0x3

    aput-object v12, v14, v13

    const/4 v12, 0x4

    const-string v13, "proc died without state saved"

    aput-object v13, v14, v12

    .line 4990
    const/16 v12, 0x7531

    invoke-static {v12, v14}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_1fa

    .line 4998
    :cond_1b4
    sget-boolean v12, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL:Z

    if-eqz v12, :cond_1bd

    const-string v12, "Keeping entry, setting app to null"

    invoke-static {v6, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4999
    :cond_1bd
    sget-boolean v12, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_APP:Z

    if-eqz v12, :cond_1d5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Clearing app during removeHistory for activity "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5001
    :cond_1d5
    const/4 v12, 0x0

    iput-object v12, v10, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 5006
    iget-boolean v13, v10, Lcom/android/server/wm/ActivityRecord;->visible:Z

    iput-boolean v13, v10, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    .line 5007
    iget-boolean v13, v10, Lcom/android/server/wm/ActivityRecord;->haveState:Z

    if-nez v13, :cond_1fa

    .line 5008
    sget-boolean v13, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SAVED_STATE:Z

    if-eqz v13, :cond_1f8

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "App died, clearing saved state of "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5010
    :cond_1f8
    iput-object v12, v10, Lcom/android/server/wm/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 5013
    :cond_1fa
    :goto_1fa
    invoke-direct {v0, v10, v7, v7}, Lcom/android/server/wm/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 5014
    if-eqz v11, :cond_204

    .line 5015
    const-string v12, "appDied"

    invoke-direct {v0, v10, v12}, Lcom/android/server/wm/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 5018
    .end local v9  # "targetIndex":I
    .end local v10  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v11  # "remove":Z
    :cond_204
    goto/16 :goto_79

    .line 4941
    .end local v8  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    :cond_206
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_63

    .line 5021
    .end local v5  # "taskNdx":I
    :cond_20a
    return v3
.end method

.method private removeTimeoutsForActivityLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 4598
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 4599
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4600
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4601
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4602
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->finishLaunchTickingLocked()V

    .line 4603
    return-void
.end method

.method private resetAffinityTaskIfNeededLocked(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/TaskRecord;ZZI)I
    .registers 31
    .param p1, "affinityTask"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p3, "topTaskIsHigher"  # Z
    .param p4, "forceReset"  # Z
    .param p5, "taskInsertionPoint"  # I

    .line 3635
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, -0x1

    .line 3636
    .local v2, "replyChainEnd":I
    iget v3, v1, Lcom/android/server/wm/TaskRecord;->taskId:I

    .line 3637
    .local v3, "taskId":I
    iget-object v4, v1, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    .line 3639
    .local v4, "taskAffinity":Ljava/lang/String;
    iget-object v5, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3640
    .local v5, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 3641
    .local v6, "numActivities":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->findEffectiveRootIndex()I

    move-result v7

    .line 3644
    .local v7, "rootActivityNdx":I
    add-int/lit8 v8, v6, -0x1

    move v9, v2

    move/from16 v2, p5

    .end local p5  # "taskInsertionPoint":I
    .local v2, "taskInsertionPoint":I
    .local v8, "i":I
    .local v9, "replyChainEnd":I
    :goto_18
    if-le v8, v7, :cond_1c3

    .line 3645
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/ActivityRecord;

    .line 3646
    .local v10, "target":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v11, v10, Lcom/android/server/wm/ActivityRecord;->frontOfTask:Z

    if-eqz v11, :cond_2a

    .line 3647
    move/from16 v16, v3

    move-object/from16 v17, v4

    goto/16 :goto_1c7

    .line 3649
    :cond_2a
    iget-object v11, v10, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v11, v11, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3650
    .local v11, "flags":I
    and-int/lit8 v12, v11, 0x2

    const/4 v13, 0x0

    if-eqz v12, :cond_35

    const/4 v12, 0x1

    goto :goto_36

    :cond_35
    move v12, v13

    .line 3651
    .local v12, "finishOnTaskLaunch":Z
    :goto_36
    and-int/lit8 v15, v11, 0x40

    if-eqz v15, :cond_3b

    const/4 v13, 0x1

    .line 3653
    .local v13, "allowTaskReparenting":Z
    :cond_3b
    iget-object v15, v10, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v15, :cond_4e

    .line 3660
    if-gez v9, :cond_48

    .line 3661
    move v9, v8

    move/from16 v16, v3

    move-object/from16 v17, v4

    goto/16 :goto_1b9

    .line 3660
    :cond_48
    move/from16 v16, v3

    move-object/from16 v17, v4

    goto/16 :goto_1b9

    .line 3663
    :cond_4e
    if-eqz p3, :cond_1b5

    if-eqz v13, :cond_1b5

    if-eqz v4, :cond_1b5

    iget-object v15, v10, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 3666
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1b0

    .line 3677
    const-string v15, "ActivityTaskManager"

    if-nez p4, :cond_163

    if-eqz v12, :cond_68

    move/from16 v16, v3

    move-object/from16 v17, v4

    goto/16 :goto_167

    .line 3690
    :cond_68
    if-gez v2, :cond_70

    .line 3691
    iget-object v14, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3695
    :cond_70
    if-ltz v9, :cond_74

    move v14, v9

    goto :goto_75

    :cond_74
    move v14, v8

    .line 3696
    .local v14, "start":I
    :goto_75
    sget-boolean v16, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v16, :cond_b0

    move/from16 v16, v3

    .end local v3  # "taskId":I
    .local v16, "taskId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v4

    .end local v4  # "taskAffinity":Ljava/lang/String;
    .local v17, "taskAffinity":Ljava/lang/String;
    const-string v4, "Reparenting from task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to task="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b4

    .end local v16  # "taskId":I
    .end local v17  # "taskAffinity":Ljava/lang/String;
    .restart local v3  # "taskId":I
    .restart local v4  # "taskAffinity":Ljava/lang/String;
    :cond_b0
    move/from16 v16, v3

    move-object/from16 v17, v4

    .line 3699
    .end local v3  # "taskId":I
    .end local v4  # "taskAffinity":Ljava/lang/String;
    .restart local v16  # "taskId":I
    .restart local v17  # "taskAffinity":Ljava/lang/String;
    :goto_b4
    move v0, v14

    .local v0, "srcPos":I
    :goto_b5
    if-lt v0, v8, :cond_121

    .line 3700
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 3701
    .local v3, "p":Lcom/android/server/wm/ActivityRecord;
    const-string v4, "resetAffinityTaskIfNeededLocked"

    invoke-virtual {v3, v1, v2, v4}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskRecord;ILjava/lang/String;)V

    .line 3703
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v4, :cond_f2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v2

    .end local v2  # "taskInsertionPoint":I
    .local v18, "taskInsertionPoint":I
    const-string v2, "Removing and adding activity "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to stack at "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " callers="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    .line 3705
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3703
    invoke-static {v15, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f4

    .end local v18  # "taskInsertionPoint":I
    .restart local v2  # "taskInsertionPoint":I
    :cond_f2
    move/from16 v18, v2

    .line 3706
    .end local v2  # "taskInsertionPoint":I
    .restart local v18  # "taskInsertionPoint":I
    :goto_f4
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_11c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pulling activity "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " in to resetting task "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3699
    .end local v3  # "p":Lcom/android/server/wm/ActivityRecord;
    :cond_11c
    add-int/lit8 v0, v0, -0x1

    move/from16 v2, v18

    goto :goto_b5

    .end local v18  # "taskInsertionPoint":I
    .restart local v2  # "taskInsertionPoint":I
    :cond_121
    move/from16 v18, v2

    .line 3709
    .end local v0  # "srcPos":I
    .end local v2  # "taskInsertionPoint":I
    .restart local v18  # "taskInsertionPoint":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStack;->positionChildWindowContainerAtTop(Lcom/android/server/wm/TaskRecord;)V

    .line 3715
    iget-object v2, v10, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_160

    .line 3716
    iget-object v2, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3717
    .local v2, "taskActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 3718
    .local v3, "targetNdx":I
    if-lez v3, :cond_160

    .line 3719
    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 3720
    .local v4, "p":Lcom/android/server/wm/ActivityRecord;
    iget-object v15, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    iget-object v0, v10, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_160

    .line 3721
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const-string v23, "replace"

    move-object/from16 v19, p0

    move-object/from16 v20, v4

    invoke-virtual/range {v19 .. v24}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3728
    .end local v2  # "taskActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v3  # "targetNdx":I
    .end local v4  # "p":Lcom/android/server/wm/ActivityRecord;
    .end local v14  # "start":I
    :cond_160
    move/from16 v2, v18

    goto :goto_1ad

    .line 3677
    .end local v16  # "taskId":I
    .end local v17  # "taskAffinity":Ljava/lang/String;
    .end local v18  # "taskInsertionPoint":I
    .local v2, "taskInsertionPoint":I
    .local v3, "taskId":I
    .local v4, "taskAffinity":Ljava/lang/String;
    :cond_163
    move/from16 v16, v3

    move-object/from16 v17, v4

    .line 3678
    .end local v3  # "taskId":I
    .end local v4  # "taskAffinity":Ljava/lang/String;
    .restart local v16  # "taskId":I
    .restart local v17  # "taskAffinity":Ljava/lang/String;
    :goto_167
    if-ltz v9, :cond_16b

    move v0, v9

    goto :goto_16c

    :cond_16b
    move v0, v8

    .line 3679
    .local v0, "start":I
    :goto_16c
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v3, :cond_18c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finishing task at index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3681
    :cond_18c
    move v3, v0

    .local v3, "srcPos":I
    :goto_18d
    if-lt v3, v8, :cond_1ac

    .line 3682
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 3683
    .local v4, "p":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v14, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v14, :cond_19a

    .line 3684
    goto :goto_1a9

    .line 3686
    :cond_19a
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const-string v23, "move-affinity"

    move-object/from16 v19, p0

    move-object/from16 v20, v4

    invoke-virtual/range {v19 .. v24}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3681
    .end local v4  # "p":Lcom/android/server/wm/ActivityRecord;
    :goto_1a9
    add-int/lit8 v3, v3, -0x1

    goto :goto_18d

    .line 3689
    .end local v0  # "start":I
    .end local v3  # "srcPos":I
    :cond_1ac
    nop

    .line 3728
    :goto_1ad
    const/4 v0, -0x1

    move v9, v0

    .end local v9  # "replyChainEnd":I
    .local v0, "replyChainEnd":I
    goto :goto_1b9

    .line 3666
    .end local v0  # "replyChainEnd":I
    .end local v16  # "taskId":I
    .end local v17  # "taskAffinity":Ljava/lang/String;
    .local v3, "taskId":I
    .local v4, "taskAffinity":Ljava/lang/String;
    .restart local v9  # "replyChainEnd":I
    :cond_1b0
    move/from16 v16, v3

    move-object/from16 v17, v4

    .end local v3  # "taskId":I
    .end local v4  # "taskAffinity":Ljava/lang/String;
    .restart local v16  # "taskId":I
    .restart local v17  # "taskAffinity":Ljava/lang/String;
    goto :goto_1b9

    .line 3663
    .end local v16  # "taskId":I
    .end local v17  # "taskAffinity":Ljava/lang/String;
    .restart local v3  # "taskId":I
    .restart local v4  # "taskAffinity":Ljava/lang/String;
    :cond_1b5
    move/from16 v16, v3

    move-object/from16 v17, v4

    .line 3644
    .end local v3  # "taskId":I
    .end local v4  # "taskAffinity":Ljava/lang/String;
    .end local v10  # "target":Lcom/android/server/wm/ActivityRecord;
    .end local v11  # "flags":I
    .end local v12  # "finishOnTaskLaunch":Z
    .end local v13  # "allowTaskReparenting":Z
    .restart local v16  # "taskId":I
    .restart local v17  # "taskAffinity":Ljava/lang/String;
    :goto_1b9
    add-int/lit8 v8, v8, -0x1

    move-object/from16 v0, p1

    move/from16 v3, v16

    move-object/from16 v4, v17

    goto/16 :goto_18

    .end local v16  # "taskId":I
    .end local v17  # "taskAffinity":Ljava/lang/String;
    .restart local v3  # "taskId":I
    .restart local v4  # "taskAffinity":Ljava/lang/String;
    :cond_1c3
    move/from16 v16, v3

    move-object/from16 v17, v4

    .line 3731
    .end local v3  # "taskId":I
    .end local v4  # "taskAffinity":Ljava/lang/String;
    .end local v8  # "i":I
    .restart local v16  # "taskId":I
    .restart local v17  # "taskAffinity":Ljava/lang/String;
    :goto_1c7
    return v2
.end method

.method private resetTargetTaskIfNeededLocked(Lcom/android/server/wm/TaskRecord;Z)Landroid/app/ActivityOptions;
    .registers 33
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "forceReset"  # Z

    .line 3484
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v0, 0x0

    .line 3486
    .local v0, "topOptions":Landroid/app/ActivityOptions;
    const/4 v1, -0x1

    .line 3487
    .local v1, "replyChainEnd":I
    const/4 v2, 0x1

    .line 3491
    .local v2, "canMoveOptions":Z
    iget-object v9, v8, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3492
    .local v9, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 3493
    .local v10, "numActivities":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->findEffectiveRootIndex()I

    move-result v11

    .line 3494
    .local v11, "rootActivityNdx":I
    add-int/lit8 v3, v10, -0x1

    move-object v13, v0

    move v14, v1

    move v15, v2

    move v12, v3

    .end local v0  # "topOptions":Landroid/app/ActivityOptions;
    .end local v1  # "replyChainEnd":I
    .end local v2  # "canMoveOptions":Z
    .local v12, "i":I
    .local v13, "topOptions":Landroid/app/ActivityOptions;
    .local v14, "replyChainEnd":I
    .local v15, "canMoveOptions":Z
    :goto_17
    if-le v12, v11, :cond_281

    .line 3495
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    .line 3496
    .local v6, "target":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->frontOfTask:Z

    if-eqz v0, :cond_28

    .line 3497
    move/from16 v21, v10

    goto/16 :goto_283

    .line 3499
    :cond_28
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3500
    .local v5, "flags":I
    and-int/lit8 v0, v5, 0x2

    const/16 v16, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_36

    move/from16 v0, v16

    goto :goto_37

    :cond_36
    move v0, v4

    :goto_37
    move/from16 v17, v0

    .line 3502
    .local v17, "finishOnTaskLaunch":Z
    and-int/lit8 v0, v5, 0x40

    if-eqz v0, :cond_40

    move/from16 v0, v16

    goto :goto_41

    :cond_40
    move v0, v4

    :goto_41
    move/from16 v18, v0

    .line 3504
    .local v18, "allowTaskReparenting":Z
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3505
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_51

    move/from16 v0, v16

    goto :goto_52

    :cond_51
    move v0, v4

    :goto_52
    move/from16 v19, v0

    .line 3507
    .local v19, "clearWhenTaskReset":Z
    if-nez v17, :cond_68

    if-nez v19, :cond_68

    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_68

    .line 3516
    if-gez v14, :cond_64

    .line 3517
    move v0, v12

    move v14, v0

    move/from16 v21, v10

    .end local v14  # "replyChainEnd":I
    .local v0, "replyChainEnd":I
    goto/16 :goto_27b

    .line 3516
    .end local v0  # "replyChainEnd":I
    .restart local v14  # "replyChainEnd":I
    :cond_64
    move/from16 v21, v10

    goto/16 :goto_27b

    .line 3519
    :cond_68
    const-string v3, "ActivityTaskManager"

    if-nez v17, :cond_1db

    if-nez v19, :cond_1db

    if-eqz v18, :cond_1db

    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v0, :cond_1db

    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v1, v8, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    .line 3523
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d3

    .line 3532
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a7

    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskRecord;

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a7

    .line 3533
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskRecord;

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    goto :goto_a8

    :cond_a7
    const/4 v0, 0x0

    :goto_a8
    move-object/from16 v16, v0

    .line 3534
    .local v16, "bottom":Lcom/android/server/wm/ActivityRecord;
    const-string v2, "Start pushing activity "

    if-eqz v16, :cond_e9

    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    if-eqz v0, :cond_e9

    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 3535
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 3539
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 3540
    .local v0, "targetTask":Lcom/android/server/wm/TaskRecord;
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v1, :cond_e2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " out to bottom task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3551
    :cond_e2
    move/from16 v20, v5

    move/from16 v21, v10

    move-object v10, v6

    move-object v6, v3

    goto :goto_13f

    .line 3543
    .end local v0  # "targetTask":Lcom/android/server/wm/TaskRecord;
    :cond_e9
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v1, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 3544
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v1

    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 3543
    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v25, v2

    move-object/from16 v2, v24

    move-object/from16 v26, v3

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    move/from16 v20, v5

    .end local v5  # "flags":I
    .local v20, "flags":I
    move-object/from16 v5, v22

    move/from16 v21, v10

    move-object v10, v6

    .end local v6  # "target":Lcom/android/server/wm/ActivityRecord;
    .local v10, "target":Lcom/android/server/wm/ActivityRecord;
    .local v21, "numActivities":I
    move/from16 v6, v23

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 3546
    .restart local v0  # "targetTask":Lcom/android/server/wm/TaskRecord;
    iget-object v1, v10, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v1, v0, Lcom/android/server/wm/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .line 3547
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v1, :cond_13d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " out to new task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v6, v26

    invoke-static {v6, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13f

    :cond_13d
    move-object/from16 v6, v26

    .line 3551
    :goto_13f
    move v1, v15

    .line 3552
    .local v1, "noOptions":Z
    if-gez v14, :cond_144

    move v2, v12

    goto :goto_145

    :cond_144
    move v2, v14

    .line 3553
    .local v2, "start":I
    :goto_145
    move v3, v2

    .local v3, "srcPos":I
    :goto_146
    if-lt v3, v12, :cond_1cc

    .line 3554
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 3555
    .local v4, "p":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_156

    .line 3556
    move v5, v15

    const/4 v15, 0x0

    goto/16 :goto_1c7

    .line 3559
    :cond_156
    const/4 v5, 0x0

    .line 3560
    .end local v15  # "canMoveOptions":Z
    .local v5, "canMoveOptions":Z
    if-eqz v1, :cond_164

    if-nez v13, :cond_164

    .line 3561
    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Lcom/android/server/wm/ActivityRecord;->takeOptionsLocked(Z)Landroid/app/ActivityOptions;

    move-result-object v13

    .line 3562
    if-eqz v13, :cond_165

    .line 3563
    const/4 v1, 0x0

    goto :goto_165

    .line 3560
    :cond_164
    const/4 v15, 0x0

    .line 3566
    :cond_165
    :goto_165
    sget-boolean v22, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v22, :cond_19d

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v1

    .end local v1  # "noOptions":Z
    .local v22, "noOptions":Z
    const-string v1, "Removing activity "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from task="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " adding to task="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Callers="

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    .line 3568
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3566
    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19f

    .end local v22  # "noOptions":Z
    .restart local v1  # "noOptions":Z
    :cond_19d
    move/from16 v22, v1

    .line 3569
    .end local v1  # "noOptions":Z
    .restart local v22  # "noOptions":Z
    :goto_19f
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v1, :cond_1bf

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Pushing next activity "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " out to target\'s task "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3571
    :cond_1bf
    const-string v1, "resetTargetTaskIfNeeded"

    const/4 v15, 0x0

    invoke-virtual {v4, v0, v15, v1}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskRecord;ILjava/lang/String;)V

    move/from16 v1, v22

    .line 3553
    .end local v4  # "p":Lcom/android/server/wm/ActivityRecord;
    .end local v22  # "noOptions":Z
    .restart local v1  # "noOptions":Z
    :goto_1c7
    add-int/lit8 v3, v3, -0x1

    move v15, v5

    goto/16 :goto_146

    .line 3574
    .end local v3  # "srcPos":I
    .end local v5  # "canMoveOptions":Z
    .restart local v15  # "canMoveOptions":Z
    :cond_1cc
    invoke-virtual {v7, v0}, Lcom/android/server/wm/ActivityStack;->positionChildWindowContainerAtBottom(Lcom/android/server/wm/TaskRecord;)V

    .line 3575
    const/4 v0, -0x1

    .line 3576
    .end local v1  # "noOptions":Z
    .end local v2  # "start":I
    .end local v14  # "replyChainEnd":I
    .end local v16  # "bottom":Lcom/android/server/wm/ActivityRecord;
    .local v0, "replyChainEnd":I
    move v14, v0

    goto/16 :goto_27b

    .line 3523
    .end local v0  # "replyChainEnd":I
    .end local v20  # "flags":I
    .end local v21  # "numActivities":I
    .local v5, "flags":I
    .restart local v6  # "target":Lcom/android/server/wm/ActivityRecord;
    .local v10, "numActivities":I
    .restart local v14  # "replyChainEnd":I
    :cond_1d3
    move/from16 v20, v5

    move/from16 v21, v10

    move v5, v4

    move-object v10, v6

    move-object v6, v3

    .end local v5  # "flags":I
    .end local v6  # "target":Lcom/android/server/wm/ActivityRecord;
    .local v10, "target":Lcom/android/server/wm/ActivityRecord;
    .restart local v20  # "flags":I
    .restart local v21  # "numActivities":I
    goto :goto_1e2

    .line 3519
    .end local v20  # "flags":I
    .end local v21  # "numActivities":I
    .restart local v5  # "flags":I
    .restart local v6  # "target":Lcom/android/server/wm/ActivityRecord;
    .local v10, "numActivities":I
    :cond_1db
    move/from16 v20, v5

    move/from16 v21, v10

    move v5, v4

    move-object v10, v6

    move-object v6, v3

    .line 3576
    .end local v5  # "flags":I
    .end local v6  # "target":Lcom/android/server/wm/ActivityRecord;
    .local v10, "target":Lcom/android/server/wm/ActivityRecord;
    .restart local v20  # "flags":I
    .restart local v21  # "numActivities":I
    :goto_1e2
    if-nez p2, :cond_1ed

    if-nez v17, :cond_1ed

    if-eqz v19, :cond_1e9

    goto :goto_1ed

    .line 3618
    :cond_1e9
    const/4 v0, -0x1

    move v14, v0

    .end local v14  # "replyChainEnd":I
    .restart local v0  # "replyChainEnd":I
    goto/16 :goto_27b

    .line 3582
    .end local v0  # "replyChainEnd":I
    .restart local v14  # "replyChainEnd":I
    :cond_1ed
    :goto_1ed
    if-eqz v19, :cond_1f6

    .line 3586
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "end":I
    goto :goto_1fb

    .line 3587
    .end local v0  # "end":I
    :cond_1f6
    if-gez v14, :cond_1fa

    .line 3588
    move v0, v12

    .restart local v0  # "end":I
    goto :goto_1fb

    .line 3590
    .end local v0  # "end":I
    :cond_1fa
    move v0, v14

    .line 3592
    .restart local v0  # "end":I
    :goto_1fb
    move v1, v15

    .line 3593
    .restart local v1  # "noOptions":Z
    move v2, v12

    move/from16 v28, v15

    move v15, v0

    move/from16 v0, v28

    move-object/from16 v29, v13

    move v13, v2

    move-object/from16 v2, v29

    .local v0, "canMoveOptions":Z
    .local v2, "topOptions":Landroid/app/ActivityOptions;
    .local v13, "srcPos":I
    .local v15, "end":I
    :goto_207
    if-gt v13, v15, :cond_277

    .line 3594
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 3595
    .restart local v4  # "p":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v3, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_217

    .line 3596
    move/from16 v26, v5

    goto :goto_272

    .line 3598
    :cond_217
    const/16 v22, 0x0

    .line 3599
    .end local v0  # "canMoveOptions":Z
    .local v22, "canMoveOptions":Z
    if-eqz v1, :cond_22e

    if-nez v2, :cond_22e

    .line 3600
    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityRecord;->takeOptionsLocked(Z)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 3601
    if-eqz v2, :cond_229

    .line 3602
    const/4 v1, 0x0

    move/from16 v24, v1

    move-object/from16 v23, v2

    goto :goto_232

    .line 3601
    :cond_229
    move/from16 v24, v1

    move-object/from16 v23, v2

    goto :goto_232

    .line 3605
    :cond_22e
    move/from16 v24, v1

    move-object/from16 v23, v2

    .end local v1  # "noOptions":Z
    .end local v2  # "topOptions":Landroid/app/ActivityOptions;
    .local v23, "topOptions":Landroid/app/ActivityOptions;
    .local v24, "noOptions":Z
    :goto_232
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_24a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetTaskIntendedTask: calling finishActivity on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3607
    :cond_24a
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v25, 0x0

    const-string v26, "reset-task"

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v27, v4

    .end local v4  # "p":Lcom/android/server/wm/ActivityRecord;
    .local v27, "p":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v4, v26

    move/from16 v26, v5

    move/from16 v5, v25

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_26c

    .line 3609
    add-int/lit8 v15, v15, -0x1

    .line 3610
    add-int/lit8 v13, v13, -0x1

    move/from16 v0, v22

    move-object/from16 v2, v23

    move/from16 v1, v24

    goto :goto_272

    .line 3607
    :cond_26c
    move/from16 v0, v22

    move-object/from16 v2, v23

    move/from16 v1, v24

    .line 3593
    .end local v22  # "canMoveOptions":Z
    .end local v23  # "topOptions":Landroid/app/ActivityOptions;
    .end local v24  # "noOptions":Z
    .end local v27  # "p":Lcom/android/server/wm/ActivityRecord;
    .restart local v0  # "canMoveOptions":Z
    .restart local v1  # "noOptions":Z
    .restart local v2  # "topOptions":Landroid/app/ActivityOptions;
    :goto_272
    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v26

    goto :goto_207

    .line 3613
    .end local v13  # "srcPos":I
    :cond_277
    const/4 v1, -0x1

    .line 3614
    .end local v14  # "replyChainEnd":I
    .end local v15  # "end":I
    .local v1, "replyChainEnd":I
    move v15, v0

    move v14, v1

    move-object v13, v2

    .line 3494
    .end local v0  # "canMoveOptions":Z
    .end local v1  # "replyChainEnd":I
    .end local v2  # "topOptions":Landroid/app/ActivityOptions;
    .end local v10  # "target":Lcom/android/server/wm/ActivityRecord;
    .end local v17  # "finishOnTaskLaunch":Z
    .end local v18  # "allowTaskReparenting":Z
    .end local v19  # "clearWhenTaskReset":Z
    .end local v20  # "flags":I
    .local v13, "topOptions":Landroid/app/ActivityOptions;
    .restart local v14  # "replyChainEnd":I
    .local v15, "canMoveOptions":Z
    :goto_27b
    add-int/lit8 v12, v12, -0x1

    move/from16 v10, v21

    goto/16 :goto_17

    .end local v21  # "numActivities":I
    .local v10, "numActivities":I
    :cond_281
    move/from16 v21, v10

    .line 3622
    .end local v10  # "numActivities":I
    .end local v12  # "i":I
    .restart local v21  # "numActivities":I
    :goto_283
    return-object v13
.end method

.method private resumeNextFocusableActivityWhenStackIsEmpty(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .registers 7
    .param p1, "prev"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"  # Landroid/app/ActivityOptions;

    .line 3204
    const-string v0, "noMoreActivities"

    .line 3206
    .local v0, "reason":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v1

    const-string v2, "noMoreActivities"

    if-nez v1, :cond_18

    .line 3207
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 3208
    .local v1, "nextFocusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_18

    .line 3212
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, p1, v3}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v2

    return v2

    .line 3219
    .end local v1  # "nextFocusedStack":Lcom/android/server/wm/ActivityStack;
    :cond_18
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 3220
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v1, :cond_26

    const-string v1, "ActivityTaskManager"

    const-string v3, "resumeNextFocusableActivityWhenStackIsEmpty: noMoreActivities, go home"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3222
    :cond_26
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v3, p0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wm/RootActivityContainer;->resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method private resumeTopActivityInnerLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .registers 33
    .param p1, "prev"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"  # Landroid/app/ActivityOptions;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2714
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const-string v10, ": "

    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v0

    const/4 v11, 0x0

    if-nez v0, :cond_1a

    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2716
    return v11

    .line 2722
    :cond_1a
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v13

    .line 2724
    .local v13, "next":Lcom/android/server/wm/ActivityRecord;
    if-eqz v13, :cond_23

    move v0, v12

    goto :goto_24

    :cond_23
    move v0, v11

    :goto_24
    move v14, v0

    .line 2727
    .local v14, "hasRunningActivity":Z
    if-eqz v14, :cond_2e

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 2728
    return v11

    .line 2731
    :cond_2e
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->cancelInitializingActivities()V

    .line 2735
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    .line 2736
    .local v0, "userLeaving":Z
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iput-boolean v11, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    .line 2738
    if-nez v14, :cond_42

    .line 2740
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wm/ActivityStack;->resumeNextFocusableActivityWhenStackIsEmpty(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v1

    return v1

    .line 2743
    :cond_42
    iput-boolean v11, v13, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    .line 2744
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v15

    .line 2747
    .local v15, "display":Lcom/android/server/wm/ActivityDisplay;
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v6, "ActivityTaskManager"

    if-ne v1, v13, :cond_78

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v13, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 2748
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityDisplay;->allResumedActivitiesComplete()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 2751
    invoke-virtual {v7, v9}, Lcom/android/server/wm/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 2752
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v1, :cond_77

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeTopActivityLocked: Top activity resumed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    :cond_77
    return v11

    .line 2757
    :cond_78
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->canResumeByCompat()Z

    move-result v1

    if-nez v1, :cond_7f

    .line 2758
    return v11

    .line 2763
    :cond_7f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_d3

    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v1, v13, :cond_d3

    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 2765
    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->allPausedActivitiesComplete()Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 2768
    const/4 v1, 0x1

    .line 2769
    .local v1, "nothingToResume":Z
    iget-object v2, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-nez v2, :cond_c4

    .line 2770
    iget-boolean v2, v7, Lcom/android/server/wm/ActivityStack;->mTopActivityOccludesKeyguard:Z

    if-nez v2, :cond_a5

    .line 2771
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v2

    if-eqz v2, :cond_a5

    move v2, v12

    goto :goto_a6

    :cond_a5
    move v2, v11

    .line 2772
    .local v2, "canShowWhenLocked":Z
    :goto_a6
    iget-object v3, v7, Lcom/android/server/wm/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v3, v13, :cond_b8

    iget-object v3, v13, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_b8

    iget-object v3, v13, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 2774
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->containsDismissKeyguardWindow()Z

    move-result v3

    if-eqz v3, :cond_b8

    move v3, v12

    goto :goto_b9

    :cond_b8
    move v3, v11

    .line 2776
    .local v3, "mayDismissKeyguard":Z
    :goto_b9
    if-nez v2, :cond_bd

    if-eqz v3, :cond_c4

    .line 2777
    :cond_bd
    invoke-virtual {v7, v5, v11, v11}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 2779
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v1

    .line 2782
    .end local v2  # "canShowWhenLocked":Z
    .end local v3  # "mayDismissKeyguard":Z
    :cond_c4
    if-eqz v1, :cond_d3

    .line 2785
    invoke-virtual {v7, v9}, Lcom/android/server/wm/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 2786
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v2, :cond_d2

    const-string v2, "resumeTopActivityLocked: Going to sleep and all paused"

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    :cond_d2
    return v11

    .line 2795
    .end local v1  # "nothingToResume":Z
    :cond_d3
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v2, v13, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/app/ActivityManagerInternal;->hasStartedUserState(I)Z

    move-result v1

    if-nez v1, :cond_103

    .line 2796
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping resume of top activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is stopped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2798
    return v11

    .line 2803
    :cond_103
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2804
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2805
    iput-boolean v11, v13, Lcom/android/server/wm/ActivityRecord;->sleeping:Z

    .line 2806
    iput-boolean v12, v13, Lcom/android/server/wm/ActivityRecord;->launching:Z

    .line 2808
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v1, :cond_12d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resuming "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2810
    :cond_12d
    sget-object v1, Lcom/android/server/wm/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    if-eqz v1, :cond_13c

    .line 2811
    iget-object v2, v13, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v3, v13, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v13, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v13, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/app/ActivityTrigger;->activityResumeTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Z)V

    .line 2815
    :cond_13c
    sget-object v1, Lcom/android/server/wm/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    if-eqz v1, :cond_158

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v1

    if-eqz v1, :cond_158

    .line 2816
    sget-object v1, Lcom/android/server/wm/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    iget-object v1, v13, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2817
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v2

    if-ne v2, v12, :cond_154

    move v2, v12

    goto :goto_155

    :cond_154
    move v2, v11

    :goto_155
    invoke-static {v1, v2}, Lcom/android/server/wm/ActivityPluginDelegate;->activityInvokeNotification(Ljava/lang/String;Z)V

    .line 2821
    :cond_158
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->allPausedActivitiesComplete()Z

    move-result v1

    if-nez v1, :cond_172

    .line 2822
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v1, :cond_16c

    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-nez v1, :cond_16c

    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v1, :cond_171

    :cond_16c
    const-string v1, "resumeTopActivityLocked: Skip resume: some activity pausing."

    invoke-static {v6, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2825
    :cond_171
    return v11

    .line 2828
    :cond_172
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v13, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->setLaunchSource(I)V

    .line 2830
    const/4 v1, 0x0

    .line 2831
    .local v1, "lastResumedCanPip":Z
    const/4 v2, 0x0

    .line 2832
    .local v2, "lastResumed":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityDisplay;->getLastFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 2833
    .local v5, "lastFocusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v5, :cond_1cb

    if-eq v5, v7, :cond_1cb

    .line 2836
    iget-object v2, v5, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2837
    if-eqz v0, :cond_1b8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->inMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_1b8

    invoke-virtual {v5, v13}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_1b8

    .line 2840
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    if-eqz v3, :cond_1b7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Overriding userLeaving to false next="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " lastResumed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2842
    :cond_1b7
    const/4 v0, 0x0

    .line 2844
    :cond_1b8
    if-eqz v2, :cond_1c4

    const-string v3, "resumeTopActivity"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1c4

    move v3, v12

    goto :goto_1c5

    :cond_1c4
    move v3, v11

    :goto_1c5
    move v1, v3

    move v4, v0

    move/from16 v17, v1

    move-object v3, v2

    goto :goto_1cf

    .line 2851
    :cond_1cb
    move v4, v0

    move/from16 v17, v1

    move-object v3, v2

    .end local v0  # "userLeaving":Z
    .end local v1  # "lastResumedCanPip":Z
    .end local v2  # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .local v3, "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .local v4, "userLeaving":Z
    .local v17, "lastResumedCanPip":Z
    :goto_1cf
    iget-object v0, v13, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_1db

    if-nez v17, :cond_1db

    move v0, v12

    goto :goto_1dc

    :cond_1db
    move v0, v11

    :goto_1dc
    move/from16 v18, v0

    .line 2854
    .local v18, "resumeWhilePausing":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0, v4, v13, v11}, Lcom/android/server/wm/ActivityDisplay;->pauseBackStacks(ZLcom/android/server/wm/ActivityRecord;Z)Z

    move-result v0

    .line 2855
    .local v0, "pausing":Z
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_20c

    .line 2856
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v1, :cond_204

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeTopActivityLocked: Pausing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
    :cond_204
    invoke-virtual {v7, v4, v11, v13, v11}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Z)Z

    move-result v1

    or-int/2addr v0, v1

    move/from16 v19, v0

    goto :goto_20e

    .line 2855
    :cond_20c
    move/from16 v19, v0

    .line 2860
    .end local v0  # "pausing":Z
    .local v19, "pausing":Z
    :goto_20e
    if-eqz v19, :cond_230

    if-nez v18, :cond_230

    .line 2861
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_21a

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_21f

    :cond_21a
    const-string v0, "resumeTopActivityLocked: Skip resume: need to start pausing"

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2867
    :cond_21f
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_22a

    .line 2868
    iget-object v0, v13, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v11, v12, v11}, Lcom/android/server/wm/WindowProcessController;->updateProcessInfo(ZZZ)V

    .line 2871
    :cond_22a
    if-eqz v3, :cond_22f

    .line 2872
    invoke-virtual {v3, v12}, Lcom/android/server/wm/ActivityRecord;->setWillCloseOrEnterPip(Z)V

    .line 2874
    :cond_22f
    return v12

    .line 2875
    :cond_230
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, v13, :cond_25e

    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v13, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_25e

    .line 2876
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityDisplay;->allResumedActivitiesComplete()Z

    move-result v0

    if-eqz v0, :cond_25e

    .line 2882
    invoke-virtual {v7, v9}, Lcom/android/server/wm/ActivityStack;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 2883
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_25d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeTopActivityLocked: Top activity resumed (dontWaitForPause) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2885
    :cond_25d
    return v12

    .line 2890
    :cond_25e
    iget-object v0, v13, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_279

    .line 2891
    invoke-static {}, Lcom/flyme/server/pm/FlymeFrontMonitor;->getInstance()Lcom/flyme/server/pm/FlymeFrontMonitor;

    move-result-object v0

    iget-object v1, v13, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, v13, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v12, v13, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v11, v13, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v11

    invoke-virtual {v0, v1, v2, v12, v11}, Lcom/flyme/server/pm/FlymeFrontMonitor;->setFront(Ljava/lang/String;Ljava/lang/String;II)V

    .line 2898
    :cond_279
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-eqz v0, :cond_2c3

    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_2c3

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_2c3

    .line 2900
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_2a6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no-history finish of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " on new resume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    :cond_2a6
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v0, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v22, "resume-no-history"

    move-object/from16 v1, p0

    move-object/from16 v23, v3

    .end local v3  # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .local v23, "lastResumed":Lcom/android/server/wm/ActivityRecord;
    move v3, v0

    move/from16 v24, v4

    .end local v4  # "userLeaving":Z
    .local v24, "userLeaving":Z
    move-object v4, v11

    move-object v11, v5

    .end local v5  # "lastFocusedStack":Lcom/android/server/wm/ActivityStack;
    .local v11, "lastFocusedStack":Lcom/android/server/wm/ActivityStack;
    move-object/from16 v5, v22

    move-object v9, v6

    move v6, v12

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 2904
    const/4 v1, 0x0

    iput-object v1, v7, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    goto :goto_2ca

    .line 2898
    .end local v11  # "lastFocusedStack":Lcom/android/server/wm/ActivityStack;
    .end local v23  # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .end local v24  # "userLeaving":Z
    .restart local v3  # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .restart local v4  # "userLeaving":Z
    .restart local v5  # "lastFocusedStack":Lcom/android/server/wm/ActivityStack;
    :cond_2c3
    move-object/from16 v23, v3

    move/from16 v24, v4

    move-object v11, v5

    move-object v9, v6

    const/4 v1, 0x0

    .line 2907
    .end local v3  # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .end local v4  # "userLeaving":Z
    .end local v5  # "lastFocusedStack":Lcom/android/server/wm/ActivityStack;
    .restart local v11  # "lastFocusedStack":Lcom/android/server/wm/ActivityStack;
    .restart local v23  # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .restart local v24  # "userLeaving":Z
    :goto_2ca
    if-eqz v8, :cond_31d

    if-eq v8, v13, :cond_31d

    iget-boolean v0, v13, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v0, :cond_31d

    .line 2917
    iget-boolean v0, v8, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const-string v2, ", nowVisible="

    if-eqz v0, :cond_2fd

    .line 2918
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 2919
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_31d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not waiting for visible to hide: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v13, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31d

    .line 2923
    :cond_2fd
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_31d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Previous already visible but still waiting to hide: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v13, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    :cond_31d
    :goto_31d
    :try_start_31d
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v2, v13, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v3, v13, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4, v3}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_329
    .catch Landroid/os/RemoteException; {:try_start_31d .. :try_end_329} :catch_348
    .catch Ljava/lang/IllegalArgumentException; {:try_start_31d .. :try_end_329} :catch_32a

    goto :goto_349

    .line 2936
    :catch_32a
    move-exception v0

    .line 2937
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed trying to unstop package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34a

    .line 2935
    .end local v0  # "e":Ljava/lang/IllegalArgumentException;
    :catch_348
    move-exception v0

    .line 2939
    :goto_349
    nop

    .line 2944
    :goto_34a
    const/4 v0, 0x1

    .line 2945
    .local v0, "anim":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    iget-object v12, v2, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2946
    .local v12, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v2, v7, Lcom/android/server/wm/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    if-nez v2, :cond_35c

    .line 2947
    new-instance v2, Landroid/util/BoostFramework;

    invoke-direct {v2}, Landroid/util/BoostFramework;-><init>()V

    iput-object v2, v7, Lcom/android/server/wm/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    .line 2949
    :cond_35c
    const/4 v2, 0x6

    if-eqz v8, :cond_44b

    .line 2950
    iget-boolean v3, v8, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/16 v4, 0x1083

    if-eqz v3, :cond_3d2

    .line 2951
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v2, :cond_37d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prepare close transition: prev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2953
    :cond_37d
    iget-object v2, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38d

    .line 2954
    const/4 v0, 0x0

    .line 2955
    const/4 v2, 0x0

    invoke-virtual {v12, v2, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    goto :goto_3cb

    .line 2957
    :cond_38d
    iget-object v2, v7, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v5

    const/4 v6, 0x7

    const/16 v16, 0x9

    if-ne v3, v5, :cond_39e

    .line 2958
    move v3, v6

    goto :goto_3a0

    .line 2959
    :cond_39e
    move/from16 v3, v16

    :goto_3a0
    nop

    .line 2957
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2960
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    if-eq v2, v3, :cond_3b8

    iget-object v2, v7, Lcom/android/server/wm/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    if-eqz v2, :cond_3b8

    .line 2961
    iget-object v3, v13, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    .line 2963
    :cond_3b8
    nop

    .line 2964
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    if-ne v2, v3, :cond_3c4

    goto :goto_3c6

    .line 2965
    :cond_3c4
    move/from16 v6, v16

    :goto_3c6
    nop

    .line 2963
    const/4 v2, 0x0

    invoke-virtual {v12, v6, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 2967
    :goto_3cb
    invoke-virtual {v8, v2}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    move/from16 v16, v0

    goto/16 :goto_46c

    .line 2969
    :cond_3d2
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v3, :cond_3ea

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prepare open transition: prev="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    :cond_3ea
    iget-object v3, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3fd

    .line 2972
    const/4 v0, 0x0

    .line 2973
    const/4 v2, 0x0

    invoke-virtual {v12, v2, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    move/from16 v16, v0

    goto/16 :goto_46c

    .line 2975
    :cond_3fd
    iget-object v3, v7, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v5

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    const/16 v16, 0x10

    const/16 v22, 0x8

    if-ne v5, v6, :cond_40f

    .line 2976
    move v5, v2

    goto :goto_418

    .line 2977
    :cond_40f
    iget-boolean v5, v13, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v5, :cond_416

    .line 2978
    move/from16 v5, v16

    goto :goto_418

    .line 2979
    :cond_416
    move/from16 v5, v22

    :goto_418
    nop

    .line 2975
    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2980
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v5

    if-eq v3, v5, :cond_430

    iget-object v3, v7, Lcom/android/server/wm/ActivityStack;->mPerf:Landroid/util/BoostFramework;

    if-eqz v3, :cond_430

    .line 2981
    iget-object v5, v13, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    .line 2983
    :cond_430
    nop

    .line 2984
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    if-ne v3, v4, :cond_43c

    goto :goto_445

    .line 2985
    :cond_43c
    iget-boolean v2, v13, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v2, :cond_443

    move/from16 v2, v16

    goto :goto_445

    .line 2986
    :cond_443
    move/from16 v2, v22

    :goto_445
    nop

    .line 2983
    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    goto :goto_46a

    .line 2990
    :cond_44b
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v3, :cond_454

    const-string v3, "Prepare open transition: no previous"

    invoke-static {v9, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2991
    :cond_454
    iget-object v3, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_466

    .line 2992
    const/4 v0, 0x0

    .line 2993
    const/4 v3, 0x0

    invoke-virtual {v12, v3, v3}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    move/from16 v16, v0

    goto :goto_46c

    .line 2995
    :cond_466
    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 2999
    :goto_46a
    move/from16 v16, v0

    .end local v0  # "anim":Z
    .local v16, "anim":Z
    :goto_46c
    if-eqz v16, :cond_472

    .line 3000
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->applyOptionsLocked()V

    goto :goto_475

    .line 3002
    :cond_472
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->clearOptionsLocked()V

    .line 3005
    :goto_475
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3008
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/FlymeWindowManagerInternal;->isKeyguardShowing()Z

    move-result v22

    .line 3009
    .local v22, "keyguardLocked":Z
    if-nez v22, :cond_490

    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v7, v13}, Lcom/android/server/wm/ActivityTaskManagerService;->checkAccessControl(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_490

    .line 3011
    const/4 v1, 0x0

    return v1

    .line 3015
    :cond_490
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_70a

    .line 3016
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_4c2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resume running: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " stopped="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v13, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " visible="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v13, Lcom/android/server/wm/ActivityRecord;->visible:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3021
    :cond_4c2
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v13, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->hook_activityFreezePreProcess(Lcom/android/server/wm/WindowProcessController;)V

    .line 3031
    if-eqz v11, :cond_4db

    .line 3032
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityStack;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_4d9

    iget-object v0, v11, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_4db

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    if-nez v0, :cond_4db

    :cond_4d9
    const/4 v0, 0x1

    goto :goto_4dc

    :cond_4db
    const/4 v0, 0x0

    :goto_4dc
    move/from16 v25, v0

    .line 3037
    .local v25, "lastActivityTranslucent":Z
    iget-boolean v0, v13, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v0, :cond_4e8

    iget-boolean v0, v13, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-nez v0, :cond_4e8

    if-eqz v25, :cond_4ec

    .line 3038
    :cond_4e8
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 3042
    :cond_4ec
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->startLaunchTickingLocked()V

    .line 3045
    if-nez v11, :cond_4f3

    move-object v5, v1

    goto :goto_4f5

    :cond_4f3
    iget-object v5, v11, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    :goto_4f5
    move-object v6, v5

    .line 3046
    .local v6, "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v5

    .line 3048
    .local v5, "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateCpuStats()V

    .line 3050
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_51c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Moving to RESUMED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (in existing)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3055
    :cond_51c
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/16 v2, 0x1d

    invoke-virtual {v0, v13, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->setAppStart(Lcom/android/server/wm/ActivityRecord;I)V

    .line 3058
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v2, "resumeTopActivityInnerLocked"

    invoke-virtual {v13, v0, v2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3060
    iget-object v0, v13, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3, v3}, Lcom/android/server/wm/WindowProcessController;->updateProcessInfo(ZZZ)V

    .line 3062
    invoke-virtual {v7, v13}, Lcom/android/server/wm/ActivityStack;->updateLRUListLocked(Lcom/android/server/wm/ActivityRecord;)Z

    .line 3066
    const/4 v0, 0x1

    .line 3070
    .local v0, "notUpdated":Z
    invoke-virtual {v7, v13}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v20

    if-eqz v20, :cond_549

    .line 3079
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    move/from16 v26, v0

    .end local v0  # "notUpdated":Z
    .local v26, "notUpdated":Z
    iget v0, v7, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    invoke-virtual {v1, v13, v0, v3, v4}, Lcom/android/server/wm/RootActivityContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    move-result v0

    xor-int/2addr v0, v3

    move/from16 v26, v0

    .end local v26  # "notUpdated":Z
    .restart local v0  # "notUpdated":Z
    goto :goto_54b

    .line 3070
    :cond_549
    move/from16 v26, v0

    .line 3083
    .end local v0  # "notUpdated":Z
    .restart local v26  # "notUpdated":Z
    :goto_54b
    if-eqz v26, :cond_58f

    .line 3089
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3090
    .local v0, "nextNext":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v1, :cond_559

    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v1, :cond_575

    :cond_559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity config changed during resume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", new next: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3093
    :cond_575
    if-eq v0, v13, :cond_57c

    .line 3095
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    .line 3097
    :cond_57c
    iget-boolean v1, v13, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v1, :cond_587

    iget-boolean v1, v13, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-eqz v1, :cond_585

    goto :goto_587

    :cond_585
    const/4 v1, 0x1

    goto :goto_58b

    .line 3098
    :cond_587
    :goto_587
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 3100
    :goto_58b
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V

    .line 3101
    return v1

    .line 3105
    .end local v0  # "nextNext":Lcom/android/server/wm/ActivityRecord;
    :cond_58f
    :try_start_58f
    iget-object v0, v13, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 3106
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    iget-object v1, v13, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-static {v0, v1}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v0

    .line 3108
    .local v0, "transaction":Landroid/app/servertransaction/ClientTransaction;
    iget-object v1, v13, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;
    :try_end_59d
    .catch Ljava/lang/Exception; {:try_start_58f .. :try_end_59d} :catch_6a4

    .line 3109
    .local v1, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    if-eqz v1, :cond_5dd

    .line 3110
    :try_start_59f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3111
    .local v3, "N":I
    iget-boolean v4, v13, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v4, :cond_5d4

    if-lez v3, :cond_5d4

    .line 3112
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    if-eqz v4, :cond_5ca

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v27, v3

    .end local v3  # "N":I
    .local v27, "N":I
    const-string v3, "Delivering results to "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5cc

    .end local v27  # "N":I
    .restart local v3  # "N":I
    :cond_5ca
    move/from16 v27, v3

    .line 3114
    .end local v3  # "N":I
    .restart local v27  # "N":I
    :goto_5cc
    invoke-static {v1}, Landroid/app/servertransaction/ActivityResultItem;->obtain(Ljava/util/List;)Landroid/app/servertransaction/ActivityResultItem;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_5d3
    .catch Ljava/lang/Exception; {:try_start_59f .. :try_end_5d3} :catch_5d7

    goto :goto_5dd

    .line 3111
    .end local v27  # "N":I
    .restart local v3  # "N":I
    :cond_5d4
    move/from16 v27, v3

    .end local v3  # "N":I
    .restart local v27  # "N":I
    goto :goto_5dd

    .line 3142
    .end local v0  # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v1  # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    .end local v27  # "N":I
    :catch_5d7
    move-exception v0

    move-object/from16 v29, v5

    move-object v1, v6

    goto/16 :goto_6a8

    .line 3118
    .restart local v0  # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .restart local v1  # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :cond_5dd
    :goto_5dd
    :try_start_5dd
    iget-object v3, v13, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;
    :try_end_5df
    .catch Ljava/lang/Exception; {:try_start_5dd .. :try_end_5df} :catch_6a4

    if-eqz v3, :cond_5eb

    .line 3119
    :try_start_5e1
    iget-object v3, v13, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 3120
    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/app/servertransaction/NewIntentItem;->obtain(Ljava/util/List;Z)Landroid/app/servertransaction/NewIntentItem;

    move-result-object v3

    .line 3119
    invoke-virtual {v0, v3}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_5eb
    .catch Ljava/lang/Exception; {:try_start_5e1 .. :try_end_5eb} :catch_5d7

    .line 3125
    :cond_5eb
    :try_start_5eb
    iget-boolean v3, v13, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    invoke-virtual {v13, v3}, Lcom/android/server/wm/ActivityRecord;->notifyAppResumed(Z)V

    .line 3127
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget v3, v13, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v21, 0x0

    aput-object v3, v4, v21

    .line 3128
    invoke-static {v13}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v20, 0x1

    aput-object v3, v4, v20

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    iget v3, v3, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v28, 0x2

    aput-object v3, v4, v28

    iget-object v3, v13, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/16 v28, 0x3

    aput-object v3, v4, v28

    .line 3127
    const/16 v3, 0x7537

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3131
    const/4 v3, 0x0

    iput-boolean v3, v13, Lcom/android/server/wm/ActivityRecord;->sleeping:Z

    .line 3132
    iget-object v3, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppWarningsLocked()Lcom/android/server/wm/AppWarnings;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/android/server/wm/AppWarnings;->onResumeActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 3133
    iget-object v3, v13, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v4, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowProcessController;->setPendingUiCleanAndForceProcessStateUpTo(I)V

    .line 3134
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->clearOptionsLocked()V

    .line 3135
    iget-object v3, v13, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 3136
    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getReportedProcState()I

    move-result v3

    .line 3137
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    move-result v4

    .line 3136
    invoke-static {v3, v4}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(IZ)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v3

    .line 3135
    invoke-virtual {v0, v3}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 3138
    iget-object v3, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 3140
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z
    :try_end_65c
    .catch Ljava/lang/Exception; {:try_start_5eb .. :try_end_65c} :catch_6a4

    if-eqz v3, :cond_672

    :try_start_65e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumeTopActivityLocked: Resumed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_672
    .catch Ljava/lang/Exception; {:try_start_65e .. :try_end_672} :catch_5d7

    .line 3163
    .end local v0  # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v1  # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :cond_672
    nop

    .line 3168
    :try_start_673
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V
    :try_end_676
    .catch Ljava/lang/Exception; {:try_start_673 .. :try_end_676} :catch_67a

    .line 3176
    nop

    .line 3177
    .end local v5  # "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    .end local v6  # "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v25  # "lastActivityTranslucent":Z
    .end local v26  # "notUpdated":Z
    const/4 v1, 0x1

    goto/16 :goto_74d

    .line 3169
    .restart local v5  # "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    .restart local v6  # "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v25  # "lastActivityTranslucent":Z
    .restart local v26  # "notUpdated":Z
    :catch_67a
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 3172
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown during resume of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3173
    iget-object v2, v13, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x1

    const-string v10, "resume-exception"

    move-object/from16 v1, p0

    move-object/from16 v29, v5

    .end local v5  # "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    .local v29, "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    move-object v5, v10

    move-object v10, v6

    .end local v6  # "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    .local v10, "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    move v6, v9

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3175
    const/4 v1, 0x1

    return v1

    .line 3142
    .end local v0  # "e":Ljava/lang/Exception;
    .end local v10  # "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v29  # "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    .restart local v5  # "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    .restart local v6  # "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    :catch_6a4
    move-exception v0

    move-object/from16 v29, v5

    move-object v1, v6

    .line 3144
    .end local v5  # "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    .end local v6  # "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v0  # "e":Ljava/lang/Exception;
    .local v1, "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v29  # "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    :goto_6a8
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_6c9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resume failed; resetting state to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v29

    .end local v29  # "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    .local v4, "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6cb

    .end local v4  # "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    .restart local v29  # "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    :cond_6c9
    move-object/from16 v4, v29

    .line 3146
    .end local v29  # "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    .restart local v4  # "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    :goto_6cb
    invoke-virtual {v13, v4, v2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3149
    if-eqz v1, :cond_6d5

    .line 3150
    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3153
    :cond_6d5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Restarting because process died: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3154
    iget-boolean v2, v13, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    if-nez v2, :cond_6f2

    .line 3155
    const/4 v2, 0x1

    iput-boolean v2, v13, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    const/4 v3, 0x0

    goto :goto_703

    .line 3156
    :cond_6f2
    if-eqz v11, :cond_702

    .line 3157
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityStack;->isTopStackOnDisplay()Z

    move-result v2

    if-eqz v2, :cond_700

    .line 3158
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v13, v2, v3, v3}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZ)V

    goto :goto_703

    .line 3157
    :cond_700
    const/4 v3, 0x0

    goto :goto_703

    .line 3156
    :cond_702
    const/4 v3, 0x0

    .line 3161
    :goto_703
    iget-object v2, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v5, 0x1

    invoke-virtual {v2, v13, v5, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 3162
    return v5

    .line 3179
    .end local v0  # "e":Ljava/lang/Exception;
    .end local v1  # "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v4  # "lastState":Lcom/android/server/wm/ActivityStack$ActivityState;
    .end local v25  # "lastActivityTranslucent":Z
    .end local v26  # "notUpdated":Z
    :cond_70a
    const/4 v3, 0x0

    const/4 v5, 0x1

    iget-boolean v0, v13, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    if-nez v0, :cond_713

    .line 3180
    iput-boolean v5, v13, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    goto :goto_72f

    .line 3183
    :cond_713
    const/4 v1, 0x0

    invoke-virtual {v13, v1, v3, v3}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 3186
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_72f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restarting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3188
    :cond_72f
    :goto_72f
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_747

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeTopActivityLocked: Restarting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3189
    :cond_747
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v1, 0x1

    invoke-virtual {v0, v13, v1, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 3192
    :goto_74d
    return v1
.end method

.method private returnsToHomeStack()Z
    .registers 3

    .line 1282
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 1283
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 1284
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

    .line 1282
    :goto_20
    return v1
.end method

.method private schedulePauseTimeout(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 1685
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1686
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1687
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/wm/ActivityRecord;->pauseTime:J

    .line 1688
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1689
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v1, :cond_22

    const-string v1, "ActivityTaskManager"

    const-string v2, "Waiting for pause to complete..."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    :cond_22
    return-void
.end method

.method private setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .registers 5
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reason"  # Ljava/lang/String;

    .line 2702
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_5

    .line 2703
    return-void

    .line 2706
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_39

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setResumedActivity stack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " + from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2708
    :cond_39
    iput-object p1, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2709
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->updateTopResumedActivityIfNeeded()V

    .line 2710
    return-void
.end method

.method private setWindowingModeInSurfaceTransaction(IZZZZZ)V
    .registers 30
    .param p1, "preferredWindowingMode"  # I
    .param p2, "animate"  # Z
    .param p3, "showRecents"  # Z
    .param p4, "enteringSplitScreenMode"  # Z
    .param p5, "deferEnsuringVisibility"  # Z
    .param p6, "creating"  # Z

    .line 742
    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v3

    .line 743
    .local v3, "currentMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideWindowingMode()I

    move-result v4

    .line 744
    .local v4, "currentOverrideMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v5

    .line 745
    .local v5, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    .line 746
    .local v6, "topTask":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v7

    .line 747
    .local v7, "splitScreenStack":Lcom/android/server/wm/ActivityStack;
    move/from16 v0, p1

    .line 748
    .local v0, "windowingMode":I
    if-nez v2, :cond_24

    .line 749
    invoke-static {v3}, Lcom/android/server/wm/ActivityStack;->isTransientWindowingMode(I)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 751
    iget v0, v1, Lcom/android/server/wm/ActivityStack;->mRestoreOverrideWindowingMode:I

    .line 753
    :cond_24
    iget-object v8, v1, Lcom/android/server/wm/ActivityStack;->mTmpOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v8, v0}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 757
    const/4 v8, 0x0

    if-nez p6, :cond_35

    .line 758
    nop

    .line 759
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v9

    .line 758
    invoke-virtual {v5, v0, v8, v6, v9}, Lcom/android/server/wm/ActivityDisplay;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;I)I

    move-result v0

    .line 761
    :cond_35
    const/4 v9, 0x4

    if-ne v7, v1, :cond_3e

    if-ne v0, v9, :cond_3e

    .line 765
    iget v0, v1, Lcom/android/server/wm/ActivityStack;->mRestoreOverrideWindowingMode:I

    move v10, v0

    goto :goto_3f

    .line 768
    :cond_3e
    move v10, v0

    .end local v0  # "windowingMode":I
    .local v10, "windowingMode":I
    :goto_3f
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityDisplay;->hasSplitScreenPrimaryStack()Z

    move-result v11

    .line 772
    .local v11, "alreadyInSplitScreenMode":Z
    xor-int/lit8 v0, p4, 0x1

    move v12, v0

    .line 774
    .local v12, "sendNonResizeableNotification":Z
    const/4 v13, 0x3

    const/4 v14, 0x1

    if-eqz v11, :cond_83

    if-ne v10, v14, :cond_83

    if-eqz v12, :cond_83

    .line 775
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v15

    if-eqz v15, :cond_83

    .line 776
    if-eq v2, v13, :cond_5b

    if-ne v2, v9, :cond_59

    goto :goto_5b

    :cond_59
    const/4 v15, 0x0

    goto :goto_5c

    :cond_5b
    :goto_5b
    move v15, v14

    .line 779
    .local v15, "preferredSplitScreen":Z
    :goto_5c
    if-nez v15, :cond_60

    if-eqz p6, :cond_83

    .line 783
    :cond_60
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityDismissingDockedStack()V

    .line 784
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 785
    .local v0, "primarySplitStack":Lcom/android/server/wm/ActivityStack;
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    .line 788
    if-ne v0, v1, :cond_7c

    move/from16 v22, p6

    goto :goto_7e

    :cond_7c
    const/16 v22, 0x0

    .line 785
    :goto_7e
    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v22}, Lcom/android/server/wm/ActivityStack;->setWindowingModeInSurfaceTransaction(IZZZZZ)V

    .line 792
    .end local v0  # "primarySplitStack":Lcom/android/server/wm/ActivityStack;
    .end local v15  # "preferredSplitScreen":Z
    :cond_83
    if-ne v3, v10, :cond_8f

    .line 796
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v10}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 797
    return-void

    .line 800
    :cond_8f
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 801
    .local v15, "wm":Lcom/android/server/wm/WindowManagerService;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    .line 806
    .local v8, "topActivity":Lcom/android/server/wm/ActivityRecord;
    move/from16 v16, v10

    .line 807
    .local v16, "likelyResolvedMode":I
    if-nez v10, :cond_ad

    .line 808
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v17

    .line 809
    .local v17, "parent":Lcom/android/server/wm/ConfigurationContainer;
    if-eqz v17, :cond_a6

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v18

    goto :goto_a8

    .line 810
    :cond_a6
    move/from16 v18, v14

    :goto_a8
    move/from16 v16, v18

    move/from16 v9, v16

    goto :goto_af

    .line 807
    .end local v17  # "parent":Lcom/android/server/wm/ConfigurationContainer;
    :cond_ad
    move/from16 v9, v16

    .line 812
    .end local v16  # "likelyResolvedMode":I
    .local v9, "likelyResolvedMode":I
    :goto_af
    const/4 v0, 0x6

    if-eqz v12, :cond_d1

    if-eq v9, v14, :cond_d1

    if-eq v9, v0, :cond_d1

    if-eqz v8, :cond_d1

    .line 816
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->isNonResizableOrForcedResizable()Z

    move-result v18

    if-eqz v18, :cond_d1

    iget-boolean v0, v8, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-nez v0, :cond_d1

    .line 820
    iget-object v0, v8, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 821
    .local v0, "packageName":Ljava/lang/String;
    iget-object v13, v1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v13

    iget v2, v6, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v13, v2, v14, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    .line 825
    .end local v0  # "packageName":Ljava/lang/String;
    :cond_d1
    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 827
    const-string v2, "setWindowingMode"

    if-nez p2, :cond_e7

    if-eqz v8, :cond_e7

    .line 828
    :try_start_da
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e1
    .catchall {:try_start_da .. :try_end_e1} :catchall_e2

    goto :goto_e7

    .line 875
    :catchall_e2
    move-exception v0

    move-object/from16 v20, v6

    goto/16 :goto_1a5

    .line 830
    :cond_e7
    :goto_e7
    :try_start_e7
    invoke-super {v1, v10}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    .line 833
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0
    :try_end_ee
    .catchall {:try_start_e7 .. :try_end_ee} :catchall_1a2

    move v10, v0

    .line 835
    if-eqz p6, :cond_114

    .line 875
    if-eqz p3, :cond_10e

    if-nez v11, :cond_10e

    iget v0, v1, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    if-nez v0, :cond_10e

    const/4 v13, 0x3

    if-ne v10, v13, :cond_10e

    .line 890
    move-object/from16 v20, v6

    const/4 v6, 0x4

    .end local v6  # "topTask":Lcom/android/server/wm/TaskRecord;
    .local v20, "topTask":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v5, v6, v13, v14}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 893
    .local v0, "recentStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 895
    iget-object v2, v1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    goto :goto_110

    .line 875
    .end local v0  # "recentStack":Lcom/android/server/wm/ActivityStack;
    .end local v20  # "topTask":Lcom/android/server/wm/TaskRecord;
    .restart local v6  # "topTask":Lcom/android/server/wm/TaskRecord;
    :cond_10e
    move-object/from16 v20, v6

    .line 897
    .end local v6  # "topTask":Lcom/android/server/wm/TaskRecord;
    .restart local v20  # "topTask":Lcom/android/server/wm/TaskRecord;
    :goto_110
    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 837
    return-void

    .line 840
    .end local v20  # "topTask":Lcom/android/server/wm/TaskRecord;
    .restart local v6  # "topTask":Lcom/android/server/wm/TaskRecord;
    :cond_114
    move-object/from16 v20, v6

    .end local v6  # "topTask":Lcom/android/server/wm/TaskRecord;
    .restart local v20  # "topTask":Lcom/android/server/wm/TaskRecord;
    const/4 v0, 0x2

    if-eq v10, v0, :cond_198

    if-eq v3, v0, :cond_198

    .line 848
    const/4 v6, 0x3

    if-ne v10, v6, :cond_129

    if-nez v7, :cond_121

    goto :goto_129

    .line 852
    :cond_121
    :try_start_121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v6, "Setting primary split-screen windowing mode while there is already one isn\'t currently supported"

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3  # "currentMode":I
    .end local v4  # "currentOverrideMode":I
    .end local v5  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v7  # "splitScreenStack":Lcom/android/server/wm/ActivityStack;
    .end local v8  # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v9  # "likelyResolvedMode":I
    .end local v10  # "windowingMode":I
    .end local v11  # "alreadyInSplitScreenMode":Z
    .end local v12  # "sendNonResizeableNotification":Z
    .end local v15  # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v20  # "topTask":Lcom/android/server/wm/TaskRecord;
    .end local p0  # "this":Lcom/android/server/wm/ActivityStack;
    .end local p1  # "preferredWindowingMode":I
    .end local p2  # "animate":Z
    .end local p3  # "showRecents":Z
    .end local p4  # "enteringSplitScreenMode":Z
    .end local p5  # "deferEnsuringVisibility":Z
    .end local p6  # "creating":Z
    throw v0

    .line 856
    .restart local v3  # "currentMode":I
    .restart local v4  # "currentOverrideMode":I
    .restart local v5  # "display":Lcom/android/server/wm/ActivityDisplay;
    .restart local v7  # "splitScreenStack":Lcom/android/server/wm/ActivityStack;
    .restart local v8  # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v9  # "likelyResolvedMode":I
    .restart local v10  # "windowingMode":I
    .restart local v11  # "alreadyInSplitScreenMode":Z
    .restart local v12  # "sendNonResizeableNotification":Z
    .restart local v15  # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v20  # "topTask":Lcom/android/server/wm/TaskRecord;
    .restart local p0  # "this":Lcom/android/server/wm/ActivityStack;
    .restart local p1  # "preferredWindowingMode":I
    .restart local p2  # "animate":Z
    .restart local p3  # "showRecents":Z
    .restart local p4  # "enteringSplitScreenMode":Z
    .restart local p5  # "deferEnsuringVisibility":Z
    .restart local p6  # "creating":Z
    :cond_129
    :goto_129
    invoke-static {v10}, Lcom/android/server/wm/ActivityStack;->isTransientWindowingMode(I)Z

    move-result v0

    if-eqz v0, :cond_13d

    invoke-static {v3}, Lcom/android/server/wm/ActivityStack;->isTransientWindowingMode(I)Z

    move-result v0

    if-nez v0, :cond_13d

    .line 858
    const/4 v0, 0x6

    if-eq v4, v0, :cond_13a

    move v0, v4

    goto :goto_13b

    :cond_13a
    move v0, v14

    :goto_13b
    iput v0, v1, Lcom/android/server/wm/ActivityStack;->mRestoreOverrideWindowingMode:I

    .line 862
    :cond_13d
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 863
    if-eq v10, v14, :cond_159

    .line 864
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result v0

    if-eqz v0, :cond_152

    .line 865
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_159

    .line 867
    :cond_152
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v6}, Lcom/android/server/wm/TaskStack;->getRawBounds(Landroid/graphics/Rect;)V

    .line 871
    :cond_159
    :goto_159
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-static {v0, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16b

    .line 872
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v6}, Lcom/android/server/wm/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_16b
    .catchall {:try_start_121 .. :try_end_16b} :catchall_1a0

    .line 875
    :cond_16b
    if-eqz p3, :cond_185

    if-nez v11, :cond_185

    iget v6, v1, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    if-nez v6, :cond_185

    const/4 v6, 0x3

    if-ne v10, v6, :cond_185

    .line 890
    const/4 v13, 0x4

    invoke-virtual {v5, v13, v6, v14}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 893
    .local v6, "recentStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v6, v2}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 895
    iget-object v2, v1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    .line 897
    .end local v6  # "recentStack":Lcom/android/server/wm/ActivityStack;
    :cond_185
    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 898
    nop

    .line 900
    if-nez p5, :cond_197

    .line 901
    iget-object v2, v1, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v0, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v0, v14}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 902
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 904
    :cond_197
    return-void

    .line 844
    :cond_198
    :try_start_198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v6, "Changing pinned windowing mode not currently supported"

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3  # "currentMode":I
    .end local v4  # "currentOverrideMode":I
    .end local v5  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v7  # "splitScreenStack":Lcom/android/server/wm/ActivityStack;
    .end local v8  # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v9  # "likelyResolvedMode":I
    .end local v10  # "windowingMode":I
    .end local v11  # "alreadyInSplitScreenMode":Z
    .end local v12  # "sendNonResizeableNotification":Z
    .end local v15  # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v20  # "topTask":Lcom/android/server/wm/TaskRecord;
    .end local p0  # "this":Lcom/android/server/wm/ActivityStack;
    .end local p1  # "preferredWindowingMode":I
    .end local p2  # "animate":Z
    .end local p3  # "showRecents":Z
    .end local p4  # "enteringSplitScreenMode":Z
    .end local p5  # "deferEnsuringVisibility":Z
    .end local p6  # "creating":Z
    throw v0
    :try_end_1a0
    .catchall {:try_start_198 .. :try_end_1a0} :catchall_1a0

    .line 875
    .restart local v3  # "currentMode":I
    .restart local v4  # "currentOverrideMode":I
    .restart local v5  # "display":Lcom/android/server/wm/ActivityDisplay;
    .restart local v7  # "splitScreenStack":Lcom/android/server/wm/ActivityStack;
    .restart local v8  # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v9  # "likelyResolvedMode":I
    .restart local v10  # "windowingMode":I
    .restart local v11  # "alreadyInSplitScreenMode":Z
    .restart local v12  # "sendNonResizeableNotification":Z
    .restart local v15  # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v20  # "topTask":Lcom/android/server/wm/TaskRecord;
    .restart local p0  # "this":Lcom/android/server/wm/ActivityStack;
    .restart local p1  # "preferredWindowingMode":I
    .restart local p2  # "animate":Z
    .restart local p3  # "showRecents":Z
    .restart local p4  # "enteringSplitScreenMode":Z
    .restart local p5  # "deferEnsuringVisibility":Z
    .restart local p6  # "creating":Z
    :catchall_1a0
    move-exception v0

    goto :goto_1a5

    .end local v20  # "topTask":Lcom/android/server/wm/TaskRecord;
    .local v6, "topTask":Lcom/android/server/wm/TaskRecord;
    :catchall_1a2
    move-exception v0

    move-object/from16 v20, v6

    .end local v6  # "topTask":Lcom/android/server/wm/TaskRecord;
    .restart local v20  # "topTask":Lcom/android/server/wm/TaskRecord;
    :goto_1a5
    if-eqz p3, :cond_1bf

    if-nez v11, :cond_1bf

    iget v6, v1, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    if-nez v6, :cond_1bf

    const/4 v6, 0x3

    if-ne v10, v6, :cond_1bf

    .line 890
    const/4 v13, 0x4

    invoke-virtual {v5, v13, v6, v14}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 893
    .local v6, "recentStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v6, v2}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 895
    iget-object v2, v1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    .line 897
    .end local v6  # "recentStack":Lcom/android/server/wm/ActivityStack;
    :cond_1bf
    invoke-virtual {v15}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method private skipResizeAnimation(Z)Z
    .registers 6
    .param p1, "toFullscreen"  # Z

    .line 5868
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 5869
    return v0

    .line 5871
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 5872
    .local v1, "parentConfig":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningNonOverlayTaskActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 5873
    .local v2, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_19

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityRecord;->isConfigurationCompatible(Landroid/content/res/Configuration;)Z

    move-result v3

    if-nez v3, :cond_19

    const/4 v0, 0x1

    :cond_19
    return v0
.end method

.method private updateBehindFullscreen(ZZLcom/android/server/wm/ActivityRecord;)Z
    .registers 6
    .param p1, "stackInvisible"  # Z
    .param p2, "behindFullscreenActivity"  # Z
    .param p3, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 2546
    iget-boolean v0, p3, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    if-eqz v0, :cond_2f

    .line 2547
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fullscreen: at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " stackInvisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " behindFullscreenActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2551
    :cond_2e
    const/4 p2, 0x1

    .line 2553
    :cond_2f
    return p2
.end method

.method private updateTaskMovement(Lcom/android/server/wm/TaskRecord;Z)V
    .registers 7
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "toFront"  # Z

    .line 5037
    iget-boolean v0, p1, Lcom/android/server/wm/TaskRecord;->isPersistable:Z

    if-eqz v0, :cond_13

    .line 5038
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/wm/TaskRecord;->mLastTimeMoved:J

    .line 5042
    if-nez p2, :cond_13

    .line 5043
    iget-wide v0, p1, Lcom/android/server/wm/TaskRecord;->mLastTimeMoved:J

    const-wide/16 v2, -0x1

    mul-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/server/wm/TaskRecord;->mLastTimeMoved:J

    .line 5046
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->invalidateTaskLayers()V

    .line 5047
    return-void
.end method

.method private updateTransitLocked(ILandroid/app/ActivityOptions;)V
    .registers 5
    .param p1, "transit"  # I
    .param p2, "options"  # Landroid/app/ActivityOptions;

    .line 5025
    if-eqz p2, :cond_17

    .line 5026
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 5027
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_14

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 5028
    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    goto :goto_17

    .line 5030
    :cond_14
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 5033
    .end local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_17
    :goto_17
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 5034
    return-void
.end method


# virtual methods
.method final activityDestroyedLocked(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 6
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "reason"  # Ljava/lang/String;

    .line 4872
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4874
    .local v0, "origId":J
    :try_start_4
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/android/server/wm/ActivityStack;->activityDestroyedLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    .line 4876
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4877
    nop

    .line 4878
    return-void

    .line 4876
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method final activityDestroyedLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .registers 5
    .param p1, "record"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reason"  # Ljava/lang/String;

    .line 4885
    if-eqz p1, :cond_9

    .line 4886
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 4889
    :cond_9
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONTAINERS:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activityDestroyedLocked: r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4891
    :cond_23
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->isInStackLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 4892
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 4893
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 4894
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 4898
    :cond_3b
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 4899
    return-void
.end method

.method final activityPausedLocked(Landroid/os/IBinder;Z)V
    .registers 12
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "timeout"  # Z

    .line 1835
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity paused: token="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", timeout="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    :cond_22
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1840
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_cd

    .line 1841
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1842
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v5, 0x1

    if-ne v4, v0, :cond_74

    .line 1843
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_58

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moving to PAUSED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1844
    if-eqz p2, :cond_4c

    const-string v4, " (due to timeout)"

    goto :goto_4e

    :cond_4c
    const-string v4, " (pause complete)"

    :goto_4e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1843
    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    :cond_58
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 1847
    :try_start_5f
    invoke-direct {p0, v5, v2}, Lcom/android/server/wm/ActivityStack;->completePauseLocked(ZLcom/android/server/wm/ActivityRecord;)V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_6b

    .line 1849
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1850
    nop

    .line 1851
    return-void

    .line 1849
    :catchall_6b
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v1

    .line 1853
    :cond_74
    const/16 v4, 0x753c

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 1854
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v5, v6, v7

    const/4 v5, 0x3

    .line 1855
    iget-object v8, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v8, :cond_98

    .line 1856
    iget-object v8, v8, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    goto :goto_9a

    :cond_98
    const-string v8, "(none)"

    :goto_9a
    aput-object v8, v6, v5

    .line 1853
    invoke-static {v4, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1857
    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v4

    if-eqz v4, :cond_cd

    .line 1858
    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v5, "activityPausedLocked"

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1859
    iget-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_cd

    .line 1860
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v4, :cond_ca

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Executing finish of failed to pause activity: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    :cond_ca
    invoke-virtual {p0, v0, v7, v3, v5}, Lcom/android/server/wm/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/wm/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    .line 1868
    :cond_cd
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1869
    return-void
.end method

.method addStartingWindowsForVisibleActivities(Z)V
    .registers 4
    .param p1, "taskSwitch"  # Z

    .line 2344
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_18

    .line 2345
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskRecord;->addStartingWindowsForVisibleActivities(Z)V

    .line 2344
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2347
    .end local v0  # "taskNdx":I
    :cond_18
    return-void
.end method

.method addTask(Lcom/android/server/wm/TaskRecord;IZLjava/lang/String;)V
    .registers 8
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "position"  # I
    .param p3, "schedulePictureInPictureModeChange"  # Z
    .param p4, "reason"  # Ljava/lang/String;

    .line 5719
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5720
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isSingleTaskInstance()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_2b

    .line 5721
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can only have one child on stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5724
    :cond_2b
    :goto_2b
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/ActivityStack;->getAdjustedPositionForTask(Lcom/android/server/wm/TaskRecord;ILcom/android/server/wm/ActivityRecord;)I

    move-result p2

    .line 5725
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_3a

    const/4 v0, 0x1

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    .line 5726
    .local v0, "toTop":Z
    :goto_3b
    invoke-direct {p0, p1, p4, v0}, Lcom/android/server/wm/ActivityStack;->preAddTask(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 5728
    .local v1, "prevStack":Lcom/android/server/wm/ActivityStack;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5729
    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskRecord;->setStack(Lcom/android/server/wm/ActivityStack;)V

    .line 5731
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ActivityStack;->updateTaskMovement(Lcom/android/server/wm/TaskRecord;Z)V

    .line 5733
    invoke-direct {p0, p1, v1, p3}, Lcom/android/server/wm/ActivityStack;->postAddTask(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityStack;Z)V

    .line 5734
    return-void
.end method

.method addTask(Lcom/android/server/wm/TaskRecord;ZLjava/lang/String;)V
    .registers 6
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "toTop"  # Z
    .param p3, "reason"  # Ljava/lang/String;

    .line 5707
    if-eqz p2, :cond_6

    const v0, 0x7fffffff

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/server/wm/ActivityStack;->addTask(Lcom/android/server/wm/TaskRecord;IZLjava/lang/String;)V

    .line 5708
    if-eqz p2, :cond_10

    .line 5710
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->positionChildWindowContainerAtTop(Lcom/android/server/wm/TaskRecord;)V

    .line 5712
    :cond_10
    return-void
.end method

.method addToStopping(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V
    .registers 12
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "scheduleIdle"  # Z
    .param p3, "idleDelayed"  # Z
    .param p4, "reason"  # Ljava/lang/String;

    .line 1964
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez v0, :cond_35

    .line 1965
    const/16 v0, 0x7572

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    .line 1966
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v5, 0x2

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v6, v4, v5

    aput-object p4, v4, v2

    .line 1965
    invoke-static {v0, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1967
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1974
    :cond_35
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v2, :cond_4d

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->frontOfTask:Z

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 1975
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v3, :cond_4c

    goto :goto_4d

    :cond_4c
    goto :goto_4e

    :cond_4d
    :goto_4d
    move v1, v3

    :goto_4e
    move v0, v1

    .line 1976
    .local v0, "forceIdle":Z
    if-nez p2, :cond_58

    if-eqz v0, :cond_54

    goto :goto_58

    .line 1985
    :cond_54
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->checkReadyForSleep()V

    goto :goto_89

    .line 1977
    :cond_58
    :goto_58
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v1, :cond_7c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling idle now: forceIdle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "immediate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v2, p3, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    :cond_7c
    if-nez p3, :cond_84

    .line 1980
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleIdleLocked()V

    goto :goto_89

    .line 1982
    :cond_84
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 1987
    :goto_89
    return-void
.end method

.method adjustFocusToNextFocusableStack(Ljava/lang/String;)Lcom/android/server/wm/ActivityStack;
    .registers 3
    .param p1, "reason"  # Ljava/lang/String;

    .line 3877
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method affectedBySplitScreenResize()Z
    .registers 4

    .line 2373
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->supportsSplitScreenWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2374
    return v1

    .line 2376
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    .line 2377
    .local v0, "windowingMode":I
    const/4 v2, 0x5

    if-eq v0, v2, :cond_13

    const/4 v2, 0x2

    if-eq v0, v2, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1
.end method

.method animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V
    .registers 8
    .param p1, "sourceHintBounds"  # Landroid/graphics/Rect;
    .param p2, "toBounds"  # Landroid/graphics/Rect;
    .param p3, "animationDuration"  # I
    .param p4, "fromFullscreen"  # Z

    .line 5844
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 5845
    :cond_7
    const/4 v0, 0x1

    if-nez p2, :cond_c

    move v1, v0

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityStack;->skipResizeAnimation(Z)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 5846
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v2, p0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->moveTasksToFullscreenStack(IZ)V

    goto :goto_29

    .line 5848
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-nez v0, :cond_22

    return-void

    .line 5849
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    invoke-virtual {v0, p2, p1, p3, p4}, Lcom/android/server/wm/TaskStack;->animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    .line 5852
    :goto_29
    return-void
.end method

.method awakeFromSleepingLocked()V
    .registers 7

    .line 1566
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_2b

    .line 1567
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    iget-object v2, v2, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1568
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "activityNdx":I
    :goto_19
    if-ltz v3, :cond_28

    .line 1569
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityRecord;->setSleeping(Z)V

    .line 1568
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 1566
    .end local v2  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v3  # "activityNdx":I
    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1572
    .end local v0  # "taskNdx":I
    :cond_2b
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_3d

    .line 1573
    const-string v0, "ActivityTaskManager"

    const-string v2, "awakeFromSleepingLocked: previously pausing activity didn\'t pause"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityStack;->activityPausedLocked(Landroid/os/IBinder;Z)V

    .line 1576
    :cond_3d
    return-void
.end method

.method canShowWithInsecureKeyguard()Z
    .registers 5

    .line 2437
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 2438
    .local v0, "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v0, :cond_14

    .line 2443
    iget-object v1, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getFlags()I

    move-result v1

    .line 2444
    .local v1, "flags":I
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    return v2

    .line 2439
    .end local v1  # "flags":I
    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stack is not attached to any display, stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method cancelInitializingActivities()V
    .registers 11

    .line 2611
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2612
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x1

    .line 2615
    .local v1, "aboveTop":Z
    const/4 v2, 0x0

    .line 2617
    .local v2, "behindFullscreenActivity":Z
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 2620
    const/4 v1, 0x0

    .line 2621
    const/4 v2, 0x1

    .line 2624
    :cond_f
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "taskNdx":I
    :goto_17
    if-ltz v3, :cond_6c

    .line 2625
    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskRecord;

    iget-object v5, v5, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2626
    .local v5, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v4

    .local v6, "activityNdx":I
    :goto_28
    if-ltz v6, :cond_69

    .line 2627
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    .line 2628
    .local v7, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_60

    .line 2629
    if-ne v7, v0, :cond_5c

    .line 2630
    const/4 v1, 0x0

    .line 2632
    iget-boolean v8, v7, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v8, :cond_5c

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/android/server/wm/ActivityDisplay;->isTopStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v8

    if-nez v8, :cond_5c

    .line 2633
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "removeOrphanedStartingWindow is not top stack and Activity is not visible,r="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ActivityTaskManager"

    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2634
    invoke-virtual {v7, v4}, Lcom/android/server/wm/ActivityRecord;->removeOrphanedStartingWindow(Z)V

    .line 2638
    :cond_5c
    iget-boolean v8, v7, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    or-int/2addr v2, v8

    .line 2639
    goto :goto_66

    .line 2642
    :cond_60
    invoke-virtual {v7, v2}, Lcom/android/server/wm/ActivityRecord;->removeOrphanedStartingWindow(Z)V

    .line 2643
    iget-boolean v8, v7, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    or-int/2addr v2, v8

    .line 2626
    .end local v7  # "r":Lcom/android/server/wm/ActivityRecord;
    :goto_66
    add-int/lit8 v6, v6, -0x1

    goto :goto_28

    .line 2624
    .end local v5  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v6  # "activityNdx":I
    :cond_69
    add-int/lit8 v3, v3, -0x1

    goto :goto_17

    .line 2646
    .end local v3  # "taskNdx":I
    :cond_6c
    return-void
.end method

.method checkKeyguardVisibility(Lcom/android/server/wm/ActivityRecord;ZZ)Z
    .registers 12
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "shouldBeVisible"  # Z
    .param p3, "isTop"  # Z

    .line 2395
    iget v0, p0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    goto :goto_8

    :cond_7
    move v0, v1

    .line 2396
    .local v0, "displayId":I
    :goto_8
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v2

    .line 2397
    invoke-virtual {v2, v0}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v2

    .line 2398
    .local v2, "keyguardOrAodShowing":Z
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result v3

    .line 2399
    .local v3, "keyguardLocked":Z
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v4

    .line 2400
    .local v4, "showWhenLocked":Z
    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v6, 0x1

    if-eqz v5, :cond_2f

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    .line 2401
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->containsDismissKeyguardWindow()Z

    move-result v5

    if-eqz v5, :cond_2f

    move v5, v6

    goto :goto_30

    :cond_2f
    move v5, v1

    .line 2402
    .local v5, "dismissKeyguard":Z
    :goto_30
    if-eqz p2, :cond_59

    .line 2403
    if-eqz v5, :cond_3a

    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v7, :cond_3a

    .line 2404
    iput-object p1, p0, Lcom/android/server/wm/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2409
    :cond_3a
    if-eqz p3, :cond_41

    .line 2410
    iget-boolean v7, p0, Lcom/android/server/wm/ActivityStack;->mTopActivityOccludesKeyguard:Z

    or-int/2addr v7, v4

    iput-boolean v7, p0, Lcom/android/server/wm/ActivityStack;->mTopActivityOccludesKeyguard:Z

    .line 2413
    :cond_41
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->canShowWithInsecureKeyguard()Z

    move-result v7

    if-eqz v7, :cond_55

    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 2414
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/KeyguardController;->canDismissKeyguard()Z

    move-result v7

    if-eqz v7, :cond_55

    move v7, v6

    goto :goto_56

    :cond_55
    move v7, v1

    .line 2415
    .local v7, "canShowWithKeyguard":Z
    :goto_56
    if-eqz v7, :cond_59

    .line 2416
    return v6

    .line 2419
    .end local v7  # "canShowWithKeyguard":Z
    :cond_59
    if-eqz v2, :cond_6d

    .line 2422
    if-eqz p2, :cond_6b

    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v7

    .line 2423
    invoke-virtual {v7, p1, v5}, Lcom/android/server/wm/KeyguardController;->canShowActivityWhileKeyguardShowing(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v7

    if-eqz v7, :cond_6b

    move v1, v6

    goto :goto_6c

    :cond_6b
    nop

    .line 2422
    :goto_6c
    return v1

    .line 2424
    :cond_6d
    if-eqz v3, :cond_7f

    .line 2425
    if-eqz p2, :cond_7e

    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v7

    invoke-virtual {v7, v5, v4}, Lcom/android/server/wm/KeyguardController;->canShowWhileOccluded(ZZ)Z

    move-result v7

    if-eqz v7, :cond_7e

    move v1, v6

    :cond_7e
    return v1

    .line 2428
    :cond_7f
    return p2
.end method

.method checkReadyForSleep()V
    .registers 3

    .line 1595
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->goToSleepIfPossible(Z)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1596
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 1598
    :cond_13
    return-void
.end method

.method clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V
    .registers 8
    .param p1, "except"  # Lcom/android/server/am/AppTimeTracker;

    .line 2563
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_2f

    .line 2564
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 2565
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    iget-object v2, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2566
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "activityNdx":I
    :goto_1a
    if-ltz v3, :cond_2c

    .line 2567
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 2568
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eq v5, p1, :cond_29

    .line 2569
    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 2566
    .end local v4  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_29
    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    .line 2563
    .end local v1  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v2  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v3  # "activityNdx":I
    :cond_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2573
    .end local v0  # "taskNdx":I
    :cond_2f
    return-void
.end method

.method closeSystemDialogsLocked()V
    .registers 11

    .line 5344
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_3a

    .line 5345
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    iget-object v1, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5346
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "activityNdx":I
    :goto_1a
    if-ltz v2, :cond_37

    .line 5347
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 5348
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_34

    .line 5349
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    const-string v8, "close-sys"

    move-object v4, p0

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 5346
    .end local v3  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_34
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 5344
    .end local v1  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v2  # "activityNdx":I
    :cond_37
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 5353
    .end local v0  # "taskNdx":I
    :cond_3a
    return-void
.end method

.method continueUpdateBounds()V
    .registers 2

    .line 1057
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mUpdateBoundsDeferred:Z

    if-eqz v0, :cond_1e

    .line 1058
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mUpdateBoundsDeferred:Z

    .line 1059
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mUpdateBoundsDeferredCalled:Z

    if-eqz v0, :cond_15

    .line 1060
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->setTaskBounds(Landroid/graphics/Rect;)V

    .line 1061
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->setBounds(Landroid/graphics/Rect;)I

    .line 1063
    :cond_15
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mUpdateDisplayedBoundsDeferredCalled:Z

    if-eqz v0, :cond_1e

    .line 1064
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mDeferredDisplayedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->setTaskDisplayedBounds(Landroid/graphics/Rect;)V

    .line 1067
    :cond_1e
    return-void
.end method

.method convertActivityToTranslucent(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 2557
    iput-object p1, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 2558
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2559
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2560
    return-void
.end method

.method createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/wm/TaskRecord;
    .registers 17
    .param p1, "taskId"  # I
    .param p2, "info"  # Landroid/content/pm/ActivityInfo;
    .param p3, "intent"  # Landroid/content/Intent;
    .param p4, "voiceSession"  # Landroid/service/voice/IVoiceInteractionSession;
    .param p5, "voiceInteractor"  # Lcom/android/internal/app/IVoiceInteractor;
    .param p6, "toTop"  # Z

    .line 5678
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
    .param p1, "taskId"  # I
    .param p2, "info"  # Landroid/content/pm/ActivityInfo;
    .param p3, "intent"  # Landroid/content/Intent;
    .param p4, "voiceSession"  # Landroid/service/voice/IVoiceInteractionSession;
    .param p5, "voiceInteractor"  # Lcom/android/internal/app/IVoiceInteractor;
    .param p6, "toTop"  # Z
    .param p7, "activity"  # Lcom/android/server/wm/ActivityRecord;
    .param p8, "source"  # Lcom/android/server/wm/ActivityRecord;
    .param p9, "options"  # Landroid/app/ActivityOptions;

    .line 5686
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

    .line 5689
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    const-string v2, "createTaskRecord"

    invoke-virtual {p0, v1, v8, v2}, Lcom/android/server/wm/ActivityStack;->addTask(Lcom/android/server/wm/TaskRecord;ZLjava/lang/String;)V

    .line 5690
    iget v2, v0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v2, v4, :cond_21

    goto :goto_22

    :cond_21
    move v2, v3

    .line 5691
    .local v2, "displayId":I
    :goto_22
    iget-object v4, v0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v4

    .line 5692
    invoke-virtual {v4, v2}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v4

    .line 5693
    .local v4, "isLockscreenShown":Z
    iget-object v5, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v9

    iget-object v11, v7, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 5694
    move-object v10, v1

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v5

    if-nez v5, :cond_58

    .line 5695
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->matchParentBounds()Z

    move-result v5

    if-nez v5, :cond_58

    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v5

    if-eqz v5, :cond_58

    if-nez v4, :cond_58

    .line 5696
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 5698
    :cond_58
    iget v5, v7, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_5f

    const/4 v3, 0x1

    :cond_5f
    invoke-virtual {v1, v8, v3}, Lcom/android/server/wm/TaskRecord;->createTask(ZZ)V

    .line 5699
    return-object v1
.end method

.method createTaskStack(IZLandroid/graphics/Rect;)V
    .registers 8
    .param p1, "displayId"  # I
    .param p2, "onTop"  # Z
    .param p3, "outBounds"  # Landroid/graphics/Rect;

    .line 553
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 554
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_2e

    .line 558
    new-instance v1, Lcom/android/server/wm/TaskStack;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v3, p0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-direct {v1, v2, v3, p0}, Lcom/android/server/wm/TaskStack;-><init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/ActivityStack;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    .line 559
    iget v1, p0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/server/wm/DisplayContent;->setStackOnDisplay(IZLcom/android/server/wm/TaskStack;)V

    .line 560
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->matchParentBounds()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 561
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2d

    .line 563
    :cond_28
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, p3}, Lcom/android/server/wm/TaskStack;->getRawBounds(Landroid/graphics/Rect;)V

    .line 565
    :goto_2d
    return-void

    .line 555
    :cond_2e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to add stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to unknown displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method deferScheduleMultiWindowModeChanged()Z
    .registers 3

    .line 1027
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 1034
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-nez v0, :cond_e

    return v1

    .line 1035
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->deferScheduleMultiWindowModeChanged()Z

    move-result v0

    return v0

    .line 1037
    :cond_17
    return v1
.end method

.method deferUpdateBounds()V
    .registers 2

    .line 1045
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mUpdateBoundsDeferred:Z

    if-nez v0, :cond_a

    .line 1046
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mUpdateBoundsDeferred:Z

    .line 1047
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mUpdateBoundsDeferredCalled:Z

    .line 1049
    :cond_a
    return-void
.end method

.method final destroyActivityLocked(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)Z
    .registers 20
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "removeFromApp"  # Z
    .param p3, "reason"  # Ljava/lang/String;

    .line 4772
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    const-string v4, "ActivityTaskManager"

    if-nez v0, :cond_10

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v0, :cond_41

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing activity from "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": token="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", app="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4774
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v5

    if-eqz v5, :cond_35

    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v5, v5, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    goto :goto_37

    :cond_35
    const-string v5, "(null)"

    :goto_37
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4772
    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4776
    :cond_41
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v2, v0, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_6d

    .line 4777
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_6c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "activity "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " already destroying.skipping request with reason:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4779
    :cond_6c
    return v5

    .line 4782
    :cond_6d
    const/16 v0, 0x7542

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 4783
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    .line 4784
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v9

    iget v9, v9, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x3

    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v9, v6, v7

    const/4 v7, 0x4

    aput-object v3, v6, v7

    .line 4782
    invoke-static {v0, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4786
    const/4 v6, 0x0

    .line 4788
    .local v6, "removedFromHistory":Z
    invoke-direct {v1, v2, v5, v5}, Lcom/android/server/wm/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 4790
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v7

    .line 4792
    .local v7, "hadApp":Z
    const-string v9, "Clearing app during destroy for activity "

    const/4 v10, 0x0

    const-string v11, "Moving to DESTROYED: "

    if-eqz v7, :cond_194

    .line 4793
    if-eqz p2, :cond_cf

    .line 4794
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowProcessController;->removeActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 4795
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v0

    if-nez v0, :cond_c2

    .line 4796
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v12, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v12}, Lcom/android/server/wm/ActivityTaskManagerService;->clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V

    .line 4798
    :cond_c2
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v0

    if-nez v0, :cond_cf

    .line 4802
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v8, v5, v8}, Lcom/android/server/wm/WindowProcessController;->updateProcessInfo(ZZZ)V

    .line 4807
    :cond_cf
    const/4 v8, 0x0

    .line 4810
    .local v8, "skipDestroy":Z
    :try_start_d0
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_e8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Destroying: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4811
    :cond_e8
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v12, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v12

    iget-object v13, v2, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v14, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    iget v15, v2, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    .line 4812
    invoke-static {v14, v15}, Landroid/app/servertransaction/DestroyActivityItem;->obtain(ZI)Landroid/app/servertransaction/DestroyActivityItem;

    move-result-object v14

    .line 4811
    invoke-virtual {v0, v12, v13, v14}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_101} :catch_102

    .line 4823
    goto :goto_11d

    .line 4813
    :catch_102
    move-exception v0

    .line 4818
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v12, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v12, :cond_11d

    .line 4819
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " exceptionInScheduleDestroy"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v2, v12}, Lcom/android/server/wm/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 4820
    const/4 v6, 0x1

    .line 4821
    const/4 v8, 0x1

    .line 4825
    .end local v0  # "e":Ljava/lang/Exception;
    :cond_11d
    :goto_11d
    iput-boolean v5, v2, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    .line 4834
    iget-boolean v0, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_159

    if-nez v8, :cond_159

    .line 4835
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_142

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Moving to DESTROYING: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " (destroy requested)"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4837
    :cond_142
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v9, "destroyActivityLocked. finishing and not skipping destroy"

    invoke-virtual {v2, v0, v9}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4839
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x66

    invoke-virtual {v0, v9, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4840
    .local v0, "msg":Landroid/os/Message;
    iget-object v9, v1, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x2710

    invoke-virtual {v9, v0, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4841
    .end local v0  # "msg":Landroid/os/Message;
    goto :goto_193

    .line 4842
    :cond_159
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_174

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " (destroy skipped)"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4844
    :cond_174
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v11, "destroyActivityLocked. not finishing or skipping destroy"

    invoke-virtual {v2, v0, v11}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4846
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_APP:Z

    if-eqz v0, :cond_191

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4847
    :cond_191
    iput-object v10, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 4849
    .end local v8  # "skipDestroy":Z
    :goto_193
    goto :goto_1e8

    .line 4851
    :cond_194
    iget-boolean v0, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_1ae

    .line 4852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " hadNoApp"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/android/server/wm/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 4853
    const/4 v6, 0x1

    goto :goto_1e8

    .line 4855
    :cond_1ae
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_1c9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " (no app)"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4856
    :cond_1c9
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v8, "destroyActivityLocked. not finishing and had no app"

    invoke-virtual {v2, v0, v8}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4857
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_APP:Z

    if-eqz v0, :cond_1e6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4858
    :cond_1e6
    iput-object v10, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 4862
    :goto_1e8
    iput v5, v2, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    .line 4864
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20d

    if-eqz v7, :cond_20d

    .line 4865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " being finished, but not in LRU list"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4868
    :cond_20d
    return v6
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Z)Z
    .registers 23
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "dumpAll"  # Z
    .param p4, "dumpClient"  # Z
    .param p5, "dumpPackage"  # Ljava/lang/String;
    .param p6, "needSep"  # Z

    .line 5508
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

    .line 5509
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5510
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5508
    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5511
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

    .line 5512
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

    .line 5514
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/wm/ActivityStack;->dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Z)Z

    move-result v15

    .line 5517
    .local v15, "printed":Z
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

    .line 5521
    .end local v15  # "printed":Z
    .local v1, "printed":Z
    move v2, v1

    .line 5522
    .end local p6  # "needSep":Z
    .local v2, "needSep":Z
    iget-object v3, v0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v4, "    mPausingActivity: "

    invoke-static {v13, v3, v14, v2, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v3

    .line 5524
    .local v3, "pr":Z
    if-eqz v3, :cond_96

    .line 5525
    const/4 v1, 0x1

    .line 5526
    const/4 v2, 0x0

    .line 5528
    :cond_96
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    const-string v5, "    mResumedActivity: "

    invoke-static {v13, v4, v14, v2, v5}, Lcom/android/server/wm/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v3

    .line 5530
    if-eqz v3, :cond_a4

    .line 5531
    const/4 v1, 0x1

    .line 5532
    const/4 v2, 0x0

    .line 5534
    :cond_a4
    if-eqz p3, :cond_bb

    .line 5535
    iget-object v4, v0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v5, "    mLastPausedActivity: "

    invoke-static {v13, v4, v14, v2, v5}, Lcom/android/server/wm/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v3

    .line 5537
    if-eqz v3, :cond_b2

    .line 5538
    const/4 v1, 0x1

    .line 5539
    const/4 v2, 0x1

    .line 5541
    :cond_b2
    iget-object v4, v0, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v5, "    mLastNoHistoryActivity: "

    invoke-static {v13, v4, v14, v2, v5}, Lcom/android/server/wm/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 5544
    :cond_bb
    return v1
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Z)Z
    .registers 25
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "dumpAll"  # Z
    .param p4, "dumpClient"  # Z
    .param p5, "dumpPackage"  # Ljava/lang/String;
    .param p6, "needSep"  # Z

    .line 5550
    move-object/from16 v0, p0

    move-object/from16 v13, p2

    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 5551
    const/4 v1, 0x0

    return v1

    .line 5553
    :cond_e
    const-string v14, "    "

    .line 5554
    .local v14, "prefix":Ljava/lang/String;
    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v15, 0x1

    sub-int/2addr v1, v15

    move v12, v1

    .local v12, "taskNdx":I
    :goto_19
    if-ltz v12, :cond_df

    .line 5555
    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/server/wm/TaskRecord;

    .line 5556
    .local v11, "task":Lcom/android/server/wm/TaskRecord;
    if-eqz p6, :cond_2b

    .line 5557
    const-string v1, ""

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5559
    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    Task id #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/wm/TaskRecord;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mMinWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/android/server/wm/TaskRecord;->mMinWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mMinHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v11, Lcom/android/server/wm/TaskRecord;->mMinHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mLastNonFullscreenBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    * "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5565
    const-string v1, "      "

    invoke-virtual {v11, v13, v1}, Lcom/android/server/wm/TaskRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5566
    iget-object v1, v0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    iget-object v3, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v6, 0x1

    xor-int/lit8 v7, p3, 0x1

    const/4 v10, 0x0

    const/16 v16, 0x0

    const-string v4, "    "

    const-string v5, "Hist"

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v17, v11

    .end local v11  # "task":Lcom/android/server/wm/TaskRecord;
    .local v17, "task":Lcom/android/server/wm/TaskRecord;
    move-object/from16 v11, v16

    move/from16 v16, v12

    .end local v12  # "taskNdx":I
    .local v16, "taskNdx":I
    move-object/from16 v12, v17

    invoke-static/range {v1 .. v12}, Lcom/android/server/wm/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/wm/TaskRecord;)Z

    .line 5554
    .end local v17  # "task":Lcom/android/server/wm/TaskRecord;
    add-int/lit8 v12, v16, -0x1

    .end local v16  # "taskNdx":I
    .restart local v12  # "taskNdx":I
    goto/16 :goto_19

    .line 5569
    .end local v12  # "taskNdx":I
    :cond_df
    return v15
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/wm/ActivityRecord;IZ)V
    .registers 5
    .param p1, "starting"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"  # I
    .param p3, "preserveWindows"  # Z

    .line 2202
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 2204
    return-void
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .registers 31
    .param p1, "starting"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"  # I
    .param p3, "preserveWindows"  # Z
    .param p4, "notifyClients"  # Z

    .line 2214
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p4

    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/android/server/wm/ActivityStack;->mTopActivityOccludesKeyguard:Z

    .line 2215
    const/4 v10, 0x0

    iput-object v10, v7, Lcom/android/server/wm/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2216
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/KeyguardController;->beginActivityVisibilityUpdate()V

    .line 2218
    :try_start_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    move-object v11, v1

    .line 2219
    .local v11, "top":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_298

    const-string v12, "ActivityTaskManager"

    if-eqz v1, :cond_40

    :try_start_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ensureActivitiesVisible behind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " configChanges=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2220
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2219
    invoke-static {v12, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    :cond_40
    if-eqz v11, :cond_45

    .line 2222
    invoke-direct {v7, v11}, Lcom/android/server/wm/ActivityStack;->checkTranslucentActivityWaiting(Lcom/android/server/wm/ActivityRecord;)V

    .line 2227
    :cond_45
    const/4 v13, 0x1

    if-eqz v11, :cond_4a

    move v1, v13

    goto :goto_4b

    :cond_4a
    move v1, v0

    .line 2228
    .local v1, "aboveTop":Z
    :goto_4b
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    move v14, v2

    .line 2229
    .local v14, "stackShouldBeVisible":Z
    if-nez v14, :cond_54

    move v2, v13

    goto :goto_55

    :cond_54
    move v2, v0

    .line 2230
    .local v2, "behindFullscreenActivity":Z
    :goto_55
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/ActivityStack;->isInStackLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_63

    move v3, v13

    goto :goto_64

    :cond_63
    move v3, v0

    .line 2231
    .local v3, "resumeNextActivity":Z
    :goto_64
    iget-object v4, v7, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4
    :try_end_6a
    .catchall {:try_start_20 .. :try_end_6a} :catchall_298

    sub-int/2addr v4, v13

    move v15, v4

    move/from16 v4, p2

    .end local p2  # "configChanges":I
    .local v4, "configChanges":I
    .local v15, "taskNdx":I
    :goto_6e
    if-ltz v15, :cond_275

    .line 2232
    :try_start_70
    iget-object v5, v7, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskRecord;

    move-object v6, v5

    .line 2233
    .local v6, "task":Lcom/android/server/wm/TaskRecord;
    iget-object v5, v6, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2234
    .local v5, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v16
    :try_end_7f
    .catchall {:try_start_70 .. :try_end_7f} :catchall_294

    add-int/lit8 v16, v16, -0x1

    move/from16 v17, v3

    move/from16 v25, v16

    move/from16 v16, v4

    move/from16 v4, v25

    .end local v3  # "resumeNextActivity":Z
    .local v4, "activityNdx":I
    .local v16, "configChanges":I
    .local v17, "resumeNextActivity":Z
    :goto_89
    const-string v3, " behindFullscreenActivity="

    const-string v10, " stackShouldBeVisible="

    if-ltz v4, :cond_21d

    .line 2235
    :try_start_8f
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/wm/ActivityRecord;

    move-object/from16 p2, v18

    .line 2236
    .local p2, "r":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v0, p2

    .end local p2  # "r":Lcom/android/server/wm/ActivityRecord;
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v13, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v13, :cond_9e

    .line 2237
    goto :goto_a8

    .line 2239
    :cond_9e
    if-ne v0, v11, :cond_a2

    const/4 v13, 0x1

    goto :goto_a3

    :cond_a2
    const/4 v13, 0x0

    .line 2240
    .local v13, "isTop":Z
    :goto_a3
    if-eqz v1, :cond_b5

    if-nez v13, :cond_b5

    .line 2241
    nop

    .line 2234
    .end local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v13  # "isTop":Z
    :goto_a8
    move-object/from16 v23, v5

    move-object v13, v6

    move-object/from16 v18, v11

    move/from16 p2, v15

    const/16 v22, 0x0

    move v15, v4

    const/4 v4, 0x1

    goto/16 :goto_20d

    .line 2243
    .restart local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v13  # "isTop":Z
    :cond_b5
    const/16 v19, 0x0

    .line 2246
    .end local v1  # "aboveTop":Z
    .local v19, "aboveTop":Z
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisibleIgnoringKeyguard(Z)Z

    move-result v1

    move/from16 v20, v1

    .line 2248
    .local v20, "visibleIgnoringKeyguard":Z
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible(Z)Z

    move-result v1

    move/from16 v21, v1

    .line 2249
    .local v21, "reallyVisible":Z
    if-eqz v20, :cond_cf

    .line 2250
    if-nez v14, :cond_c9

    const/4 v1, 0x1

    goto :goto_ca

    :cond_c9
    const/4 v1, 0x0

    :goto_ca
    invoke-direct {v7, v1, v2, v0}, Lcom/android/server/wm/ActivityStack;->updateBehindFullscreen(ZZLcom/android/server/wm/ActivityRecord;)Z

    move-result v1
    :try_end_ce
    .catchall {:try_start_8f .. :try_end_ce} :catchall_273

    move v2, v1

    .line 2253
    :cond_cf
    const-string v1, " state="

    move/from16 p2, v2

    .end local v2  # "behindFullscreenActivity":Z
    .local p2, "behindFullscreenActivity":Z
    const-string v2, " finishing="

    if-eqz v21, :cond_1b8

    .line 2255
    if-eqz v13, :cond_f4

    if-eqz v14, :cond_f4

    :try_start_db
    iget-object v3, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2256
    invoke-virtual {v3, v7, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->checkAccessControl(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3
    :try_end_e1
    .catchall {:try_start_db .. :try_end_e1} :catchall_273

    if-eqz v3, :cond_f4

    .line 2258
    const/4 v1, 0x1

    .line 2259
    .end local p2  # "behindFullscreenActivity":Z
    .local v1, "behindFullscreenActivity":Z
    move v2, v1

    move-object/from16 v23, v5

    move-object v13, v6

    move-object/from16 v18, v11

    move/from16 p2, v15

    move/from16 v1, v19

    const/16 v22, 0x0

    move v15, v4

    const/4 v4, 0x1

    goto/16 :goto_20d

    .line 2262
    .end local v1  # "behindFullscreenActivity":Z
    .restart local p2  # "behindFullscreenActivity":Z
    :cond_f4
    :try_start_f4
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z
    :try_end_f6
    .catchall {:try_start_f4 .. :try_end_f6} :catchall_1b3

    if-eqz v3, :cond_11e

    :try_start_f8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Make visible? "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2263
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2262
    invoke-static {v12, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    :cond_11e
    if-eq v0, v8, :cond_12a

    if-eqz v9, :cond_12a

    .line 2267
    move/from16 v10, p3

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v10, v1}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZZ)Z

    goto :goto_12d

    .line 2266
    :cond_12a
    move/from16 v10, p3

    const/4 v3, 0x0

    .line 2271
    :goto_12d
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1

    if-nez v1, :cond_166

    .line 2272
    move-object/from16 v1, p0

    move-object/from16 v18, v11

    move/from16 v11, p2

    .end local p2  # "behindFullscreenActivity":Z
    .local v11, "behindFullscreenActivity":Z
    .local v18, "top":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v2, p1

    move/from16 v22, v3

    move/from16 v3, v16

    move/from16 p2, v15

    move v15, v4

    .end local v4  # "activityNdx":I
    .local v15, "activityNdx":I
    .local p2, "taskNdx":I
    move v4, v13

    move-object/from16 v23, v5

    .end local v5  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .local v23, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    move/from16 v5, v17

    move/from16 v24, v13

    move-object v13, v6

    .end local v6  # "task":Lcom/android/server/wm/TaskRecord;
    .local v13, "task":Lcom/android/server/wm/TaskRecord;
    .local v24, "isTop":Z
    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/ActivityStack;->makeVisibleAndRestartIfNeeded(Lcom/android/server/wm/ActivityRecord;IZZLcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_164

    .line 2274
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v15, v1, :cond_15f

    .line 2276
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    move v15, v1

    .end local v15  # "activityNdx":I
    .local v1, "activityNdx":I
    goto :goto_1ab

    .line 2278
    .end local v1  # "activityNdx":I
    .restart local v15  # "activityNdx":I
    :cond_15f
    const/4 v4, 0x1

    const/4 v1, 0x0

    move/from16 v17, v1

    .end local v17  # "resumeNextActivity":Z
    .local v1, "resumeNextActivity":Z
    goto :goto_1ab

    .line 2272
    .end local v1  # "resumeNextActivity":Z
    .restart local v17  # "resumeNextActivity":Z
    :cond_164
    const/4 v4, 0x1

    goto :goto_1ab

    .line 2281
    .end local v18  # "top":Lcom/android/server/wm/ActivityRecord;
    .end local v23  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v24  # "isTop":Z
    .restart local v4  # "activityNdx":I
    .restart local v5  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v6  # "task":Lcom/android/server/wm/TaskRecord;
    .local v11, "top":Lcom/android/server/wm/ActivityRecord;
    .local v13, "isTop":Z
    .local v15, "taskNdx":I
    .local p2, "behindFullscreenActivity":Z
    :cond_166
    move/from16 v22, v3

    move-object/from16 v23, v5

    move-object/from16 v18, v11

    move/from16 v24, v13

    move/from16 v11, p2

    move-object v13, v6

    move/from16 p2, v15

    move v15, v4

    const/4 v4, 0x1

    .end local v4  # "activityNdx":I
    .end local v5  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v6  # "task":Lcom/android/server/wm/TaskRecord;
    .local v11, "behindFullscreenActivity":Z
    .local v13, "task":Lcom/android/server/wm/TaskRecord;
    .local v15, "activityNdx":I
    .restart local v18  # "top":Lcom/android/server/wm/ActivityRecord;
    .restart local v23  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v24  # "isTop":Z
    .local p2, "taskNdx":I
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v1, :cond_1a8

    .line 2283
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v1, :cond_191

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping: already visible at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    :cond_191
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mClientVisibilityDeferred:Z

    if-eqz v1, :cond_19a

    if-eqz v9, :cond_19a

    .line 2287
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->makeClientVisible()V

    .line 2290
    :cond_19a
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->handleAlreadyVisible()Z

    move-result v1

    if-eqz v1, :cond_1a2

    .line 2291
    const/16 v17, 0x0

    .line 2294
    :cond_1a2
    if-eqz v9, :cond_1ab

    .line 2295
    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityRecord;->makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    goto :goto_1ab

    .line 2298
    :cond_1a8
    invoke-virtual {v0, v8, v9}, Lcom/android/server/wm/ActivityRecord;->makeVisibleIfNeeded(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 2301
    :cond_1ab
    :goto_1ab
    iget v1, v0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    or-int v16, v16, v1

    move v2, v11

    move/from16 v1, v19

    goto :goto_20d

    .line 2339
    .end local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v11  # "behindFullscreenActivity":Z
    .end local v13  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v14  # "stackShouldBeVisible":Z
    .end local v15  # "activityNdx":I
    .end local v17  # "resumeNextActivity":Z
    .end local v18  # "top":Lcom/android/server/wm/ActivityRecord;
    .end local v19  # "aboveTop":Z
    .end local v20  # "visibleIgnoringKeyguard":Z
    .end local v21  # "reallyVisible":Z
    .end local v23  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v24  # "isTop":Z
    .end local p2  # "taskNdx":I
    :catchall_1b3
    move-exception v0

    move/from16 v10, p3

    goto/16 :goto_29b

    .line 2303
    .restart local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v4  # "activityNdx":I
    .restart local v5  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v6  # "task":Lcom/android/server/wm/TaskRecord;
    .local v11, "top":Lcom/android/server/wm/ActivityRecord;
    .local v13, "isTop":Z
    .restart local v14  # "stackShouldBeVisible":Z
    .local v15, "taskNdx":I
    .restart local v17  # "resumeNextActivity":Z
    .restart local v19  # "aboveTop":Z
    .restart local v20  # "visibleIgnoringKeyguard":Z
    .restart local v21  # "reallyVisible":Z
    .local p2, "behindFullscreenActivity":Z
    :cond_1b8
    move-object/from16 v23, v5

    move-object/from16 v18, v11

    move/from16 v24, v13

    const/16 v22, 0x0

    move/from16 v11, p2

    move-object v13, v6

    move/from16 p2, v15

    move v15, v4

    const/4 v4, 0x1

    .end local v4  # "activityNdx":I
    .end local v5  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v6  # "task":Lcom/android/server/wm/TaskRecord;
    .local v11, "behindFullscreenActivity":Z
    .local v13, "task":Lcom/android/server/wm/TaskRecord;
    .local v15, "activityNdx":I
    .restart local v18  # "top":Lcom/android/server/wm/ActivityRecord;
    .restart local v23  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v24  # "isTop":Z
    .local p2, "taskNdx":I
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v5, :cond_207

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Make invisible? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2304
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mLaunchTaskBehind="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2303
    invoke-static {v12, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2308
    :cond_207
    invoke-direct {v7, v0}, Lcom/android/server/wm/ActivityStack;->makeInvisible(Lcom/android/server/wm/ActivityRecord;)V

    move v2, v11

    move/from16 v1, v19

    .line 2234
    .end local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v11  # "behindFullscreenActivity":Z
    .end local v19  # "aboveTop":Z
    .end local v20  # "visibleIgnoringKeyguard":Z
    .end local v21  # "reallyVisible":Z
    .end local v24  # "isTop":Z
    .local v1, "aboveTop":Z
    .restart local v2  # "behindFullscreenActivity":Z
    :goto_20d
    add-int/lit8 v0, v15, -0x1

    move/from16 v15, p2

    move-object v6, v13

    move-object/from16 v11, v18

    move-object/from16 v5, v23

    const/4 v10, 0x0

    move v13, v4

    move v4, v0

    move/from16 v0, v22

    .end local v15  # "activityNdx":I
    .local v0, "activityNdx":I
    goto/16 :goto_89

    .end local v0  # "activityNdx":I
    .end local v13  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v18  # "top":Lcom/android/server/wm/ActivityRecord;
    .end local v23  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local p2  # "taskNdx":I
    .restart local v4  # "activityNdx":I
    .restart local v5  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v6  # "task":Lcom/android/server/wm/TaskRecord;
    .local v11, "top":Lcom/android/server/wm/ActivityRecord;
    .local v15, "taskNdx":I
    :cond_21d
    move/from16 v22, v0

    move-object/from16 v23, v5

    move-object/from16 v18, v11

    move/from16 p2, v15

    move v15, v4

    move v4, v13

    move-object v13, v6

    .line 2311
    .end local v4  # "activityNdx":I
    .end local v5  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v6  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v11  # "top":Lcom/android/server/wm/ActivityRecord;
    .end local v15  # "taskNdx":I
    .restart local v13  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v18  # "top":Lcom/android/server/wm/ActivityRecord;
    .restart local v23  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local p2  # "taskNdx":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    .line 2314
    .local v0, "windowingMode":I
    invoke-direct {v7, v0}, Lcom/android/server/wm/ActivityStack;->isBehindWindowMode(I)Z

    move-result v5

    if-eqz v5, :cond_23a

    .line 2319
    if-nez v14, :cond_236

    move v3, v4

    goto :goto_238

    :cond_236
    move/from16 v3, v22

    :goto_238
    move v2, v3

    goto :goto_265

    .line 2320
    :cond_23a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v5

    if-eqz v5, :cond_265

    .line 2321
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v5, :cond_264

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Home task: at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_264
    .catchall {:try_start_f8 .. :try_end_264} :catchall_273

    .line 2329
    :cond_264
    const/4 v2, 0x1

    .line 2231
    .end local v0  # "windowingMode":I
    .end local v13  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v23  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    :cond_265
    :goto_265
    add-int/lit8 v15, p2, -0x1

    move v13, v4

    move/from16 v4, v16

    move/from16 v3, v17

    move-object/from16 v11, v18

    move/from16 v0, v22

    const/4 v10, 0x0

    .end local p2  # "taskNdx":I
    .restart local v15  # "taskNdx":I
    goto/16 :goto_6e

    .line 2339
    .end local v1  # "aboveTop":Z
    .end local v2  # "behindFullscreenActivity":Z
    .end local v14  # "stackShouldBeVisible":Z
    .end local v15  # "taskNdx":I
    .end local v17  # "resumeNextActivity":Z
    .end local v18  # "top":Lcom/android/server/wm/ActivityRecord;
    :catchall_273
    move-exception v0

    goto :goto_29b

    .line 2231
    .end local v16  # "configChanges":I
    .restart local v1  # "aboveTop":Z
    .restart local v2  # "behindFullscreenActivity":Z
    .restart local v3  # "resumeNextActivity":Z
    .local v4, "configChanges":I
    .restart local v11  # "top":Lcom/android/server/wm/ActivityRecord;
    .restart local v14  # "stackShouldBeVisible":Z
    .restart local v15  # "taskNdx":I
    :cond_275
    move-object/from16 v18, v11

    move/from16 p2, v15

    .line 2333
    .end local v11  # "top":Lcom/android/server/wm/ActivityRecord;
    .end local v15  # "taskNdx":I
    .restart local v18  # "top":Lcom/android/server/wm/ActivityRecord;
    :try_start_279
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_289

    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 2334
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_289

    .line 2336
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/android/server/wm/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V
    :try_end_289
    .catchall {:try_start_279 .. :try_end_289} :catchall_294

    .line 2339
    .end local v1  # "aboveTop":Z
    .end local v2  # "behindFullscreenActivity":Z
    .end local v3  # "resumeNextActivity":Z
    .end local v14  # "stackShouldBeVisible":Z
    .end local v18  # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_289
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController;->endActivityVisibilityUpdate()V

    .line 2340
    nop

    .line 2341
    return-void

    .line 2339
    :catchall_294
    move-exception v0

    move/from16 v16, v4

    goto :goto_29b

    .end local v4  # "configChanges":I
    .local p2, "configChanges":I
    :catchall_298
    move-exception v0

    move/from16 v16, p2

    .end local p2  # "configChanges":I
    .restart local v16  # "configChanges":I
    :goto_29b
    iget-object v1, v7, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/KeyguardController;->endActivityVisibilityUpdate()V

    throw v0
.end method

.method ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 12
    .param p1, "start"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "preserveWindow"  # Z

    .line 5220
    if-eqz p1, :cond_55

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v0, :cond_7

    goto :goto_55

    .line 5224
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 5225
    .local v0, "startTask":Lcom/android/server/wm/TaskRecord;
    const/4 v1, 0x0

    .line 5226
    .local v1, "behindFullscreen":Z
    const/4 v2, 0x0

    .line 5228
    .local v2, "updatedConfig":Z
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .local v3, "taskIndex":I
    :goto_13
    if-ltz v3, :cond_4d

    .line 5229
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskRecord;

    .line 5230
    .local v4, "task":Lcom/android/server/wm/TaskRecord;
    iget-object v5, v4, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5231
    .local v5, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    if-ne v6, v4, :cond_2a

    .line 5232
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    goto :goto_30

    :cond_2a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 5233
    .local v6, "activityIndex":I
    :goto_30
    if-ltz v6, :cond_47

    .line 5234
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    .line 5235
    .local v7, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v8, 0x0

    invoke-virtual {v7, v8, p2}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    move-result v8

    or-int/2addr v2, v8

    .line 5237
    iget-boolean v8, v7, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    if-eqz v8, :cond_44

    .line 5238
    const/4 v1, 0x1

    .line 5239
    goto :goto_47

    .line 5233
    .end local v7  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_44
    add-int/lit8 v6, v6, -0x1

    goto :goto_30

    .line 5242
    :cond_47
    :goto_47
    if-eqz v1, :cond_4a

    .line 5243
    goto :goto_4d

    .line 5228
    .end local v4  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v5  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v6  # "activityIndex":I
    :cond_4a
    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    .line 5246
    .end local v3  # "taskIndex":I
    :cond_4d
    :goto_4d
    if-eqz v2, :cond_54

    .line 5249
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 5251
    :cond_54
    return-void

    .line 5221
    .end local v0  # "startTask":Lcom/android/server/wm/TaskRecord;
    .end local v1  # "behindFullscreen":Z
    .end local v2  # "updatedConfig":Z
    :cond_55
    :goto_55
    return-void
.end method

.method executeAppTransition(Landroid/app/ActivityOptions;)V
    .registers 3
    .param p1, "options"  # Landroid/app/ActivityOptions;

    .line 5930
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 5931
    invoke-static {p1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 5932
    return-void
.end method

.method findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;
    .registers 12
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "info"  # Landroid/content/pm/ActivityInfo;
    .param p3, "compareIntentFilters"  # Z

    .line 1475
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1476
    .local v0, "cls":Landroid/content/ComponentName;
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v1, :cond_12

    .line 1477
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 1479
    :cond_12
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1481
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "taskNdx":I
    :goto_22
    if-ltz v2, :cond_69

    .line 1482
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    .line 1483
    .local v3, "task":Lcom/android/server/wm/TaskRecord;
    iget-object v4, v3, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1485
    .local v4, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "activityNdx":I
    :goto_34
    if-ltz v5, :cond_66

    .line 1486
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    .line 1487
    .local v6, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v7

    if-nez v7, :cond_43

    .line 1488
    goto :goto_63

    .line 1490
    :cond_43
    iget-boolean v7, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v7, :cond_63

    iget v7, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v7, v1, :cond_63

    .line 1491
    if-eqz p3, :cond_56

    .line 1492
    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7, p1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_63

    .line 1493
    return-object v6

    .line 1496
    :cond_56
    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_63

    .line 1497
    return-object v6

    .line 1485
    .end local v6  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_63
    :goto_63
    add-int/lit8 v5, v5, -0x1

    goto :goto_34

    .line 1481
    .end local v3  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v4  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v5  # "activityNdx":I
    :cond_66
    add-int/lit8 v2, v2, -0x1

    goto :goto_22

    .line 1504
    .end local v2  # "taskNdx":I
    :cond_69
    const/4 v2, 0x0

    return-object v2
.end method

.method findTaskLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/RootActivityContainer$FindTaskResult;)V
    .registers 24
    .param p1, "target"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "result"  # Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    .line 1378
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1379
    .local v3, "intent":Landroid/content/Intent;
    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1380
    .local v4, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 1381
    .local v5, "cls":Landroid/content/ComponentName;
    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v6, :cond_1c

    .line 1382
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 1384
    :cond_1c
    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 1385
    .local v6, "userId":I
    invoke-virtual {v3}, Landroid/content/Intent;->isDocument()Z

    move-result v7

    const/4 v8, 0x1

    and-int/2addr v7, v8

    .line 1387
    .local v7, "isDocument":Z
    if-eqz v7, :cond_31

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    goto :goto_32

    :cond_31
    const/4 v9, 0x0

    .line 1389
    .local v9, "documentData":Landroid/net/Uri;
    :goto_32
    sget-boolean v10, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    const-string v11, "ActivityTaskManager"

    if-eqz v10, :cond_54

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Looking for task of "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " in "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    :cond_54
    iget-object v10, v0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v8

    .local v10, "taskNdx":I
    :goto_5b
    if-ltz v10, :cond_27a

    .line 1391
    iget-object v12, v0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/TaskRecord;

    .line 1392
    .local v12, "task":Lcom/android/server/wm/TaskRecord;
    iget-object v13, v12, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    const-string v14, "Skipping "

    if-eqz v13, :cond_8d

    .line 1394
    sget-boolean v13, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v13, :cond_86

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ": voice session"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    move-object/from16 v19, v4

    move/from16 v17, v6

    move v0, v8

    goto/16 :goto_26f

    .line 1397
    :cond_8d
    iget v13, v12, Lcom/android/server/wm/TaskRecord;->userId:I

    if-eq v13, v6, :cond_b3

    .line 1399
    sget-boolean v13, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v13, :cond_ac

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ": different user"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ac
    move-object/from16 v19, v4

    move/from16 v17, v6

    move v0, v8

    goto/16 :goto_26f

    .line 1404
    :cond_b3
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/server/wm/TaskRecord;->getTopActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v15

    .line 1405
    .local v15, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v15, :cond_24c

    iget-boolean v13, v15, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v13, :cond_24c

    iget v13, v15, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v13, v6, :cond_24c

    iget v13, v15, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    const/4 v8, 0x3

    if-ne v13, v8, :cond_ce

    move-object/from16 v19, v4

    move/from16 v17, v6

    const/4 v0, 0x1

    goto/16 :goto_251

    .line 1410
    :cond_ce
    invoke-virtual {v15, v1}, Lcom/android/server/wm/ActivityRecord;->hasCompatibleActivityType(Lcom/android/server/wm/ConfigurationContainer;)Z

    move-result v8

    if-nez v8, :cond_f6

    .line 1411
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v8, :cond_ef

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ": mismatch activity type"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ef
    move-object/from16 v19, v4

    move/from16 v17, v6

    const/4 v0, 0x1

    goto/16 :goto_26f

    .line 1415
    :cond_f6
    iget-object v8, v12, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    .line 1416
    .local v8, "taskIntent":Landroid/content/Intent;
    iget-object v13, v12, Lcom/android/server/wm/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .line 1419
    .local v13, "affinityIntent":Landroid/content/Intent;
    if-eqz v8, :cond_10e

    invoke-virtual {v8}, Landroid/content/Intent;->isDocument()Z

    move-result v14

    if-eqz v14, :cond_10e

    .line 1420
    const/4 v14, 0x1

    .line 1421
    .local v14, "taskIsDocument":Z
    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v20, v16

    move/from16 v16, v14

    move-object/from16 v14, v20

    .local v16, "taskDocumentData":Landroid/net/Uri;
    goto :goto_12b

    .line 1422
    .end local v14  # "taskIsDocument":Z
    .end local v16  # "taskDocumentData":Landroid/net/Uri;
    :cond_10e
    if-eqz v13, :cond_122

    invoke-virtual {v13}, Landroid/content/Intent;->isDocument()Z

    move-result v14

    if-eqz v14, :cond_122

    .line 1423
    const/4 v14, 0x1

    .line 1424
    .restart local v14  # "taskIsDocument":Z
    invoke-virtual {v13}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v20, v16

    move/from16 v16, v14

    move-object/from16 v14, v20

    .restart local v16  # "taskDocumentData":Landroid/net/Uri;
    goto :goto_12b

    .line 1426
    .end local v14  # "taskIsDocument":Z
    .end local v16  # "taskDocumentData":Landroid/net/Uri;
    :cond_122
    const/4 v14, 0x0

    .line 1427
    .restart local v14  # "taskIsDocument":Z
    const/16 v16, 0x0

    move-object/from16 v20, v16

    move/from16 v16, v14

    move-object/from16 v14, v20

    .line 1430
    .local v14, "taskDocumentData":Landroid/net/Uri;
    .local v16, "taskIsDocument":Z
    :goto_12b
    sget-boolean v17, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v17, :cond_17b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v6

    .end local v6  # "userId":I
    .local v17, "userId":I
    const-string v6, "Comparing existing cls="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1431
    iget-object v6, v12, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_146

    iget-object v6, v12, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    goto :goto_148

    :cond_146
    const-string v6, ""

    :goto_148
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/aff="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1432
    move-object/from16 v18, v8

    .end local v8  # "taskIntent":Landroid/content/Intent;
    .local v18, "taskIntent":Landroid/content/Intent;
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/wm/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " to new cls="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1433
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1430
    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17f

    .end local v17  # "userId":I
    .end local v18  # "taskIntent":Landroid/content/Intent;
    .restart local v6  # "userId":I
    .restart local v8  # "taskIntent":Landroid/content/Intent;
    :cond_17b
    move/from16 v17, v6

    move-object/from16 v18, v8

    .line 1435
    .end local v6  # "userId":I
    .end local v8  # "taskIntent":Landroid/content/Intent;
    .restart local v17  # "userId":I
    .restart local v18  # "taskIntent":Landroid/content/Intent;
    :goto_17f
    iget-object v0, v12, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    const-string v6, " bringing to top: "

    const-string v8, "For Intent "

    move-object/from16 v19, v4

    .end local v4  # "info":Landroid/content/pm/ActivityInfo;
    .local v19, "info":Landroid/content/pm/ActivityInfo;
    const-string v4, "Found matching class!"

    if-eqz v0, :cond_1c5

    iget-object v0, v12, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v5}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v0

    if-nez v0, :cond_1c5

    .line 1436
    invoke-static {v9, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c5

    .line 1437
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_1a0

    invoke-static {v11, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :cond_1a0
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_1be

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    :cond_1be
    iput-object v15, v2, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1442
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mIdealMatch:Z

    .line 1443
    goto/16 :goto_27e

    .line 1444
    :cond_1c5
    if-eqz v13, :cond_20d

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_20d

    .line 1445
    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v0

    if-nez v0, :cond_20b

    .line 1446
    invoke-static {v9, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_209

    .line 1447
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_1e4

    invoke-static {v11, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    :cond_1e4
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_202

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    :cond_202
    iput-object v15, v2, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1452
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mIdealMatch:Z

    .line 1453
    goto/16 :goto_27e

    .line 1446
    :cond_209
    const/4 v0, 0x1

    goto :goto_20e

    .line 1445
    :cond_20b
    const/4 v0, 0x1

    goto :goto_20e

    .line 1444
    :cond_20d
    const/4 v0, 0x1

    .line 1454
    :goto_20e
    if-nez v7, :cond_233

    if-nez v16, :cond_233

    iget-object v4, v2, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v4, :cond_233

    iget-object v4, v12, Lcom/android/server/wm/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v4, :cond_233

    .line 1456
    iget-object v4, v12, Lcom/android/server/wm/TaskRecord;->rootAffinity:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26f

    .line 1457
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v4, :cond_22d

    const-string v4, "Found matching affinity candidate!"

    invoke-static {v11, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    :cond_22d
    iput-object v15, v2, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1462
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mIdealMatch:Z

    goto :goto_26f

    .line 1464
    :cond_233
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v4, :cond_26f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not a match: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26f

    .line 1405
    .end local v13  # "affinityIntent":Landroid/content/Intent;
    .end local v14  # "taskDocumentData":Landroid/net/Uri;
    .end local v16  # "taskIsDocument":Z
    .end local v17  # "userId":I
    .end local v18  # "taskIntent":Landroid/content/Intent;
    .end local v19  # "info":Landroid/content/pm/ActivityInfo;
    .restart local v4  # "info":Landroid/content/pm/ActivityInfo;
    .restart local v6  # "userId":I
    :cond_24c
    move-object/from16 v19, v4

    move/from16 v17, v6

    move v0, v8

    .line 1407
    .end local v4  # "info":Landroid/content/pm/ActivityInfo;
    .end local v6  # "userId":I
    .restart local v17  # "userId":I
    .restart local v19  # "info":Landroid/content/pm/ActivityInfo;
    :goto_251
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v4, :cond_26f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": mismatch root "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    .end local v12  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v15  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_26f
    :goto_26f
    add-int/lit8 v10, v10, -0x1

    move v8, v0

    move/from16 v6, v17

    move-object/from16 v4, v19

    move-object/from16 v0, p0

    goto/16 :goto_5b

    .end local v17  # "userId":I
    .end local v19  # "info":Landroid/content/pm/ActivityInfo;
    .restart local v4  # "info":Landroid/content/pm/ActivityInfo;
    .restart local v6  # "userId":I
    :cond_27a
    move-object/from16 v19, v4

    move/from16 v17, v6

    .line 1466
    .end local v4  # "info":Landroid/content/pm/ActivityInfo;
    .end local v6  # "userId":I
    .end local v10  # "taskNdx":I
    .restart local v17  # "userId":I
    .restart local v19  # "info":Landroid/content/pm/ActivityInfo;
    :goto_27e
    return-void
.end method

.method final finishActivityAffinityLocked(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 11
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 4103
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4104
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .local v1, "index":I
    :goto_a
    if-ltz v1, :cond_2a

    .line 4105
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 4106
    .local v2, "cur":Lcom/android/server/wm/ActivityRecord;
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 4107
    goto :goto_2a

    .line 4109
    :cond_1d
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    const-string v7, "request-affinity"

    move-object v3, p0

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4104
    .end local v2  # "cur":Lcom/android/server/wm/ActivityRecord;
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 4111
    .end local v1  # "index":I
    :cond_2a
    :goto_2a
    const/4 v1, 0x1

    return v1
.end method

.method final finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    .registers 13
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "resultCode"  # I
    .param p3, "resultData"  # Landroid/content/Intent;
    .param p4, "reason"  # Ljava/lang/String;
    .param p5, "oomAdj"  # Z

    .line 4150
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method final finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;ZZ)Z
    .registers 21
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "resultCode"  # I
    .param p3, "resultData"  # Landroid/content/Intent;
    .param p4, "reason"  # Ljava/lang/String;
    .param p5, "oomAdj"  # Z
    .param p6, "pauseImmediately"  # Z

    .line 4159
    move-object v1, p0

    move-object v2, p1

    iget-boolean v0, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const-string v3, "ActivityTaskManager"

    const/4 v4, 0x0

    if-eqz v0, :cond_1e

    .line 4160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate finish request for "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4161
    return v4

    .line 4164
    :cond_1e
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 4166
    :try_start_23
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->makeFinishingLocked()V

    .line 4167
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 4168
    .local v0, "task":Lcom/android/server/wm/TaskRecord;
    const/16 v5, 0x7531

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 4169
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    iget v7, v0, Lcom/android/server/wm/TaskRecord;->taskId:I

    .line 4170
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x2

    aput-object v7, v6, v9

    const/4 v7, 0x3

    iget-object v10, v2, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v10, v6, v7

    const/4 v7, 0x4

    aput-object p4, v6, v7

    .line 4168
    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4171
    iget-object v5, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4172
    .local v5, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 4173
    .local v6, "index":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_7e

    .line 4174
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->setFrontOfTask()V

    .line 4175
    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getFlags()I

    move-result v7

    const/high16 v10, 0x80000

    and-int/2addr v7, v10

    if-eqz v7, :cond_7e

    .line 4179
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    .line 4180
    .local v7, "next":Lcom/android/server/wm/ActivityRecord;
    iget-object v11, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4184
    .end local v7  # "next":Lcom/android/server/wm/ActivityRecord;
    :cond_7e
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 4186
    const-string v7, "finishActivity"

    invoke-direct {p0, p1, v7}, Lcom/android/server/wm/ActivityStack;->adjustFocusedActivityStack(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 4188
    invoke-direct/range {p0 .. p3}, Lcom/android/server/wm/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;)V

    .line 4190
    if-gtz v6, :cond_93

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->isClearingToReuseTask()Z

    move-result v7

    if-nez v7, :cond_93

    move v7, v8

    goto :goto_94

    :cond_93
    move v7, v4

    .line 4191
    .local v7, "endTask":Z
    :goto_94
    if-eqz v7, :cond_99

    const/16 v10, 0x9

    goto :goto_9a

    :cond_99
    const/4 v10, 0x7

    .line 4192
    .local v10, "transit":I
    :goto_9a
    iget-object v11, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;
    :try_end_9c
    .catchall {:try_start_23 .. :try_end_9c} :catchall_1a9

    if-ne v11, v2, :cond_11b

    .line 4193
    :try_start_9e
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z
    :try_end_a0
    .catchall {:try_start_9e .. :try_end_a0} :catchall_116

    if-nez v8, :cond_a6

    :try_start_a2
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z
    :try_end_a4
    .catchall {:try_start_a2 .. :try_end_a4} :catchall_1a9

    if-eqz v8, :cond_ba

    :cond_a6
    :try_start_a6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Prepare close transition: finishing "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catchall {:try_start_a6 .. :try_end_ba} :catchall_116

    .line 4195
    :cond_ba
    if-eqz v7, :cond_c9

    .line 4196
    :try_start_bc
    iget-object v8, v1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v8

    .line 4197
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v9

    .line 4196
    invoke-virtual {v8, v9}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_c9
    .catchall {:try_start_bc .. :try_end_c9} :catchall_1a9

    .line 4199
    :cond_c9
    :try_start_c9
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8, v10, v4}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 4202
    invoke-virtual {p1, v4}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 4204
    iget-object v8, v1, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v8, :cond_101

    .line 4205
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z
    :try_end_db
    .catchall {:try_start_c9 .. :try_end_db} :catchall_116

    if-eqz v8, :cond_f1

    :try_start_dd
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Finish needs to pause: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f1
    .catchall {:try_start_dd .. :try_end_f1} :catchall_1a9

    .line 4206
    :cond_f1
    :try_start_f1
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z
    :try_end_f3
    .catchall {:try_start_f1 .. :try_end_f3} :catchall_116

    if-eqz v8, :cond_fa

    :try_start_f5
    const-string v8, "finish() => pause with userLeaving=false"

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fa
    .catchall {:try_start_f5 .. :try_end_fa} :catchall_1a9

    .line 4208
    :cond_fa
    const/4 v3, 0x0

    move/from16 v11, p6

    :try_start_fd
    invoke-virtual {p0, v4, v4, v3, v11}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Z)Z

    goto :goto_103

    .line 4204
    :cond_101
    move/from16 v11, p6

    .line 4211
    :goto_103
    if-eqz v7, :cond_112

    .line 4212
    iget-object v3, v1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/TaskRecord;)V

    move/from16 v12, p5

    goto/16 :goto_19c

    .line 4211
    :cond_112
    move/from16 v12, p5

    goto/16 :goto_19c

    .line 4249
    .end local v0  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v5  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v6  # "index":I
    .end local v7  # "endTask":Z
    .end local v10  # "transit":I
    :catchall_116
    move-exception v0

    move/from16 v11, p6

    goto/16 :goto_1a6

    .line 4214
    .restart local v0  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v5  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v6  # "index":I
    .restart local v7  # "endTask":Z
    .restart local v10  # "transit":I
    :cond_11b
    move/from16 v11, p6

    sget-object v12, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p1, v12}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v12

    if-nez v12, :cond_182

    .line 4217
    sget-boolean v12, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v12, :cond_13d

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Finish not pausing: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4218
    :cond_13d
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v3, :cond_144

    .line 4219
    invoke-direct {p0, p1, v10}, Lcom/android/server/wm/ActivityStack;->prepareActivityHideTransitionAnimation(Lcom/android/server/wm/ActivityRecord;I)V

    .line 4222
    :cond_144
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v3, :cond_14e

    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_14d

    goto :goto_14e

    .line 4223
    :cond_14d
    move v9, v8

    :cond_14e
    :goto_14e
    move v3, v9

    .line 4224
    .local v3, "finishMode":I
    const-string v9, "finishActivityLocked"
    :try_end_151
    .catchall {:try_start_fd .. :try_end_151} :catchall_1a5

    move/from16 v12, p5

    :try_start_153
    invoke-virtual {p0, p1, v3, v12, v9}, Lcom/android/server/wm/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/wm/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    if-nez v9, :cond_15a

    move v4, v8

    .line 4234
    .local v4, "removedActivity":Z
    :cond_15a
    invoke-virtual {v0, v8}, Lcom/android/server/wm/TaskRecord;->onlyHasTaskOverlayActivities(Z)Z

    move-result v8

    if-eqz v8, :cond_17b

    .line 4235
    iget-object v8, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_166
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/ActivityRecord;

    .line 4236
    .local v9, "taskOverlay":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v13, v9, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-nez v13, :cond_177

    .line 4237
    goto :goto_166

    .line 4239
    :cond_177
    invoke-direct {p0, v9, v10}, Lcom/android/server/wm/ActivityStack;->prepareActivityHideTransitionAnimation(Lcom/android/server/wm/ActivityRecord;I)V
    :try_end_17a
    .catchall {:try_start_153 .. :try_end_17a} :catchall_1a3

    .line 4240
    .end local v9  # "taskOverlay":Lcom/android/server/wm/ActivityRecord;
    goto :goto_166

    .line 4242
    :cond_17b
    nop

    .line 4249
    iget-object v8, v1, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 4242
    return v4

    .line 4244
    .end local v3  # "finishMode":I
    .end local v4  # "removedActivity":Z
    :cond_182
    move/from16 v12, p5

    :try_start_184
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v8, :cond_19c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Finish waiting for pause of: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19c
    .catchall {:try_start_184 .. :try_end_19c} :catchall_1a3

    .line 4247
    :cond_19c
    :goto_19c
    nop

    .line 4249
    iget-object v3, v1, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 4247
    return v4

    .line 4249
    .end local v0  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v5  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v6  # "index":I
    .end local v7  # "endTask":Z
    .end local v10  # "transit":I
    :catchall_1a3
    move-exception v0

    goto :goto_1ae

    :catchall_1a5
    move-exception v0

    :goto_1a6
    move/from16 v12, p5

    goto :goto_1ae

    :catchall_1a9
    move-exception v0

    move/from16 v12, p5

    move/from16 v11, p6

    :goto_1ae
    iget-object v3, v1, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method finishAllActivitiesLocked(Z)V
    .registers 9
    .param p1, "immediately"  # Z

    .line 4364
    const/4 v0, 0x1

    .line 4365
    .local v0, "noActivitiesInStack":Z
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "taskNdx":I
    :goto_9
    if-ltz v1, :cond_52

    .line 4366
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    iget-object v2, v2, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4367
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "activityNdx":I
    :goto_1b
    if-ltz v3, :cond_4f

    .line 4368
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 4369
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v0, 0x0

    .line 4370
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_2b

    if-nez p1, :cond_2b

    .line 4371
    goto :goto_4c

    .line 4373
    :cond_2b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finishAllActivitiesLocked: finishing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " immediately"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityTaskManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4374
    const/4 v5, 0x0

    const-string v6, "finishAllActivitiesLocked"

    invoke-virtual {p0, v4, v5, v5, v6}, Lcom/android/server/wm/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/wm/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    .line 4367
    .end local v4  # "r":Lcom/android/server/wm/ActivityRecord;
    :goto_4c
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    .line 4365
    .end local v2  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v3  # "activityNdx":I
    :cond_4f
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 4378
    .end local v1  # "taskNdx":I
    :cond_52
    if-eqz v0, :cond_57

    .line 4379
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->remove()V

    .line 4381
    :cond_57
    return-void
.end method

.method final finishCurrentActivityLocked(Lcom/android/server/wm/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/wm/ActivityRecord;
    .registers 21
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "mode"  # I
    .param p3, "oomAdj"  # Z
    .param p4, "reason"  # Ljava/lang/String;

    .line 4275
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    .line 4276
    .local v3, "display":Lcom/android/server/wm/ActivityDisplay;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityDisplay;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 4277
    .local v5, "next":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v6

    .line 4279
    .local v6, "isFloating":Z
    const/4 v7, 0x2

    const-string v8, "finishCurrentActivityLocked"

    const-string v9, "ActivityTaskManager"

    const/4 v10, 0x0

    if-ne v2, v7, :cond_83

    iget-boolean v11, v1, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v11, :cond_29

    iget-boolean v11, v1, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v11, :cond_83

    :cond_29
    if-eqz v5, :cond_83

    iget-boolean v11, v5, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-nez v11, :cond_83

    if-nez v6, :cond_83

    .line 4281
    iget-object v7, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3e

    .line 4282
    invoke-virtual {v0, v1, v10, v10, v8}, Lcom/android/server/wm/ActivityStack;->addToStopping(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V

    .line 4285
    :cond_3e
    sget-boolean v7, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v7, :cond_5b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Moving to STOPPING: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " (finish requested)"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4287
    :cond_5b
    sget-object v7, Lcom/android/server/wm/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    if-eqz v7, :cond_76

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v7

    if-eqz v7, :cond_76

    .line 4288
    sget-object v7, Lcom/android/server/wm/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    iget-object v7, v1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4289
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v9

    if-ne v9, v4, :cond_72

    goto :goto_73

    :cond_72
    move v4, v10

    :goto_73
    invoke-static {v7, v4, v10}, Lcom/android/server/wm/ActivityPluginDelegate;->activitySuspendNotification(Ljava/lang/String;ZZ)V

    .line 4291
    :cond_76
    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v1, v4, v8}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4292
    if-eqz p3, :cond_82

    .line 4293
    iget-object v4, v0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V

    .line 4295
    :cond_82
    return-object v1

    .line 4299
    :cond_83
    iget-object v11, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v11, v11, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4300
    iget-object v11, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v11, v11, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4301
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v11

    .line 4302
    .local v11, "prevState":Lcom/android/server/wm/ActivityStack$ActivityState;
    sget-boolean v12, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v12, :cond_ad

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Moving to FINISHING: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4304
    :cond_ad
    sget-object v12, Lcom/android/server/wm/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    if-eqz v12, :cond_c9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v12

    if-eqz v12, :cond_c9

    .line 4305
    sget-object v12, Lcom/android/server/wm/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    iget-object v12, v1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4306
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v13

    if-ne v13, v4, :cond_c5

    move v13, v4

    goto :goto_c6

    :cond_c5
    move v13, v10

    :goto_c6
    invoke-static {v12, v13, v10}, Lcom/android/server/wm/ActivityPluginDelegate;->activitySuspendNotification(Ljava/lang/String;ZZ)V

    .line 4309
    :cond_c9
    sget-object v12, Lcom/android/server/wm/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v1, v12, v8}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 4315
    if-nez v5, :cond_de

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    if-nez v8, :cond_de

    .line 4316
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getHomeStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v8

    if-nez v8, :cond_de

    move v8, v4

    goto :goto_df

    :cond_de
    move v8, v10

    .line 4317
    .local v8, "noRunningStack":Z
    :goto_df
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v12

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v13

    if-eq v12, v13, :cond_eb

    move v12, v4

    goto :goto_ec

    :cond_eb
    move v12, v10

    .line 4318
    .local v12, "noFocusedStack":Z
    :goto_ec
    if-ne v2, v7, :cond_f8

    sget-object v7, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v11, v7, :cond_f8

    if-nez v12, :cond_f6

    if-eqz v8, :cond_f8

    :cond_f6
    move v7, v4

    goto :goto_f9

    :cond_f8
    move v7, v10

    .line 4321
    .local v7, "finishingInNonFocusedStackOrNoRunning":Z
    :goto_f9
    if-eqz v2, :cond_14d

    sget-object v13, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v11, v13, :cond_107

    if-eq v2, v4, :cond_14d

    .line 4323
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v13

    if-nez v13, :cond_14d

    :cond_107
    if-nez v7, :cond_14d

    sget-object v13, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq v11, v13, :cond_14d

    sget-object v13, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq v11, v13, :cond_14d

    sget-object v13, Lcom/android/server/wm/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v11, v13, :cond_116

    goto :goto_14d

    .line 4350
    :cond_116
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL:Z

    if-eqz v4, :cond_12e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Enqueueing pending finish: "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4351
    :cond_12e
    iget-object v4, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4352
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 4353
    iget-object v4, v0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 4356
    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v4

    if-eqz v4, :cond_14c

    iget-object v4, v0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_14c

    .line 4357
    invoke-virtual {v0, v10, v10, v5, v10}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Z)Z

    .line 4360
    :cond_14c
    return-object v1

    .line 4328
    :cond_14d
    :goto_14d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->makeFinishingLocked()V

    .line 4329
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "finish-imm:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v1, v4, v13}, Lcom/android/server/wm/ActivityStack;->destroyActivityLocked(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)Z

    move-result v13

    .line 4331
    .local v13, "activityRemoved":Z
    if-eqz v7, :cond_170

    .line 4336
    iget-object v15, v0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v2, v0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    invoke-virtual {v15, v5, v2, v10, v4}, Lcom/android/server/wm/RootActivityContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    .line 4339
    :cond_170
    if-eqz v13, :cond_177

    .line 4340
    iget-object v2, v0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 4342
    :cond_177
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONTAINERS:Z

    if-eqz v2, :cond_197

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "destroyActivityLocked: finishCurrentActivityLocked r="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " destroy returned removed="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4345
    :cond_197
    if-eqz v13, :cond_19b

    const/4 v2, 0x0

    goto :goto_19c

    :cond_19b
    move-object v2, v1

    :goto_19c
    return-object v2
.end method

.method finishDisabledPackageActivitiesLocked(Ljava/lang/String;Ljava/util/Set;ZZI)Z
    .registers 24
    .param p1, "packageName"  # Ljava/lang/String;
    .param p3, "doit"  # Z
    .param p4, "evenPersistent"  # Z
    .param p5, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZI)Z"
        }
    .end annotation

    .line 5357
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p5

    const/4 v0, 0x0

    .line 5358
    .local v0, "didSomething":Z
    const/4 v1, 0x0

    .line 5359
    .local v1, "lastTask":Lcom/android/server/wm/TaskRecord;
    const/4 v2, 0x0

    .line 5360
    .local v2, "homeActivity":Landroid/content/ComponentName;
    iget-object v3, v6, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v10, 0x1

    sub-int/2addr v3, v10

    move v11, v3

    .local v11, "taskNdx":I
    :goto_14
    if-ltz v11, :cond_db

    .line 5361
    iget-object v3, v6, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    iget-object v12, v3, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5362
    .local v12, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    iget-object v3, v6, Lcom/android/server/wm/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 5363
    iget-object v3, v6, Lcom/android/server/wm/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5365
    :goto_2a
    iget-object v3, v6, Lcom/android/server/wm/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_d7

    .line 5366
    iget-object v3, v6, Lcom/android/server/wm/ActivityStack;->mTmpActivities:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/android/server/wm/ActivityRecord;

    .line 5367
    .local v13, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v3, v13, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 5368
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    if-eqz v8, :cond_58

    iget-object v3, v13, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 5369
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    :cond_52
    if-nez v7, :cond_59

    iget v3, v13, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v3, v9, :cond_59

    :cond_58
    move v4, v10

    :cond_59
    move v14, v4

    .line 5371
    .local v14, "sameComponent":Z
    const/4 v3, -0x1

    if-eq v9, v3, :cond_61

    iget v3, v13, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v3, v9, :cond_d5

    :cond_61
    if-nez v14, :cond_69

    .line 5372
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    if-ne v3, v1, :cond_d5

    :cond_69
    iget-object v3, v13, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v3, :cond_77

    if-nez p4, :cond_77

    iget-object v3, v13, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 5373
    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->isPersistent()Z

    move-result v3

    if-nez v3, :cond_d5

    .line 5374
    :cond_77
    if-nez p3, :cond_7f

    .line 5375
    iget-boolean v3, v13, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_7e

    .line 5378
    goto :goto_2a

    .line 5380
    :cond_7e
    return v10

    .line 5382
    :cond_7f
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v3

    const-string v4, "ActivityTaskManager"

    if-eqz v3, :cond_aa

    .line 5383
    if-eqz v2, :cond_a6

    iget-object v3, v13, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 5384
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skip force-stop again "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5385
    goto :goto_2a

    .line 5387
    :cond_a6
    iget-object v2, v13, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    move-object v15, v2

    goto :goto_ab

    .line 5382
    :cond_aa
    move-object v15, v2

    .line 5390
    .end local v2  # "homeActivity":Landroid/content/ComponentName;
    .local v15, "homeActivity":Landroid/content/ComponentName;
    :goto_ab
    const/16 v16, 0x1

    .line 5391
    .end local v0  # "didSomething":Z
    .local v16, "didSomething":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Force finishing activity "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5392
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v17

    .line 5393
    .end local v1  # "lastTask":Lcom/android/server/wm/TaskRecord;
    .local v17, "lastTask":Lcom/android/server/wm/TaskRecord;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    const-string v4, "force-stop"

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-object v2, v15

    move/from16 v0, v16

    move-object/from16 v1, v17

    .line 5396
    .end local v13  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v14  # "sameComponent":Z
    .end local v15  # "homeActivity":Landroid/content/ComponentName;
    .end local v16  # "didSomething":Z
    .end local v17  # "lastTask":Lcom/android/server/wm/TaskRecord;
    .restart local v0  # "didSomething":Z
    .restart local v1  # "lastTask":Lcom/android/server/wm/TaskRecord;
    .restart local v2  # "homeActivity":Landroid/content/ComponentName;
    :cond_d5
    goto/16 :goto_2a

    .line 5360
    .end local v12  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    :cond_d7
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_14

    .line 5398
    .end local v11  # "taskNdx":I
    :cond_db
    return v0
.end method

.method final finishSubActivityLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V
    .registers 14
    .param p1, "self"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "resultWho"  # Ljava/lang/String;
    .param p3, "requestCode"  # I

    .line 3997
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_4c

    .line 3998
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    iget-object v1, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 3999
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "activityNdx":I
    :goto_1a
    if-ltz v2, :cond_49

    .line 4000
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 4001
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-ne v4, p1, :cond_46

    iget v4, v3, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    if-ne v4, p3, :cond_46

    .line 4002
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    if-nez v4, :cond_30

    if-eqz p2, :cond_3c

    :cond_30
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v4, :cond_46

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 4003
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 4004
    :cond_3c
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-string v8, "request-sub"

    move-object v4, p0

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3999
    .end local v3  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_46
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 3997
    .end local v1  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v2  # "activityNdx":I
    :cond_49
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4010
    .end local v0  # "taskNdx":I
    :cond_4c
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V

    .line 4011
    return-void
.end method

.method final finishTopCrashedActivityLocked(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)Lcom/android/server/wm/TaskRecord;
    .registers 18
    .param p1, "app"  # Lcom/android/server/wm/WindowProcessController;
    .param p2, "reason"  # Ljava/lang/String;

    .line 4022
    move-object v6, p0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    .line 4023
    .local v7, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v0, 0x0

    .line 4024
    .local v0, "finishedTask":Lcom/android/server/wm/TaskRecord;
    if-eqz v7, :cond_c6

    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    move-object/from16 v8, p1

    if-eq v1, v8, :cond_10

    goto/16 :goto_c8

    .line 4027
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  Force finishing activity "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 4028
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4027
    const-string v10, "ActivityTaskManager"

    invoke-static {v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4029
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v11

    .line 4030
    .end local v0  # "finishedTask":Lcom/android/server/wm/TaskRecord;
    .local v11, "finishedTask":Lcom/android/server/wm/TaskRecord;
    iget-object v0, v6, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    .line 4031
    .local v12, "taskNdx":I
    move-object v13, v11

    .line 4032
    .local v13, "task":Lcom/android/server/wm/TaskRecord;
    iget-object v0, v13, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    .line 4033
    .local v14, "activityNdx":I
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 4035
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v7

    move-object/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4036
    nop

    .line 4040
    add-int/lit8 v14, v14, -0x1

    .line 4041
    if-gez v14, :cond_72

    .line 4043
    :cond_5b
    add-int/lit8 v12, v12, -0x1

    .line 4044
    if-gez v12, :cond_60

    .line 4045
    goto :goto_72

    .line 4047
    :cond_60
    iget-object v0, v6, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskRecord;

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v14, v0, -0x1

    .line 4048
    if-ltz v14, :cond_5b

    .line 4050
    :cond_72
    :goto_72
    if-ltz v14, :cond_c5

    .line 4051
    iget-object v0, v6, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskRecord;

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    .line 4052
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v7, v0, v1, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_c5

    .line 4053
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_9f

    iget-object v0, v6, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v0, v1, :cond_c5

    .line 4054
    :cond_9f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 4055
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4054
    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4056
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v7

    move-object/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4060
    :cond_c5
    return-object v11

    .line 4024
    .end local v11  # "finishedTask":Lcom/android/server/wm/TaskRecord;
    .end local v12  # "taskNdx":I
    .end local v13  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v14  # "activityNdx":I
    .restart local v0  # "finishedTask":Lcom/android/server/wm/TaskRecord;
    :cond_c6
    move-object/from16 v8, p1

    .line 4025
    :goto_c8
    const/4 v1, 0x0

    return-object v1
.end method

.method final finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .registers 14
    .param p1, "session"  # Landroid/service/voice/IVoiceInteractionSession;

    .line 4064
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 4065
    .local v0, "sessionBinder":Landroid/os/IBinder;
    const/4 v1, 0x0

    .line 4066
    .local v1, "didOne":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "taskNdx":I
    :goto_d
    if-ltz v2, :cond_83

    .line 4067
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    .line 4068
    .local v3, "tr":Lcom/android/server/wm/TaskRecord;
    iget-object v4, v3, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v4, :cond_48

    iget-object v4, v3, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v4}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v0, :cond_48

    .line 4069
    iget-object v4, v3, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "activityNdx":I
    :goto_2b
    if-ltz v4, :cond_47

    .line 4070
    iget-object v5, v3, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 4071
    .local v5, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v6, :cond_44

    .line 4072
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-string v10, "finish-voice"

    move-object v6, p0

    move-object v7, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4074
    const/4 v1, 0x1

    .line 4069
    .end local v5  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_44
    add-int/lit8 v4, v4, -0x1

    goto :goto_2b

    .end local v4  # "activityNdx":I
    :cond_47
    goto :goto_80

    .line 4079
    :cond_48
    iget-object v4, v3, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .restart local v4  # "activityNdx":I
    :goto_50
    if-ltz v4, :cond_80

    .line 4080
    iget-object v5, v3, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 4081
    .restart local v5  # "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v6, :cond_7d

    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v6}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v6, v0, :cond_7d

    .line 4083
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->clearVoiceSessionLocked()V

    .line 4085
    :try_start_69
    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/app/IApplicationThread;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_75} :catch_76

    .line 4089
    goto :goto_77

    .line 4087
    :catch_76
    move-exception v6

    .line 4090
    :goto_77
    iget-object v6, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->finishRunningVoiceLocked()V

    .line 4091
    goto :goto_80

    .line 4079
    .end local v5  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_7d
    add-int/lit8 v4, v4, -0x1

    goto :goto_50

    .line 4066
    .end local v3  # "tr":Lcom/android/server/wm/TaskRecord;
    .end local v4  # "activityNdx":I
    :cond_80
    :goto_80
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 4097
    .end local v2  # "taskNdx":I
    :cond_83
    if-eqz v1, :cond_8a

    .line 4098
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V

    .line 4100
    :cond_8a
    return-void
.end method

.method getAdjustedPositionForTask(Lcom/android/server/wm/TaskRecord;ILcom/android/server/wm/ActivityRecord;)I
    .registers 8
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "suggestedPosition"  # I
    .param p3, "starting"  # Lcom/android/server/wm/ActivityRecord;

    .line 3229
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3230
    .local v0, "maxPosition":I
    if-eqz p3, :cond_e

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v1

    if-nez v1, :cond_16

    :cond_e
    if-nez p3, :cond_1b

    .line 3231
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->okToShowLocked()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 3233
    :cond_16
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    .line 3237
    :cond_1b
    :goto_1b
    if-lez v0, :cond_3c

    .line 3238
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 3239
    .local v1, "tmpTask":Lcom/android/server/wm/TaskRecord;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v3, v1, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 3240
    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_38

    .line 3241
    goto :goto_3c

    .line 3243
    :cond_38
    nop

    .end local v1  # "tmpTask":Lcom/android/server/wm/TaskRecord;
    add-int/lit8 v0, v0, -0x1

    .line 3244
    goto :goto_1b

    .line 3246
    :cond_3c
    :goto_3c
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
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

    .line 1105
    .local p1, "outActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1106
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_b
    if-ltz v0, :cond_1b

    .line 1107
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskRecord;->getAllRunningVisibleActivitiesLocked(Ljava/util/ArrayList;)V

    .line 1106
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 1109
    .end local v0  # "taskNdx":I
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

    .line 5703
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getAnimationOrCurrentBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outBounds"  # Landroid/graphics/Rect;

    .line 5859
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 5860
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v0, :cond_a

    .line 5861
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 5862
    return-void

    .line 5864
    :cond_a
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskStack;->getAnimationOrCurrentBounds(Landroid/graphics/Rect;)V

    .line 5865
    return-void
.end method

.method protected bridge synthetic getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 195
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->getChildAt(I)Lcom/android/server/wm/TaskRecord;

    move-result-object p1

    return-object p1
.end method

.method protected getChildAt(I)Lcom/android/server/wm/TaskRecord;
    .registers 3
    .param p1, "index"  # I

    .line 268
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskRecord;

    return-object v0
.end method

.method protected getChildCount()I
    .registers 2

    .line 263
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getDefaultPictureInPictureBounds(F)Landroid/graphics/Rect;
    .registers 4
    .param p1, "aspectRatio"  # F

    .line 5838
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 5839
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/TaskStack;->getPictureInPictureBounds(FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getDisplay()Lcom/android/server/wm/ActivityDisplay;
    .registers 3

    .line 971
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v1, p0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    return-object v0
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .param p1, "name"  # Ljava/lang/String;
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

    .line 5573
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5575
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    const-string v1, "all"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 5576
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "taskNdx":I
    :goto_15
    if-ltz v1, :cond_27

    .line 5577
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    iget-object v2, v2, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5576
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .end local v1  # "taskNdx":I
    :cond_27
    goto :goto_95

    .line 5579
    :cond_28
    const-string v1, "top"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 5580
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 5581
    .local v1, "top":I
    if-ltz v1, :cond_55

    .line 5582
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    iget-object v2, v2, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5583
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 5584
    .local v3, "listTop":I
    if-ltz v3, :cond_55

    .line 5585
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5588
    .end local v1  # "top":I
    .end local v2  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v3  # "listTop":I
    :cond_55
    goto :goto_95

    .line 5589
    :cond_56
    new-instance v1, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct {v1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    .line 5590
    .local v1, "matcher":Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build(Ljava/lang/String;)V

    .line 5592
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "taskNdx":I
    :goto_66
    if-ltz v2, :cond_95

    .line 5593
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    iget-object v3, v3, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_76
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_92

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 5594
    .local v4, "r1":Lcom/android/server/wm/ActivityRecord;
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_91

    .line 5595
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5597
    .end local v4  # "r1":Lcom/android/server/wm/ActivityRecord;
    :cond_91
    goto :goto_76

    .line 5592
    :cond_92
    add-int/lit8 v2, v2, -0x1

    goto :goto_66

    .line 5601
    .end local v1  # "matcher":Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    .end local v2  # "taskNdx":I
    :cond_95
    :goto_95
    return-object v0
.end method

.method protected getParent()Lcom/android/server/wm/ActivityDisplay;
    .registers 2

    .line 273
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getParent()Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 195
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    return-object v0
.end method

.method getPresentUIDs(Landroid/util/IntArray;)V
    .registers 7
    .param p1, "presentUIDs"  # Landroid/util/IntArray;

    .line 1248
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

    .line 1249
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    iget-object v2, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1250
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/util/IntArray;->add(I)V

    .line 1251
    .end local v3  # "r":Lcom/android/server/wm/ActivityRecord;
    goto :goto_18

    .line 1252
    .end local v1  # "task":Lcom/android/server/wm/TaskRecord;
    :cond_2c
    goto :goto_6

    .line 1253
    :cond_2d
    return-void
.end method

.method protected getResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 2698
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method getRunningTasks(Ljava/util/List;IIIZ)V
    .registers 14
    .param p2, "ignoreActivityType"  # I
        .annotation build Landroid/app/WindowConfiguration$ActivityType;
        .end annotation
    .end param
    .param p3, "ignoreWindowingMode"  # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
    .param p4, "callingUid"  # I
    .param p5, "allowed"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/TaskRecord;",
            ">;IIIZ)V"
        }
    .end annotation

    .line 5410
    .local p1, "tasksOut":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/TaskRecord;>;"
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 5411
    .local v0, "focusedActivityStack":Lcom/android/server/wm/ActivityStack;
    const/4 v1, 0x1

    if-ne v0, p0, :cond_b

    move v2, v1

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    .line 5412
    .local v2, "focusedStack":Z
    :goto_c
    const/4 v3, 0x6

    invoke-static {p3, v3}, Landroid/app/WindowConfiguration;->containsWindowMode(II)Z

    move-result v3

    .line 5414
    .local v3, "isIgnoreMzWindowMode":Z
    const/4 v4, 0x1

    .line 5415
    .local v4, "topTask":Z
    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v1

    .local v5, "taskNdx":I
    :goto_19
    if-ltz v5, :cond_78

    .line 5416
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 5417
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-nez v6, :cond_2a

    .line 5419
    goto :goto_75

    .line 5421
    :cond_2a
    if-nez p5, :cond_37

    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->isActivityTypeHome()Z

    move-result v6

    if-nez v6, :cond_37

    iget v6, v1, Lcom/android/server/wm/TaskRecord;->effectiveUid:I

    if-eq v6, p4, :cond_37

    .line 5423
    goto :goto_75

    .line 5425
    :cond_37
    if-eqz p2, :cond_40

    .line 5426
    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->getActivityType()I

    move-result v6

    if-ne v6, p2, :cond_40

    .line 5428
    goto :goto_75

    .line 5431
    :cond_40
    if-eqz p3, :cond_4d

    .line 5432
    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->getWindowingMode()I

    move-result v6

    invoke-static {p3, v6}, Landroid/app/WindowConfiguration;->containsWindowMode(II)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 5434
    goto :goto_75

    .line 5437
    :cond_4d
    if-eqz v2, :cond_59

    if-eqz v4, :cond_59

    .line 5441
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/server/wm/TaskRecord;->lastActiveTime:J

    .line 5442
    const/4 v4, 0x0

    goto :goto_72

    .line 5444
    :cond_59
    if-eqz v3, :cond_72

    if-eqz v4, :cond_72

    if-eqz v0, :cond_72

    .line 5445
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isMzWindowMode()Z

    move-result v6

    if-eqz v6, :cond_72

    .line 5446
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isFocusableAndVisible()Z

    move-result v6

    if-eqz v6, :cond_72

    .line 5447
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/server/wm/TaskRecord;->lastActiveTime:J

    .line 5448
    const/4 v4, 0x0

    .line 5451
    :cond_72
    :goto_72
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5415
    .end local v1  # "task":Lcom/android/server/wm/TaskRecord;
    :goto_75
    add-int/lit8 v5, v5, -0x1

    goto :goto_19

    .line 5453
    .end local v5  # "taskNdx":I
    :cond_78
    return-void
.end method

.method getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 11
    .param p1, "dockedBounds"  # Landroid/graphics/Rect;
    .param p2, "currentTempTaskBounds"  # Landroid/graphics/Rect;
    .param p3, "outStackBounds"  # Landroid/graphics/Rect;
    .param p4, "outTempTaskBounds"  # Landroid/graphics/Rect;

    .line 979
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_14

    .line 980
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

    .line 983
    :cond_14
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 984
    invoke-virtual {p4}, Landroid/graphics/Rect;->setEmpty()V

    .line 986
    :goto_1a
    return-void
.end method

.method public getStackId()I
    .registers 2

    .line 5909
    iget v0, p0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    return v0
.end method

.method getTaskStack()Lcom/android/server/wm/TaskStack;
    .registers 2

    .line 568
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    return-object v0
.end method

.method getTopActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 3

    .line 1177
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 1178
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1179
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_19

    .line 1180
    return-object v1

    .line 1177
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1183
    .end local v0  # "taskNdx":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method getTopDismissingKeyguardActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 2384
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTopDismissingKeyguardActivity:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method getVisibility(Lcom/android/server/wm/ActivityRecord;)I
    .registers 22
    .param p1, "starting"  # Lcom/android/server/wm/ActivityRecord;
    .annotation build Lcom/android/server/wm/ActivityStack$StackVisibility;
    .end annotation

    .line 2063
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_ea

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStack;->mForceHidden:Z

    if-eqz v2, :cond_10

    goto/16 :goto_ea

    .line 2067
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    .line 2068
    .local v2, "display":Lcom/android/server/wm/ActivityDisplay;
    const/4 v4, 0x0

    .line 2069
    .local v4, "gotSplitScreenStack":Z
    const/4 v5, 0x0

    .line 2070
    .local v5, "gotOpaqueSplitScreenPrimary":Z
    const/4 v6, 0x0

    .line 2071
    .local v6, "gotOpaqueSplitScreenSecondary":Z
    const/4 v7, 0x0

    .line 2072
    .local v7, "gotTranslucentFullscreen":Z
    const/4 v8, 0x0

    .line 2073
    .local v8, "gotTranslucentSplitScreenPrimary":Z
    const/4 v9, 0x0

    .line 2074
    .local v9, "gotTranslucentSplitScreenSecondary":Z
    const/4 v10, 0x1

    .line 2075
    .local v10, "shouldBeVisible":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v11

    .line 2076
    .local v11, "windowingMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeAssistant()Z

    move-result v12

    .line 2077
    .local v12, "isAssistantType":Z
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    .local v13, "i":I
    :goto_29
    const/4 v14, 0x3

    if-ltz v13, :cond_c5

    .line 2078
    invoke-virtual {v2, v13}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v15

    .line 2079
    .local v15, "other":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v17

    if-eqz v17, :cond_39

    const/16 v17, 0x1

    goto :goto_3b

    :cond_39
    const/16 v17, 0x0

    .line 2080
    .local v17, "hasRunningActivities":Z
    :goto_3b
    if-ne v15, v0, :cond_57

    .line 2083
    if-nez v17, :cond_4f

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/ActivityStack;->isInStackLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v18

    if-nez v18, :cond_4f

    .line 2084
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v18

    if-eqz v18, :cond_4c

    goto :goto_4f

    :cond_4c
    const/16 v18, 0x0

    goto :goto_51

    :cond_4f
    :goto_4f
    const/16 v18, 0x1

    :goto_51
    move/from16 v10, v18

    .line 2085
    move-object/from16 v19, v2

    goto/16 :goto_c7

    .line 2088
    :cond_57
    if-nez v17, :cond_5d

    .line 2089
    move-object/from16 v19, v2

    goto/16 :goto_be

    .line 2092
    :cond_5d
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v3

    .line 2095
    .local v3, "otherWindowingMode":I
    invoke-direct {v0, v3}, Lcom/android/server/wm/ActivityStack;->isFullScreenWindowMode(I)Z

    move-result v19

    if-eqz v19, :cond_88

    .line 2103
    move-object/from16 v19, v2

    .end local v2  # "display":Lcom/android/server/wm/ActivityDisplay;
    .local v19, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v2

    .line 2104
    .local v2, "activityType":I
    if-ne v11, v14, :cond_7e

    .line 2105
    const/4 v14, 0x2

    if-eq v2, v14, :cond_c7

    const/4 v14, 0x4

    if-ne v2, v14, :cond_7e

    iget-object v14, v0, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 2107
    invoke-virtual {v14}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v14

    if-eqz v14, :cond_7e

    .line 2108
    goto :goto_c7

    .line 2111
    :cond_7e
    invoke-virtual {v15, v1}, Lcom/android/server/wm/ActivityStack;->isStackTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v14

    if-eqz v14, :cond_86

    .line 2113
    const/4 v7, 0x1

    .line 2114
    goto :goto_be

    .line 2116
    :cond_86
    const/4 v14, 0x2

    return v14

    .line 2117
    .end local v19  # "display":Lcom/android/server/wm/ActivityDisplay;
    .local v2, "display":Lcom/android/server/wm/ActivityDisplay;
    :cond_88
    move-object/from16 v19, v2

    .end local v2  # "display":Lcom/android/server/wm/ActivityDisplay;
    .restart local v19  # "display":Lcom/android/server/wm/ActivityDisplay;
    const/4 v2, 0x3

    if-ne v3, v2, :cond_9e

    if-nez v5, :cond_9e

    .line 2119
    const/4 v4, 0x1

    .line 2120
    invoke-virtual {v15, v1}, Lcom/android/server/wm/ActivityStack;->isStackTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v8

    .line 2121
    xor-int/lit8 v2, v8, 0x1

    move v5, v2

    .line 2122
    const/4 v2, 0x3

    if-ne v11, v2, :cond_b2

    if-eqz v5, :cond_b2

    .line 2125
    const/4 v2, 0x2

    return v2

    .line 2127
    :cond_9e
    const/4 v2, 0x4

    if-ne v3, v2, :cond_b2

    if-nez v6, :cond_b2

    .line 2129
    const/4 v4, 0x1

    .line 2130
    invoke-virtual {v15, v1}, Lcom/android/server/wm/ActivityStack;->isStackTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v9

    .line 2131
    xor-int/lit8 v2, v9, 0x1

    move v6, v2

    .line 2132
    const/4 v2, 0x4

    if-ne v11, v2, :cond_b2

    if-eqz v6, :cond_b2

    .line 2135
    const/4 v2, 0x2

    return v2

    .line 2138
    :cond_b2
    if-eqz v5, :cond_b8

    if-eqz v6, :cond_b8

    .line 2141
    const/4 v2, 0x2

    return v2

    .line 2138
    :cond_b8
    const/4 v2, 0x2

    .line 2143
    if-eqz v12, :cond_be

    if-eqz v4, :cond_be

    .line 2147
    return v2

    .line 2077
    .end local v3  # "otherWindowingMode":I
    .end local v15  # "other":Lcom/android/server/wm/ActivityStack;
    .end local v17  # "hasRunningActivities":Z
    :cond_be
    :goto_be
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v2, v19

    const/4 v14, 0x1

    goto/16 :goto_29

    .end local v19  # "display":Lcom/android/server/wm/ActivityDisplay;
    .restart local v2  # "display":Lcom/android/server/wm/ActivityDisplay;
    :cond_c5
    move-object/from16 v19, v2

    .line 2151
    .end local v2  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v13  # "i":I
    .restart local v19  # "display":Lcom/android/server/wm/ActivityDisplay;
    :cond_c7
    :goto_c7
    if-nez v10, :cond_cb

    .line 2152
    const/4 v2, 0x2

    return v2

    .line 2156
    :cond_cb
    const/4 v2, 0x1

    if-eq v11, v2, :cond_db

    const/4 v3, 0x3

    if-eq v11, v3, :cond_d8

    const/4 v3, 0x4

    if-eq v11, v3, :cond_d5

    goto :goto_e0

    .line 2170
    :cond_d5
    if-eqz v9, :cond_e0

    .line 2172
    return v2

    .line 2164
    :cond_d8
    if-eqz v8, :cond_e0

    .line 2166
    return v2

    .line 2158
    :cond_db
    if-nez v8, :cond_e8

    if-eqz v9, :cond_e0

    goto :goto_e8

    .line 2178
    :cond_e0
    :goto_e0
    if-eqz v7, :cond_e5

    const/16 v16, 0x1

    goto :goto_e7

    .line 2179
    :cond_e5
    const/16 v16, 0x0

    .line 2178
    :goto_e7
    return v16

    .line 2160
    :cond_e8
    :goto_e8
    const/4 v2, 0x1

    return v2

    .line 2064
    .end local v4  # "gotSplitScreenStack":Z
    .end local v5  # "gotOpaqueSplitScreenPrimary":Z
    .end local v6  # "gotOpaqueSplitScreenSecondary":Z
    .end local v7  # "gotTranslucentFullscreen":Z
    .end local v8  # "gotTranslucentSplitScreenPrimary":Z
    .end local v9  # "gotTranslucentSplitScreenSecondary":Z
    .end local v10  # "shouldBeVisible":Z
    .end local v11  # "windowingMode":I
    .end local v12  # "isAssistantType":Z
    .end local v19  # "display":Lcom/android/server/wm/ActivityDisplay;
    :cond_ea
    :goto_ea
    const/4 v2, 0x2

    return v2
.end method

.method getWindowContainerBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "outBounds"  # Landroid/graphics/Rect;

    .line 996
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_8

    .line 997
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 998
    return-void

    .line 1000
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1001
    return-void
.end method

.method goToSleep()V
    .registers 10

    .line 1655
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v0}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1660
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "taskNdx":I
    :goto_d
    if-ltz v0, :cond_3d

    .line 1661
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    iget-object v2, v2, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1662
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "activityNdx":I
    :goto_1e
    if-ltz v3, :cond_3a

    .line 1663
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 1664
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v8, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 1665
    invoke-virtual {v4, v1}, Lcom/android/server/wm/ActivityRecord;->setSleeping(Z)V

    .line 1662
    .end local v4  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_37
    add-int/lit8 v3, v3, -0x1

    goto :goto_1e

    .line 1660
    .end local v2  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v3  # "activityNdx":I
    :cond_3a
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 1669
    .end local v0  # "taskNdx":I
    :cond_3d
    return-void
.end method

.method goToSleepIfPossible(Z)Z
    .registers 7
    .param p1, "shuttingDown"  # Z

    .line 1612
    const/4 v0, 0x1

    .line 1614
    .local v0, "shouldSleep":Z
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v2, "ActivityTaskManager"

    if-eqz v1, :cond_32

    .line 1616
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v1, :cond_21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sleep needs to pause "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    :cond_21
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    if-eqz v1, :cond_2a

    const-string v1, "Sleep => pause with userLeaving=false"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    :cond_2a
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1, v3, v4}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Z)Z

    .line 1621
    const/4 v0, 0x0

    goto :goto_51

    .line 1622
    :cond_32
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_51

    .line 1624
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v1, :cond_50

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sleep still waiting to pause "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    :cond_50
    const/4 v0, 0x0

    .line 1628
    :cond_51
    :goto_51
    if-nez p1, :cond_b6

    .line 1629
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityStack;->containsActivityFromStack(Ljava/util/List;)Z

    move-result v1

    const-string v3, " activities"

    if-eqz v1, :cond_88

    .line 1631
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v1, :cond_82

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sleep still need to stop "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 1632
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1631
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    :cond_82
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 1635
    const/4 v0, 0x0

    .line 1638
    :cond_88
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityStack;->containsActivityFromStack(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 1640
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v1, :cond_b5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sleep still need to sleep "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    .line 1641
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1640
    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    :cond_b5
    const/4 v0, 0x0

    .line 1646
    :cond_b6
    if-eqz v0, :cond_bb

    .line 1647
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->goToSleep()V

    .line 1650
    :cond_bb
    return v0
.end method

.method handleAppCrash(Lcom/android/server/wm/WindowProcessController;)V
    .registers 9
    .param p1, "app"  # Lcom/android/server/wm/WindowProcessController;

    .line 5488
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_60

    .line 5489
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    iget-object v1, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5490
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "activityNdx":I
    :goto_1a
    if-ltz v2, :cond_5d

    .line 5491
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 5492
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v4, p1, :cond_5a

    .line 5493
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Force finishing activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 5494
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5493
    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5496
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 5497
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v5, 0x1a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 5499
    const-string v4, "handleAppCrashedLocked"

    invoke-virtual {p0, v3, v6, v6, v4}, Lcom/android/server/wm/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/wm/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    .line 5490
    .end local v3  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_5a
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 5488
    .end local v1  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v2  # "activityNdx":I
    :cond_5d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 5504
    .end local v0  # "taskNdx":I
    :cond_60
    return-void
.end method

.method handleAppDiedLocked(Lcom/android/server/wm/WindowProcessController;)Z
    .registers 5
    .param p1, "app"  # Lcom/android/server/wm/WindowProcessController;

    .line 5474
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v0, p1, :cond_2b

    .line 5475
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-nez v0, :cond_11

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v0, :cond_29

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App died while pausing: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5477
    :cond_29
    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 5479
    :cond_2b
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_37

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v0, p1, :cond_37

    .line 5480
    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 5481
    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    .line 5484
    :cond_37
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStack;->removeHistoryRecordsForAppLocked(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v0

    return v0
.end method

.method inFrontOfStandardStack()Z
    .registers 5

    .line 4385
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 4386
    .local v0, "display":Lcom/android/server/wm/ActivityDisplay;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 4387
    return v1

    .line 4389
    :cond_8
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityDisplay;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v2

    .line 4390
    .local v2, "index":I
    if-nez v2, :cond_f

    .line 4391
    return v1

    .line 4393
    :cond_f
    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 4394
    .local v1, "stackBehind":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandard()Z

    move-result v3

    return v3
.end method

.method isAnimatingBoundsToFullscreen()Z
    .registers 2

    .line 5887
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 5888
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isAnimatingBoundsToFullscreen()Z

    move-result v0

    return v0
.end method

.method final isAttached()Z
    .registers 3

    .line 1369
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1370
    .local v0, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public isCompatible(II)Z
    .registers 4
    .param p1, "windowingMode"  # I
    .param p2, "activityType"  # I

    .line 909
    if-nez p2, :cond_3

    .line 912
    const/4 p2, 0x1

    .line 914
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/ConfigurationContainer;->isCompatible(II)Z

    move-result v0

    return v0
.end method

.method isFocusable()Z
    .registers 4

    .line 1360
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1361
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v1, p0, v2}, Lcom/android/server/wm/RootActivityContainer;->isFocusable(Lcom/android/server/wm/ConfigurationContainer;Z)Z

    move-result v1

    return v1
.end method

.method isFocusableAndVisible()Z
    .registers 2

    .line 1365
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
    .registers 3

    .line 2038
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 2039
    .local v0, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-ne p0, v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method final isHomeOrRecentsStack()Z
    .registers 2

    .line 1274
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
    .registers 4
    .param p1, "token"  # Landroid/os/IBinder;

    .line 1212
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1213
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->isInStackLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    return-object v1
.end method

.method isInStackLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 6
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 1217
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1218
    return-object v0

    .line 1220
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    .line 1221
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1222
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v2, :cond_28

    iget-object v3, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1223
    if-eq v2, p0, :cond_27

    const-string v0, "ActivityTaskManager"

    const-string v3, "Illegal state! task does not point to stack it is in."

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :cond_27
    return-object p1

    .line 1227
    :cond_28
    return-object v0
.end method

.method isInStackLocked(Lcom/android/server/wm/TaskRecord;)Z
    .registers 3
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;

    .line 1231
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final isOnHomeDisplay()Z
    .registers 2

    .line 1278
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
    .registers 3

    .line 1257
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1258
    .local v0, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->isSingleTaskInstance()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method isStackTranslucent(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 9
    .param p1, "starting"  # Lcom/android/server/wm/ActivityRecord;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1997
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4a

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mForceHidden:Z

    if-eqz v0, :cond_c

    goto :goto_4a

    .line 2000
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "taskNdx":I
    :goto_13
    if-ltz v0, :cond_49

    .line 2001
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    .line 2002
    .local v2, "task":Lcom/android/server/wm/TaskRecord;
    iget-object v3, v2, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2003
    .local v3, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    .local v4, "activityNdx":I
    :goto_24
    if-ltz v4, :cond_46

    .line 2004
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 2006
    .local v5, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_31

    .line 2009
    goto :goto_41

    .line 2012
    :cond_31
    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-nez v6, :cond_38

    if-eq v5, p1, :cond_38

    .line 2015
    goto :goto_41

    .line 2018
    :cond_38
    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    if-nez v6, :cond_44

    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->hasWallpaper:Z

    if-eqz v6, :cond_41

    goto :goto_44

    .line 2003
    .end local v5  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_41
    :goto_41
    add-int/lit8 v4, v4, -0x1

    goto :goto_24

    .line 2021
    .restart local v5  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_44
    :goto_44
    const/4 v1, 0x0

    return v1

    .line 2000
    .end local v2  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v3  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v4  # "activityNdx":I
    .end local v5  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_46
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 2025
    .end local v0  # "taskNdx":I
    :cond_49
    return v1

    .line 1998
    :cond_4a
    :goto_4a
    return v1
.end method

.method isTopActivityVisible()Z
    .registers 3

    .line 2043
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2044
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_c

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method isTopStackOnDisplay()Z
    .registers 3

    .line 2029
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 2030
    .local v0, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v0, :cond_e

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityDisplay;->isTopStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method isUidPresent(I)Z
    .registers 7
    .param p1, "uid"  # I

    .line 1236
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

    .line 1237
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    iget-object v2, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1238
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v4

    if-ne v4, p1, :cond_2c

    .line 1239
    const/4 v0, 0x1

    return v0

    .line 1241
    .end local v3  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_2c
    goto :goto_18

    .line 1242
    .end local v1  # "task":Lcom/android/server/wm/TaskRecord;
    :cond_2d
    goto :goto_6

    .line 1243
    :cond_2e
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$setWindowingMode$0$ActivityStack(IZZZZZ)V
    .registers 7
    .param p1, "preferredWindowingMode"  # I
    .param p2, "animate"  # Z
    .param p3, "showRecents"  # Z
    .param p4, "enteringSplitScreenMode"  # Z
    .param p5, "deferEnsuringVisibility"  # Z
    .param p6, "creating"  # Z

    .line 734
    invoke-direct/range {p0 .. p6}, Lcom/android/server/wm/ActivityStack;->setWindowingModeInSurfaceTransaction(IZZZZZ)V

    return-void
.end method

.method minimalResumeActivityLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 1535
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Moving to RESUMED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (starting new instance) callers="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    .line 1536
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1535
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    :cond_27
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v2, "minimalResumeActivityLocked"

    invoke-virtual {p1, v0, v2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1538
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V

    .line 1539
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SAVED_STATE:Z

    if-eqz v0, :cond_4b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launch completed; removing icicle of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->icicle:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    :cond_4b
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurActivityPkgName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 1545
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurActivityPkgName:Ljava/lang/String;

    .line 1548
    :cond_5d
    return-void
.end method

.method final moveTaskToBackLocked(I)Z
    .registers 10
    .param p1, "taskId"  # I

    .line 5141
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->taskForIdLocked(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 5142
    .local v0, "tr":Lcom/android/server/wm/TaskRecord;
    const-string v1, "ActivityTaskManager"

    const/4 v2, 0x0

    if-nez v0, :cond_1e

    .line 5143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveTaskToBack: bad taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5144
    return v2

    .line 5146
    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveTaskToBack: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5150
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/wm/LockTaskController;->canMoveTaskToBack(Lcom/android/server/wm/TaskRecord;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 5151
    return v2

    .line 5157
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isTopStackOnDisplay()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_74

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v3, :cond_74

    .line 5158
    invoke-virtual {p0, v4, p1}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 5159
    .local v3, "next":Lcom/android/server/wm/ActivityRecord;
    if-nez v3, :cond_56

    .line 5160
    invoke-virtual {p0, v4, v2}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 5162
    :cond_56
    if-eqz v3, :cond_74

    .line 5164
    const/4 v5, 0x1

    .line 5166
    .local v5, "moveOK":Z
    :try_start_59
    iget-object v6, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object v7, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v6, v7}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v6
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_63} :catch_65

    move v5, v6

    .line 5170
    goto :goto_71

    .line 5167
    :catch_65
    move-exception v6

    .line 5168
    .local v6, "e":Landroid/os/RemoteException;
    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v4, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 5169
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 5171
    .end local v6  # "e":Landroid/os/RemoteException;
    :goto_71
    if-nez v5, :cond_74

    .line 5172
    return v2

    .line 5177
    .end local v3  # "next":Lcom/android/server/wm/ActivityRecord;
    .end local v5  # "moveOK":Z
    :cond_74
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v3, :cond_8c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prepare to back transition: task="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5179
    :cond_8c
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5180
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5181
    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/ActivityStack;->updateTaskMovement(Lcom/android/server/wm/TaskRecord;Z)V

    .line 5183
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 5184
    const-string v1, "moveTaskToBackLocked"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/ActivityStack;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/TaskRecord;)V

    .line 5186
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_b6

    .line 5187
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityStackSupervisor;->removeStack(Lcom/android/server/wm/ActivityStack;)V

    .line 5188
    return v3

    .line 5191
    :cond_b6
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 5192
    .local v1, "topActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 5193
    .local v5, "topStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v5, :cond_d9

    if-eq v5, p0, :cond_d9

    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v1, v6}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v6

    if-eqz v6, :cond_d9

    .line 5197
    iget-object v6, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 5198
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v7

    iget v7, v7, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    .line 5197
    invoke-virtual {v6, v4, v7, v2, v2}, Lcom/android/server/wm/RootActivityContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    .line 5202
    :cond_d9
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 5203
    return v3
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/wm/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V
    .registers 22
    .param p1, "tr"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "noAnimation"  # Z
    .param p3, "options"  # Landroid/app/ActivityOptions;
    .param p4, "timeTracker"  # Lcom/android/server/am/AppTimeTracker;
    .param p5, "reason"  # Ljava/lang/String;

    .line 5051
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    const-string v5, "ActivityTaskManager"

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveTaskToFront: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5053
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 5054
    .local v6, "topStack":Lcom/android/server/wm/ActivityStack;
    const/4 v0, 0x0

    if-eqz v6, :cond_32

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    goto :goto_33

    :cond_32
    move-object v7, v0

    .line 5055
    .local v7, "topActivity":Lcom/android/server/wm/ActivityRecord;
    :goto_33
    iget-object v8, v1, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 5056
    .local v8, "numTasks":I
    iget-object v9, v1, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 5057
    .local v9, "index":I
    const/16 v10, 0xa

    if-eqz v8, :cond_122

    if-gez v9, :cond_49

    move-object/from16 v14, p5

    goto/16 :goto_124

    .line 5067
    :cond_49
    const/4 v11, 0x1

    if-eqz v4, :cond_62

    .line 5069
    iget-object v12, v2, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v11

    .local v12, "i":I
    :goto_53
    if-ltz v12, :cond_62

    .line 5070
    iget-object v13, v2, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/ActivityRecord;

    iput-object v4, v13, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 5069
    add-int/lit8 v12, v12, -0x1

    goto :goto_53

    .line 5078
    .end local v12  # "i":I
    :cond_62
    :try_start_62
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityDisplay;->deferUpdateImeTarget()V

    .line 5082
    invoke-direct {v1, v2, v0}, Lcom/android/server/wm/ActivityStack;->insertTaskAtTop(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 5085
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    .line 5086
    .local v12, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v12, :cond_fb

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v13

    if-nez v13, :cond_7c

    move-object/from16 v14, p5

    goto/16 :goto_fd

    .line 5095
    :cond_7c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v13
    :try_end_80
    .catchall {:try_start_62 .. :try_end_80} :catchall_117

    .line 5096
    .local v13, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v13, :cond_88

    .line 5097
    move-object/from16 v14, p5

    :try_start_84
    invoke-virtual {v13, v14}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    goto :goto_8a

    .line 5096
    :cond_88
    move-object/from16 v14, p5

    .line 5100
    :goto_8a
    sget-boolean v15, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v15, :cond_a2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Prepare to front transition: task="

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5101
    :cond_a2
    const/4 v5, 0x0

    if-eqz p2, :cond_bb

    .line 5102
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v10, v5, v5}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 5103
    if-eqz v13, :cond_b7

    .line 5104
    iget-object v10, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5106
    :cond_b7
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_be

    .line 5108
    :cond_bb
    invoke-direct {v1, v10, v3}, Lcom/android/server/wm/ActivityStack;->updateTransitLocked(ILandroid/app/ActivityOptions;)V

    .line 5116
    :goto_be
    invoke-direct {v1, v7, v2, v0, v3}, Lcom/android/server/wm/ActivityStack;->canEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 5118
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 5121
    :cond_c7
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 5122
    const/16 v0, 0x7532

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    iget v11, v2, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    iget v5, v2, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v11, 0x1

    aput-object v5, v10, v11

    invoke-static {v0, v10}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5123
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskMovedToFront(Landroid/app/TaskInfo;)V
    :try_end_f2
    .catchall {:try_start_84 .. :try_end_f2} :catchall_115

    .line 5125
    .end local v12  # "top":Lcom/android/server/wm/ActivityRecord;
    .end local v13  # "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->continueUpdateImeTarget()V

    .line 5126
    nop

    .line 5127
    return-void

    .line 5086
    .restart local v12  # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_fb
    move-object/from16 v14, p5

    .line 5087
    :goto_fd
    if-eqz v12, :cond_10a

    .line 5088
    :try_start_ff
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/TaskRecord;)V

    .line 5090
    :cond_10a
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V
    :try_end_10d
    .catchall {:try_start_ff .. :try_end_10d} :catchall_115

    .line 5125
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->continueUpdateImeTarget()V

    .line 5091
    return-void

    .line 5125
    .end local v12  # "top":Lcom/android/server/wm/ActivityRecord;
    :catchall_115
    move-exception v0

    goto :goto_11a

    :catchall_117
    move-exception v0

    move-object/from16 v14, p5

    :goto_11a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityDisplay;->continueUpdateImeTarget()V

    throw v0

    .line 5057
    :cond_122
    move-object/from16 v14, p5

    .line 5059
    :goto_124
    if-eqz p2, :cond_12a

    .line 5060
    invoke-static/range {p3 .. p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_12d

    .line 5062
    :cond_12a
    invoke-direct {v1, v10, v3}, Lcom/android/server/wm/ActivityStack;->updateTransitLocked(ILandroid/app/ActivityOptions;)V

    .line 5064
    :goto_12d
    return-void
.end method

.method moveToBack(Ljava/lang/String;Lcom/android/server/wm/TaskRecord;)V
    .registers 5
    .param p1, "reason"  # Ljava/lang/String;
    .param p2, "task"  # Lcom/android/server/wm/TaskRecord;

    .line 1338
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1339
    return-void

    .line 1346
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_12

    .line 1347
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    .line 1350
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/FlymeWindowManagerInternal;->onActivityStackMoveToBack(Lcom/android/server/wm/ActivityStack;)V

    .line 1352
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/ActivityDisplay;->positionChildAtBottom(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V

    .line 1353
    if-eqz p2, :cond_25

    .line 1354
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityStack;->insertTaskAtBottom(Lcom/android/server/wm/TaskRecord;)V

    .line 1357
    :cond_25
    return-void
.end method

.method moveToFront(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"  # Ljava/lang/String;

    .line 1288
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/TaskRecord;)V

    .line 1289
    return-void
.end method

.method moveToFront(Ljava/lang/String;Lcom/android/server/wm/TaskRecord;)V
    .registers 9
    .param p1, "reason"  # Ljava/lang/String;
    .param p2, "task"  # Lcom/android/server/wm/TaskRecord;

    .line 1296
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1297
    return-void

    .line 1300
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1302
    .local v0, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3b

    .line 1308
    nop

    .line 1309
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1310
    .local v1, "topFullScreenStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_3b

    .line 1311
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1312
    .local v3, "primarySplitScreenStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityDisplay;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v4

    .line 1313
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityDisplay;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v5

    if-le v4, v5, :cond_3b

    .line 1314
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " splitScreenToTop"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1319
    .end local v1  # "topFullScreenStack":Lcom/android/server/wm/ActivityStack;
    .end local v3  # "primarySplitScreenStack":Lcom/android/server/wm/ActivityStack;
    :cond_3b
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v1

    if-nez v1, :cond_5b

    invoke-direct {p0}, Lcom/android/server/wm/ActivityStack;->returnsToHomeStack()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 1322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " returnToHome"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityDisplay;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 1325
    :cond_5b
    const/4 v1, 0x0

    if-eqz p2, :cond_60

    move v3, v2

    goto :goto_61

    :cond_60
    move v3, v1

    .line 1326
    .local v3, "movingTask":Z
    :goto_61
    if-nez v3, :cond_64

    move v1, v2

    :cond_64
    invoke-virtual {v0, p0, v1, p1}, Lcom/android/server/wm/ActivityDisplay;->positionChildAtTop(Lcom/android/server/wm/ActivityStack;ZLjava/lang/String;)V

    .line 1327
    if-eqz v3, :cond_6d

    .line 1329
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/wm/ActivityStack;->insertTaskAtTop(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 1331
    :cond_6d
    return-void
.end method

.method moveToFrontAndResumeStateIfNeeded(Lcom/android/server/wm/ActivityRecord;ZZZLjava/lang/String;)V
    .registers 9
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "moveToFront"  # Z
    .param p3, "setResume"  # Z
    .param p4, "setPause"  # Z
    .param p5, "reason"  # Ljava/lang/String;

    .line 5809
    if-nez p2, :cond_3

    .line 5810
    return-void

    .line 5813
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v0

    .line 5817
    .local v0, "origState":Lcom/android/server/wm/ActivityStack$ActivityState;
    if-eqz p3, :cond_13

    .line 5818
    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v2, "moveToFrontAndResumeStateIfNeeded"

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 5819
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->updateLRUListLocked(Lcom/android/server/wm/ActivityRecord;)Z

    .line 5822
    :cond_13
    if-eqz p4, :cond_1a

    .line 5823
    iput-object p1, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 5824
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStack;->schedulePauseTimeout(Lcom/android/server/wm/ActivityRecord;)V

    .line 5827
    :cond_1a
    invoke-virtual {p0, p5}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 5830
    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v0, v1, :cond_2e

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-ne p1, v1, :cond_2e

    .line 5832
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p1, p5}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 5834
    :cond_2e
    return-void
.end method

.method final navigateUpToLocked(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;ILandroid/content/Intent;)Z
    .registers 30
    .param p1, "srec"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "destIntent"  # Landroid/content/Intent;
    .param p3, "resultCode"  # I
    .param p4, "resultData"  # Landroid/content/Intent;

    .line 4432
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_e

    .line 4435
    return v10

    .line 4437
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v11

    .line 4438
    .local v11, "task":Lcom/android/server/wm/TaskRecord;
    iget-object v12, v11, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4439
    .local v12, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    .line 4440
    .local v13, "start":I
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16e

    if-gez v13, :cond_24

    goto/16 :goto_16e

    .line 4443
    :cond_24
    add-int/lit8 v0, v13, -0x1

    .line 4444
    .local v0, "finishTo":I
    const/4 v1, 0x0

    if-gez v0, :cond_2b

    move-object v2, v1

    goto :goto_31

    :cond_2b
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 4445
    .local v2, "parent":Lcom/android/server/wm/ActivityRecord;
    :goto_31
    const/4 v3, 0x0

    .line 4446
    .local v3, "foundParentInTask":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    .line 4447
    .local v14, "dest":Landroid/content/ComponentName;
    if-lez v13, :cond_6a

    if-eqz v14, :cond_6a

    .line 4448
    move v4, v0

    .local v4, "i":I
    :goto_3b
    if-ltz v4, :cond_6a

    .line 4449
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 4450
    .local v5, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_67

    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 4451
    invoke-virtual {v14}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_67

    .line 4452
    move v0, v4

    .line 4453
    move-object v2, v5

    .line 4454
    const/4 v3, 0x1

    .line 4455
    move v6, v0

    move-object v15, v2

    move/from16 v16, v3

    goto :goto_6e

    .line 4448
    .end local v5  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_67
    add-int/lit8 v4, v4, -0x1

    goto :goto_3b

    .line 4462
    .end local v4  # "i":I
    :cond_6a
    move v6, v0

    move-object v15, v2

    move/from16 v16, v3

    .end local v0  # "finishTo":I
    .end local v2  # "parent":Lcom/android/server/wm/ActivityRecord;
    .end local v3  # "foundParentInTask":Z
    .local v6, "finishTo":I
    .local v15, "parent":Lcom/android/server/wm/ActivityRecord;
    .local v16, "foundParentInTask":Z
    :goto_6e
    iget-object v0, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 4463
    .local v5, "controller":Landroid/app/IActivityController;
    if-eqz v5, :cond_94

    .line 4464
    iget-object v0, v8, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v7, v0, v10}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 4465
    .local v2, "next":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_94

    .line 4467
    const/4 v3, 0x1

    .line 4469
    .local v3, "resumeOK":Z
    :try_start_7d
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v5, v0}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v0
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_83} :catch_85

    move v3, v0

    .line 4473
    goto :goto_91

    .line 4470
    :catch_85
    move-exception v0

    .line 4471
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v1, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 4472
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 4475
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_91
    if-nez v3, :cond_94

    .line 4476
    return v10

    .line 4480
    .end local v2  # "next":Lcom/android/server/wm/ActivityRecord;
    .end local v3  # "resumeOK":Z
    :cond_94
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 4481
    .local v17, "origId":J
    move v0, v13

    move/from16 v19, p3

    move-object/from16 v20, p4

    .end local p3  # "resultCode":I
    .end local p4  # "resultData":Landroid/content/Intent;
    .local v0, "i":I
    .local v19, "resultCode":I
    .local v20, "resultData":Landroid/content/Intent;
    :goto_9d
    if-le v0, v6, :cond_ca

    .line 4482
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 4483
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v2, v4, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/16 v21, 0x1

    const-string v22, "navigate-up"

    move-object/from16 v1, p0

    move/from16 v3, v19

    move-object/from16 v23, v4

    .end local v4  # "r":Lcom/android/server/wm/ActivityRecord;
    .local v23, "r":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v4, v20

    move-object/from16 v24, v5

    .end local v5  # "controller":Landroid/app/IActivityController;
    .local v24, "controller":Landroid/app/IActivityController;
    move-object/from16 v5, v22

    move/from16 v22, v6

    .end local v6  # "finishTo":I
    .local v22, "finishTo":I
    move/from16 v6, v21

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 4485
    const/16 v19, 0x0

    .line 4486
    const/16 v20, 0x0

    .line 4481
    .end local v23  # "r":Lcom/android/server/wm/ActivityRecord;
    add-int/lit8 v0, v0, -0x1

    move/from16 v6, v22

    move-object/from16 v5, v24

    goto :goto_9d

    .end local v22  # "finishTo":I
    .end local v24  # "controller":Landroid/app/IActivityController;
    .restart local v5  # "controller":Landroid/app/IActivityController;
    .restart local v6  # "finishTo":I
    :cond_ca
    move-object/from16 v24, v5

    move/from16 v22, v6

    .line 4489
    .end local v0  # "i":I
    .end local v5  # "controller":Landroid/app/IActivityController;
    .end local v6  # "finishTo":I
    .restart local v22  # "finishTo":I
    .restart local v24  # "controller":Landroid/app/IActivityController;
    if-eqz v15, :cond_16a

    if-eqz v16, :cond_16a

    .line 4490
    iget-object v0, v8, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4491
    .local v6, "callingUid":I
    iget-object v0, v15, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 4492
    .local v5, "parentLaunchMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v21

    .line 4493
    .local v21, "destIntentFlags":I
    const/4 v0, 0x3

    if-eq v5, v0, :cond_162

    const/4 v0, 0x2

    if-eq v5, v0, :cond_162

    const/4 v0, 0x1

    if-eq v5, v0, :cond_162

    const/high16 v1, 0x4000000

    and-int v1, v21, v1

    if-eqz v1, :cond_f4

    move/from16 v23, v5

    move v10, v6

    goto/16 :goto_165

    .line 4500
    :cond_f4
    :try_start_f4
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 4501
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x400

    iget v4, v8, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 4500
    invoke-interface {v1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 4504
    .local v1, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v2, v7, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v2

    const-string v3, "navigateUpTo"

    .line 4505
    invoke-virtual {v2, v9, v3}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    iget-object v3, v8, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 4506
    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 4507
    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    iget-object v3, v15, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 4508
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 4509
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 4510
    invoke-virtual {v2, v6}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    iget-object v4, v8, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 4511
    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 4512
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 4513
    invoke-virtual {v2, v6}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 4514
    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityStarter;->setComponentSpecified(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 4515
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v2
    :try_end_143
    .catch Landroid/os/RemoteException; {:try_start_f4 .. :try_end_143} :catch_14a

    .line 4516
    .local v2, "res":I
    if-nez v2, :cond_146

    goto :goto_147

    :cond_146
    move v0, v10

    .line 4519
    .end local v1  # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v2  # "res":I
    .end local v16  # "foundParentInTask":Z
    .local v0, "foundParentInTask":Z
    :goto_147
    move/from16 v16, v0

    goto :goto_14e

    .line 4517
    .end local v0  # "foundParentInTask":Z
    .restart local v16  # "foundParentInTask":Z
    :catch_14a
    move-exception v0

    .line 4518
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    move/from16 v16, v1

    .line 4520
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_14e
    iget-object v2, v15, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v0, 0x1

    const-string v10, "navigate-top"

    move-object/from16 v1, p0

    move/from16 v3, v19

    move-object/from16 v4, v20

    move/from16 v23, v5

    .end local v5  # "parentLaunchMode":I
    .local v23, "parentLaunchMode":I
    move-object v5, v10

    move v10, v6

    .end local v6  # "callingUid":I
    .local v10, "callingUid":I
    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    goto :goto_16a

    .line 4493
    .end local v10  # "callingUid":I
    .end local v23  # "parentLaunchMode":I
    .restart local v5  # "parentLaunchMode":I
    .restart local v6  # "callingUid":I
    :cond_162
    move/from16 v23, v5

    move v10, v6

    .line 4497
    .end local v5  # "parentLaunchMode":I
    .end local v6  # "callingUid":I
    .restart local v10  # "callingUid":I
    .restart local v23  # "parentLaunchMode":I
    :goto_165
    iget-object v0, v8, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v10, v9, v0}, Lcom/android/server/wm/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 4524
    .end local v10  # "callingUid":I
    .end local v21  # "destIntentFlags":I
    .end local v23  # "parentLaunchMode":I
    :cond_16a
    :goto_16a
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4525
    return v16

    .line 4441
    .end local v14  # "dest":Landroid/content/ComponentName;
    .end local v15  # "parent":Lcom/android/server/wm/ActivityRecord;
    .end local v16  # "foundParentInTask":Z
    .end local v17  # "origId":J
    .end local v19  # "resultCode":I
    .end local v20  # "resultData":Landroid/content/Intent;
    .end local v22  # "finishTo":I
    .end local v24  # "controller":Landroid/app/IActivityController;
    .restart local p3  # "resultCode":I
    .restart local p4  # "resultData":Landroid/content/Intent;
    :cond_16e
    :goto_16e
    return v10
.end method

.method notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 2584
    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 2585
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 2586
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2589
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 2590
    .local v0, "waitingActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 2591
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2592
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2594
    if-eqz v0, :cond_43

    .line 2595
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaque(Landroid/os/IBinder;Z)V

    .line 2596
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 2598
    :try_start_33
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eqz p1, :cond_3e

    const/4 v3, 0x1

    :cond_3e
    invoke-interface {v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_41} :catch_42

    .line 2601
    goto :goto_43

    .line 2600
    :catch_42
    move-exception v1

    .line 2605
    .end local v0  # "waitingActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_43
    :goto_43
    return-void
.end method

.method numActivities()I
    .registers 4

    .line 522
    const/4 v0, 0x0

    .line 523
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "taskNdx":I
    :goto_9
    if-ltz v1, :cond_1d

    .line 524
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    iget-object v2, v2, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 523
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 526
    .end local v1  # "taskNdx":I
    :cond_1d
    return v0
.end method

.method onActivityAddedToStack(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 4544
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v0

    sget-object v1, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v0, v1, :cond_d

    .line 4545
    const-string v0, "onActivityAddedToStack"

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ActivityStack;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 4547
    :cond_d
    return-void
.end method

.method onActivityRemovedFromStack(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 4533
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 4535
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    if-ne v0, p1, :cond_f

    .line 4536
    const-string v0, "onActivityRemovedFromStack"

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/ActivityStack;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 4538
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_17

    if-ne v0, p1, :cond_17

    .line 4539
    iput-object v1, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 4541
    :cond_17
    return-void
.end method

.method onActivityStateChanged(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V
    .registers 7
    .param p1, "record"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "state"  # Lcom/android/server/wm/ActivityStack$ActivityState;
    .param p3, "reason"  # Ljava/lang/String;

    .line 580
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v1, " - onActivityStateChanged"

    if-ne p1, v0, :cond_1d

    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-eq p2, v0, :cond_1d

    .line 581
    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/ActivityStack;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 584
    :cond_1d
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne p2, v0, :cond_6d

    .line 585
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_43

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set resumed activity to:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " reason:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ActivityStack;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 588
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne p1, v0, :cond_62

    .line 590
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 592
    :cond_62
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/TaskRecord;)V

    .line 594
    :cond_6d
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 27
    .param p1, "newParentConfig"  # Landroid/content/res/Configuration;

    .line 598
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v10

    .line 599
    .local v10, "prevWindowingMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v11

    .line 600
    .local v11, "prevIsAlwaysOnTop":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v12

    .line 601
    .local v12, "prevRotation":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v13, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 602
    .local v13, "prevDensity":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v14, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 603
    .local v14, "prevScreenW":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v15, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 604
    .local v15, "prevScreenH":I
    iget-object v7, v8, Lcom/android/server/wm/ActivityStack;->mTmpRect:Landroid/graphics/Rect;

    .line 607
    .local v7, "newBounds":Landroid/graphics/Rect;
    invoke-virtual {v8, v7}, Lcom/android/server/wm/ActivityStack;->getBounds(Landroid/graphics/Rect;)V

    .line 609
    invoke-super/range {p0 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 610
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v6

    .line 611
    .local v6, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v6, :cond_169

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-nez v0, :cond_3f

    move-object v0, v6

    move-object/from16 v19, v7

    goto/16 :goto_16c

    .line 615
    :cond_3f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    if-eq v10, v0, :cond_47

    const/4 v0, 0x1

    goto :goto_48

    :cond_47
    const/4 v0, 0x0

    :goto_48
    move/from16 v16, v0

    .line 616
    .local v16, "windowingModeChanged":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideWindowingMode()I

    move-result v4

    .line 618
    .local v4, "overrideWindowingMode":I
    const/4 v0, 0x0

    .line 620
    .local v0, "hasNewOverrideBounds":Z
    const/4 v2, 0x2

    const/4 v1, 0x3

    if-ne v4, v2, :cond_5c

    .line 622
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/server/wm/TaskStack;->calculatePinnedBoundsForConfigChange(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_a8

    .line 623
    :cond_5c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->matchParentBounds()Z

    move-result v2

    if-nez v2, :cond_a8

    .line 626
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    .line 627
    .local v2, "newRotation":I
    if-eq v12, v2, :cond_6f

    const/16 v18, 0x1

    goto :goto_71

    :cond_6f
    const/16 v18, 0x0

    .line 628
    .local v18, "rotationChanged":Z
    :goto_71
    if-eqz v18, :cond_7f

    .line 629
    iget-object v5, v6, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 630
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 629
    invoke-virtual {v5, v3, v12, v2, v7}, Lcom/android/server/wm/DisplayContent;->rotateBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 632
    const/4 v0, 0x1

    .line 636
    :cond_7f
    if-eq v4, v1, :cond_84

    const/4 v3, 0x4

    if-ne v4, v3, :cond_a8

    .line 640
    :cond_84
    if-nez v18, :cond_a0

    if-nez v16, :cond_a0

    .line 641
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->densityDpi:I

    if-ne v13, v3, :cond_a0

    .line 642
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    if-ne v14, v3, :cond_a0

    .line 643
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v15, v3, :cond_a8

    .line 644
    :cond_a0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    invoke-virtual {v3, v9, v7}, Lcom/android/server/wm/TaskStack;->calculateDockedBoundsForConfigChange(Landroid/content/res/Configuration;Landroid/graphics/Rect;)V

    .line 645
    const/4 v0, 0x1

    .line 650
    .end local v2  # "newRotation":I
    .end local v18  # "rotationChanged":Z
    :cond_a8
    :goto_a8
    if-eqz v16, :cond_ed

    .line 652
    const/4 v2, 0x0

    if-ne v4, v1, :cond_bf

    .line 653
    iget-object v1, v8, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v8, v2, v2, v7, v1}, Lcom/android/server/wm/ActivityStack;->getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 656
    invoke-virtual {v8, v2}, Lcom/android/server/wm/ActivityStack;->setTaskDisplayedBounds(Landroid/graphics/Rect;)V

    .line 657
    invoke-virtual {v8, v7}, Lcom/android/server/wm/ActivityStack;->setTaskBounds(Landroid/graphics/Rect;)V

    .line 658
    invoke-virtual {v8, v7}, Lcom/android/server/wm/ActivityStack;->setBounds(Landroid/graphics/Rect;)I

    .line 659
    invoke-virtual {v7, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_ea

    .line 660
    :cond_bf
    const/4 v1, 0x4

    if-ne v4, v1, :cond_ea

    .line 661
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 662
    .local v1, "dockedBounds":Landroid/graphics/Rect;
    iget-object v3, v6, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 663
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v3

    .line 664
    .local v3, "isMinimizedDock":Z
    if-eqz v3, :cond_e4

    .line 665
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v5

    .line 666
    .local v5, "topTask":Lcom/android/server/wm/TaskRecord;
    if-eqz v5, :cond_e4

    .line 667
    invoke-virtual {v5}, Lcom/android/server/wm/TaskRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 670
    .end local v5  # "topTask":Lcom/android/server/wm/TaskRecord;
    :cond_e4
    iget-object v5, v8, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v8, v1, v2, v7, v5}, Lcom/android/server/wm/ActivityStack;->getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 672
    const/4 v0, 0x1

    .line 674
    .end local v1  # "dockedBounds":Landroid/graphics/Rect;
    .end local v3  # "isMinimizedDock":Z
    :cond_ea
    :goto_ea
    invoke-virtual {v6, v8}, Lcom/android/server/wm/ActivityDisplay;->onStackWindowingModeChanged(Lcom/android/server/wm/ActivityStack;)V

    .line 677
    :cond_ed
    if-eqz v0, :cond_f7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isMzWindowMode()Z

    move-result v1

    if-nez v1, :cond_f7

    const/4 v1, 0x1

    goto :goto_f8

    :cond_f7
    const/4 v1, 0x0

    :goto_f8
    move/from16 v18, v1

    .line 678
    .end local v0  # "hasNewOverrideBounds":Z
    .local v18, "hasNewOverrideBounds":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    if-eq v0, v12, :cond_106

    const/4 v0, 0x1

    goto :goto_107

    :cond_106
    const/4 v0, 0x0

    .line 679
    .local v0, "changeFrame":Z
    :goto_107
    if-nez v0, :cond_10e

    if-eqz v16, :cond_10c

    goto :goto_10e

    :cond_10c
    const/4 v1, 0x0

    goto :goto_10f

    :cond_10e
    :goto_10e
    const/4 v1, 0x1

    :goto_10f
    move v0, v1

    .line 680
    if-nez v0, :cond_11e

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v13, v1, :cond_11b

    goto :goto_11e

    :cond_11b
    const/16 v17, 0x0

    goto :goto_120

    :cond_11e
    :goto_11e
    const/16 v17, 0x1

    :goto_120
    move/from16 v5, v17

    .line 681
    .end local v0  # "changeFrame":Z
    .local v5, "changeFrame":Z
    iget-object v0, v8, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-virtual {v0, v8, v5}, Lcom/android/server/wm/FlymeWindowManagerInternal;->onActivityStackConfigurationChanged(Lcom/android/server/wm/ActivityStack;Z)V

    .line 683
    if-eqz v18, :cond_151

    .line 686
    iget-object v0, v8, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v3, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v1, p0

    move/from16 v23, v4

    .end local v4  # "overrideWindowingMode":I
    .local v23, "overrideWindowingMode":I
    move-object/from16 v4, v17

    move/from16 v17, v5

    .end local v5  # "changeFrame":Z
    .local v17, "changeFrame":Z
    move/from16 v5, v20

    move-object/from16 v24, v6

    .end local v6  # "display":Lcom/android/server/wm/ActivityDisplay;
    .local v24, "display":Lcom/android/server/wm/ActivityDisplay;
    move/from16 v6, v21

    move-object/from16 v19, v7

    .end local v7  # "newBounds":Landroid/graphics/Rect;
    .local v19, "newBounds":Landroid/graphics/Rect;
    move/from16 v7, v22

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/RootActivityContainer;->resizeStack(Lcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    goto :goto_159

    .line 683
    .end local v17  # "changeFrame":Z
    .end local v19  # "newBounds":Landroid/graphics/Rect;
    .end local v23  # "overrideWindowingMode":I
    .end local v24  # "display":Lcom/android/server/wm/ActivityDisplay;
    .restart local v4  # "overrideWindowingMode":I
    .restart local v5  # "changeFrame":Z
    .restart local v6  # "display":Lcom/android/server/wm/ActivityDisplay;
    .restart local v7  # "newBounds":Landroid/graphics/Rect;
    :cond_151
    move/from16 v23, v4

    move/from16 v17, v5

    move-object/from16 v24, v6

    move-object/from16 v19, v7

    .line 690
    .end local v4  # "overrideWindowingMode":I
    .end local v5  # "changeFrame":Z
    .end local v6  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v7  # "newBounds":Landroid/graphics/Rect;
    .restart local v17  # "changeFrame":Z
    .restart local v19  # "newBounds":Landroid/graphics/Rect;
    .restart local v23  # "overrideWindowingMode":I
    .restart local v24  # "display":Lcom/android/server/wm/ActivityDisplay;
    :goto_159
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v0

    if-eq v11, v0, :cond_166

    .line 694
    move-object/from16 v0, v24

    const/4 v1, 0x0

    .end local v24  # "display":Lcom/android/server/wm/ActivityDisplay;
    .local v0, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {v0, v8, v1}, Lcom/android/server/wm/ActivityDisplay;->positionChildAtTop(Lcom/android/server/wm/ActivityStack;Z)V

    goto :goto_168

    .line 690
    .end local v0  # "display":Lcom/android/server/wm/ActivityDisplay;
    .restart local v24  # "display":Lcom/android/server/wm/ActivityDisplay;
    :cond_166
    move-object/from16 v0, v24

    .line 696
    .end local v24  # "display":Lcom/android/server/wm/ActivityDisplay;
    .restart local v0  # "display":Lcom/android/server/wm/ActivityDisplay;
    :goto_168
    return-void

    .line 611
    .end local v0  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v16  # "windowingModeChanged":Z
    .end local v17  # "changeFrame":Z
    .end local v18  # "hasNewOverrideBounds":Z
    .end local v19  # "newBounds":Landroid/graphics/Rect;
    .end local v23  # "overrideWindowingMode":I
    .restart local v6  # "display":Lcom/android/server/wm/ActivityDisplay;
    .restart local v7  # "newBounds":Landroid/graphics/Rect;
    :cond_169
    move-object v0, v6

    move-object/from16 v19, v7

    .line 612
    .end local v6  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v7  # "newBounds":Landroid/graphics/Rect;
    .restart local v0  # "display":Lcom/android/server/wm/ActivityDisplay;
    .restart local v19  # "newBounds":Landroid/graphics/Rect;
    :goto_16c
    return-void
.end method

.method onLockTaskPackagesUpdated()V
    .registers 3

    .line 5924
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_18

    .line 5925
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->setLockTaskAuth()V

    .line 5924
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 5927
    .end local v0  # "taskNdx":I
    :cond_18
    return-void
.end method

.method protected onParentChanged()V
    .registers 12

    .line 286
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 287
    .local v0, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v0, :cond_17

    .line 295
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 296
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    .line 295
    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 298
    :cond_17
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->onParentChanged()V

    .line 299
    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 302
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v1, v2}, Lcom/android/server/wm/ActivityStack;->getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 304
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/ActivityStack;->mTmpRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 307
    :cond_3a
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->updateUIDsPresentOnDisplay()V

    .line 308
    return-void
.end method

.method onPipAnimationEndResize()V
    .registers 2

    .line 5281
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_5

    return-void

    .line 5282
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->onPipAnimationEndResize()V

    .line 5283
    return-void
.end method

.method positionChildAt(Lcom/android/server/wm/TaskRecord;I)V
    .registers 9
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "index"  # I

    .line 5738
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-ne v0, p0, :cond_5a

    .line 5743
    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfigurationForStack(Lcom/android/server/wm/ActivityStack;)V

    .line 5745
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 5746
    .local v0, "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
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

    .line 5747
    .local v1, "wasResumed":Z
    :goto_1a
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityStack;->insertTaskAtPosition(Lcom/android/server/wm/TaskRecord;I)V

    .line 5748
    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskRecord;->setStack(Lcom/android/server/wm/ActivityStack;)V

    .line 5749
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v2}, Lcom/android/server/wm/ActivityStack;->postAddTask(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityStack;Z)V

    .line 5751
    if-eqz v1, :cond_51

    .line 5752
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_4a

    .line 5753
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mResumedActivity was already set when moving mResumedActivity from other stack to this stack mResumedActivity="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " other mResumedActivity="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5757
    :cond_4a
    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v5, "positionChildAt"

    invoke-virtual {v0, v2, v5}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 5762
    :cond_51
    invoke-virtual {p0, v4, v3, v3}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 5763
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 5764
    return-void

    .line 5739
    .end local v0  # "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v1  # "wasResumed":Z
    :cond_5a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AS.positionChildAt: task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a child of stack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " current parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5740
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method positionChildWindowContainerAtBottom(Lcom/android/server/wm/TaskRecord;)V
    .registers 6
    .param p1, "child"  # Lcom/android/server/wm/TaskRecord;

    .line 1014
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 1015
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1014
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityDisplay;->getNextFocusableStack(Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1016
    .local v0, "nextFocusableStack":Lcom/android/server/wm/ActivityStack;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_1c

    .line 1018
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-nez v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/TaskStack;->positionChildAtBottom(Lcom/android/server/wm/Task;Z)V

    .line 1021
    :cond_1c
    return-void
.end method

.method positionChildWindowContainerAtTop(Lcom/android/server/wm/TaskRecord;)V
    .registers 5
    .param p1, "child"  # Lcom/android/server/wm/TaskRecord;

    .line 1004
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_c

    .line 1006
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskStack;->positionChildAtTop(Lcom/android/server/wm/Task;Z)V

    .line 1008
    :cond_c
    return-void
.end method

.method postReparent()V
    .registers 4

    .line 940
    const-string v0, "reparent"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;Z)Lcom/android/server/wm/ActivityStack;

    .line 941
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 944
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 946
    return-void
.end method

.method prepareFreezingTaskBounds()V
    .registers 2

    .line 989
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_7

    .line 991
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->prepareFreezingTaskBounds()V

    .line 993
    :cond_7
    return-void
.end method

.method final rankTaskLayers(I)I
    .registers 7
    .param p1, "baseLayer"  # I

    .line 2183
    const/4 v0, 0x0

    .line 2184
    .local v0, "layer":I
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "taskNdx":I
    :goto_9
    if-ltz v1, :cond_2f

    .line 2185
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    .line 2186
    .local v2, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 2187
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_29

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v4, :cond_29

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v4, :cond_22

    goto :goto_29

    .line 2190
    :cond_22
    add-int/lit8 v4, v0, 0x1

    .end local v0  # "layer":I
    .local v4, "layer":I
    add-int/2addr v0, p1

    iput v0, v2, Lcom/android/server/wm/TaskRecord;->mLayerRank:I

    move v0, v4

    goto :goto_2c

    .line 2188
    .end local v4  # "layer":I
    .restart local v0  # "layer":I
    :cond_29
    :goto_29
    const/4 v4, -0x1

    iput v4, v2, Lcom/android/server/wm/TaskRecord;->mLayerRank:I

    .line 2184
    .end local v2  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v3  # "r":Lcom/android/server/wm/ActivityRecord;
    :goto_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 2193
    .end local v1  # "taskNdx":I
    :cond_2f
    return v0
.end method

.method final releaseSomeActivitiesLocked(Lcom/android/server/wm/WindowProcessController;Landroid/util/ArraySet;Ljava/lang/String;)I
    .registers 16
    .param p1, "app"  # Lcom/android/server/wm/WindowProcessController;
    .param p3, "reason"  # Ljava/lang/String;
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

    .line 4723
    .local p2, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/TaskRecord;>;"
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to release some activities in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4724
    :cond_1a
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 4725
    .local v0, "maxTasks":I
    const/4 v2, 0x1

    if-ge v0, v2, :cond_24

    .line 4726
    const/4 v0, 0x1

    .line 4728
    :cond_24
    const/4 v3, 0x0

    .line 4729
    .local v3, "numReleased":I
    const/4 v4, 0x0

    .local v4, "taskNdx":I
    :goto_26
    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_d3

    if-lez v0, :cond_d3

    .line 4730
    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskRecord;

    .line 4731
    .local v5, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {p2, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_40

    .line 4732
    goto/16 :goto_d0

    .line 4734
    :cond_40
    sget-boolean v6, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    if-eqz v6, :cond_58

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Looking for activities to release in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4735
    :cond_58
    const/4 v6, 0x0

    .line 4736
    .local v6, "curNum":I
    iget-object v7, v5, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 4737
    .local v7, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v8, 0x0

    .local v8, "actNdx":I
    :goto_5c
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_c1

    .line 4738
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/ActivityRecord;

    .line 4739
    .local v9, "activity":Lcom/android/server/wm/ActivityRecord;
    iget-object v10, v9, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v10, p1, :cond_bf

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->isDestroyable()Z

    move-result v10

    if-eqz v10, :cond_bf

    .line 4740
    sget-boolean v10, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    if-eqz v10, :cond_b2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Destroying "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " in state "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4741
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " resumed="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " pausing="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " for reason "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4740
    invoke-static {v1, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4743
    :cond_b2
    invoke-virtual {p0, v9, v2, p3}, Lcom/android/server/wm/ActivityStack;->destroyActivityLocked(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)Z

    .line 4744
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eq v10, v9, :cond_bd

    .line 4746
    add-int/lit8 v8, v8, -0x1

    .line 4748
    :cond_bd
    add-int/lit8 v6, v6, 0x1

    .line 4737
    .end local v9  # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_bf
    add-int/2addr v8, v2

    goto :goto_5c

    .line 4751
    .end local v8  # "actNdx":I
    :cond_c1
    if-lez v6, :cond_d0

    .line 4752
    add-int/2addr v3, v6

    .line 4753
    add-int/lit8 v0, v0, -0x1

    .line 4754
    iget-object v8, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eq v8, v5, :cond_d0

    .line 4756
    add-int/lit8 v4, v4, -0x1

    .line 4729
    .end local v5  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v6  # "curNum":I
    .end local v7  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    :cond_d0
    :goto_d0
    add-int/2addr v4, v2

    goto/16 :goto_26

    .line 4760
    .end local v4  # "taskNdx":I
    :cond_d3
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    if-eqz v2, :cond_f0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Done releasing: did "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " activities"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4762
    :cond_f0
    return v3
.end method

.method remove()V
    .registers 2

    .line 962
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStack;->removeFromDisplay()V

    .line 963
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_d

    .line 964
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->removeIfPossible()V

    .line 965
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    .line 967
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->onParentChanged()V

    .line 968
    return-void
.end method

.method final removeActivitiesFromLRUListLocked(Lcom/android/server/wm/TaskRecord;)V
    .registers 5
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;

    .line 1262
    iget-object v0, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1263
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1264
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    goto :goto_6

    .line 1265
    :cond_18
    return-void
.end method

.method removeTask(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;I)V
    .registers 11
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "reason"  # Ljava/lang/String;
    .param p3, "mode"  # I

    .line 5635
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 5637
    .local v0, "removed":Z
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_24

    .line 5638
    const/16 v3, 0x756d

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p1, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getStackId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 5641
    :cond_24
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->removeActivitiesFromLRUListLocked(Lcom/android/server/wm/TaskRecord;)V

    .line 5642
    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/ActivityStack;->updateTaskMovement(Lcom/android/server/wm/TaskRecord;Z)V

    .line 5644
    if-nez p3, :cond_2f

    .line 5645
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->cleanUpResourcesForDestroy()V

    .line 5648
    :cond_2f
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 5649
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v2, :cond_51

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeTask: removing stack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5652
    :cond_51
    if-eq p3, v1, :cond_7f

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 5653
    invoke-virtual {v1, p0}, Lcom/android/server/wm/RootActivityContainer;->isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 5654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " leftTaskHistoryEmpty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5655
    .local v1, "myReason":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_78

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityStack;->adjustFocusToNextFocusableStack(Ljava/lang/String;)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    if-nez v2, :cond_7f

    .line 5656
    :cond_78
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityDisplay;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 5659
    .end local v1  # "myReason":Ljava/lang/String;
    :cond_7f
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 5660
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityDisplay;->positionChildAtBottom(Lcom/android/server/wm/ActivityStack;)V

    .line 5662
    :cond_8c
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v1

    if-eqz v1, :cond_98

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v1

    if-nez v1, :cond_9b

    .line 5663
    :cond_98
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->remove()V

    .line 5667
    :cond_9b
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskRecord;->setStack(Lcom/android/server/wm/ActivityStack;)V

    .line 5670
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 5671
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityUnpinned()V

    .line 5673
    :cond_ae
    return-void
.end method

.method reparent(Lcom/android/server/wm/ActivityDisplay;ZZ)V
    .registers 7
    .param p1, "activityDisplay"  # Lcom/android/server/wm/ActivityDisplay;
    .param p2, "onTop"  # Z
    .param p3, "displayRemoved"  # Z

    .line 921
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStack;->removeFromDisplay()V

    .line 924
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 925
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_14

    .line 927
    const-string v0, "ActivityTaskManager"

    const-string v1, "Task stack is not valid when reparenting."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 929
    :cond_14
    iget v1, p1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/wm/TaskStack;->reparent(ILandroid/graphics/Rect;Z)V

    .line 931
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

    .line 932
    if-eqz p2, :cond_30

    const v0, 0x7fffffff

    goto :goto_32

    :cond_30
    const/high16 v0, -0x80000000

    :goto_32
    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/ActivityDisplay;->addChild(Lcom/android/server/wm/ActivityStack;I)V

    .line 933
    if-nez p3, :cond_3a

    .line 934
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->postReparent()V

    .line 936
    :cond_3a
    return-void
.end method

.method final requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    .registers 13
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "resultCode"  # I
    .param p3, "resultData"  # Landroid/content/Intent;
    .param p4, "reason"  # Ljava/lang/String;
    .param p5, "oomAdj"  # Z

    .line 3983
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 3984
    .local v6, "r":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    if-nez v0, :cond_c

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_3a

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finishing activity token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " r=, result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3988
    :cond_3a
    if-nez v6, :cond_3e

    .line 3989
    const/4 v0, 0x0

    return v0

    .line 3992
    :cond_3e
    move-object v0, p0

    move-object v1, v6

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 3993
    const/4 v0, 0x1

    return v0
.end method

.method requestResize(Landroid/graphics/Rect;)V
    .registers 9
    .param p1, "bounds"  # Landroid/graphics/Rect;

    .line 5255
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, p0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    .line 5258
    return-void
.end method

.method final resetTaskIfNeededLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 16
    .param p1, "taskTop"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "newActivity"  # Lcom/android/server/wm/ActivityRecord;

    .line 3736
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 3738
    .local v0, "forceReset":Z
    :goto_c
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v8

    .line 3742
    .local v8, "task":Lcom/android/server/wm/TaskRecord;
    const/4 v2, 0x0

    .line 3745
    .local v2, "taskFound":Z
    const/4 v3, 0x0

    .line 3748
    .local v3, "topOptions":Landroid/app/ActivityOptions;
    const/4 v4, -0x1

    .line 3750
    .local v4, "reparentInsertionPoint":I
    iget-object v5, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v1

    move v9, v2

    move-object v11, v3

    move v10, v4

    move v1, v5

    .end local v2  # "taskFound":Z
    .end local v3  # "topOptions":Landroid/app/ActivityOptions;
    .end local v4  # "reparentInsertionPoint":I
    .local v1, "i":I
    .local v9, "taskFound":Z
    .local v10, "reparentInsertionPoint":I
    .local v11, "topOptions":Landroid/app/ActivityOptions;
    :goto_1e
    if-ltz v1, :cond_3f

    .line 3751
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/android/server/wm/TaskRecord;

    .line 3753
    .local v12, "targetTask":Lcom/android/server/wm/TaskRecord;
    if-ne v12, v8, :cond_32

    .line 3754
    invoke-direct {p0, v8, v0}, Lcom/android/server/wm/ActivityStack;->resetTargetTaskIfNeededLocked(Lcom/android/server/wm/TaskRecord;Z)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 3755
    .end local v11  # "topOptions":Landroid/app/ActivityOptions;
    .local v2, "topOptions":Landroid/app/ActivityOptions;
    const/4 v9, 0x1

    move-object v11, v2

    goto :goto_3c

    .line 3757
    .end local v2  # "topOptions":Landroid/app/ActivityOptions;
    .restart local v11  # "topOptions":Landroid/app/ActivityOptions;
    :cond_32
    move-object v2, p0

    move-object v3, v12

    move-object v4, v8

    move v5, v9

    move v6, v0

    move v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/ActivityStack;->resetAffinityTaskIfNeededLocked(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/TaskRecord;ZZI)I

    move-result v10

    .line 3750
    .end local v12  # "targetTask":Lcom/android/server/wm/TaskRecord;
    :goto_3c
    add-int/lit8 v1, v1, -0x1

    goto :goto_1e

    .line 3762
    .end local v1  # "i":I
    :cond_3f
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 3763
    .local v1, "taskNdx":I
    if-ltz v1, :cond_5d

    .line 3765
    :goto_47
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    .end local v1  # "taskNdx":I
    .local v3, "taskNdx":I
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 3766
    if-nez p1, :cond_5c

    if-gez v3, :cond_5a

    goto :goto_5c

    :cond_5a
    move v1, v3

    goto :goto_47

    .line 3769
    :cond_5c
    :goto_5c
    move v1, v3

    .end local v3  # "taskNdx":I
    .restart local v1  # "taskNdx":I
    :cond_5d
    if-eqz v11, :cond_68

    .line 3772
    if-eqz p1, :cond_65

    .line 3773
    invoke-virtual {p1, v11}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    goto :goto_68

    .line 3775
    :cond_65
    invoke-virtual {v11}, Landroid/app/ActivityOptions;->abort()V

    .line 3779
    :cond_68
    :goto_68
    return-object p1
.end method

.method resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 8
    .param p1, "bounds"  # Landroid/graphics/Rect;
    .param p2, "tempTaskBounds"  # Landroid/graphics/Rect;
    .param p3, "tempTaskInsetBounds"  # Landroid/graphics/Rect;

    .line 5263
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->updateBoundsAllowed(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 5264
    return-void

    .line 5268
    :cond_7
    if-eqz p2, :cond_b

    move-object v0, p2

    goto :goto_c

    :cond_b
    move-object v0, p1

    .line 5270
    .local v0, "taskBounds":Landroid/graphics/Rect;
    :goto_c
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_14
    if-ltz v1, :cond_2a

    .line 5271
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    .line 5272
    .local v2, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 5273
    invoke-virtual {v2, v0, p3}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    .line 5270
    .end local v2  # "task":Lcom/android/server/wm/TaskRecord;
    :cond_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 5277
    .end local v1  # "i":I
    :cond_2a
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->setBounds(Landroid/graphics/Rect;)I

    .line 5278
    return-void
.end method

.method resizeStackWithLaunchBounds()Z
    .registers 2

    .line 2361
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v0

    return v0
.end method

.method restartPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;
    .registers 10
    .param p1, "packageName"  # Ljava/lang/String;

    .line 5605
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 5609
    .local v0, "starting":Lcom/android/server/wm/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "taskNdx":I
    :goto_c
    if-ltz v1, :cond_46

    .line 5610
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    iget-object v3, v3, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5611
    .local v3, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "activityNdx":I
    :goto_1d
    if-ltz v4, :cond_43

    .line 5612
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 5613
    .local v5, "a":Lcom/android/server/wm/ActivityRecord;
    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 5614
    iput-boolean v2, v5, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    .line 5615
    if-eqz v0, :cond_40

    if-ne v5, v0, :cond_40

    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-eqz v6, :cond_40

    .line 5616
    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    const/16 v7, 0x100

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/wm/WindowProcessController;I)V

    .line 5611
    .end local v5  # "a":Lcom/android/server/wm/ActivityRecord;
    :cond_40
    add-int/lit8 v4, v4, -0x1

    goto :goto_1d

    .line 5609
    .end local v3  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v4  # "activityNdx":I
    :cond_43
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 5623
    .end local v1  # "taskNdx":I
    :cond_46
    return-object v0
.end method

.method resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .registers 7
    .param p1, "prev"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"  # Landroid/app/ActivityOptions;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 2665
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 2667
    return v1

    .line 2670
    :cond_6
    const/4 v0, 0x0

    .line 2673
    .local v0, "result":Z
    const/4 v2, 0x1

    :try_start_8
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    .line 2674
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityStack;->resumeTopActivityInnerLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v3

    move v0, v3

    .line 2683
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 2684
    .local v2, "next":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 2685
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->checkReadyForSleep()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_22

    .line 2688
    .end local v2  # "next":Lcom/android/server/wm/ActivityRecord;
    :cond_1e
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    .line 2689
    nop

    .line 2691
    return v0

    .line 2688
    :catchall_22
    move-exception v2

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStack;->mInResumeTopActivity:Z

    throw v2
.end method

.method final safelyDestroyActivityLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .registers 5
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reason"  # Ljava/lang/String;

    .line 4711
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isDestroyable()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 4712
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_48

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Destroying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " in state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4713
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " resumed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " pausing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4712
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4715
    :cond_48
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/ActivityStack;->destroyActivityLocked(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)Z

    move-result v0

    return v0

    .line 4717
    :cond_4e
    const/4 v0, 0x0

    return v0
.end method

.method final scheduleDestroyActivities(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    .registers 5
    .param p1, "owner"  # Lcom/android/server/wm/WindowProcessController;
    .param p2, "reason"  # Ljava/lang/String;

    .line 4670
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4671
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/server/wm/ActivityStack$ScheduleDestroyArgs;

    invoke-direct {v1, p1, p2}, Lcom/android/server/wm/ActivityStack$ScheduleDestroyArgs;-><init>(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4672
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4673
    return-void
.end method

.method sendActivityResultLocked(ILcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .registers 16
    .param p1, "callingUid"  # I
    .param p2, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "resultWho"  # Ljava/lang/String;
    .param p4, "requestCode"  # I
    .param p5, "resultCode"  # I
    .param p6, "data"  # Landroid/content/Intent;

    .line 3785
    if-lez p1, :cond_13

    .line 3786
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 3787
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v5

    iget v6, p2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 3786
    move v2, p1

    move-object v4, p6

    invoke-interface/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionFromIntent(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/uri/UriPermissionOwner;I)V

    .line 3790
    :cond_13
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_4d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send activity result to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " : who="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " req="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " res="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " data="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3793
    :cond_4d
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p2, :cond_8f

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 3795
    :try_start_57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3796
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v2, Landroid/app/ResultInfo;

    invoke-direct {v2, p3, p4, p5, p6}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3798
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v2

    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    iget-object v4, p2, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 3799
    invoke-static {v0}, Landroid/app/servertransaction/ActivityResultItem;->obtain(Ljava/util/List;)Landroid/app/servertransaction/ActivityResultItem;

    move-result-object v5

    .line 3798
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_79} :catch_7a

    .line 3800
    return-void

    .line 3801
    .end local v0  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :catch_7a
    move-exception v0

    .line 3802
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown sending result to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3806
    .end local v0  # "e":Ljava/lang/Exception;
    :cond_8f
    const/4 v4, 0x0

    move-object v3, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityRecord;->addResultLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 3807
    return-void
.end method

.method public setAlwaysOnTop(Z)V
    .registers 4
    .param p1, "alwaysOnTop"  # Z

    .line 5793
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isAlwaysOnTop()Z

    move-result v0

    if-ne v0, p1, :cond_7

    .line 5794
    return-void

    .line 5796
    :cond_7
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setAlwaysOnTop(Z)V

    .line 5797
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 5803
    .local v0, "display":Lcom/android/server/wm/ActivityDisplay;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/ActivityDisplay;->positionChildAtTop(Lcom/android/server/wm/ActivityStack;Z)V

    .line 5804
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)I
    .registers 3
    .param p1, "bounds"  # Landroid/graphics/Rect;

    .line 1097
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    move-object v0, p1

    :goto_9
    invoke-super {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result v0

    return v0
.end method

.method setParent(Lcom/android/server/wm/ActivityDisplay;)V
    .registers 4
    .param p1, "parent"  # Lcom/android/server/wm/ActivityDisplay;

    .line 277
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 278
    .local v0, "current":Lcom/android/server/wm/ActivityDisplay;
    if-eq v0, p1, :cond_d

    .line 279
    iget v1, p1, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    iput v1, p0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    .line 280
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->onParentChanged()V

    .line 282
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

    .line 5882
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 5883
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskStack;->setPictureInPictureActions(Ljava/util/List;)V

    .line 5884
    return-void
.end method

.method setPictureInPictureAspectRatio(F)V
    .registers 3
    .param p1, "aspectRatio"  # F

    .line 5877
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 5878
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskStack;->setPictureInPictureAspectRatio(F)V

    .line 5879
    return-void
.end method

.method setTaskBounds(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "bounds"  # Landroid/graphics/Rect;

    .line 5291
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->updateBoundsAllowed(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 5292
    return-void

    .line 5295
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_f
    if-ltz v0, :cond_2a

    .line 5296
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 5297
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 5298
    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskRecord;->setBounds(Landroid/graphics/Rect;)I

    goto :goto_27

    .line 5300
    :cond_23
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskRecord;->setBounds(Landroid/graphics/Rect;)I

    .line 5295
    .end local v1  # "task":Lcom/android/server/wm/TaskRecord;
    :goto_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 5303
    .end local v0  # "i":I
    :cond_2a
    return-void
.end method

.method setTaskDisplayedBounds(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "bounds"  # Landroid/graphics/Rect;

    .line 5307
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->updateDisplayedBoundsAllowed(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 5308
    return-void

    .line 5311
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_f
    if-ltz v0, :cond_33

    .line 5312
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 5313
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_2c

    .line 5315
    :cond_22
    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 5316
    invoke-virtual {v1, p1}, Lcom/android/server/wm/TaskRecord;->setDisplayedBounds(Landroid/graphics/Rect;)V

    goto :goto_30

    .line 5314
    :cond_2c
    :goto_2c
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskRecord;->setDisplayedBounds(Landroid/graphics/Rect;)V

    .line 5311
    .end local v1  # "task":Lcom/android/server/wm/TaskRecord;
    :cond_30
    :goto_30
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 5319
    .end local v0  # "i":I
    :cond_33
    return-void
.end method

.method setWindowModeFrame(Lcom/android/server/wm/FlymeWindowModeFrame;Z)V
    .registers 5
    .param p1, "windowModeFrame"  # Lcom/android/server/wm/FlymeWindowModeFrame;
    .param p2, "resize"  # Z

    .line 5985
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mWindowModeFrame:Lcom/android/server/wm/FlymeWindowModeFrame;

    if-eq v0, p1, :cond_42

    .line 5986
    if-eqz p2, :cond_34

    .line 5987
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 5989
    if-eqz p1, :cond_20

    .line 5990
    :try_start_d
    invoke-virtual {p1}, Lcom/android/server/wm/FlymeWindowModeFrame;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->setTaskDisplayedBounds(Landroid/graphics/Rect;)V

    .line 5991
    invoke-virtual {p1}, Lcom/android/server/wm/FlymeWindowModeFrame;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 5992
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/android/server/wm/FlymeWindowModeFrame;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1, v0, v0}, Lcom/android/server/wm/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 5993
    .end local v0  # "rect":Landroid/graphics/Rect;
    goto :goto_27

    .line 5994
    :cond_20
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->setTaskDisplayedBounds(Landroid/graphics/Rect;)V

    .line 5995
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/wm/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_2d

    .line 5998
    :goto_27
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 5999
    goto :goto_34

    .line 5998
    :catchall_2d
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0

    .line 6001
    :cond_34
    :goto_34
    iput-object p1, p0, Lcom/android/server/wm/ActivityStack;->mWindowModeFrame:Lcom/android/server/wm/FlymeWindowModeFrame;

    .line 6002
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mWindowModeFrame:Lcom/android/server/wm/FlymeWindowModeFrame;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->setWindowModeFrame(Lcom/android/server/wm/FlymeWindowModeFrame;)V

    .line 6003
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->updateSurfacePosition()V

    .line 6005
    :cond_42
    return-void
.end method

.method public setWindowingMode(I)V
    .registers 9
    .param p1, "windowingMode"  # I

    .line 700
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZZZZZ)V

    .line 703
    return-void
.end method

.method setWindowingMode(IZZZZZ)V
    .registers 18
    .param p1, "preferredWindowingMode"  # I
    .param p2, "animate"  # Z
    .param p3, "showRecents"  # Z
    .param p4, "enteringSplitScreenMode"  # Z
    .param p5, "deferEnsuringVisibility"  # Z
    .param p6, "creating"  # Z

    .line 734
    move-object v8, p0

    iget-object v9, v8, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v10, Lcom/android/server/wm/-$$Lambda$ActivityStack$7heVv97BezfdSlHS0oo3lugbypI;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/-$$Lambda$ActivityStack$7heVv97BezfdSlHS0oo3lugbypI;-><init>(Lcom/android/server/wm/ActivityStack;IZZZZZ)V

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 737
    return-void
.end method

.method shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p1, "starting"  # Lcom/android/server/wm/ActivityRecord;

    .line 2053
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStack;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method shouldSleepActivities()Z
    .registers 3

    .line 5935
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 5939
    .local v0, "display":Lcom/android/server/wm/ActivityDisplay;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isFocusedStackOnDisplay()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 5940
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/KeyguardController;->isKeyguardGoingAway()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 5941
    const/4 v1, 0x0

    return v1

    .line 5944
    :cond_18
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->isSleeping()Z

    move-result v1

    goto :goto_25

    :cond_1f
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingLocked()Z

    move-result v1

    :goto_25
    return v1
.end method

.method shouldSleepOrShutDownActivities()Z
    .registers 2

    .line 5948
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
    .registers 10
    .param p1, "srec"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "destAffinity"  # Ljava/lang/String;

    .line 4400
    const/4 v0, 0x1

    if-eqz p1, :cond_6b

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_6b

    .line 4401
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_6b

    .line 4408
    :cond_18
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    .line 4409
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    iget-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->frontOfTask:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_6a

    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_6a

    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->isDocument()Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 4411
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->inFrontOfStandardStack()Z

    move-result v2

    if-nez v2, :cond_38

    .line 4413
    return v0

    .line 4416
    :cond_38
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 4417
    .local v2, "taskIdx":I
    if-gtz v2, :cond_57

    .line 4418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldUpRecreateTask: task not in history for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4419
    return v3

    .line 4421
    :cond_57
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskRecord;

    .line 4422
    .local v4, "prevTask":Lcom/android/server/wm/TaskRecord;
    iget-object v5, v1, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v6, v4, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6a

    .line 4424
    return v0

    .line 4427
    .end local v2  # "taskIdx":I
    .end local v4  # "prevTask":Lcom/android/server/wm/TaskRecord;
    :cond_6a
    return v3

    .line 4402
    .end local v1  # "task":Lcom/android/server/wm/TaskRecord;
    :cond_6b
    :goto_6b
    return v0
.end method

.method startActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZZLandroid/app/ActivityOptions;)V
    .registers 23
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "focusedTopActivity"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "newTask"  # Z
    .param p4, "keepCurTransition"  # Z
    .param p5, "options"  # Landroid/app/ActivityOptions;

    .line 3291
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    .line 3292
    .local v6, "rTask":Lcom/android/server/wm/TaskRecord;
    iget v7, v6, Lcom/android/server/wm/TaskRecord;->taskId:I

    .line 3293
    .local v7, "taskId":I
    const/4 v9, 0x1

    if-eqz v5, :cond_1e

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v10

    if-nez v10, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v10, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    move v10, v9

    .line 3295
    .local v10, "allowMoveToFront":Z
    :goto_1f
    iget-boolean v11, v1, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-nez v11, :cond_30

    if-eqz v10, :cond_30

    .line 3296
    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityStack;->taskForIdLocked(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v11

    if-eqz v11, :cond_2d

    if-eqz v3, :cond_30

    .line 3300
    :cond_2d
    invoke-direct {v0, v6, v1}, Lcom/android/server/wm/ActivityStack;->insertTaskAtTop(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 3302
    :cond_30
    const/4 v11, 0x0

    .line 3303
    .local v11, "task":Lcom/android/server/wm/TaskRecord;
    const-string v12, "here"

    const-string v13, "Adding activity "

    const-string v14, "ActivityTaskManager"

    if-nez v3, :cond_8f

    .line 3305
    const/4 v15, 0x1

    .line 3306
    .local v15, "startIt":Z
    iget-object v8, v0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v9

    .local v8, "taskNdx":I
    :goto_41
    if-ltz v8, :cond_8f

    .line 3307
    iget-object v9, v0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lcom/android/server/wm/TaskRecord;

    .line 3308
    invoke-virtual {v11}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    if-nez v9, :cond_53

    .line 3310
    goto :goto_8b

    .line 3312
    :cond_53
    if-ne v11, v6, :cond_85

    .line 3316
    if-nez v15, :cond_8f

    .line 3317
    sget-boolean v9, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v9, :cond_7e

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " to task "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 3318
    invoke-virtual {v13}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v12

    .line 3317
    invoke-static {v14, v9, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3319
    :cond_7e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->createAppWindowToken()V

    .line 3320
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 3321
    return-void

    .line 3324
    :cond_85
    iget v9, v11, Lcom/android/server/wm/TaskRecord;->numFullscreen:I

    if-lez v9, :cond_8b

    .line 3325
    const/4 v9, 0x0

    move v15, v9

    .line 3306
    :cond_8b
    :goto_8b
    add-int/lit8 v8, v8, -0x1

    const/4 v9, 0x1

    goto :goto_41

    .line 3334
    .end local v8  # "taskNdx":I
    .end local v15  # "startIt":Z
    :cond_8f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v8

    .line 3335
    .local v8, "activityTask":Lcom/android/server/wm/TaskRecord;
    if-ne v11, v8, :cond_b5

    iget-object v9, v0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    iget-object v15, v0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    if-eq v9, v15, :cond_b5

    .line 3336
    iget-object v9, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v15, 0x0

    iput-boolean v15, v9, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    .line 3337
    sget-boolean v9, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    if-eqz v9, :cond_b5

    const-string v9, "startActivity() behind front, mUserLeaving=false"

    invoke-static {v14, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3341
    :cond_b5
    move-object v9, v8

    .line 3344
    .end local v11  # "task":Lcom/android/server/wm/TaskRecord;
    .local v9, "task":Lcom/android/server/wm/TaskRecord;
    sget-boolean v11, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v11, :cond_dd

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " to stack to task "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 3345
    invoke-virtual {v13}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v12

    .line 3344
    invoke-static {v14, v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3349
    :cond_dd
    iget-object v11, v1, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v11, :cond_e4

    .line 3350
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->createAppWindowToken()V

    .line 3353
    :cond_e4
    invoke-virtual {v9}, Lcom/android/server/wm/TaskRecord;->setFrontOfTask()V

    .line 3355
    sget-object v11, Lcom/android/server/wm/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    if-eqz v11, :cond_f4

    .line 3356
    iget-object v11, v1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-boolean v12, v1, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    .line 3357
    invoke-static {v11, v12}, Lcom/android/server/wm/ActivityPluginDelegate;->activityInvokeNotification(Ljava/lang/String;Z)V

    .line 3361
    :cond_f4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->isHomeOrRecentsStack()Z

    move-result v11

    if-eqz v11, :cond_100

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->numActivities()I

    move-result v11

    if-lez v11, :cond_1c5

    :cond_100
    if-eqz v10, :cond_1c5

    .line 3362
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v11

    iget-object v11, v11, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 3363
    .local v11, "dc":Lcom/android/server/wm/DisplayContent;
    sget-boolean v12, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v12, :cond_120

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Prepare open transition: starting "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v14, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3365
    :cond_120
    iget-object v12, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getFlags()I

    move-result v12

    const/high16 v13, 0x10000

    and-int/2addr v12, v13

    const/4 v13, 0x0

    if-eqz v12, :cond_138

    .line 3366
    const/4 v12, 0x0

    invoke-virtual {v11, v12, v4}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 3367
    iget-object v12, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v12, v12, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_157

    .line 3369
    :cond_138
    const/4 v12, 0x6

    .line 3370
    .local v12, "transit":I
    if-eqz v3, :cond_14d

    .line 3371
    iget-boolean v14, v1, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v14, :cond_142

    .line 3372
    const/16 v12, 0x10

    goto :goto_14d

    .line 3378
    :cond_142
    invoke-direct {v0, v2, v13, v1, v5}, Lcom/android/server/wm/ActivityStack;->canEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v14

    if-eqz v14, :cond_14b

    .line 3380
    const/4 v14, 0x1

    iput-boolean v14, v2, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 3382
    :cond_14b
    const/16 v12, 0x8

    .line 3385
    :cond_14d
    :goto_14d
    invoke-virtual {v11, v12, v4}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 3386
    iget-object v14, v0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v14, v14, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3388
    .end local v12  # "transit":I
    :goto_157
    const/4 v12, 0x1

    .line 3390
    .local v12, "doShow":Z
    iget-object v14, v0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v14, v14, Lcom/android/server/wm/ActivityTaskManagerService;->mAccessControlService:Lcom/meizu/server/AccessControlService;

    iget-object v15, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3391
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v15

    iget-object v13, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 3390
    invoke-virtual {v14, v15, v13}, Lcom/meizu/server/AccessControlService;->isPopupUnlockingActivity(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v13

    if-eqz v13, :cond_170

    .line 3393
    const/4 v12, 0x0

    goto :goto_196

    .line 3396
    :cond_170
    if-eqz v3, :cond_18c

    .line 3402
    iget-object v13, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v13}, Landroid/content/Intent;->getFlags()I

    move-result v13

    const/high16 v14, 0x200000

    and-int/2addr v13, v14

    if-eqz v13, :cond_196

    .line 3403
    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 3404
    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lcom/android/server/wm/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v14

    if-ne v14, v1, :cond_189

    const/4 v13, 0x1

    goto :goto_18a

    :cond_189
    const/4 v13, 0x0

    :goto_18a
    move v12, v13

    goto :goto_196

    .line 3406
    :cond_18c
    if-eqz v5, :cond_196

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v13

    const/4 v14, 0x5

    if-ne v13, v14, :cond_196

    .line 3408
    const/4 v12, 0x0

    .line 3410
    :cond_196
    :goto_196
    iget-boolean v13, v1, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v13, :cond_1a4

    .line 3413
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 3414
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v0, v13, v14, v14}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/wm/ActivityRecord;IZ)V

    goto :goto_1c4

    .line 3415
    :cond_1a4
    if-eqz v12, :cond_1c4

    .line 3420
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v13

    .line 3421
    .local v13, "prevTask":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v13}, Lcom/android/server/wm/TaskRecord;->topRunningActivityWithStartingWindowLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v14

    .line 3422
    .local v14, "prev":Lcom/android/server/wm/ActivityRecord;
    if-eqz v14, :cond_1bd

    .line 3425
    invoke-virtual {v14}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v15

    if-eq v15, v13, :cond_1b8

    .line 3426
    const/4 v14, 0x0

    goto :goto_1bd

    .line 3429
    :cond_1b8
    iget-boolean v15, v14, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v15, :cond_1bd

    .line 3430
    const/4 v14, 0x0

    .line 3433
    :cond_1bd
    :goto_1bd
    invoke-direct/range {p0 .. p2}, Lcom/android/server/wm/ActivityStack;->isTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v15

    invoke-virtual {v1, v14, v3, v15}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 3435
    .end local v11  # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v12  # "doShow":Z
    .end local v13  # "prevTask":Lcom/android/server/wm/TaskRecord;
    .end local v14  # "prev":Lcom/android/server/wm/ActivityRecord;
    :cond_1c4
    :goto_1c4
    goto :goto_1c8

    .line 3438
    :cond_1c5
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 3440
    :goto_1c8
    return-void
.end method

.method final startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Z)Z
    .registers 16
    .param p1, "userLeaving"  # Z
    .param p2, "uiSleeping"  # Z
    .param p3, "resuming"  # Lcom/android/server/wm/ActivityRecord;
    .param p4, "pauseImmediately"  # Z

    .line 1709
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    const-string v2, "ActivityTaskManager"

    if-eqz v0, :cond_34

    .line 1710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Going to pause when pause is already pending for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " state="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1711
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1710
    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v0

    if-nez v0, :cond_34

    .line 1716
    invoke-direct {p0, v1, p3}, Lcom/android/server/wm/ActivityStack;->completePauseLocked(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1719
    :cond_34
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1721
    .local v0, "prev":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_45

    .line 1722
    if-nez p3, :cond_44

    .line 1723
    const-string v3, "Trying to pause when nothing is resumed"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 1726
    :cond_44
    return v1

    .line 1729
    :cond_45
    if-ne v0, p3, :cond_4d

    .line 1730
    const-string v3, "Trying to pause activity that is in process of being resumed"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    return v1

    .line 1734
    :cond_4d
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_66

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moving to PAUSING: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 1735
    :cond_66
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v3, :cond_7e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start pausing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    :cond_7e
    :goto_7e
    new-instance v3, Landroid/scene/Scene;

    const v4, 0x1000003

    const-string v5, "AppPause_Early"

    invoke-direct {v3, v4, v5}, Landroid/scene/Scene;-><init>(ILjava/lang/String;)V

    .line 1739
    .local v3, "pause":Landroid/scene/Scene;
    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v5, "package_name"

    invoke-virtual {v3, v5, v4}, Landroid/scene/Scene;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/scene/Scene;

    .line 1740
    invoke-static {}, Landroid/scene/SceneClient;->getInstance()Landroid/scene/SceneClient;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/scene/SceneClient;->notifyScene(Landroid/scene/Scene;)V

    .line 1742
    sget-object v4, Lcom/android/server/wm/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    if-eqz v4, :cond_a3

    .line 1743
    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/app/ActivityTrigger;->activityPauseTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;)V

    .line 1746
    :cond_a3
    sget-object v4, Lcom/android/server/wm/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    const/4 v5, 0x1

    if-eqz v4, :cond_c0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v4

    if-eqz v4, :cond_c0

    .line 1747
    sget-object v4, Lcom/android/server/wm/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1748
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v6

    if-ne v6, v5, :cond_bc

    move v6, v5

    goto :goto_bd

    :cond_bc
    move v6, v1

    :goto_bd
    invoke-static {v4, v6, v5}, Lcom/android/server/wm/ActivityPluginDelegate;->activitySuspendNotification(Ljava/lang/String;ZZ)V

    .line 1750
    :cond_c0
    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1751
    iput-object v0, p0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1752
    nop

    .line 1753
    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1752
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v6, 0x40000000  # 2.0f

    and-int/2addr v4, v6

    const/4 v6, 0x0

    if-nez v4, :cond_dc

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_da

    goto :goto_dc

    .line 1753
    :cond_da
    move-object v4, v6

    goto :goto_dd

    :cond_dc
    :goto_dc
    move-object v4, v0

    :goto_dd
    iput-object v4, p0, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1754
    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v7, "startPausingLocked"

    invoke-virtual {v0, v4, v7}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 1755
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskRecord;->touchActiveTime()V

    .line 1756
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityStack;->clearLaunchTime(Lcom/android/server/wm/ActivityRecord;)V

    .line 1759
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v4

    if-eqz v4, :cond_12c

    .line 1760
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityDisplay;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 1761
    .local v4, "next":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_110

    iget-boolean v7, v4, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-nez v7, :cond_110

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v8

    if-ne v7, v8, :cond_110

    if-eqz p2, :cond_12c

    .line 1762
    :cond_110
    iget-object v7, p0, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v7, :cond_12c

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    if-eqz v7, :cond_12c

    .line 1763
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v7

    .line 1764
    .local v7, "preTasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1765
    iget-object v8, p0, Lcom/android/server/wm/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v8, v7}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    .line 1771
    .end local v4  # "next":Lcom/android/server/wm/ActivityRecord;
    .end local v7  # "preTasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    :cond_12c
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->updateCpuStats()V

    .line 1773
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v4

    if-eqz v4, :cond_192

    .line 1774
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v4, :cond_14f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enqueueing pending pause: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    :cond_14f
    :try_start_14f
    iget v4, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    iget-object v8, v0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "userLeaving="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v7, v8, v9}, Lcom/android/server/am/EventLogTags;->writeAmPauseActivity(IILjava/lang/String;Ljava/lang/String;)V

    .line 1779
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v4

    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v9, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    iget v10, v0, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    .line 1780
    invoke-static {v9, p1, v10, p4}, Landroid/app/servertransaction/PauseActivityItem;->obtain(ZZIZ)Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v9

    .line 1779
    invoke-virtual {v4, v7, v8, v9}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    :try_end_184
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_184} :catch_185

    goto :goto_191

    .line 1782
    :catch_185
    move-exception v4

    .line 1784
    .local v4, "e":Ljava/lang/Exception;
    const-string v7, "Exception thrown during pause"

    invoke-static {v2, v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1785
    iput-object v6, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1786
    iput-object v6, p0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1787
    iput-object v6, p0, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1788
    .end local v4  # "e":Ljava/lang/Exception;
    :goto_191
    goto :goto_198

    .line 1790
    :cond_192
    iput-object v6, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1791
    iput-object v6, p0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1792
    iput-object v6, p0, Lcom/android/server/wm/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1797
    :goto_198
    if-nez p2, :cond_1a7

    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v4

    if-nez v4, :cond_1a7

    .line 1798
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStackSupervisor;->acquireLaunchWakelock()V

    .line 1801
    :cond_1a7
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_1c4

    .line 1806
    if-nez p2, :cond_1b1

    .line 1807
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->pauseKeyDispatchingLocked()V

    goto :goto_1ba

    .line 1808
    :cond_1b1
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v4, :cond_1ba

    .line 1809
    const-string v4, "Key dispatch not paused for screen off"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    :cond_1ba
    :goto_1ba
    if-eqz p4, :cond_1c0

    .line 1815
    invoke-direct {p0, v1, p3}, Lcom/android/server/wm/ActivityStack;->completePauseLocked(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1816
    return v1

    .line 1819
    :cond_1c0
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityStack;->schedulePauseTimeout(Lcom/android/server/wm/ActivityRecord;)V

    .line 1820
    return v5

    .line 1826
    :cond_1c4
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-eqz v4, :cond_1cd

    const-string v4, "Activity not running, resuming next."

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    :cond_1cd
    if-nez p3, :cond_1d4

    .line 1828
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 1830
    :cond_1d4
    return v1
.end method

.method final stopActivityLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 12
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 3907
    const-string v0, "stopActivityLocked"

    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    const-string v2, "ActivityTaskManager"

    if-eqz v1, :cond_1c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3908
    :cond_1c
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->launching:Z

    .line 3909
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x40000000  # 2.0f

    and-int/2addr v3, v4

    if-nez v3, :cond_32

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_83

    .line 3911
    :cond_32
    iget-boolean v3, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v3, :cond_83

    .line 3912
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepActivities()Z

    move-result v3

    if-nez v3, :cond_66

    .line 3913
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_54

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no-history finish of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3914
    :cond_54
    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-string v8, "stop-no-history"

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 3918
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 3919
    return-void

    .line 3922
    :cond_66
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v3, :cond_83

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not finishing noHistory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " on stop because we\'re just sleeping"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3928
    :cond_83
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v3

    if-eqz v3, :cond_176

    .line 3929
    const-string v3, "stopActivity"

    invoke-direct {p0, p1, v3}, Lcom/android/server/wm/ActivityStack;->adjustFocusedActivityStack(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 3930
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 3932
    const/4 v3, 0x1

    :try_start_92
    iput-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    .line 3934
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v4, :cond_b1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Moving to STOPPING: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " (stop requested)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3936
    :cond_b1
    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p1, v4, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3938
    sget-object v4, Lcom/android/server/wm/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    if-eqz v4, :cond_d2

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v4

    if-eqz v4, :cond_d2

    .line 3939
    sget-object v4, Lcom/android/server/wm/ActivityStack;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3940
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v5

    if-ne v5, v3, :cond_ce

    move v5, v3

    goto :goto_cf

    :cond_ce
    move v5, v1

    :goto_cf
    invoke-static {v4, v5, v1}, Lcom/android/server/wm/ActivityPluginDelegate;->activitySuspendNotification(Ljava/lang/String;ZZ)V

    .line 3942
    :cond_d2
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v4, :cond_f4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stopping visible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p1, Lcom/android/server/wm/ActivityRecord;->visible:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3945
    :cond_f4
    sget-object v4, Lcom/android/server/wm/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    if-eqz v4, :cond_103

    .line 3946
    sget-object v4, Lcom/android/server/wm/ActivityStack;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/app/ActivityTrigger;->activityStopTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;)V

    .line 3949
    :cond_103
    iget-boolean v4, p1, Lcom/android/server/wm/ActivityRecord;->visible:Z

    if-nez v4, :cond_10a

    .line 3950
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->setVisible(Z)V

    .line 3952
    :cond_10a
    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 3953
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 3952
    invoke-static {v1, v4, v5}, Lcom/android/server/am/EventLogTags;->writeAmStopActivity(IILjava/lang/String;)V

    .line 3954
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v1

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-boolean v6, p1, Lcom/android/server/wm/ActivityRecord;->visible:Z

    iget v7, p1, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    .line 3955
    invoke-static {v6, v7}, Landroid/app/servertransaction/StopActivityItem;->obtain(ZI)Landroid/app/servertransaction/StopActivityItem;

    move-result-object v6

    .line 3954
    invoke-virtual {v1, v4, v5, v6}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 3956
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v1

    if-eqz v1, :cond_137

    .line 3957
    invoke-virtual {p1, v3}, Lcom/android/server/wm/ActivityRecord;->setSleeping(Z)V

    .line 3959
    :cond_137
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x68

    invoke-virtual {v1, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3960
    .local v1, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/wm/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x2af8

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_146} :catch_148

    .line 3973
    nop

    .end local v1  # "msg":Landroid/os/Message;
    goto :goto_176

    .line 3961
    :catch_148
    move-exception v1

    .line 3965
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Exception thrown during pause"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3967
    iput-boolean v3, p1, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    .line 3968
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v4, :cond_168

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stop failed; moving to STOPPED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3969
    :cond_168
    sget-object v2, Lcom/android/server/wm/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p1, v2, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 3970
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-eqz v0, :cond_176

    .line 3971
    const-string v0, "stop-except"

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/wm/ActivityStack;->destroyActivityLocked(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)Z

    .line 3975
    .end local v1  # "e":Ljava/lang/Exception;
    :cond_176
    :goto_176
    return-void
.end method

.method public supportsSplitScreenWindowingMode()Z
    .registers 3

    .line 2366
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 2367
    .local v0, "topTask":Lcom/android/server/wm/TaskRecord;
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->supportsSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_14

    if-eqz v0, :cond_12

    .line 2368
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_12
    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 2367
    :goto_15
    return v1
.end method

.method final switchUserLocked(I)V
    .registers 7
    .param p1, "userId"  # I

    .line 1511
    iget v0, p0, Lcom/android/server/wm/ActivityStack;->mCurrentUser:I

    if-ne v0, p1, :cond_5

    .line 1512
    return-void

    .line 1514
    :cond_5
    iput p1, p0, Lcom/android/server/wm/ActivityStack;->mCurrentUser:I

    .line 1517
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1518
    .local v0, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_59

    .line 1519
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    .line 1521
    .local v2, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->okToShowLocked()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 1522
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v3, :cond_49

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchUser: stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getStackId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " moving "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to top"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    :cond_49
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1525
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1526
    add-int/lit8 v0, v0, -0x1

    goto :goto_58

    .line 1529
    :cond_56
    add-int/lit8 v1, v1, 0x1

    .line 1531
    .end local v2  # "task":Lcom/android/server/wm/TaskRecord;
    :goto_58
    goto :goto_e

    .line 1532
    .end local v1  # "i":I
    :cond_59
    return-void
.end method

.method taskForIdLocked(I)Lcom/android/server/wm/TaskRecord;
    .registers 5
    .param p1, "id"  # I

    .line 1202
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 1203
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 1204
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    iget v2, v1, Lcom/android/server/wm/TaskRecord;->taskId:I

    if-ne v2, p1, :cond_17

    .line 1205
    return-object v1

    .line 1202
    .end local v1  # "task":Lcom/android/server/wm/TaskRecord;
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1208
    .end local v0  # "taskNdx":I
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 5914
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

    .line 5915
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5916
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v1

    invoke-static {v1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5917
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " translucent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5918
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityStack;->isStackTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    .line 5920
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tasks}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5914
    return-object v0
.end method

.method topActivityOccludesKeyguard()Z
    .registers 2

    .line 2353
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mTopActivityOccludesKeyguard:Z

    return v0
.end method

.method public topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 1101
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method final topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;
    .registers 9
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "taskId"  # I

    .line 1159
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_3c

    .line 1160
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 1161
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    iget v2, v1, Lcom/android/server/wm/TaskRecord;->taskId:I

    if-ne v2, p2, :cond_17

    .line 1162
    goto :goto_39

    .line 1164
    :cond_17
    iget-object v2, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1165
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1f
    if-ltz v3, :cond_39

    .line 1166
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 1168
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v5, :cond_36

    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eq p1, v5, :cond_36

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 1169
    return-object v4

    .line 1165
    .end local v4  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_36
    add-int/lit8 v3, v3, -0x1

    goto :goto_1f

    .line 1159
    .end local v1  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v2  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v3  # "i":I
    :cond_39
    :goto_39
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1173
    .end local v0  # "taskNdx":I
    :cond_3c
    const/4 v0, 0x0

    return-object v0
.end method

.method topRunningActivityLocked(Z)Lcom/android/server/wm/ActivityRecord;
    .registers 5
    .param p1, "focusableOnly"  # Z

    .line 1112
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_24

    .line 1113
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1114
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_21

    if-eqz p1, :cond_20

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1115
    :cond_20
    return-object v1

    .line 1112
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1118
    .end local v0  # "taskNdx":I
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 8
    .param p1, "notTop"  # Lcom/android/server/wm/ActivityRecord;

    .line 1136
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_39

    .line 1137
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 1138
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    iget-object v2, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1139
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "activityNdx":I
    :goto_1a
    if-ltz v3, :cond_36

    .line 1140
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 1141
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v5, :cond_33

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    if-nez v5, :cond_33

    if-eq v4, p1, :cond_33

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 1142
    return-object v4

    .line 1139
    .end local v4  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_33
    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    .line 1136
    .end local v1  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v2  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v3  # "activityNdx":I
    :cond_36
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1146
    .end local v0  # "taskNdx":I
    :cond_39
    const/4 v0, 0x0

    return-object v0
.end method

.method topRunningNonOverlayTaskActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 7

    .line 1122
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "taskNdx":I
    :goto_8
    if-ltz v0, :cond_31

    .line 1123
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    .line 1124
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    iget-object v2, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1125
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "activityNdx":I
    :goto_1a
    if-ltz v3, :cond_2e

    .line 1126
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 1127
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v5, :cond_2b

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-nez v5, :cond_2b

    .line 1128
    return-object v4

    .line 1125
    .end local v4  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_2b
    add-int/lit8 v3, v3, -0x1

    goto :goto_1a

    .line 1122
    .end local v1  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v2  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v3  # "activityNdx":I
    :cond_2e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1132
    .end local v0  # "taskNdx":I
    :cond_31
    const/4 v0, 0x0

    return-object v0
.end method

.method final topRunningTask()Lcom/android/server/wm/TaskRecord;
    .registers 5

    .line 6010
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6011
    .local v0, "size":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_1c

    .line 6012
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskRecord;

    .line 6013
    .local v2, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 6014
    return-object v2

    .line 6011
    .end local v2  # "task":Lcom/android/server/wm/TaskRecord;
    :cond_19
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 6016
    .end local v1  # "i":I
    :cond_1c
    const/4 v1, 0x0

    return-object v1
.end method

.method final topTask()Lcom/android/server/wm/TaskRecord;
    .registers 4

    .line 1187
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1188
    .local v0, "size":I
    if-lez v0, :cond_13

    .line 1189
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    return-object v1

    .line 1191
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method unhandledBackLocked()V
    .registers 11

    .line 5456
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 5457
    .local v0, "top":I
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v1, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Performing unhandledBack(): top activity at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5458
    :cond_22
    if-ltz v0, :cond_46

    .line 5459
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    iget-object v1, v1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5460
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 5461
    .local v2, "activityTop":I
    if-ltz v2, :cond_46

    .line 5462
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    const-string v8, "unhandled-back"

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 5466
    .end local v1  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v2  # "activityTop":I
    :cond_46
    return-void
.end method

.method updateActivityApplicationInfoLocked(Landroid/content/pm/ApplicationInfo;)V
    .registers 9
    .param p1, "aInfo"  # Landroid/content/pm/ApplicationInfo;

    .line 1579
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1580
    .local v0, "packageName":Ljava/lang/String;
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1582
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "taskNdx":I
    :goto_10
    if-ltz v2, :cond_3f

    .line 1583
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    iget-object v3, v3, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1584
    .local v3, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "activityNdx":I
    :goto_22
    if-ltz v4, :cond_3c

    .line 1585
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 1587
    .local v5, "ar":Lcom/android/server/wm/ActivityRecord;
    iget v6, v5, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v1, v6, :cond_39

    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 1588
    invoke-virtual {v5, p1}, Lcom/android/server/wm/ActivityRecord;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;)V

    .line 1584
    .end local v5  # "ar":Lcom/android/server/wm/ActivityRecord;
    :cond_39
    add-int/lit8 v4, v4, -0x1

    goto :goto_22

    .line 1582
    .end local v3  # "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v4  # "activityNdx":I
    :cond_3c
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 1592
    .end local v2  # "taskNdx":I
    :cond_3f
    return-void
.end method

.method updateBoundsAllowed(Landroid/graphics/Rect;)Z
    .registers 4
    .param p1, "bounds"  # Landroid/graphics/Rect;

    .line 1070
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mUpdateBoundsDeferred:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 1071
    return v1

    .line 1073
    :cond_6
    if-eqz p1, :cond_e

    .line 1074
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_13

    .line 1076
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1078
    :goto_13
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStack;->mUpdateBoundsDeferredCalled:Z

    .line 1079
    const/4 v0, 0x0

    return v0
.end method

.method updateDisplayedBoundsAllowed(Landroid/graphics/Rect;)Z
    .registers 4
    .param p1, "bounds"  # Landroid/graphics/Rect;

    .line 1083
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStack;->mUpdateBoundsDeferred:Z

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 1084
    return v1

    .line 1086
    :cond_6
    if-eqz p1, :cond_e

    .line 1087
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mDeferredDisplayedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_13

    .line 1089
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mDeferredDisplayedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1091
    :goto_13
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStack;->mUpdateDisplayedBoundsDeferredCalled:Z

    .line 1092
    const/4 v0, 0x0

    return v0
.end method

.method final updateLRUListLocked(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 1268
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 1269
    .local v0, "hadit":Z
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1270
    return v0
.end method

.method public updatePictureInPictureModeForPinnedStackAnimation(Landroid/graphics/Rect;Z)V
    .registers 8
    .param p1, "targetStackBounds"  # Landroid/graphics/Rect;
    .param p2, "forceUpdate"  # Z

    .line 5896
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5897
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v1

    if-nez v1, :cond_13

    .line 5898
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 5900
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 5901
    .local v1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 5902
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->updatePictureInPictureMode(Lcom/android/server/wm/TaskRecord;Landroid/graphics/Rect;Z)V

    .line 5901
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 5905
    .end local v1  # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    .end local v2  # "i":I
    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_13 .. :try_end_2d} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5906
    return-void

    .line 5905
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method willActivityBeVisibleLocked(Landroid/os/IBinder;)Z
    .registers 9
    .param p1, "token"  # Landroid/os/IBinder;

    .line 5322
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "taskNdx":I
    :goto_8
    const/4 v2, 0x0

    if-ltz v0, :cond_36

    .line 5323
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    iget-object v3, v3, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 5324
    .local v3, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    .local v4, "activityNdx":I
    :goto_1a
    if-ltz v4, :cond_33

    .line 5325
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 5326
    .local v5, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-ne v6, p1, :cond_27

    .line 5327
    return v1

    .line 5329
    :cond_27
    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->fullscreen:Z

    if-eqz v6, :cond_30

    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v6, :cond_30

    .line 5330
    return v2

    .line 5324
    .end local v5  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_30
    add-int/lit8 v4, v4, -0x1

    goto :goto_1a

    .line 5322
    .end local v3  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .end local v4  # "activityNdx":I
    :cond_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 5334
    .end local v0  # "taskNdx":I
    :cond_36
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 5335
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_3d

    .line 5336
    return v2

    .line 5338
    :cond_3d
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_57

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "willActivityBeVisibleLocked: Returning false, would have returned true for r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5340
    :cond_57
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/2addr v1, v2

    return v1
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 11
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J
    .param p4, "logLevel"  # I

    .line 5953
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 5954
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/ConfigurationContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 5955
    iget v2, p0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5956
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "taskNdx":I
    :goto_1e
    if-ltz v2, :cond_33

    .line 5957
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    .line 5958
    .local v3, "task":Lcom/android/server/wm/TaskRecord;
    const-wide v4, 0x20b00000003L

    invoke-virtual {v3, p1, v4, v5, p4}, Lcom/android/server/wm/TaskRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 5956
    .end local v3  # "task":Lcom/android/server/wm/TaskRecord;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    .line 5960
    .end local v2  # "taskNdx":I
    :cond_33
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_3f

    .line 5961
    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5963
    :cond_3f
    const-wide v2, 0x10500000005L

    iget v4, p0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5964
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->matchParentBounds()Z

    move-result v2

    if-nez v2, :cond_5b

    .line 5965
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5966
    .local v2, "bounds":Landroid/graphics/Rect;
    const-wide v3, 0x10b00000007L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 5970
    .end local v2  # "bounds":Landroid/graphics/Rect;
    :cond_5b
    const-wide v2, 0x10800000006L

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStack;->matchParentBounds()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5971
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5972
    return-void
.end method
