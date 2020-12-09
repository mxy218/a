.class Lcom/android/server/wm/ActivityStarter;
.super Ljava/lang/Object;
.source "ActivityStarter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityStarter$Request;,
        Lcom/android/server/wm/ActivityStarter$DefaultFactory;,
        Lcom/android/server/wm/ActivityStarter$Factory;
    }
.end annotation


# static fields
.field private static final INVALID_LAUNCH_MODE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_FOCUS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RESULTS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_USER_LEAVING:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field private mAddingToTask:Z

.field private mAvoidMoveToFront:Z

.field private mCallingUid:I

.field private final mController:Lcom/android/server/wm/ActivityStartController;

.field private mDoResume:Z

.field private mFrozeTaskList:Z

.field private mInTask:Lcom/android/server/wm/TaskRecord;

.field private mIntent:Landroid/content/Intent;

.field private mIntentDelivered:Z

.field private final mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

.field private mKeepCurTransition:Z

.field private final mLastStartActivityRecord:[Lcom/android/server/wm/ActivityRecord;

.field private mLastStartActivityResult:I

.field private mLastStartActivityTimeMs:J

.field private mLastStartReason:Ljava/lang/String;

.field private mLaunchFlags:I

.field private mLaunchMode:I

.field private mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

.field private mLaunchTaskBehind:Z

.field private mMovedToFront:Z

.field private mNewTaskInfo:Landroid/content/pm/ActivityInfo;

.field private mNewTaskIntent:Landroid/content/Intent;

.field private mNoAnimation:Z

.field private mNotTop:Lcom/android/server/wm/ActivityRecord;

.field private mOptions:Landroid/app/ActivityOptions;

.field private mPreferredDisplayId:I

.field private mRequest:Lcom/android/server/wm/ActivityStarter$Request;

.field private mRestrictedBgActivity:Z

.field private mReuseTask:Lcom/android/server/wm/TaskRecord;

.field private final mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mSourceRecord:Lcom/android/server/wm/ActivityRecord;

.field private mSourceStack:Lcom/android/server/wm/ActivityStack;

.field private mStartActivity:Lcom/android/server/wm/ActivityRecord;

.field private mStartFlags:I

.field private final mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field private mTargetStack:Lcom/android/server/wm/ActivityStack;

.field private mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field private mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityStartController;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStartInterceptor;)V
    .registers 7

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 202
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/android/server/wm/ActivityRecord;

    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/wm/ActivityRecord;

    .line 215
    new-instance v1, Lcom/android/server/wm/ActivityStarter$Request;

    invoke-direct {v1}, Lcom/android/server/wm/ActivityStarter$Request;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 442
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    .line 443
    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 444
    iget-object p1, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 445
    iput-object p3, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 446
    iput-object p4, p0, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    .line 447
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStarter;->reset(Z)V

    .line 448
    return-void
.end method

.method private addOrReparentStartingActivity(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;)V
    .registers 5

    .line 2574
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    if-ne v0, p1, :cond_11

    goto :goto_1d

    .line 2577
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskRecord;ILjava/lang/String;)V

    goto :goto_22

    .line 2575
    :cond_1d
    :goto_1d
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/TaskRecord;->addActivityToTop(Lcom/android/server/wm/ActivityRecord;)V

    .line 2579
    :goto_22
    return-void
.end method

.method private adjustLaunchFlagsToDocumentMode(Lcom/android/server/wm/ActivityRecord;ZZI)I
    .registers 7

    .line 2583
    const/high16 v0, 0x80000

    and-int v1, p4, v0

    if-eqz v1, :cond_16

    if-nez p2, :cond_a

    if-eqz p3, :cond_16

    .line 2586
    :cond_a
    const-string p1, "ActivityTaskManager"

    const-string p2, "Ignoring FLAG_ACTIVITY_NEW_DOCUMENT, launchMode is \"singleInstance\" or \"singleTask\""

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2588
    const p1, -0x8080001

    and-int/2addr p4, p1

    goto :goto_30

    .line 2591
    :cond_16
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p1, p1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-eqz p1, :cond_2f

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2d

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2b

    const/4 p2, 0x3

    if-eq p1, p2, :cond_26

    goto :goto_30

    .line 2601
    :cond_26
    const p1, -0x8000001

    and-int/2addr p4, p1

    goto :goto_30

    .line 2598
    :cond_2b
    or-int/2addr p4, v0

    .line 2599
    goto :goto_30

    .line 2595
    :cond_2d
    or-int/2addr p4, v0

    .line 2596
    goto :goto_30

    .line 2593
    :cond_2f
    nop

    .line 2605
    :goto_30
    return p4
.end method

.method private canLaunchIntoFocusedStack(Lcom/android/server/wm/ActivityRecord;Z)Z
    .registers 8

    .line 2659
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2661
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeAssistant()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_13

    .line 2662
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeAssistant()Z

    move-result p1

    goto :goto_40

    .line 2664
    :cond_13
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v1

    if-eq v1, v3, :cond_3e

    const/4 v4, 0x3

    if-eq v1, v4, :cond_39

    const/4 v4, 0x4

    if-eq v1, v4, :cond_39

    const/4 v4, 0x5

    if-eq v1, v4, :cond_34

    .line 2683
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isOnHomeDisplay()Z

    move-result v1

    if-nez v1, :cond_32

    iget v1, v0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    .line 2684
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result p1

    if-eqz p1, :cond_32

    move p1, v3

    goto :goto_40

    :cond_32
    move p1, v2

    goto :goto_40

    .line 2678
    :cond_34
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->supportsFreeform()Z

    move-result p1

    .line 2679
    goto :goto_40

    .line 2674
    :cond_39
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->supportsSplitScreenWindowingMode()Z

    move-result p1

    .line 2675
    goto :goto_40

    .line 2669
    :cond_3e
    nop

    .line 2670
    move p1, v3

    .line 2687
    :goto_40
    if-eqz p1, :cond_4b

    if-nez p2, :cond_4b

    iget p1, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    iget p2, v0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    if-ne p1, p2, :cond_4b

    move v2, v3

    :cond_4b
    return v2
.end method

.method private computeLaunchingTaskFlags()V
    .registers 9

    .line 1948
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/high16 v4, 0x10000000

    if-nez v0, :cond_e1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    if-eqz v0, :cond_e1

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_e1

    .line 1949
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1950
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/TaskRecord;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 1951
    if-eqz v0, :cond_c3

    .line 1959
    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v6

    if-eqz v6, :cond_8f

    .line 1960
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_67

    .line 1965
    if-nez v5, :cond_3c

    goto :goto_8f

    .line 1966
    :cond_3c
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1967
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller with mInTask "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has root "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but target is singleInstance/Task"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1961
    :cond_67
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1962
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to launch singleInstance/Task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " into different task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1974
    :cond_8f
    :goto_8f
    if-nez v5, :cond_b3

    .line 1977
    iget v5, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v6, -0x18082001

    and-int/2addr v5, v6

    .line 1978
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v6, 0x18082000

    and-int/2addr v0, v6

    or-int/2addr v0, v5

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 1979
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget v5, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1980
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v5}, Lcom/android/server/wm/TaskRecord;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 1981
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto :goto_be

    .line 1986
    :cond_b3
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_bc

    .line 1987
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto :goto_be

    .line 1990
    :cond_bc
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 1993
    :goto_be
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/TaskRecord;

    .line 1994
    goto :goto_fe

    .line 1952
    :cond_c3
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1953
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching into task without base intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1995
    :cond_e1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    .line 2001
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isResolverOrDelegateActivity()Z

    move-result v0

    if-nez v0, :cond_f2

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-eqz v0, :cond_fe

    :cond_f2
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_fe

    .line 2002
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 2003
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2007
    :cond_fe
    :goto_fe
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    if-nez v0, :cond_140

    .line 2008
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v3, :cond_12b

    .line 2011
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v4

    if-nez v1, :cond_140

    if-nez v0, :cond_140

    .line 2012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    goto :goto_140

    .line 2016
    :cond_12b
    iget v0, v3, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    if-ne v0, v2, :cond_135

    .line 2020
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    goto :goto_140

    .line 2021
    :cond_135
    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_140

    .line 2024
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2027
    :cond_140
    :goto_140
    return-void
.end method

.method static computeResolveFilterUid(III)I
    .registers 4

    .line 1391
    const/16 v0, -0x2710

    if-eq p2, v0, :cond_6

    .line 1392
    move p0, p2

    goto :goto_a

    .line 1393
    :cond_6
    if-ltz p0, :cond_9

    goto :goto_a

    :cond_9
    move p0, p1

    .line 1391
    :goto_a
    return p0
.end method

.method private computeSourceStack()V
    .registers 5

    .line 2030
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2031
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    .line 2032
    return-void

    .line 2034
    :cond_8
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_15

    .line 2035
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    .line 2036
    return-void

    .line 2043
    :cond_15
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000000

    and-int/2addr v0, v2

    if-nez v0, :cond_57

    .line 2044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startActivity called from finishing "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2047
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 2053
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 2054
    if-eqz v0, :cond_54

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    goto :goto_55

    :cond_54
    move-object v0, v1

    :goto_55
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 2056
    :cond_57
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2057
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    .line 2058
    return-void
.end method

.method private computeStackFocus(Lcom/android/server/wm/ActivityRecord;ZILandroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;
    .registers 8

    .line 2610
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 2611
    invoke-direct {p0, p1, p3, v0, p4}, Lcom/android/server/wm/ActivityStarter;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;

    move-result-object p3

    .line 2612
    if-eqz p3, :cond_b

    .line 2613
    return-object p3

    .line 2616
    :cond_b
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 2617
    :goto_13
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 2618
    if-eqz v1, :cond_1d

    .line 2619
    nop

    .line 2627
    return-object v1

    .line 2630
    :cond_1d
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityStarter;->canLaunchIntoFocusedStack(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result p2

    if-eqz p2, :cond_24

    .line 2633
    return-object v2

    .line 2636
    :cond_24
    iget p2, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    if-eqz p2, :cond_3a

    .line 2638
    iget-object p3, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {p3, p2, p1, p4, v1}, Lcom/android/server/wm/RootActivityContainer;->getValidLaunchStackOnDisplay(ILcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Lcom/android/server/wm/ActivityStack;

    move-result-object p3

    .line 2640
    if-nez p3, :cond_3a

    .line 2645
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget p3, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    invoke-virtual {p2, p1, p3}, Lcom/android/server/wm/RootActivityContainer;->getNextValidLaunchStack(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityStack;

    move-result-object p3

    .line 2648
    :cond_3a
    if-nez p3, :cond_43

    .line 2649
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p4, v0, p3}, Lcom/android/server/wm/RootActivityContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object p3

    .line 2653
    :cond_43
    return-object p3
.end method

.method private createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 19

    .line 1076
    move-object v7, p1

    if-eqz v7, :cond_1a

    iget-boolean v0, v7, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v0, :cond_1a

    .line 1078
    move-object v0, p0

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p5

    move-object v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/PackageManagerInternal;->requestInstantAppResolutionPhaseTwo(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 1082
    :cond_1a
    nop

    .line 1084
    invoke-static {p2}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    .line 1085
    const/4 v0, 0x0

    if-nez v7, :cond_24

    move-object v3, v0

    goto :goto_27

    :cond_24
    iget-object v1, v7, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    move-object v3, v1

    .line 1090
    :goto_27
    if-nez v7, :cond_2b

    move-object v8, v0

    goto :goto_2e

    :cond_2b
    iget-object v1, v7, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    move-object v8, v1

    .line 1091
    :goto_2e
    if-nez v7, :cond_32

    move-object v9, v0

    goto :goto_35

    :cond_32
    iget-object v1, v7, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    move-object v9, v1

    :goto_35
    if-eqz v7, :cond_3d

    iget-boolean v1, v7, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v1, :cond_3d

    const/4 v1, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v1, 0x0

    :goto_3e
    move v10, v1

    .line 1093
    if-nez v7, :cond_42

    goto :goto_44

    :cond_42
    iget-object v0, v7, Landroid/content/pm/AuxiliaryResolveInfo;->filters:Ljava/util/List;

    :goto_44
    move-object v11, v0

    .line 1082
    move-object v1, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-static/range {v1 .. v11}, Lcom/android/server/pm/InstantAppResolver;->buildEphemeralInstallerIntent(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private deliverNewIntent(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 2361
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    if-eqz v0, :cond_5

    .line 2362
    return-void

    .line 2365
    :cond_5
    const/16 v0, 0x7533

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/server/wm/ActivityStack;->logStartActivity(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;)V

    .line 2366
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/wm/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 2368
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    .line 2369
    return-void
.end method

.method static getExternalResult(I)I
    .registers 2

    .line 602
    const/16 v0, 0x66

    if-eq p0, v0, :cond_5

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method private getLaunchStack(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;
    .registers 14

    .line 2695
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/TaskRecord;

    if-eqz v0, :cond_9

    .line 2696
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    return-object p1

    .line 2699
    :cond_9
    and-int/lit16 p2, p2, 0x1000

    const/4 v0, 0x1

    if-eqz p2, :cond_61

    iget p2, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    if-eqz p2, :cond_13

    goto :goto_61

    .line 2709
    :cond_13
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p2}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p2

    .line 2712
    if-eqz p3, :cond_20

    invoke-virtual {p3}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    goto :goto_21

    :cond_20
    move-object v1, p2

    .line 2714
    :goto_21
    if-eq v1, p2, :cond_24

    .line 2716
    return-object v1

    .line 2718
    :cond_24
    if-eqz p2, :cond_2d

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    if-ne p3, v2, :cond_2d

    .line 2721
    return-object p2

    .line 2724
    :cond_2d
    if-eqz v1, :cond_47

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result p2

    if-eqz p2, :cond_47

    .line 2727
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object p4, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2728
    invoke-virtual {p2, p1, p4, p3}, Lcom/android/server/wm/RootActivityContainer;->resolveActivityType(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;)I

    move-result p1

    .line 2729
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object p2

    const/4 p3, 0x4

    invoke-virtual {p2, p3, p1, v0}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    return-object p1

    .line 2735
    :cond_47
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 2736
    invoke-virtual {p2}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p2

    .line 2737
    if-eqz p2, :cond_60

    invoke-virtual {p2, p1}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_60

    .line 2739
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p2, p1, p4, p3, v0}, Lcom/android/server/wm/RootActivityContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    return-object p1

    .line 2741
    :cond_60
    return-object p2

    .line 2701
    :cond_61
    :goto_61
    if-eqz p4, :cond_6b

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result p2

    if-nez p2, :cond_6a

    goto :goto_6b

    :cond_6a
    const/4 v0, 0x0

    :cond_6b
    :goto_6b
    move v5, v0

    .line 2702
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v7, p2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v8, p2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 2703
    move-object v2, p1

    move-object v3, p4

    move-object v4, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/RootActivityContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;ZLcom/android/server/wm/LaunchParamsController$LaunchParams;II)Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    .line 2705
    return-object p1
.end method

.method private getReusableIntentActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 9

    .line 2070
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x10000000

    and-int/2addr v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_10

    const/high16 v1, 0x8000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_16

    .line 2072
    :cond_10
    invoke-direct {p0, v3, v2}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    move v0, v5

    goto :goto_19

    :cond_18
    move v0, v4

    .line 2076
    :goto_19
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    if-nez v1, :cond_25

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_25

    move v1, v5

    goto :goto_26

    :cond_25
    move v1, v4

    :goto_26
    and-int/2addr v0, v1

    .line 2077
    nop

    .line 2078
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v6, 0x0

    if-eqz v1, :cond_49

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_49

    .line 2079
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 2080
    if-eqz v0, :cond_47

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_48

    :cond_47
    move-object v0, v6

    .line 2081
    :goto_48
    goto :goto_86

    :cond_49
    if-eqz v0, :cond_85

    .line 2082
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v3, v0, :cond_62

    .line 2085
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2086
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v3

    .line 2085
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/RootActivityContainer;->findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_86

    .line 2087
    :cond_62
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_7a

    .line 2090
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v7, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-eq v2, v7, :cond_75

    move v4, v5

    :cond_75
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/wm/RootActivityContainer;->findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_86

    .line 2094
    :cond_7a
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    .line 2095
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/RootActivityContainer;->findTask(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_86

    .line 2081
    :cond_85
    move-object v0, v6

    .line 2099
    :goto_86
    if-eqz v0, :cond_9f

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2100
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v1

    if-nez v1, :cond_96

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 2101
    :cond_96
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v1

    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    if-eq v1, v2, :cond_9f

    .line 2103
    move-object v0, v6

    .line 2106
    :cond_9f
    return-object v0
.end method

.method private handleBackgroundActivityAbort(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 11

    .line 1455
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBackgroundActivityStartsEnabled()Z

    move-result v0

    .line 1456
    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_c

    .line 1457
    const/4 p1, 0x0

    return p1

    .line 1459
    :cond_c
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 1460
    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 1461
    iget v6, p1, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 1462
    if-eqz v4, :cond_1e

    .line 1463
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1464
    const/4 v3, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/ActivityStack;->sendActivityResultLocked(ILcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1469
    :cond_1e
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-static {p1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1470
    return v1
.end method

.method static isDocumentLaunchesIntoExisting(I)Z
    .registers 2

    .line 2752
    const/high16 v0, 0x80000

    and-int/2addr v0, p0

    if-eqz v0, :cond_c

    const/high16 v0, 0x8000000

    and-int/2addr p0, v0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private isLaunchModeOneOf(II)Z
    .registers 4

    .line 2748
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-eq p1, v0, :cond_9

    if-ne p2, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p1, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p1, 0x1

    :goto_a
    return p1
.end method

.method private onExecutionComplete()V
    .registers 2

    .line 610
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityStartController;->onExecutionComplete(Lcom/android/server/wm/ActivityStarter;)V

    .line 611
    return-void
.end method

.method private resumeTargetStackIfNeeded()V
    .registers 5

    .line 2309
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_f

    .line 2310
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_14

    .line 2312
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2314
    :goto_14
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/RootActivityContainer;->updateUserStack(ILcom/android/server/wm/ActivityStack;)V

    .line 2315
    return-void
.end method

.method private sendNewTaskResultRequestIfNeeded()V
    .registers 10

    .line 1930
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 1931
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    move-object v2, v0

    goto :goto_12

    :cond_11
    move-object v2, v1

    .line 1932
    :goto_12
    if-eqz v2, :cond_38

    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v3, 0x10000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_38

    .line 1937
    const-string v0, "ActivityTaskManager"

    const-string v3, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    const/4 v3, -0x1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v6, v0, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/ActivityStack;->sendActivityResultLocked(ILcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1941
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 1943
    :cond_38
    return-void
.end method

.method private setInitialState(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;ZILcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)V
    .registers 25

    .line 1812
    move-object v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    const/4 v14, 0x0

    invoke-virtual {p0, v14}, Lcom/android/server/wm/ActivityStarter;->reset(Z)V

    .line 1814
    iput-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1815
    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 1816
    move-object/from16 v6, p2

    iput-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1817
    iget v1, v9, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 1818
    iput-object v13, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1819
    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 1820
    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 1821
    move/from16 v1, p9

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    .line 1823
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 1827
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v1

    iget-object v2, v9, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    const/4 v7, 0x0

    move-object/from16 v2, p3

    move-object/from16 v4, p1

    move-object/from16 v5, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 1829
    nop

    .line 1830
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasPreferredDisplay()Z

    move-result v1

    if-eqz v1, :cond_54

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    goto :goto_55

    .line 1831
    :cond_54
    move v1, v14

    :goto_55
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    .line 1833
    iget v1, v9, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 1835
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v2, v1, :cond_63

    move v1, v3

    goto :goto_64

    :cond_63
    move v1, v14

    :goto_64
    iget v4, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v5, 0x2

    if-ne v5, v4, :cond_6b

    move v4, v3

    goto :goto_6c

    :cond_6b
    move v4, v14

    :goto_6c
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 1837
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    .line 1835
    invoke-direct {p0, v9, v1, v4, v6}, Lcom/android/server/wm/ActivityStarter;->adjustLaunchFlagsToDocumentMode(Lcom/android/server/wm/ActivityRecord;ZZI)I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 1838
    iget-boolean v1, v9, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    const/high16 v4, 0x80000

    if-eqz v1, :cond_8b

    .line 1839
    invoke-direct {p0, v5, v2}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v1

    if-nez v1, :cond_8b

    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_8b

    move v1, v3

    goto :goto_8c

    :cond_8b
    move v1, v14

    :goto_8c
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 1842
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->sendNewTaskResultRequestIfNeeded()V

    .line 1844
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v4

    const/high16 v2, 0x10000000

    if-eqz v1, :cond_a1

    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_a1

    .line 1845
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 1850
    :cond_a1
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_b7

    .line 1851
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v1, :cond_b0

    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-ne v1, v5, :cond_b7

    .line 1853
    :cond_b0
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x8000000

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 1859
    :cond_b7
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v2, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x40000

    and-int/2addr v2, v4

    if-nez v2, :cond_c2

    move v2, v3

    goto :goto_c3

    :cond_c2
    move v2, v14

    :goto_c3
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    .line 1866
    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 1867
    if-eqz v11, :cond_cf

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v1

    if-nez v1, :cond_d3

    .line 1868
    :cond_cf
    iput-boolean v3, v9, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    .line 1869
    iput-boolean v14, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 1872
    :cond_d3
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v2, 0x0

    if-eqz v1, :cond_120

    .line 1873
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_114

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getTaskOverlay()Z

    move-result v1

    if-eqz v1, :cond_114

    .line 1874
    iput-boolean v3, v9, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    .line 1875
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->canTaskOverlayResume()Z

    move-result v1

    if-nez v1, :cond_120

    .line 1876
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1877
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v4

    .line 1876
    invoke-virtual {v1, v4}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    .line 1878
    if-eqz v1, :cond_104

    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto :goto_105

    :cond_104
    move-object v1, v2

    .line 1879
    :goto_105
    if-eqz v1, :cond_113

    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v1

    if-nez v1, :cond_113

    .line 1883
    iput-boolean v14, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 1884
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 1886
    :cond_113
    goto :goto_120

    .line 1887
    :cond_114
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v1

    if-eqz v1, :cond_120

    .line 1888
    iput-boolean v14, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 1889
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 1893
    :cond_120
    :goto_120
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x1000000

    and-int/2addr v1, v4

    if-eqz v1, :cond_129

    move-object v1, v13

    goto :goto_12a

    :cond_129
    move-object v1, v2

    :goto_12a
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 1895
    iput-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    .line 1900
    if-eqz v10, :cond_14c

    iget-boolean v1, v10, Lcom/android/server/wm/TaskRecord;->inRecents:Z

    if-nez v1, :cond_14c

    .line 1901
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting activity in task not in recents: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    iput-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    .line 1905
    :cond_14c
    iput v12, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 1909
    and-int/lit8 v1, v12, 0x1

    if-eqz v1, :cond_172

    .line 1910
    nop

    .line 1911
    if-nez v13, :cond_162

    .line 1912
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 1913
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    move-object v13, v1

    .line 1915
    :cond_162
    iget-object v1, v13, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v2, v9, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_172

    .line 1917
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 1921
    :cond_172
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_17b

    move v1, v3

    goto :goto_17c

    :cond_17b
    move v1, v14

    :goto_17c
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 1923
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    if-eqz v1, :cond_18e

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isBackgroundActivityStartsEnabled()Z

    move-result v1

    if-nez v1, :cond_18e

    .line 1924
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 1925
    iput-boolean v14, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 1927
    :cond_18e
    return-void
.end method

.method private setTargetStackAndMoveToFrontIfNeeded(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 16

    .line 2116
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2117
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2123
    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    iget v0, v0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v0, :cond_42

    .line 2124
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2125
    if-nez v0, :cond_21

    .line 2126
    move-object v2, v1

    goto :goto_27

    :cond_21
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 2127
    :goto_27
    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    goto :goto_2f

    :cond_2e
    move-object v2, v1

    .line 2128
    :goto_2f
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v5

    if-ne v2, v5, :cond_40

    if-eqz v0, :cond_3e

    .line 2129
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    if-eq v2, v0, :cond_3e

    goto :goto_40

    :cond_3e
    move v0, v3

    goto :goto_41

    :cond_40
    :goto_40
    move v0, v4

    .line 2130
    :goto_41
    goto :goto_43

    .line 2132
    :cond_42
    move v0, v4

    .line 2135
    :goto_43
    if-eqz v0, :cond_12f

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v0, :cond_12f

    .line 2136
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v2, 0x400000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2137
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_12f

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    .line 2138
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2139
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    if-ne v0, v2, :cond_12f

    .line 2141
    :cond_70
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_7f

    .line 2142
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/wm/TaskRecord;)V

    .line 2151
    :cond_7f
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v2, 0x10008000

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_89

    move v0, v4

    goto :goto_8a

    :cond_89
    move v0, v3

    .line 2154
    :goto_8a
    if-nez v0, :cond_12f

    .line 2155
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2156
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2155
    invoke-direct {p0, v0, v2, v5, v6}, Lcom/android/server/wm/ActivityStarter;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2157
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    .line 2158
    if-eqz v0, :cond_119

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    if-ne v0, v2, :cond_a6

    goto/16 :goto_119

    .line 2165
    :cond_a6
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 2166
    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_be

    .line 2169
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const-string v13, "launchToSide"

    move-object v7, v6

    move-object v8, v0

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    goto :goto_cd

    .line 2177
    :cond_be
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-boolean v7, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v10, "bringToFrontInsteadOfAdjacentLaunch"

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/wm/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2181
    :goto_cd
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    .line 2182
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/server/wm/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    if-eq v0, v2, :cond_dd

    move v0, v4

    goto :goto_de

    :cond_dd
    move v0, v3

    :goto_de
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    goto :goto_12a

    .line 2183
    :cond_e1
    iget v2, v0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget v5, v5, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    if-eq v2, v5, :cond_fa

    .line 2187
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v7

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const-string v13, "reparentToDisplay"

    move-object v8, v0

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2190
    iput-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    goto :goto_12a

    .line 2191
    :cond_fa
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_12a

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2192
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v2

    if-nez v2, :cond_12a

    .line 2197
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v7

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const-string v13, "reparentingHome"

    move-object v8, v0

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2200
    iput-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    goto :goto_12a

    .line 2162
    :cond_119
    :goto_119
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-boolean v7, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, v0, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v10, "bringingFoundTaskToFront"

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/wm/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2164
    iput-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 2202
    :cond_12a
    :goto_12a
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2206
    invoke-virtual {p1, v1, v3, v4}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 2213
    :cond_12f
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2214
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    if-nez v0, :cond_144

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_144

    .line 2217
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const-string v1, "intentActivityFound"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2220
    :cond_144
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;IILcom/android/server/wm/ActivityStack;)V

    .line 2224
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_15f

    .line 2225
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    return-object p1

    .line 2227
    :cond_15f
    return-object p1
.end method

.method private setTaskFromInTask()I
    .registers 12

    .line 2473
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    const/16 v0, 0x65

    return v0

    .line 2478
    :cond_29
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2482
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2483
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_78

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    iget v3, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v4, v4, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v3, v4, :cond_78

    .line 2485
    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x20000000

    and-int/2addr v3, v4

    if-nez v3, :cond_5c

    .line 2486
    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 2487
    :cond_5c
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    iget-boolean v6, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v8, v1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v9, "inTaskToFront"

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/wm/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2489
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_73

    .line 2492
    return v2

    .line 2494
    :cond_73
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2495
    const/4 v0, 0x3

    return v0

    .line 2499
    :cond_78
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-nez v0, :cond_93

    .line 2500
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    iget-boolean v5, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v8, "inTaskToFront"

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/wm/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2504
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2505
    return v1

    .line 2508
    :cond_93
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ca

    .line 2510
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/android/server/wm/RootActivityContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 2512
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eq v5, v0, :cond_c1

    .line 2513
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v10, "inTaskToFront"

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2515
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2518
    :cond_c1
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityStarter;->updateBounds(Lcom/android/server/wm/TaskRecord;Landroid/graphics/Rect;)V

    .line 2521
    :cond_ca
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v7, "inTaskToFront"

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/wm/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2524
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    const-string v1, "setTaskFromInTask"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;)V

    .line 2528
    const/4 v0, 0x0

    return v0
.end method

.method private setTaskFromIntentActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 7

    .line 2231
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v1, 0x10008000

    and-int v2, v0, v1

    if-ne v2, v1, :cond_1b

    .line 2242
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object p1

    .line 2243
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->performClearTaskLocked()V

    .line 2244
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/TaskRecord;

    .line 2245
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/TaskRecord;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskRecord;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2246
    goto/16 :goto_cf

    :cond_1b
    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-nez v0, :cond_91

    const/4 v0, 0x3

    const/4 v2, 0x2

    .line 2247
    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_91

    .line 2271
    :cond_2a
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 2272
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 2271
    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 2277
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x20000000

    and-int/2addr v0, v2

    if-nez v0, :cond_45

    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v1, v0, :cond_62

    :cond_45
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 2279
    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 2281
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->frontOfTask:Z

    if-eqz v0, :cond_5e

    .line 2282
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskRecord;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2284
    :cond_5e
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_cf

    .line 2285
    :cond_62
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskRecord;->isSameIntentFilter(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_cf

    .line 2288
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2289
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    goto :goto_cf

    .line 2291
    :cond_73
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-nez v0, :cond_7f

    .line 2296
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2297
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    goto :goto_cf

    .line 2298
    :cond_7f
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/TaskRecord;->rootWasReset:Z

    if-nez v0, :cond_cf

    .line 2304
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskRecord;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_cf

    .line 2248
    :cond_91
    :goto_91
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/TaskRecord;->performClearTaskLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2250
    if-nez v0, :cond_ce

    .line 2254
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2257
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->setTask(Lcom/android/server/wm/TaskRecord;)V

    .line 2260
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2261
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object p1

    .line 2262
    if-eqz p1, :cond_ce

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_ce

    .line 2265
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/server/wm/ActivityStarter;->computeStackFocus(Lcom/android/server/wm/ActivityRecord;ZILandroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2267
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    xor-int/2addr v1, v2

    const-string v2, "startActivityUnchecked"

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/ActivityStack;->addTask(Lcom/android/server/wm/TaskRecord;ZLjava/lang/String;)V

    .line 2271
    :cond_ce
    nop

    .line 2306
    :cond_cf
    :goto_cf
    return-void
.end method

.method private setTaskFromReuseOrCreateNewTask(Lcom/android/server/wm/TaskRecord;)I
    .registers 16

    .line 2318
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/TaskRecord;

    if-eqz v0, :cond_10

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskRecord;->containsAppUid(I)Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2319
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityStarter;->handleBackgroundActivityAbort(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2320
    const/16 p1, 0x66

    return p1

    .line 2323
    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/server/wm/ActivityStarter;->computeStackFocus(Lcom/android/server/wm/ActivityRecord;ZILandroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2328
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/TaskRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_77

    .line 2329
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v0, :cond_37

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v0, :cond_37

    move v10, v3

    goto :goto_38

    :cond_37
    move v10, v1

    .line 2330
    :goto_38
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 2331
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v5

    .line 2332
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_49

    goto :goto_4d

    :cond_49
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    :goto_4d
    move-object v6, v0

    .line 2333
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    if-eqz v0, :cond_53

    goto :goto_55

    :cond_53
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    :goto_55
    move-object v7, v0

    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v9, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-object v11, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v12, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v13, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2330
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/wm/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 2335
    const-string v2, "setTaskFromReuseOrCreateNewTask - mReuseTask"

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;)V

    .line 2336
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v2, v2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/ActivityStarter;->updateBounds(Lcom/android/server/wm/TaskRecord;Landroid/graphics/Rect;)V

    .line 2340
    goto :goto_7c

    .line 2341
    :cond_77
    const-string v2, "setTaskFromReuseOrCreateNewTask"

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;)V

    .line 2344
    :goto_7c
    if-eqz p1, :cond_83

    .line 2345
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/wm/TaskRecord;)V

    .line 2348
    :cond_83
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2349
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 2348
    invoke-virtual {p1, v0}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/TaskRecord;)Z

    move-result p1

    if-eqz p1, :cond_b0

    .line 2350
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    const/16 p1, 0x65

    return p1

    .line 2354
    :cond_b0
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz p1, :cond_bb

    .line 2355
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const-string v0, "reuseOrNewTask"

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2357
    :cond_bb
    return v1
.end method

.method private setTaskFromSourceRecord()I
    .registers 11

    .line 2372
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2373
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    .line 2372
    invoke-virtual {v0, v1}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    const/16 v0, 0x65

    return v0

    .line 2378
    :cond_2d
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 2379
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2380
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    if-eqz v2, :cond_50

    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskRecord;->containsAppUid(I)Z

    move-result v2

    if-nez v2, :cond_50

    .line 2381
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-direct {p0, v2}, Lcom/android/server/wm/ActivityStarter;->handleBackgroundActivityAbort(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 2382
    const/16 v0, 0x66

    return v0

    .line 2389
    :cond_50
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v2, :cond_57

    iget v2, v2, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    goto :goto_59

    .line 2390
    :cond_57
    iget v2, v1, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    .line 2391
    :goto_59
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v3, v0, :cond_6c

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2392
    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v3

    if-nez v3, :cond_6a

    goto :goto_6c

    :cond_6a
    move v3, v8

    goto :goto_6d

    :cond_6c
    :goto_6c
    move v3, v9

    .line 2393
    :goto_6d
    if-eqz v3, :cond_a6

    .line 2394
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2395
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2394
    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/server/wm/ActivityStarter;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2398
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    if-nez v3, :cond_97

    iget v3, v1, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    if-eq v2, v3, :cond_97

    .line 2400
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v3, v1, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/wm/RootActivityContainer;->getValidLaunchStackOnDisplay(ILcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2403
    :cond_97
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    if-nez v2, :cond_a6

    .line 2406
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/RootActivityContainer;->getNextValidLaunchStack(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2411
    :cond_a6
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    if-nez v2, :cond_ad

    .line 2412
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    goto :goto_b9

    .line 2413
    :cond_ad
    if-eq v2, v1, :cond_b9

    .line 2414
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "launchToSide"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2418
    :cond_b9
    :goto_b9
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    .line 2419
    if-eq v1, v0, :cond_d6

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v1, :cond_d6

    .line 2420
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v6, "sourceTaskToFront"

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/wm/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    goto :goto_e1

    .line 2422
    :cond_d6
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v1, :cond_e1

    .line 2423
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const-string v2, "sourceStackToFront"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2426
    :cond_e1
    :goto_e1
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/16 v4, 0x7533

    if-nez v1, :cond_119

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v5, 0x4000000

    and-int/2addr v5, v1

    if-eqz v5, :cond_119

    .line 2429
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v5, v1}, Lcom/android/server/wm/TaskRecord;->performClearTaskLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2430
    iput-boolean v9, p0, Lcom/android/server/wm/ActivityStarter;->mKeepCurTransition:Z

    .line 2431
    if-eqz v1, :cond_14e

    .line 2432
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v5

    invoke-static {v4, v0, v5}, Lcom/android/server/wm/ActivityStack;->logStartActivity(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;)V

    .line 2433
    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2435
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iput-object v3, v0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2436
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_113

    .line 2437
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 2439
    :cond_113
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2440
    return v2

    .line 2442
    :cond_119
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-nez v1, :cond_14e

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v5, 0x20000

    and-int/2addr v1, v5

    if-eqz v1, :cond_14e

    .line 2446
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskRecord;->findActivityInHistoryLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2447
    if-eqz v1, :cond_14f

    .line 2448
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 2449
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskRecord;->moveActivityToFrontLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 2450
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 2451
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v4, v5, v0}, Lcom/android/server/wm/ActivityStack;->logStartActivity(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;)V

    .line 2452
    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2453
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iput-object v3, v0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2454
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_14d

    .line 2455
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 2457
    :cond_14d
    return v2

    .line 2442
    :cond_14e
    nop

    .line 2463
    :cond_14f
    const-string v1, "setTaskFromSourceRecord"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;)V

    .line 2467
    return v8
.end method

.method private setTaskToCurrentTopOrCreateNewTask()I
    .registers 15

    .line 2547
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/server/wm/ActivityStarter;->computeStackFocus(Lcom/android/server/wm/ActivityRecord;ZILandroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2548
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_18

    .line 2549
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const-string v1, "addingToTopTask"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2551
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2552
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    const/16 v2, 0x66

    if-eqz v1, :cond_2f

    if-nez v0, :cond_2f

    .line 2553
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityStarter;->handleBackgroundActivityAbort(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2554
    return v2

    .line 2557
    :cond_2f
    if-eqz v0, :cond_36

    .line 2558
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    goto :goto_55

    :cond_36
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v5, v5, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 2559
    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v5

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v12, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v13, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2558
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/wm/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    .line 2561
    :goto_55
    iget-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    if-eqz v4, :cond_6c

    if-eqz v0, :cond_6c

    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    invoke-virtual {v1, v0}, Lcom/android/server/wm/TaskRecord;->containsAppUid(I)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 2562
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityStarter;->handleBackgroundActivityAbort(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 2563
    return v2

    .line 2566
    :cond_6c
    const-string v0, "setTaskToCurrentTopOrCreateNewTask"

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;)V

    .line 2567
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStack;->positionChildWindowContainerAtTop(Lcom/android/server/wm/TaskRecord;)V

    .line 2570
    return v3
.end method

.method private startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/wm/SafeActivityOptions;ZZ[Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I
    .registers 54

    .line 578
    move-object/from16 v15, p0

    invoke-static/range {p23 .. p23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 581
    move-object/from16 v0, p23

    iput-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 582
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v15, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    .line 583
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/wm/ActivityRecord;

    move-object/from16 v21, v0

    const/4 v1, 0x0

    const/16 v26, 0x0

    aput-object v1, v0, v26

    .line 585
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v22, p22

    move/from16 v23, p24

    move-object/from16 v24, p25

    move/from16 v25, p26

    invoke-direct/range {v0 .. v25}, Lcom/android/server/wm/ActivityStarter;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/wm/SafeActivityOptions;ZZ[Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;ZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    .line 592
    if-eqz p21, :cond_5d

    .line 594
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/wm/ActivityRecord;

    aget-object v0, v0, v26

    aput-object v0, p21, v26

    .line 597
    :cond_5d
    iget v0, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    invoke-static {v0}, Lcom/android/server/wm/ActivityStarter;->getExternalResult(I)I

    move-result v0

    return v0

    .line 579
    :cond_64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need to specify a reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/wm/SafeActivityOptions;ZZ[Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;ZLcom/android/server/am/PendingIntentRecord;Z)I
    .registers 73

    .line 622
    move-object/from16 v12, p0

    move-object/from16 v0, p1

    move-object/from16 v11, p2

    move-object/from16 v10, p4

    move-object/from16 v9, p5

    move-object/from16 v1, p9

    move/from16 v8, p16

    move/from16 v7, p17

    move-object/from16 v6, p18

    iget-object v2, v12, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;)V

    .line 623
    nop

    .line 626
    if-eqz v6, :cond_25

    invoke-virtual/range {p18 .. p18}, Lcom/android/server/wm/SafeActivityOptions;->popAppVerificationBundle()Landroid/os/Bundle;

    move-result-object v2

    move-object/from16 v26, v2

    goto :goto_27

    :cond_25
    const/16 v26, 0x0

    .line 628
    :goto_27
    nop

    .line 629
    const-string v2, "ActivityTaskManager"

    if-eqz v0, :cond_74

    .line 630
    iget-object v3, v12, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    .line 631
    if-eqz v3, :cond_42

    .line 632
    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v0

    .line 633
    iget-object v13, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v27, v0

    move-object v15, v3

    move v3, v13

    const/4 v13, 0x0

    goto :goto_7c

    .line 635
    :cond_42
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to find app for caller "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (pid="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p12

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ") when starting: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 635
    invoke-static {v2, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/16 v13, -0x5e

    move/from16 v27, v0

    move-object v15, v3

    move/from16 v3, p13

    goto :goto_7c

    .line 629
    :cond_74
    move/from16 v0, p12

    move/from16 v3, p13

    move/from16 v27, v0

    const/4 v13, 0x0

    const/4 v15, 0x0

    .line 642
    :goto_7c
    if-eqz v9, :cond_8c

    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_8c

    .line 643
    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    move v14, v0

    goto :goto_8d

    :cond_8c
    const/4 v14, 0x0

    .line 645
    :goto_8d
    const/4 v5, 0x1

    if-nez v13, :cond_ba

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "START u"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " {"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v11, v5, v5, v5, v4}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "} from uid "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bb

    .line 645
    :cond_ba
    const/4 v4, 0x0

    .line 650
    :goto_bb
    nop

    .line 651
    nop

    .line 652
    if-eqz v1, :cond_d2

    .line 653
    iget-object v0, v12, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootActivityContainer;->isInAnyStack(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 656
    if-eqz v0, :cond_cf

    .line 657
    if-ltz p11, :cond_cf

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v1, :cond_cf

    .line 658
    move-object v6, v0

    goto :goto_d4

    .line 663
    :cond_cf
    move-object v6, v0

    const/4 v0, 0x0

    goto :goto_d4

    .line 652
    :cond_d2
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 663
    :goto_d4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v1

    .line 665
    const/high16 v16, 0x2000000

    and-int v16, v1, v16

    if-eqz v16, :cond_115

    if-eqz v6, :cond_115

    .line 668
    if-ltz p11, :cond_e8

    .line 669
    invoke-static/range {p18 .. p18}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 670
    const/16 v0, -0x5d

    return v0

    .line 672
    :cond_e8
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 673
    if-eqz v0, :cond_f3

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked()Z

    move-result v16

    if-nez v16, :cond_f3

    .line 674
    const/4 v0, 0x0

    .line 676
    :cond_f3
    iget-object v4, v6, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 677
    iget v5, v6, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 678
    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 679
    if-eqz v0, :cond_ff

    .line 680
    invoke-virtual {v0, v6, v4, v5}, Lcom/android/server/wm/ActivityRecord;->removeResultsLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V

    .line 682
    :cond_ff
    iget v7, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    if-ne v7, v3, :cond_10c

    .line 693
    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v40, v4

    move/from16 v41, v5

    goto :goto_11d

    .line 682
    :cond_10c
    move-object/from16 v7, p14

    move-object/from16 v42, v0

    move-object/from16 v40, v4

    move/from16 v41, v5

    goto :goto_11d

    .line 697
    :cond_115
    move-object/from16 v40, p10

    move/from16 v41, p11

    move-object/from16 v7, p14

    move-object/from16 v42, v0

    :goto_11d
    if-nez v13, :cond_127

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_127

    .line 700
    const/16 v13, -0x5b

    .line 703
    :cond_127
    if-nez v13, :cond_12d

    if-nez v9, :cond_12d

    .line 706
    const/16 v13, -0x5c

    .line 709
    :cond_12d
    const-string v4, "Failure checking voice capabilities"

    const/16 v5, -0x61

    if-nez v13, :cond_17e

    if-eqz v6, :cond_17e

    .line 710
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_17e

    .line 715
    const/high16 v0, 0x10000000

    and-int/2addr v0, v1

    if-nez v0, :cond_17e

    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v1, :cond_17e

    .line 718
    :try_start_14e
    const-string v0, "android.intent.category.VOICE"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    iget-object v0, v12, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 720
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 719
    invoke-interface {v0, v1, v11, v10}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_178

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity being started in current voice task does not support voice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_177
    .catch Landroid/os/RemoteException; {:try_start_14e .. :try_end_177} :catch_179

    .line 724
    move v13, v5

    .line 729
    :cond_178
    goto :goto_17e

    .line 726
    :catch_179
    move-exception v0

    .line 727
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 728
    move v13, v5

    .line 733
    :cond_17e
    :goto_17e
    if-nez v13, :cond_1ae

    if-eqz p7, :cond_1ae

    .line 737
    :try_start_182
    iget-object v0, v12, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, v1, v11, v10}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a7

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity being started in new voice task does not support: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a6
    .catch Landroid/os/RemoteException; {:try_start_182 .. :try_end_1a6} :catch_1a9

    .line 742
    goto :goto_1a8

    .line 737
    :cond_1a7
    move v5, v13

    .line 747
    :goto_1a8
    goto :goto_1af

    .line 744
    :catch_1a9
    move-exception v0

    .line 745
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 746
    goto :goto_1af

    .line 750
    :cond_1ae
    move v5, v13

    :goto_1af
    if-nez v42, :cond_1b4

    .line 751
    const/16 v30, 0x0

    goto :goto_1ba

    :cond_1b4
    invoke-virtual/range {v42 .. v42}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    move-object/from16 v30, v0

    .line 753
    :goto_1ba
    if-eqz v5, :cond_1d6

    .line 754
    if-eqz v42, :cond_1d2

    .line 755
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 p2, v30

    move/from16 p3, v0

    move-object/from16 p4, v42

    move-object/from16 p5, v40

    move/from16 p6, v41

    move/from16 p7, v1

    move-object/from16 p8, v2

    invoke-virtual/range {p2 .. p8}, Lcom/android/server/wm/ActivityStack;->sendActivityResultLocked(ILcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 758
    :cond_1d2
    invoke-static/range {p18 .. p18}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 759
    return v5

    .line 762
    :cond_1d6
    iget-object v13, v12, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    if-eqz p22, :cond_1dd

    const/16 v22, 0x1

    goto :goto_1df

    :cond_1dd
    const/16 v22, 0x0

    :goto_1df
    move v5, v14

    move-object/from16 v14, p2

    move-object v4, v15

    move-object/from16 v15, p5

    move-object/from16 v16, v40

    move/from16 v17, v41

    move/from16 v18, v27

    move/from16 v19, v3

    move-object/from16 v20, v7

    move/from16 v21, p19

    move-object/from16 v23, v4

    move-object/from16 v24, v42

    move-object/from16 v25, v30

    invoke-virtual/range {v13 .. v25}, Lcom/android/server/wm/ActivityStackSupervisor;->checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;ZZLcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack;)Z

    move-result v0

    const/4 v1, 0x1

    .line 765
    xor-int/2addr v0, v1

    iget-object v1, v12, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 p9, v1

    move-object/from16 p10, p2

    move/from16 p11, v3

    move/from16 p12, v27

    move-object/from16 p13, p4

    move-object/from16 p14, v2

    invoke-virtual/range {p9 .. p14}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    const/4 v13, 0x1

    xor-int/2addr v1, v13

    or-int/2addr v0, v1

    .line 767
    iget-object v1, v12, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getPermissionPolicyInternal()Lcom/android/server/policy/PermissionPolicyInternal;

    move-result-object v1

    invoke-virtual {v1, v11, v3, v7}, Lcom/android/server/policy/PermissionPolicyInternal;->checkStartActivity(Landroid/content/Intent;ILjava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v13

    or-int v14, v0, v1

    .line 770
    nop

    .line 771
    if-nez v14, :cond_25f

    .line 773
    const-wide/16 v1, 0x40

    :try_start_228
    const-string v0, "shouldAbortBackgroundActivityStart"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_22d
    .catchall {:try_start_228 .. :try_end_22d} :catchall_259

    .line 775
    move-wide v15, v1

    move-object/from16 v1, p0

    move v2, v3

    move/from16 v17, v3

    move/from16 v3, v27

    move-object/from16 p19, v4

    const/4 v13, 0x0

    move-object v4, v7

    move/from16 v18, v5

    const/4 v13, 0x1

    move/from16 v5, p16

    move-object/from16 v13, p18

    move-object/from16 v20, v6

    move/from16 v6, p15

    move-object/from16 v46, v7

    move-object/from16 v7, p19

    move-object/from16 v8, p24

    move/from16 v9, p25

    move-object/from16 v10, p2

    :try_start_24e
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/wm/ActivityStarter;->shouldAbortBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLandroid/content/Intent;)Z

    move-result v0
    :try_end_252
    .catchall {:try_start_24e .. :try_end_252} :catchall_257

    .line 779
    invoke-static/range {v15 .. v16}, Landroid/os/Trace;->traceEnd(J)V

    .line 780
    move v15, v0

    goto :goto_26c

    .line 779
    :catchall_257
    move-exception v0

    goto :goto_25b

    :catchall_259
    move-exception v0

    move-wide v15, v1

    :goto_25b
    invoke-static/range {v15 .. v16}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 771
    :cond_25f
    move-object/from16 v13, p18

    move/from16 v17, v3

    move-object/from16 p19, v4

    move/from16 v18, v5

    move-object/from16 v20, v6

    move-object/from16 v46, v7

    const/4 v15, 0x0

    .line 784
    :goto_26c
    if-eqz v13, :cond_279

    .line 785
    iget-object v0, v12, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    move-object/from16 v9, p5

    move-object/from16 v10, p19

    invoke-virtual {v13, v11, v9, v10, v0}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v5

    goto :goto_27e

    :cond_279
    move-object/from16 v9, p5

    move-object/from16 v10, p19

    const/4 v5, 0x0

    .line 786
    :goto_27e
    if-eqz p23, :cond_293

    .line 787
    iget-object v0, v12, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    .line 788
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStartController;->getPendingRemoteAnimationRegistry()Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    move-result-object v0

    .line 789
    move-object/from16 v13, v46

    invoke-virtual {v0, v13, v5}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->overrideOptionsIfNeeded(Ljava/lang/String;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_297

    .line 786
    :cond_293
    move-object/from16 v13, v46

    move-object/from16 v16, v5

    .line 791
    :goto_297
    iget-object v0, v12, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_2b9

    .line 795
    :try_start_29d
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v0

    .line 796
    iget-object v1, v12, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object v2, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0
    :try_end_2ad
    .catch Landroid/os/RemoteException; {:try_start_29d .. :try_end_2ad} :catch_2b2

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    or-int/2addr v14, v0

    .line 800
    const/4 v8, 0x0

    goto :goto_2ba

    .line 798
    :catch_2b2
    move-exception v0

    .line 799
    iget-object v0, v12, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    goto :goto_2ba

    .line 791
    :cond_2b9
    const/4 v8, 0x0

    .line 803
    :goto_2ba
    iget-object v0, v12, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    move-object/from16 p9, v0

    move/from16 p10, v18

    move/from16 p11, p15

    move/from16 p12, p16

    move/from16 p13, p17

    move-object/from16 p14, v13

    invoke-virtual/range {p9 .. p14}, Lcom/android/server/wm/ActivityStartInterceptor;->setStates(IIIILjava/lang/String;)V

    .line 804
    iget-object v0, v12, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move-object/from16 v3, p5

    move-object/from16 v4, p4

    move-object/from16 v5, p22

    move/from16 v6, v27

    move/from16 v7, v17

    move-object v9, v8

    move-object/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/ActivityStartInterceptor;->intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/wm/TaskRecord;IILandroid/app/ActivityOptions;)Z

    move-result v0

    if-eqz v0, :cond_30d

    .line 808
    iget-object v0, v12, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 809
    iget-object v1, v12, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 810
    iget-object v2, v12, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 811
    iget-object v3, v12, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 812
    iget-object v4, v12, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/TaskRecord;

    .line 813
    iget-object v5, v12, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget v5, v5, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 814
    iget-object v6, v12, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget v6, v6, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 815
    iget-object v7, v12, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v7, v7, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    move-object v11, v0

    move-object v0, v4

    move/from16 v27, v5

    move/from16 v31, v6

    move-object/from16 v16, v7

    goto :goto_317

    .line 804
    :cond_30d
    move-object/from16 v3, p4

    move-object/from16 v2, p5

    move-object/from16 v1, p6

    move-object/from16 v0, p22

    move/from16 v31, v17

    .line 818
    :goto_317
    if-eqz v14, :cond_335

    .line 819
    if-eqz v42, :cond_32f

    .line 820
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 p2, v30

    move/from16 p3, v0

    move-object/from16 p4, v42

    move-object/from16 p5, v40

    move/from16 p6, v41

    move/from16 p7, v1

    move-object/from16 p8, v2

    invoke-virtual/range {p2 .. p8}, Lcom/android/server/wm/ActivityStack;->sendActivityResultLocked(ILcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 825
    :cond_32f
    invoke-static/range {v16 .. v16}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 826
    const/16 v0, 0x66

    return v0

    .line 832
    :cond_335
    if-eqz v2, :cond_3d9

    .line 833
    iget-object v4, v12, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move/from16 v7, v18

    invoke-virtual {v4, v5, v7}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3d3

    .line 835
    iget-object v1, v12, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/16 v29, 0x2

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/4 v4, 0x1

    new-array v5, v4, [Landroid/content/Intent;

    const/4 v6, 0x0

    aput-object v11, v5, v6

    new-array v8, v4, [Ljava/lang/String;

    aput-object v3, v8, v6

    const/high16 v38, 0x50000000

    const/16 v39, 0x0

    move-object/from16 v28, v1

    move-object/from16 v30, v13

    move/from16 v32, v7

    move-object/from16 v36, v5

    move-object/from16 v37, v8

    invoke-virtual/range {v28 .. v39}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 841
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.REVIEW_PERMISSIONS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 843
    invoke-virtual {v11}, Landroid/content/Intent;->getFlags()I

    move-result v4

    .line 844
    const/high16 v5, 0x800000

    or-int/2addr v4, v5

    .line 855
    const/high16 v5, 0x10080000

    and-int/2addr v5, v4

    if-eqz v5, :cond_383

    .line 856
    const/high16 v5, 0x8000000

    or-int/2addr v4, v5

    .line 858
    :cond_383
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 860
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 861
    new-instance v2, Landroid/content/IntentSender;

    invoke-direct {v2, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 862
    if-eqz v42, :cond_3a0

    .line 863
    const-string v1, "android.intent.extra.RESULT_NEEDED"

    const/4 v8, 0x1

    invoke-virtual {v3, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3a1

    .line 862
    :cond_3a0
    const/4 v8, 0x1

    .line 865
    :goto_3a1
    nop

    .line 867
    const/4 v1, 0x0

    .line 868
    nop

    .line 869
    nop

    .line 871
    iget-object v2, v12, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v4, 0x0

    iget-object v5, v12, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 872
    move/from16 v14, p16

    invoke-static {v14, v14, v5}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v5

    .line 871
    move-object/from16 p9, v2

    move-object/from16 p10, v3

    move-object/from16 p11, v1

    move/from16 p12, v7

    move/from16 p13, v4

    move/from16 p14, v5

    invoke-virtual/range {p9 .. p14}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 874
    iget-object v4, v12, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    move/from16 v6, p17

    invoke-virtual {v4, v3, v2, v6, v9}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    move/from16 v27, p15

    move-object/from16 v17, v1

    move-object v11, v2

    move-object v2, v4

    move/from16 v31, v14

    goto :goto_3e4

    .line 833
    :cond_3d3
    move/from16 v14, p16

    move/from16 v6, p17

    const/4 v8, 0x1

    goto :goto_3e0

    .line 832
    :cond_3d9
    move/from16 v14, p16

    move/from16 v6, p17

    move/from16 v7, v18

    const/4 v8, 0x1

    .line 891
    :goto_3e0
    move-object/from16 v17, v3

    move-object v3, v11

    move-object v11, v1

    :goto_3e4
    if-eqz v11, :cond_40d

    iget-object v1, v11, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    if-eqz v1, :cond_40d

    .line 892
    iget-object v2, v11, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move-object v4, v13

    move-object/from16 v5, v26

    move v8, v6

    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/ActivityStarter;->createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 894
    nop

    .line 895
    nop

    .line 896
    nop

    .line 898
    iget-object v2, v12, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2, v1, v11, v8, v9}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    move/from16 v27, p15

    move-object/from16 v34, v1

    move-object/from16 v36, v2

    move-object/from16 v35, v9

    move v1, v14

    goto :goto_416

    .line 891
    :cond_40d
    move v8, v6

    .line 901
    move-object/from16 v36, v2

    move-object/from16 v34, v3

    move-object/from16 v35, v17

    move/from16 v1, v31

    :goto_416
    new-instance v2, Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v12, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 902
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v37

    if-eqz p7, :cond_422

    const/4 v4, 0x1

    goto :goto_423

    :cond_422
    const/4 v4, 0x0

    :goto_423
    iget-object v5, v12, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    move-object/from16 v43, v5

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move-object/from16 v30, v10

    move/from16 v31, v27

    move/from16 v32, v1

    move-object/from16 v33, v13

    move-object/from16 v38, v42

    move-object/from16 v39, v40

    move/from16 v40, v41

    move/from16 v41, p20

    move/from16 v42, v4

    move-object/from16 v44, v16

    move-object/from16 v45, v20

    invoke-direct/range {v28 .. v45}, Lcom/android/server/wm/ActivityRecord;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/wm/ActivityStackSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V

    .line 905
    if-eqz p21, :cond_449

    .line 906
    const/4 v3, 0x0

    aput-object v2, p21, v3

    .line 909
    :cond_449
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-nez v3, :cond_456

    move-object/from16 v3, v20

    if-eqz v3, :cond_458

    .line 912
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    iput-object v4, v2, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    goto :goto_458

    .line 909
    :cond_456
    move-object/from16 v3, v20

    .line 915
    :cond_458
    :goto_458
    iget-object v4, v12, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 919
    if-nez p7, :cond_4ac

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_472

    .line 920
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v5, v14, :cond_4ac

    .line 921
    :cond_472
    iget-object v5, v12, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v6, "Activity start"

    move-object/from16 p1, v5

    move/from16 p2, v27

    move/from16 p3, v1

    move/from16 p4, p15

    move/from16 p5, p16

    move-object/from16 p6, v6

    invoke-virtual/range {p1 .. p6}, Lcom/android/server/wm/ActivityTaskManagerService;->checkAppSwitchAllowedLocked(IIIILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4ac

    .line 923
    if-eqz v15, :cond_490

    invoke-direct {v12, v2}, Lcom/android/server/wm/ActivityStarter;->handleBackgroundActivityAbort(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_4a6

    .line 924
    :cond_490
    iget-object v0, v12, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    new-instance v1, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;

    move-object/from16 p0, v1

    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move/from16 p3, p17

    move-object/from16 p4, v4

    move-object/from16 p5, v10

    invoke-direct/range {p0 .. p5}, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityStack;Lcom/android/server/wm/WindowProcessController;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStartController;->addPendingActivityLaunch(Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;)V

    .line 927
    :cond_4a6
    invoke-static/range {v16 .. v16}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 928
    const/16 v0, 0x64

    return v0

    .line 932
    :cond_4ac
    iget-object v1, v12, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->onStartActivitySetDidAppSwitch()V

    .line 933
    iget-object v1, v12, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityStartController;->doPendingActivityLaunches(Z)V

    .line 935
    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p17

    move-object/from16 v8, v16

    move-object v9, v0

    move-object/from16 v10, p21

    move v11, v15

    invoke-direct/range {v1 .. v11}, Lcom/android/server/wm/ActivityStarter;->startActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;[Lcom/android/server/wm/ActivityRecord;Z)I

    move-result v0

    .line 937
    iget-object v1, v12, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p21, v2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/wm/ActivityRecord;)V

    .line 938
    return v0
.end method

.method private startActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;[Lcom/android/server/wm/ActivityRecord;Z)I
    .registers 14

    .line 1400
    nop

    .line 1403
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_3
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 1404
    invoke-direct/range {p0 .. p10}, Lcom/android/server/wm/ActivityStarter;->startActivityUnchecked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;[Lcom/android/server/wm/ActivityRecord;Z)I

    move-result p2
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_6b

    .line 1407
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p3

    .line 1408
    if-eqz p3, :cond_15

    goto :goto_17

    :cond_15
    iget-object p3, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 1410
    :goto_17
    invoke-static {p2}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result p4

    if-eqz p4, :cond_36

    .line 1411
    if-eqz p3, :cond_5f

    .line 1415
    nop

    .line 1416
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object p4

    .line 1417
    if-eqz p4, :cond_35

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->shouldUpdateConfigForDisplayChanged()Z

    move-result p5

    if-eqz p5, :cond_35

    .line 1418
    iget-object p5, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 1419
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result p6

    .line 1418
    invoke-virtual {p5, p4, p6, v1, v0}, Lcom/android/server/wm/RootActivityContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    .line 1422
    :cond_35
    goto :goto_5f

    .line 1427
    :cond_36
    iget-object p4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p5

    .line 1428
    if-eqz p5, :cond_48

    .line 1429
    iget-object p6, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 p7, 0x0

    const/4 p8, 0x0

    const/4 p10, 0x1

    const-string p9, "startActivity"

    invoke-virtual/range {p5 .. p10}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1434
    :cond_48
    if-eqz p3, :cond_5f

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result p4

    if-eqz p4, :cond_5f

    .line 1435
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityStack;->numActivities()I

    move-result p4

    if-nez p4, :cond_5f

    .line 1436
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result p4

    if-nez p4, :cond_5f

    .line 1437
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityStack;->remove()V

    .line 1440
    :cond_5f
    :goto_5f
    iget-object p4, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p4, p4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1441
    nop

    .line 1443
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityStarter;->postStartActivityProcessing(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityStack;)V

    .line 1445
    return p2

    .line 1407
    :catchall_6b
    move-exception p2

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    .line 1408
    if-eqz p1, :cond_73

    goto :goto_75

    :cond_73
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 1410
    :goto_75
    const/16 p3, -0x60

    invoke-static {p3}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result p3

    if-eqz p3, :cond_96

    .line 1411
    if-eqz p1, :cond_bf

    .line 1415
    nop

    .line 1416
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 1417
    if-eqz p1, :cond_95

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->shouldUpdateConfigForDisplayChanged()Z

    move-result p3

    if-eqz p3, :cond_95

    .line 1418
    iget-object p3, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 1419
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result p4

    .line 1418
    invoke-virtual {p3, p1, p4, v1, v0}, Lcom/android/server/wm/RootActivityContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    .line 1422
    :cond_95
    goto :goto_bf

    .line 1427
    :cond_96
    iget-object p3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p4

    .line 1428
    if-eqz p4, :cond_a8

    .line 1429
    iget-object p5, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 p6, 0x0

    const/4 p7, 0x0

    const/4 p9, 0x1

    const-string p8, "startActivity"

    invoke-virtual/range {p4 .. p9}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1434
    :cond_a8
    if-eqz p1, :cond_bf

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result p3

    if-eqz p3, :cond_bf

    .line 1435
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->numActivities()I

    move-result p3

    if-nez p3, :cond_bf

    .line 1436
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result p3

    if-nez p3, :cond_bf

    .line 1437
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->remove()V

    .line 1440
    :cond_bf
    :goto_bf
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1441
    throw p2
.end method

.method private startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/WaitResult;Landroid/content/res/Configuration;Lcom/android/server/wm/SafeActivityOptions;ZILcom/android/server/wm/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I
    .registers 60

    .line 1154
    move-object/from16 v15, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p6

    move-object/from16 v14, p15

    move-object/from16 v13, p16

    move/from16 v12, p19

    if-eqz v1, :cond_1d

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_1d

    .line 1155
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File descriptors passed in Intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1157
    :cond_1d
    :goto_1d
    iget-object v2, v15, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;)V

    .line 1158
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2e

    const/4 v2, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v2, 0x0

    .line 1160
    :goto_2f
    if-eqz p4, :cond_34

    .line 1161
    move/from16 v16, p4

    goto :goto_3a

    .line 1162
    :cond_34
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    move/from16 v16, v3

    .line 1163
    :goto_3a
    const/4 v3, -0x1

    move/from16 v4, p5

    if-eq v4, v3, :cond_41

    .line 1164
    move v9, v4

    goto :goto_46

    .line 1165
    :cond_41
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move v9, v4

    .line 1168
    :goto_46
    if-ltz p2, :cond_4c

    .line 1169
    move/from16 v7, p2

    move v8, v3

    goto :goto_55

    .line 1170
    :cond_4c
    if-nez v0, :cond_53

    .line 1171
    nop

    .line 1172
    move v7, v9

    move/from16 v8, v16

    goto :goto_55

    .line 1174
    :cond_53
    move v7, v3

    move v8, v7

    .line 1178
    :goto_55
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1180
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1181
    const/4 v4, 0x0

    if-eqz v2, :cond_a2

    .line 1182
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_a2

    .line 1183
    :cond_74
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.action.INSTALL_INSTANT_APP_PACKAGE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a2

    .line 1184
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a2

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1185
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    .line 1186
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManagerInternal;->isInstantAppInstallerComponent(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 1190
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1191
    const/16 v17, 0x0

    goto :goto_a4

    .line 1194
    :cond_a2
    move/from16 v17, v2

    :goto_a4
    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/16 v18, 0x0

    iget-object v2, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 1196
    invoke-static {v7, v9, v2}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v19

    .line 1194
    move-object v2, v5

    move-object/from16 v3, p7

    move/from16 v4, p19

    move-object/from16 p2, v5

    move/from16 v5, v18

    move-object/from16 v18, v6

    move/from16 v6, v19

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1198
    if-nez v1, :cond_117

    .line 1199
    iget-object v2, v15, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2, v12}, Lcom/android/server/wm/ActivityStackSupervisor;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1200
    if-eqz v2, :cond_117

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_117

    .line 1204
    iget-object v2, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    .line 1205
    nop

    .line 1206
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1208
    :try_start_de
    invoke-virtual {v2, v12}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 1209
    if-eqz v5, :cond_f4

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    .line 1210
    invoke-virtual {v2, v5}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v5

    if-eqz v5, :cond_f4

    .line 1211
    invoke-virtual {v2, v12}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v2
    :try_end_f0
    .catchall {:try_start_de .. :try_end_f0} :catchall_112

    if-nez v2, :cond_f4

    const/4 v2, 0x1

    goto :goto_f5

    :cond_f4
    const/4 v2, 0x0

    .line 1213
    :goto_f5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1214
    nop

    .line 1215
    if-eqz v2, :cond_117

    .line 1216
    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/high16 v5, 0xc0000

    iget-object v2, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 1219
    invoke-static {v7, v9, v2}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v6

    .line 1216
    move-object/from16 v2, p2

    move-object/from16 v3, p7

    move/from16 v4, p19

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    goto :goto_117

    .line 1213
    :catchall_112
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1225
    :cond_117
    :goto_117
    iget-object v2, v15, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    move-object/from16 v5, p2

    move/from16 v6, p13

    move-object/from16 v3, p14

    invoke-virtual {v2, v5, v1, v6, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 1227
    iget-object v2, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_128
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1228
    iget-object v2, v15, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1229
    if-eqz v13, :cond_141

    iget-object v10, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1230
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v10

    if-eqz v10, :cond_141

    const/4 v10, 0x1

    goto :goto_142

    :cond_141
    const/4 v10, 0x0

    :goto_142
    iput-boolean v10, v2, Lcom/android/server/wm/ActivityStack;->mConfigWillChange:Z

    .line 1234
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .line 1236
    const/4 v10, 0x2

    if-eqz v4, :cond_2a3

    iget-object v11, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/2addr v11, v10

    if-eqz v11, :cond_2a3

    iget-object v11, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v11, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mHasHeavyWeightFeature:Z

    if-eqz v11, :cond_2a3

    .line 1242
    iget-object v11, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_297

    .line 1243
    iget-object v10, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v11, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 1244
    if-eqz v11, :cond_28b

    iget-object v10, v11, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v21, v1

    iget-object v1, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v10, v1, :cond_18c

    iget-object v1, v11, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 1245
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_181

    goto :goto_18c

    :cond_181
    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object v1, v4

    move-object/from16 v20, v5

    move v13, v9

    const/4 v14, 0x1

    goto/16 :goto_2ae

    .line 1246
    :cond_18c
    :goto_18c
    nop

    .line 1247
    if-eqz v0, :cond_1d1

    .line 1248
    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1249
    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    .line 1250
    if-eqz v1, :cond_19d

    .line 1251
    iget-object v0, v1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move v7, v0

    goto :goto_1d1

    .line 1253
    :cond_19d
    const-string v1, "ActivityTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find app for caller "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " (pid="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") when starting: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1253
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    invoke-static/range {p17 .. p17}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1257
    const/16 v0, -0x5e

    monitor-exit v3
    :try_end_1cd
    .catchall {:try_start_128 .. :try_end_1cd} :catchall_3a1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 1261
    :cond_1d1
    :goto_1d1
    :try_start_1d1
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v1, 0x2

    const-string v8, "android"

    const/16 v17, 0x0

    const/16 v21, 0x0

    const/4 v6, 0x1

    new-array v10, v6, [Landroid/content/Intent;

    const/16 v19, 0x0

    aput-object v5, v10, v19

    move-object/from16 v20, v5

    new-array v5, v6, [Ljava/lang/String;

    aput-object p7, v5, v19
    :try_end_1e7
    .catchall {:try_start_1d1 .. :try_end_1e7} :catchall_3a1

    const/high16 v22, 0x50000000

    const/16 v23, 0x0

    move-object/from16 v30, v2

    move-object v2, v8

    move-object/from16 v31, v3

    move v3, v7

    move-object v8, v4

    move/from16 v4, p19

    move-object/from16 v24, v5

    const/4 v5, 0x0

    move/from16 v25, v6

    move-object/from16 v6, v17

    move/from16 v7, v21

    move-object/from16 v32, v8

    move-object v8, v10

    move v10, v9

    move-object/from16 v9, v24

    move/from16 v33, v10

    move/from16 v10, v22

    move-object v13, v11

    move/from16 v14, v25

    move-object/from16 v11, v23

    :try_start_20c
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 1267
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1268
    if-ltz p12, :cond_21c

    .line 1270
    const-string v1, "has_result"

    invoke-virtual {v6, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1272
    :cond_21c
    const-string v1, "intent"

    new-instance v2, Landroid/content/IntentSender;

    invoke-direct {v2, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1274
    invoke-virtual {v13, v6}, Lcom/android/server/wm/WindowProcessController;->updateIntentForHeavyWeightActivity(Landroid/content/Intent;)V

    .line 1275
    const-string v0, "new_app"

    move-object/from16 v1, v32

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1277
    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1278
    const-string v0, "android"

    const-class v1, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    .line 1279
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1278
    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1280
    nop

    .line 1281
    nop

    .line 1282
    nop

    .line 1283
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1284
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 1285
    nop

    .line 1286
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 1287
    move/from16 v13, v33

    invoke-static {v7, v13, v1}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v5

    .line 1286
    move-object v1, v6

    move/from16 v3, p19

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 1289
    if-eqz v0, :cond_26a

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_26b

    :cond_26a
    const/4 v4, 0x0

    .line 1290
    :goto_26b
    if-eqz v4, :cond_280

    .line 1291
    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1, v4, v12}, Landroid/app/ActivityManagerInternal;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    move-object v3, v6

    move/from16 v17, v7

    move/from16 v21, v14

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v7, v0

    move-object v6, v1

    move v0, v8

    goto :goto_2bd

    .line 1290
    :cond_280
    move-object v3, v6

    move/from16 v17, v7

    move/from16 v21, v14

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v7, v0

    move-object v6, v4

    move v0, v8

    goto :goto_2bd

    .line 1244
    :cond_28b
    move-object/from16 v21, v1

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object v1, v4

    move-object/from16 v20, v5

    move v13, v9

    const/4 v14, 0x1

    goto :goto_2ae

    .line 1242
    :cond_297
    move-object/from16 v21, v1

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object v1, v4

    move-object/from16 v20, v5

    move v13, v9

    const/4 v14, 0x1

    goto :goto_2ae

    .line 1236
    :cond_2a3
    move-object/from16 v21, v1

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    move-object v1, v4

    move-object/from16 v20, v5

    move v13, v9

    const/4 v14, 0x1

    .line 1297
    :goto_2ae
    move-object/from16 v5, p7

    move-object v2, v0

    move-object v6, v1

    move v0, v8

    move-object/from16 v3, v20

    move/from16 v34, v17

    move/from16 v17, v7

    move-object/from16 v7, v21

    move/from16 v21, v34

    :goto_2bd
    new-array v12, v14, [Lcom/android/server/wm/ActivityRecord;

    .line 1298
    move-object/from16 v1, p0

    move-object/from16 v4, v18

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v32, v12

    move/from16 v12, p12

    move/from16 v18, v13

    move v13, v0

    move v0, v14

    move/from16 v14, v17

    move-object/from16 v15, p3

    move/from16 v17, v18

    move/from16 v18, p13

    move-object/from16 v19, p17

    move/from16 v20, p18

    move-object/from16 v22, v32

    move-object/from16 v23, p20

    move-object/from16 v24, p21

    move/from16 v25, p22

    move-object/from16 v26, p23

    move/from16 v27, p24

    invoke-direct/range {v1 .. v27}, Lcom/android/server/wm/ActivityStarter;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/wm/SafeActivityOptions;ZZ[Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v10

    .line 1305
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1307
    move-object/from16 v1, v30

    iget-boolean v2, v1, Lcom/android/server/wm/ActivityStack;->mConfigWillChange:Z

    if-eqz v2, :cond_311

    .line 1312
    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v4, "android.permission.CHANGE_CONFIGURATION"

    const-string v5, "updateConfiguration()"

    invoke-virtual {v3, v4, v5}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/wm/ActivityStack;->mConfigWillChange:Z

    .line 1317
    iget-object v1, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object/from16 v4, p16

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z

    goto :goto_314

    .line 1307
    :cond_311
    const/4 v3, 0x0

    move-object/from16 v2, p0

    .line 1322
    :goto_314
    iget-object v1, v2, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v1

    aget-object v4, v32, v3

    invoke-virtual {v1, v10, v4}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/wm/ActivityRecord;)V

    .line 1323
    move-object/from16 v1, p15

    if-eqz v1, :cond_39b

    .line 1324
    iput v10, v1, Landroid/app/WaitResult;->result:I

    .line 1326
    aget-object v4, v32, v3

    .line 1328
    if-eqz v10, :cond_379

    const-wide/16 v5, 0x0

    const/4 v11, 0x3

    const/4 v7, 0x2

    if-eq v10, v7, :cond_33c

    if-eq v10, v11, :cond_333

    goto/16 :goto_39b

    .line 1344
    :cond_333
    iput-boolean v3, v1, Landroid/app/WaitResult;->timeout:Z

    .line 1345
    iget-object v0, v4, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v0, v1, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 1346
    iput-wide v5, v1, Landroid/app/WaitResult;->totalTime:J

    .line 1347
    goto :goto_39b

    .line 1350
    :cond_33c
    nop

    .line 1351
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v7

    if-eqz v7, :cond_344

    goto :goto_345

    :cond_344
    move v11, v0

    :goto_345
    iput v11, v1, Landroid/app/WaitResult;->launchState:I

    .line 1354
    iget-boolean v0, v4, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v0, :cond_35c

    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_35c

    .line 1355
    iput-boolean v3, v1, Landroid/app/WaitResult;->timeout:Z

    .line 1356
    iget-object v0, v4, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v0, v1, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 1357
    iput-wide v5, v1, Landroid/app/WaitResult;->totalTime:J

    goto :goto_39b

    .line 1359
    :cond_35c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1360
    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v4, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v3, v1, v5, v6}, Lcom/android/server/wm/ActivityStackSupervisor;->waitActivityVisible(Landroid/content/ComponentName;Landroid/app/WaitResult;J)V
    :try_end_367
    .catchall {:try_start_20c .. :try_end_367} :catchall_3a9

    .line 1365
    :cond_367
    :try_start_367
    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_36e
    .catch Ljava/lang/InterruptedException; {:try_start_367 .. :try_end_36e} :catch_36f
    .catchall {:try_start_367 .. :try_end_36e} :catchall_3a9

    .line 1367
    goto :goto_370

    .line 1366
    :catch_36f
    move-exception v0

    .line 1368
    :goto_370
    :try_start_370
    iget-boolean v0, v1, Landroid/app/WaitResult;->timeout:Z

    if-nez v0, :cond_39b

    iget-object v0, v1, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v0, :cond_367

    goto :goto_39b

    .line 1330
    :cond_379
    const/4 v7, 0x2

    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_381
    .catchall {:try_start_370 .. :try_end_381} :catchall_3a9

    .line 1333
    :cond_381
    :try_start_381
    iget-object v0, v2, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_388
    .catch Ljava/lang/InterruptedException; {:try_start_381 .. :try_end_388} :catch_389
    .catchall {:try_start_381 .. :try_end_388} :catchall_3a9

    .line 1335
    goto :goto_38a

    .line 1334
    :catch_389
    move-exception v0

    .line 1336
    :goto_38a
    :try_start_38a
    iget v0, v1, Landroid/app/WaitResult;->result:I

    if-eq v0, v7, :cond_396

    iget-boolean v0, v1, Landroid/app/WaitResult;->timeout:Z

    if-nez v0, :cond_396

    iget-object v0, v1, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v0, :cond_381

    .line 1338
    :cond_396
    iget v0, v1, Landroid/app/WaitResult;->result:I

    if-ne v0, v7, :cond_39b

    .line 1339
    goto :goto_39c

    .line 1375
    :cond_39b
    :goto_39b
    move v7, v10

    :goto_39c
    monitor-exit v31
    :try_end_39d
    .catchall {:try_start_38a .. :try_end_39d} :catchall_3a9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v7

    .line 1376
    :catchall_3a1
    move-exception v0

    move-object/from16 v31, v3

    :goto_3a4
    :try_start_3a4
    monitor-exit v31
    :try_end_3a5
    .catchall {:try_start_3a4 .. :try_end_3a5} :catchall_3a9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_3a9
    move-exception v0

    goto :goto_3a4
.end method

.method private startActivityUnchecked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;[Lcom/android/server/wm/ActivityRecord;Z)I
    .registers 25

    .line 1478
    move-object v10, p0

    move-object v11, p1

    move-object/from16 v12, p9

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move/from16 v4, p6

    move/from16 v5, p5

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/ActivityStarter;->setInitialState(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;ZILcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)V

    .line 1481
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget v8, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 1483
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->computeLaunchingTaskFlags()V

    .line 1485
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->computeSourceStack()V

    .line 1487
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget v1, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1489
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->getReusableIntentActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    .line 1491
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v0

    .line 1492
    if-eqz v9, :cond_3b

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    goto :goto_3d

    :cond_3b
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    :goto_3d
    iget-object v2, v11, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    const/4 v6, 0x2

    iget-object v7, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 1491
    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 1494
    nop

    .line 1495
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasPreferredDisplay()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5b

    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget v0, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    goto :goto_5c

    .line 1496
    :cond_5b
    move v0, v1

    :goto_5c
    iput v0, v10, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    .line 1499
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v2, 0x1

    if-eqz v0, :cond_88

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->freezeRecentTasksReordering()Z

    move-result v0

    if-eqz v0, :cond_88

    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget v3, v11, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 1500
    invoke-virtual {v0, v3}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v0

    if-eqz v0, :cond_88

    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 1501
    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->isFreezeTaskListReorderingSet()Z

    move-result v0

    if-nez v0, :cond_88

    .line 1502
    iput-boolean v2, v10, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    .line 1503
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->setFreezeTaskListReordering()V

    .line 1509
    :cond_88
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    const-string v3, "ActivityTaskManager"

    if-eqz v0, :cond_b5

    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v4, v11, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v10, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    invoke-virtual {v0, v4, v5, v2}, Lcom/android/server/wm/RootActivityContainer;->canStartHomeOnDisplay(Landroid/content/pm/ActivityInfo;IZ)Z

    move-result v0

    if-nez v0, :cond_b5

    .line 1511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot launch home on display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v10, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    const/16 v0, -0x60

    return v0

    .line 1515
    :cond_b5
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v9, :cond_1c1

    .line 1519
    iget-object v6, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v6

    .line 1520
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v7

    iget v11, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v13, 0x10008000

    and-int/2addr v11, v13

    if-ne v11, v13, :cond_ce

    move v11, v2

    goto :goto_cf

    :cond_ce
    move v11, v1

    .line 1519
    :goto_cf
    invoke-virtual {v6, v7, v11}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/TaskRecord;Z)Z

    move-result v6

    if-eqz v6, :cond_dd

    .line 1523
    const-string v0, "startActivityUnchecked: Attempt to violate Lock Task Mode"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    const/16 v0, 0x65

    return v0

    .line 1529
    :cond_dd
    iget v3, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v6, 0x4200000

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_ea

    iget v3, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-nez v3, :cond_ea

    move v3, v2

    goto :goto_eb

    :cond_ea
    move v3, v1

    .line 1537
    :goto_eb
    iget-object v6, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    if-nez v6, :cond_fe

    if-nez v3, :cond_fe

    .line 1538
    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/server/wm/ActivityRecord;->setTask(Lcom/android/server/wm/TaskRecord;)V

    .line 1541
    :cond_fe
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v3, :cond_110

    .line 1544
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    iget-object v6, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v6}, Lcom/android/server/wm/TaskRecord;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_135

    .line 1546
    :cond_110
    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1547
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/16 v6, 0x4000

    and-int/2addr v3, v6

    if-eqz v3, :cond_11f

    move v3, v2

    goto :goto_120

    :cond_11f
    move v3, v1

    .line 1548
    :goto_120
    if-eqz v3, :cond_12c

    .line 1549
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_135

    .line 1551
    :cond_12c
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->removeFlags(I)V

    .line 1558
    :goto_135
    iget v3, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v6, 0x4000000

    and-int/2addr v6, v3

    if-nez v6, :cond_148

    .line 1559
    invoke-static {v3}, Lcom/android/server/wm/ActivityStarter;->isDocumentLaunchesIntoExisting(I)Z

    move-result v3

    if-nez v3, :cond_148

    .line 1560
    invoke-direct {p0, v0, v4}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v3

    if-eqz v3, :cond_16f

    .line 1561
    :cond_148
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    .line 1566
    iget-object v6, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v7, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v3, v6, v7}, Lcom/android/server/wm/TaskRecord;->performClearTaskForReuseLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 1573
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v7

    if-nez v7, :cond_15d

    .line 1574
    invoke-virtual {v9, v3}, Lcom/android/server/wm/ActivityRecord;->setTask(Lcom/android/server/wm/TaskRecord;)V

    .line 1577
    :cond_15d
    if-eqz v6, :cond_16f

    .line 1578
    iget-boolean v3, v6, Lcom/android/server/wm/ActivityRecord;->frontOfTask:Z

    if-eqz v3, :cond_16c

    .line 1581
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    iget-object v7, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v7}, Lcom/android/server/wm/TaskRecord;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 1583
    :cond_16c
    invoke-direct {p0, v6}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 1587
    :cond_16f
    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 1588
    invoke-virtual {v3, v1, v9}, Lcom/android/server/wm/RootActivityContainer;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1590
    invoke-direct {p0, v9}, Lcom/android/server/wm/ActivityStarter;->setTargetStackAndMoveToFrontIfNeeded(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1593
    if-eqz v12, :cond_180

    array-length v6, v12

    if-lez v6, :cond_180

    aget-object v6, v12, v1

    goto :goto_181

    :cond_180
    move-object v6, v5

    .line 1597
    :goto_181
    if-eqz v6, :cond_18d

    iget-boolean v7, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v7, :cond_18b

    iget-boolean v6, v6, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-eqz v6, :cond_18d

    .line 1598
    :cond_18b
    aput-object v3, v12, v1

    .line 1601
    :cond_18d
    iget v6, v10, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_196

    .line 1605
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->resumeTargetStackIfNeeded()V

    .line 1606
    return v2

    .line 1609
    :cond_196
    if-eqz v3, :cond_1c1

    .line 1610
    invoke-direct {p0, v3}, Lcom/android/server/wm/ActivityStarter;->setTaskFromIntentActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 1612
    iget-boolean v6, v10, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-nez v6, :cond_1c1

    iget-object v6, v10, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/TaskRecord;

    if-nez v6, :cond_1c1

    .line 1615
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->resumeTargetStackIfNeeded()V

    .line 1616
    if-eqz v12, :cond_1bb

    array-length v2, v12

    if-lez v2, :cond_1bb

    .line 1620
    iget-boolean v2, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_1b8

    .line 1621
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    goto :goto_1b9

    :cond_1b8
    nop

    :goto_1b9
    aput-object v3, v12, v1

    .line 1624
    :cond_1bb
    iget-boolean v1, v10, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    if-eqz v1, :cond_1c0

    move v0, v4

    :cond_1c0
    return v0

    .line 1629
    :cond_1c1
    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    if-nez v3, :cond_200

    .line 1630
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1d6

    .line 1631
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    goto :goto_1d7

    :cond_1d6
    nop

    .line 1632
    :goto_1d7
    if-eqz v5, :cond_1f8

    .line 1633
    const/4 v0, -0x1

    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v3, v3, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object p1, v5

    move/from16 p2, v0

    move-object/from16 p3, v1

    move-object/from16 p4, v2

    move/from16 p5, v3

    move/from16 p6, v4

    move-object/from16 p7, v6

    invoke-virtual/range {p1 .. p7}, Lcom/android/server/wm/ActivityStack;->sendActivityResultLocked(ILcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1637
    :cond_1f8
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1638
    const/16 v0, -0x5c

    return v0

    .line 1643
    :cond_200
    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1644
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 1645
    iget-object v7, v10, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v7}, Lcom/android/server/wm/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    .line 1646
    if-eqz v7, :cond_24f

    iget-object v9, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, v9, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v9, :cond_24f

    iget-object v9, v7, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v11, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v11, v11, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 1647
    invoke-virtual {v9, v11}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24f

    iget v9, v7, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v11, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v11, v11, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v9, v11, :cond_24f

    .line 1649
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v9

    if-eqz v9, :cond_24f

    iget v9, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v11, 0x20000000

    and-int/2addr v9, v11

    if-nez v9, :cond_23f

    .line 1651
    invoke-direct {p0, v2, v4}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v9

    if-eqz v9, :cond_24f

    .line 1655
    :cond_23f
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v9

    if-eqz v9, :cond_24d

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v9

    iget v11, v10, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    if-ne v9, v11, :cond_24f

    :cond_24d
    move v9, v2

    goto :goto_250

    :cond_24f
    move v9, v1

    .line 1656
    :goto_250
    if-eqz v9, :cond_277

    .line 1658
    iput-object v5, v3, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1659
    iget-boolean v1, v10, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v1, :cond_25d

    .line 1660
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 1662
    :cond_25d
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1663
    iget v1, v10, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_268

    .line 1666
    return v2

    .line 1669
    :cond_268
    invoke-direct {p0, v7}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 1673
    iget-object v1, v10, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    iget v4, v10, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    invoke-virtual {v1, v2, v8, v4, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;IILcom/android/server/wm/ActivityStack;)V

    .line 1676
    return v0

    .line 1679
    :cond_277
    nop

    .line 1680
    iget-boolean v0, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v0, :cond_285

    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_285

    .line 1681
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    goto :goto_286

    :cond_285
    move-object v0, v5

    .line 1684
    :goto_286
    nop

    .line 1685
    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v3, :cond_2a3

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    if-nez v3, :cond_2a3

    iget-boolean v3, v10, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-nez v3, :cond_2a3

    iget v3, v10, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v7, 0x10000000

    and-int/2addr v3, v7

    if-eqz v3, :cond_2a3

    .line 1687
    nop

    .line 1688
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityStarter;->setTaskFromReuseOrCreateNewTask(Lcom/android/server/wm/TaskRecord;)I

    move-result v0

    move v3, v2

    goto :goto_2bc

    .line 1689
    :cond_2a3
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_2ad

    .line 1690
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->setTaskFromSourceRecord()I

    move-result v0

    move v3, v1

    goto :goto_2bc

    .line 1691
    :cond_2ad
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    if-eqz v0, :cond_2b7

    .line 1692
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->setTaskFromInTask()I

    move-result v0

    move v3, v1

    goto :goto_2bc

    .line 1696
    :cond_2b7
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->setTaskToCurrentTopOrCreateNewTask()I

    move-result v0

    move v3, v1

    .line 1698
    :goto_2bc
    if-eqz v0, :cond_2bf

    .line 1699
    return v0

    .line 1702
    :cond_2bf
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget v7, v10, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    iget-object v9, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, v9, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v11, v10, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v12, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1703
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v12

    iget-object v13, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v13, v13, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 1702
    move-object p1, v0

    move/from16 p2, v7

    move-object/from16 p3, v9

    move-object/from16 p4, v11

    move-object/from16 p5, v12

    move/from16 p6, v13

    invoke-interface/range {p1 .. p6}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionFromIntent(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/uri/UriPermissionOwner;I)V

    .line 1704
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iget-object v7, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v7, v7, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v9, v10, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v11, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v11, v11, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1705
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    iget v12, v10, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 1706
    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v12

    .line 1704
    invoke-virtual {v0, v7, v9, v11, v12}, Landroid/content/pm/PackageManagerInternal;->grantEphemeralAccess(ILandroid/content/Intent;II)V

    .line 1707
    if-eqz v3, :cond_323

    .line 1708
    const/16 v0, 0x7534

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v7, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v7, v7, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v1

    iget-object v7, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1709
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v7

    iget v7, v7, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v2

    .line 1708
    invoke-static {v0, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1711
    :cond_323
    const/16 v0, 0x7535

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1712
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    .line 1711
    invoke-static {v0, v2, v4}, Lcom/android/server/wm/ActivityStack;->logStartActivity(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;)V

    .line 1713
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iput-object v5, v0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1715
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/RootActivityContainer;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1718
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v4, v10, Lcom/android/server/wm/ActivityStarter;->mKeepCurTransition:Z

    iget-object v5, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    move-object p1, v0

    move-object/from16 p2, v2

    move-object/from16 p3, v6

    move/from16 p4, v3

    move/from16 p5, v4

    move-object/from16 p6, v5

    invoke-virtual/range {p1 .. p6}, Lcom/android/server/wm/ActivityStack;->startActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZZLandroid/app/ActivityOptions;)V

    .line 1720
    iget-boolean v0, v10, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_3a8

    .line 1721
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1722
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1723
    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_395

    if-eqz v0, :cond_370

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-eqz v2, :cond_370

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v2, v0, :cond_370

    goto :goto_395

    .line 1742
    :cond_370
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_389

    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 1743
    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootActivityContainer;->isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v0

    if-nez v0, :cond_389

    .line 1744
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const-string v2, "startActivityUnchecked"

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1746
    :cond_389
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v10, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_3ba

    .line 1732
    :cond_395
    :goto_395
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1735
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    goto :goto_3ba

    .line 1749
    :cond_3a8
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_3ba

    .line 1750
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/TaskRecord;)V

    goto :goto_3bb

    .line 1749
    :cond_3ba
    :goto_3ba
    nop

    .line 1752
    :goto_3bb
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v3, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/RootActivityContainer;->updateUserStack(ILcom/android/server/wm/ActivityStack;)V

    .line 1754
    iget-object v0, v10, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v10, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    iget v3, v10, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    iget-object v4, v10, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0, v2, v8, v3, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;IILcom/android/server/wm/ActivityStack;)V

    .line 1757
    return v1
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8

    .line 2961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2962
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2963
    const-string v1, "mCurrentUser="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2964
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v1, v1, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2965
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2966
    const-string v1, "mLastStartReason="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2967
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2968
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2969
    const-string v1, "mLastStartActivityTimeMs="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2970
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2971
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2972
    const-string v1, "mLastStartActivityResult="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2973
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2974
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 2975
    if-eqz v1, :cond_75

    .line 2976
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2977
    const-string v3, "mLastStartActivityRecord:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2978
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2980
    :cond_75
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_95

    .line 2981
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2982
    const-string v1, "mStartActivity:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2983
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2985
    :cond_95
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    if-eqz p2, :cond_a6

    .line 2986
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2987
    const-string p2, "mIntent="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2988
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2990
    :cond_a6
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz p2, :cond_b7

    .line 2991
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2992
    const-string p2, "mOptions="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2993
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2995
    :cond_b7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2996
    const-string p2, "mLaunchSingleTop="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2997
    iget p2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v1, 0x1

    if-ne v1, p2, :cond_c6

    move p2, v1

    goto :goto_c7

    :cond_c6
    move p2, v2

    :goto_c7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 2998
    const-string p2, " mLaunchSingleInstance="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2999
    const/4 p2, 0x3

    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne p2, v3, :cond_d6

    move p2, v1

    goto :goto_d7

    :cond_d6
    move p2, v2

    :goto_d7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 3000
    const-string p2, " mLaunchSingleTask="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3001
    const/4 p2, 0x2

    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne p2, v3, :cond_e5

    goto :goto_e6

    :cond_e5
    move v1, v2

    :goto_e6
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3002
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3003
    const-string p2, "mLaunchFlags=0x"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3004
    iget p2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3005
    const-string p2, " mDoResume="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3006
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 3007
    const-string p2, " mAddingToTask="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3008
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3009
    return-void
.end method

.method execute()I
    .registers 29

    move-object/from16 v15, p0

    .line 515
    :try_start_2
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->mayWait:Z

    if-eqz v0, :cond_87

    .line 516
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v5, v0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v6, v0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v13, v0, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v14, v0, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    move-object/from16 v16, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    move-object/from16 v17, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    move-object/from16 v18, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    move/from16 v19, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    move/from16 v20, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/TaskRecord;

    move-object/from16 v21, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    move-object/from16 v22, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    move/from16 v23, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    move-object/from16 v24, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->allowBackgroundActivityStart:Z

    move/from16 v25, v1

    move-object/from16 v1, p0

    move-object v15, v0

    invoke-direct/range {v1 .. v25}, Lcom/android/server/wm/ActivityStarter;->startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/WaitResult;Landroid/content/res/Configuration;Lcom/android/server/wm/SafeActivityOptions;ZILcom/android/server/wm/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0
    :try_end_83
    .catchall {:try_start_2 .. :try_end_83} :catchall_114

    .line 539
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 516
    return v0

    .line 527
    :cond_87
    move-object/from16 v15, p0

    :try_start_89
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v12, v0, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v13, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v14, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    move/from16 v16, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    move/from16 v17, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    move/from16 v18, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    move-object/from16 v19, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    move/from16 v20, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    move/from16 v21, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    move-object/from16 v22, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/TaskRecord;

    move-object/from16 v23, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    move-object/from16 v24, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    move/from16 v25, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    move-object/from16 v26, v1

    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityStarter$Request;->allowBackgroundActivityStart:Z

    move/from16 v27, v1

    move-object/from16 v1, p0

    move-object v15, v0

    invoke-direct/range {v1 .. v27}, Lcom/android/server/wm/ActivityStarter;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/wm/SafeActivityOptions;ZZ[Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0
    :try_end_110
    .catchall {:try_start_89 .. :try_end_110} :catchall_114

    .line 539
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 527
    return v0

    .line 539
    :catchall_114
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    throw v0
.end method

.method getCallingUid()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2768
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    return v0
.end method

.method getIntent()Landroid/content/Intent;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2763
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method getStartActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 498
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method postStartActivityProcessing(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityStack;)V
    .registers 6

    .line 1098
    invoke-static {p2}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1099
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    if-eqz v0, :cond_11

    .line 1103
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->resetFreezeTaskListReorderingOnTimeout()V

    .line 1106
    :cond_11
    invoke-static {p2}, Landroid/app/ActivityManager;->isStartResultFatalError(I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1107
    return-void

    .line 1115
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->reportWaitingActivityLaunchedIfNeeded(Lcom/android/server/wm/ActivityRecord;I)V

    .line 1117
    if-nez p3, :cond_20

    .line 1118
    return-void

    .line 1122
    :cond_20
    iget p1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v0, 0x10008000

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_2e

    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/TaskRecord;

    if-eqz p1, :cond_2e

    const/4 p1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    .line 1124
    :goto_2f
    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p2, v1, :cond_37

    if-eq p2, v0, :cond_37

    if-eqz p1, :cond_64

    .line 1128
    :cond_37
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result p2

    if-eq p2, v1, :cond_5a

    if-eq p2, v0, :cond_40

    goto :goto_64

    .line 1134
    :cond_40
    nop

    .line 1135
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityDisplay;->getHomeStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    .line 1136
    if-eqz p1, :cond_64

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-eqz p1, :cond_64

    .line 1137
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    goto :goto_64

    .line 1130
    :cond_5a
    iget-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyPinnedActivityRestartAttempt(Z)V

    .line 1132
    nop

    .line 1142
    :cond_64
    :goto_64
    return-void
.end method

.method relatedToPackage(Ljava/lang/String;)Z
    .registers 5

    .line 502
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_11

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 503
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1f

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 504
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    :cond_1d
    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    nop

    .line 502
    :goto_20
    return v1
.end method

.method reset(Z)V
    .registers 6

    .line 1765
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1766
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 1767
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 1768
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 1769
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    .line 1771
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 1772
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 1773
    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 1775
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v3}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 1777
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 1778
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 1779
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 1780
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1781
    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    .line 1783
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    .line 1784
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 1785
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/TaskRecord;

    .line 1787
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 1788
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 1789
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    .line 1791
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 1792
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 1793
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 1794
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mKeepCurTransition:Z

    .line 1795
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 1796
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    .line 1798
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 1799
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 1801
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    .line 1803
    if-eqz p1, :cond_47

    .line 1804
    iget-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStarter$Request;->reset()V

    .line 1806
    :cond_47
    return-void
.end method

.method set(Lcom/android/server/wm/ActivityStarter;)V
    .registers 4

    .line 456
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 457
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 458
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 459
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 460
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    .line 462
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 463
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 464
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 466
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v1, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->set(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 468
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 469
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 470
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 471
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 472
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    .line 474
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    .line 475
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 476
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/TaskRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/TaskRecord;

    .line 478
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 479
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 480
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    .line 482
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 483
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 484
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 485
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mKeepCurTransition:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mKeepCurTransition:Z

    .line 486
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 487
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mFrozeTaskList:Z

    .line 489
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 490
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 492
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    .line 494
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStarter$Request;->set(Lcom/android/server/wm/ActivityStarter$Request;)V

    .line 495
    return-void
.end method

.method setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 2793
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2794
    return-object p0
.end method

.method setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;
    .registers 2

    .line 2890
    invoke-static {p1}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    return-object p1
.end method

.method setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 2885
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 2886
    return-object p0
.end method

.method setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 2956
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->allowBackgroundActivityStart:Z

    .line 2957
    return-object p0
.end method

.method setAllowPendingRemoteAnimationRegistryLookup(Z)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 2946
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    .line 2947
    return-object p0
.end method

.method setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 2777
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 2778
    return-object p0
.end method

.method setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 2851
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 2852
    return-object p0
.end method

.method setCallingPid(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 2836
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 2837
    return-object p0
.end method

.method setCallingUid(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 2846
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 2847
    return-object p0
.end method

.method setComponentSpecified(Z)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 2904
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 2905
    return-object p0
.end method

.method setEphemeralIntent(Landroid/content/Intent;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 2782
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    .line 2783
    return-object p0
.end method

.method setFilterCallingUid(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 2899
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 2900
    return-object p0
.end method

.method setGlobalConfiguration(Landroid/content/res/Configuration;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 2929
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 2930
    return-object p0
.end method

.method setIgnoreTargetSecurity(Z)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 2894
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    .line 2895
    return-object p0
.end method

.method setInTask(Lcom/android/server/wm/TaskRecord;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 2914
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/TaskRecord;

    .line 2915
    return-object p0
.end method

.method setIntent(Landroid/content/Intent;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 2757
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 2758
    return-object p0
.end method

.method setMayWait(I)Lcom/android/server/wm/ActivityStarter;
    .registers 4

    .line 2939
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter$Request;->mayWait:Z

    .line 2940
    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 2942
    return-object p0
.end method

.method setOriginatingPendingIntent(Lcom/android/server/am/PendingIntentRecord;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 2951
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    .line 2952
    return-object p0
.end method

.method setOutActivity([Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 2909
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    .line 2910
    return-object p0
.end method

.method setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 2924
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 2925
    return-object p0
.end method

.method setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 2865
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 2866
    return-object p0
.end method

.method setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 2875
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 2876
    return-object p0
.end method

.method setReason(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 2772
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 2773
    return-object p0
.end method

.method setRequestCode(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 2823
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 2824
    return-object p0
.end method

.method setResolveInfo(Landroid/content/pm/ResolveInfo;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 2798
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 2799
    return-object p0
.end method

.method setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 2788
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 2789
    return-object p0
.end method

.method setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 2813
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 2814
    return-object p0
.end method

.method setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 2818
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 2819
    return-object p0
.end method

.method setStartFlags(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 2880
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    .line 2881
    return-object p0
.end method

.method setUserId(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 2934
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 2935
    return-object p0
.end method

.method setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 2808
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 2809
    return-object p0
.end method

.method setVoiceSession(Landroid/service/voice/IVoiceInteractionSession;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 2803
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 2804
    return-object p0
.end method

.method setWaitResult(Landroid/app/WaitResult;)Lcom/android/server/wm/ActivityStarter;
    .registers 3

    .line 2919
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    .line 2920
    return-object p0
.end method

.method shouldAbortBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLandroid/content/Intent;)Z
    .registers 31

    .line 946
    move-object/from16 v0, p0

    move/from16 v3, p1

    move/from16 v1, p2

    move-object/from16 v4, p3

    move/from16 v7, p4

    move-object/from16 v2, p7

    move/from16 v5, p8

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 947
    if-eqz v3, :cond_1d0

    const/16 v9, 0x3e8

    if-eq v6, v9, :cond_1d0

    const/16 v10, 0x403

    if-ne v6, v10, :cond_1f

    const/4 v0, 0x0

    goto/16 :goto_1d1

    .line 952
    :cond_1f
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getUidState(I)I

    move-result v6

    .line 953
    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 954
    invoke-virtual {v10, v3}, Lcom/android/server/wm/RootWindowContainer;->isAnyNonToastWindowVisibleForUid(I)Z

    move-result v10

    .line 955
    const/4 v11, 0x2

    const/4 v12, 0x1

    if-nez v10, :cond_3b

    if-eq v6, v11, :cond_3b

    const/4 v13, 0x4

    if-ne v6, v13, :cond_39

    goto :goto_3b

    :cond_39
    const/4 v13, 0x0

    goto :goto_3c

    :cond_3b
    :goto_3b
    move v13, v12

    .line 958
    :goto_3c
    if-gt v6, v12, :cond_40

    move v14, v12

    goto :goto_41

    :cond_40
    const/4 v14, 0x0

    .line 960
    :goto_41
    if-nez v10, :cond_1ce

    if-eqz v14, :cond_47

    goto/16 :goto_1ce

    .line 964
    :cond_47
    if-ne v3, v7, :cond_4b

    .line 965
    move v15, v6

    goto :goto_51

    .line 966
    :cond_4b
    iget-object v15, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v15, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->getUidState(I)I

    move-result v15

    .line 967
    :goto_51
    if-ne v3, v7, :cond_56

    .line 968
    move/from16 v17, v10

    goto :goto_62

    .line 969
    :cond_56
    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v8, v7}, Lcom/android/server/wm/RootWindowContainer;->isAnyNonToastWindowVisibleForUid(I)Z

    move-result v8

    move/from16 v17, v8

    .line 970
    :goto_62
    if-ne v3, v7, :cond_66

    .line 971
    move v8, v13

    goto :goto_6e

    .line 973
    :cond_66
    if-nez v17, :cond_6d

    if-ne v15, v11, :cond_6b

    goto :goto_6d

    :cond_6b
    const/4 v8, 0x0

    goto :goto_6e

    :cond_6d
    :goto_6d
    move v8, v12

    .line 974
    :goto_6e
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    .line 975
    if-ne v3, v7, :cond_76

    .line 976
    move v9, v14

    goto :goto_7e

    .line 978
    :cond_76
    if-eq v11, v9, :cond_7d

    if-gt v15, v12, :cond_7b

    goto :goto_7d

    :cond_7b
    const/4 v9, 0x0

    goto :goto_7e

    :cond_7d
    :goto_7d
    move v9, v12

    .line 979
    :goto_7e
    if-eq v7, v3, :cond_9a

    .line 981
    if-eqz v17, :cond_84

    .line 982
    const/4 v11, 0x0

    return v11

    .line 986
    :cond_84
    const/4 v11, 0x0

    if-eqz v9, :cond_8a

    if-eqz v5, :cond_8a

    .line 987
    return v11

    .line 990
    :cond_8a
    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-virtual {v12, v11, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->isAssociatedCompanionApp(II)Z

    move-result v11

    if-eqz v11, :cond_98

    .line 992
    const/4 v11, 0x0

    return v11

    .line 990
    :cond_98
    const/4 v11, 0x0

    goto :goto_9b

    .line 979
    :cond_9a
    const/4 v11, 0x0

    .line 996
    :goto_9b
    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v12, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    invoke-static {v12, v1, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v12

    if-nez v12, :cond_a6

    .line 998
    return v11

    .line 1001
    :cond_a6
    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v12, v12, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v12, v3}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v12

    if-eqz v12, :cond_b1

    .line 1002
    return v11

    .line 1005
    :cond_b1
    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v12, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->isDeviceOwner(I)Z

    move-result v12

    if-eqz v12, :cond_ba

    .line 1006
    return v11

    .line 1009
    :cond_ba
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 1010
    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v11, v12, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->isAssociatedCompanionApp(II)Z

    move-result v11

    if-eqz v11, :cond_c8

    .line 1011
    const/4 v0, 0x0

    return v0

    .line 1017
    :cond_c8
    nop

    .line 1018
    if-nez p6, :cond_d5

    .line 1019
    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    move/from16 v12, p5

    invoke-virtual {v11, v12, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v11

    .line 1020
    move v12, v7

    goto :goto_d8

    .line 1018
    :cond_d5
    move-object/from16 v11, p6

    move v12, v3

    .line 1023
    :goto_d8
    if-eqz v11, :cond_111

    .line 1025
    invoke-virtual {v11}, Lcom/android/server/wm/WindowProcessController;->areBackgroundActivityStartsAllowed()Z

    move-result v19

    if-eqz v19, :cond_e2

    .line 1026
    const/4 v0, 0x0

    return v0

    .line 1029
    :cond_e2
    move/from16 v19, v15

    iget-object v15, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v15, v15, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 1030
    invoke-virtual {v15, v12}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcesses(I)Landroid/util/ArraySet;

    move-result-object v12

    .line 1031
    if-eqz v12, :cond_113

    .line 1032
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v15

    const/16 v18, 0x1

    add-int/lit8 v15, v15, -0x1

    :goto_f6
    if-ltz v15, :cond_113

    .line 1033
    invoke-virtual {v12, v15}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 p5, v12

    move-object/from16 v12, v20

    check-cast v12, Lcom/android/server/wm/WindowProcessController;

    .line 1034
    if-eq v12, v11, :cond_10c

    invoke-virtual {v12}, Lcom/android/server/wm/WindowProcessController;->areBackgroundActivityStartsAllowed()Z

    move-result v12

    if-eqz v12, :cond_10c

    .line 1035
    const/4 v0, 0x0

    return v0

    .line 1032
    :cond_10c
    add-int/lit8 v15, v15, -0x1

    move-object/from16 v12, p5

    goto :goto_f6

    .line 1023
    :cond_111
    move/from16 v19, v15

    .line 1041
    :cond_113
    iget-object v12, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v12, v3, v1, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->hasSystemAlertWindowPermission(IILjava/lang/String;)Z

    move-result v1

    const-string v12, "ActivityTaskManager"

    if-eqz v1, :cond_138

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Background activity start for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " allowed because SYSTEM_ALERT_WINDOW permission is granted."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    const/4 v0, 0x0

    return v0

    .line 1047
    :cond_138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Background activity start [callingPackage: "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "; callingUid: "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "; isCallingUidForeground: "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, "; isCallingUidPersistentSystemProcess: "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, "; realCallingUid: "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "; isRealCallingUidForeground: "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "; isRealCallingUidPersistentSystemProcess: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "; originatingPendingIntent: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "; isBgStartWhitelisted: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "; intent: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p9

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "; callerApp: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isActivityStartsLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1cc

    .line 1062
    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    if-eqz v2, :cond_1b6

    const/16 v16, 0x1

    goto :goto_1b8

    :cond_1b6
    const/16 v16, 0x0

    :goto_1b8
    move-object/from16 v1, p9

    move-object v2, v11

    move/from16 v3, p1

    move-object/from16 v4, p3

    move v5, v6

    move v6, v10

    move/from16 v7, p4

    move/from16 v8, v19

    move/from16 v9, v17

    move/from16 v10, v16

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/ActivityMetricsLogger;->logAbortedBgActivityStart(Landroid/content/Intent;Lcom/android/server/wm/WindowProcessController;ILjava/lang/String;IZIIZZ)V

    .line 1067
    :cond_1cc
    const/4 v0, 0x1

    return v0

    .line 961
    :cond_1ce
    :goto_1ce
    const/4 v0, 0x0

    return v0

    .line 947
    :cond_1d0
    const/4 v0, 0x0

    .line 949
    :goto_1d1
    return v0
.end method

.method startResolvedActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;)I
    .registers 23

    move-object v12, p0

    move-object v0, p1

    .line 553
    :try_start_2
    iget-object v1, v12, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;)V

    .line 554
    const-string v1, "startResolvedActivity"

    iput-object v1, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 555
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    .line 556
    iget-object v1, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/wm/ActivityRecord;

    const/4 v13, 0x0

    aput-object v0, v1, v13

    .line 557
    iget-object v10, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/wm/ActivityRecord;

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v11}, Lcom/android/server/wm/ActivityStarter;->startActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;[Lcom/android/server/wm/ActivityRecord;Z)I

    move-result v0

    iput v0, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    .line 560
    iget-object v0, v12, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    iget v1, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    iget-object v2, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/wm/ActivityRecord;

    aget-object v2, v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/wm/ActivityRecord;)V

    .line 562
    iget v0, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I
    :try_end_46
    .catchall {:try_start_2 .. :try_end_46} :catchall_4a

    .line 564
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 562
    return v0

    .line 564
    :catchall_4a
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    throw v0
.end method

.method updateBounds(Lcom/android/server/wm/TaskRecord;Landroid/graphics/Rect;)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2533
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2534
    return-void

    .line 2537
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2538
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->resizeStackWithLaunchBounds()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2539
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, v0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, -0x1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    goto :goto_23

    .line 2542
    :cond_20
    invoke-virtual {p1, p2}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 2544
    :goto_23
    return-void
.end method
