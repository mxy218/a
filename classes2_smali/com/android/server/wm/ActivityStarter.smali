.class Lcom/android/server/wm/ActivityStarter;
.super Ljava/lang/Object;
.source "ActivityStarter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityStarter$ChooseActivityInfo;,
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

.field private mLoginComponentNames:[Landroid/content/ComponentName;

.field private mMovedToFront:Z

.field private mNewTaskInfo:Landroid/content/pm/ActivityInfo;

.field private mNewTaskIntent:Landroid/content/Intent;

.field private mNoAnimation:Z

.field private mNotTop:Lcom/android/server/wm/ActivityRecord;

.field private mOptions:Landroid/app/ActivityOptions;

.field public mPerf:Landroid/util/BoostFramework;

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

.field private matchMultiCrossUserLogin:Z

.field final qqShare:Ljava/lang/String;

.field final wbLogin:Ljava/lang/String;

.field final wbShare:Ljava/lang/String;

.field final wbShareAction:Ljava/lang/String;

.field final wxShare:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityStartController;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStartInterceptor;)V
    .registers 10
    .param p1, "controller"  # Lcom/android/server/wm/ActivityStartController;
    .param p2, "service"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p3, "supervisor"  # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p4, "interceptor"  # Lcom/android/server/wm/ActivityStartInterceptor;

    .line 462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    .line 223
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/android/server/wm/ActivityRecord;

    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/wm/ActivityRecord;

    .line 236
    new-instance v1, Lcom/android/server/wm/ActivityStarter$Request;

    invoke-direct {v1}, Lcom/android/server/wm/ActivityStarter$Request;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    .line 3260
    const-string v1, "{com.tencent.mm/com.tencent.mm.plugin.base.stub.WXEntryActivity}"

    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->wxShare:Ljava/lang/String;

    .line 3261
    const-string v1, "{com.tencent.mobileqq/com.tencent.open.agent.AgentActivity}"

    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->qqShare:Ljava/lang/String;

    .line 3262
    const-string v1, "{com.sina.weibo/com.sina.weibo.composerinde.ComposerDispatchActivity}"

    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->wbShare:Ljava/lang/String;

    .line 3263
    const-string v1, "com.sina.weibo.sdk.action.ACTION_WEIBO_ACTIVITY"

    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->wbShareAction:Ljava/lang/String;

    .line 3264
    const-string v1, "{com.sina.weibo/com.sina.weibo.SSOActivity}"

    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->wbLogin:Ljava/lang/String;

    .line 3417
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->matchMultiCrossUserLogin:Z

    .line 3418
    new-array v1, v0, [Landroid/content/ComponentName;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.tencent.mm"

    const-string v4, "com.tencent.mm.plugin.webview.ui.tools.SDKOAuthUI"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mLoginComponentNames:[Landroid/content/ComponentName;

    .line 463
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    .line 464
    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 465
    iget-object v1, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 466
    iput-object p3, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 467
    iput-object p4, p0, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    .line 468
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStarter;->reset(Z)V

    .line 469
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    .line 470
    return-void
.end method

.method private addOrReparentStartingActivity(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;)V
    .registers 5
    .param p1, "parent"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "reason"  # Ljava/lang/String;

    .line 2837
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    if-ne v0, p1, :cond_11

    goto :goto_1d

    .line 2840
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskRecord;ILjava/lang/String;)V

    goto :goto_22

    .line 2838
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskRecord;->addActivityToTop(Lcom/android/server/wm/ActivityRecord;)V

    .line 2842
    :goto_22
    return-void
.end method

.method private adjustLaunchFlagsToDocumentMode(Lcom/android/server/wm/ActivityRecord;ZZI)I
    .registers 8
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "launchSingleInstance"  # Z
    .param p3, "launchSingleTask"  # Z
    .param p4, "launchFlags"  # I

    .line 2846
    const/high16 v0, 0x80000

    and-int v1, p4, v0

    if-eqz v1, :cond_16

    if-nez p2, :cond_a

    if-eqz p3, :cond_16

    .line 2849
    :cond_a
    const-string v0, "ActivityTaskManager"

    const-string v1, "Ignoring FLAG_ACTIVITY_NEW_DOCUMENT, launchMode is \"singleInstance\" or \"singleTask\""

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2851
    const v0, -0x8080001

    and-int/2addr p4, v0

    goto :goto_30

    .line 2854
    :cond_16
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-eqz v1, :cond_2f

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2d

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2b

    const/4 v0, 0x3

    if-eq v1, v0, :cond_26

    goto :goto_30

    .line 2864
    :cond_26
    const v0, -0x8000001

    and-int/2addr p4, v0

    goto :goto_30

    .line 2861
    :cond_2b
    or-int/2addr p4, v0

    .line 2862
    goto :goto_30

    .line 2858
    :cond_2d
    or-int/2addr p4, v0

    .line 2859
    goto :goto_30

    .line 2856
    :cond_2f
    nop

    .line 2868
    :goto_30
    return p4
.end method

.method private appendUserId(Landroid/content/Intent;I)Landroid/content/Intent;
    .registers 4
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "fpsUserId"  # I

    .line 3364
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3365
    .local v0, "itTmp":Landroid/content/Intent;
    iput p2, v0, Landroid/content/Intent;->mTargetUserId:I

    .line 3366
    return-object v0
.end method

.method private canLaunchIntoFocusedStack(Lcom/android/server/wm/ActivityRecord;Z)Z
    .registers 9
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "newTask"  # Z

    .line 2922
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2924
    .local v0, "focusedStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeAssistant()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_13

    .line 2925
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeAssistant()Z

    move-result v1

    .local v1, "canUseFocusedStack":Z
    goto :goto_40

    .line 2927
    .end local v1  # "canUseFocusedStack":Z
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

    .line 2946
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isOnHomeDisplay()Z

    move-result v1

    if-nez v1, :cond_32

    iget v1, v0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    .line 2947
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_32

    move v1, v3

    goto :goto_33

    :cond_32
    move v1, v2

    .restart local v1  # "canUseFocusedStack":Z
    :goto_33
    goto :goto_40

    .line 2941
    .end local v1  # "canUseFocusedStack":Z
    :cond_34
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->supportsFreeform()Z

    move-result v1

    .line 2942
    .restart local v1  # "canUseFocusedStack":Z
    goto :goto_40

    .line 2937
    .end local v1  # "canUseFocusedStack":Z
    :cond_39
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->supportsSplitScreenWindowingMode()Z

    move-result v1

    .line 2938
    .restart local v1  # "canUseFocusedStack":Z
    goto :goto_40

    .line 2932
    .end local v1  # "canUseFocusedStack":Z
    :cond_3e
    const/4 v1, 0x1

    .line 2933
    .restart local v1  # "canUseFocusedStack":Z
    nop

    .line 2950
    :goto_40
    if-eqz v1, :cond_4b

    if-nez p2, :cond_4b

    iget v4, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    iget v5, v0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    if-ne v4, v5, :cond_4b

    move v2, v3

    :cond_4b
    return v2
.end method

.method private computeLaunchingTaskFlags()V
    .registers 11

    .line 2196
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/high16 v4, 0x10000000

    if-nez v0, :cond_e4

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    if-eqz v0, :cond_e4

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_e4

    .line 2197
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2198
    .local v0, "baseIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/TaskRecord;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 2199
    .local v5, "root":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_c6

    .line 2207
    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v6

    if-eqz v6, :cond_8f

    .line 2208
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_67

    .line 2213
    if-nez v5, :cond_3c

    goto :goto_8f

    .line 2214
    :cond_3c
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2215
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller with mInTask "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has root "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but target is singleInstance/Task"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2209
    :cond_67
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2210
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to launch singleInstance/Task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " into different task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2222
    :cond_8f
    :goto_8f
    if-nez v5, :cond_b6

    .line 2223
    const v6, 0x18082000

    .line 2225
    .local v6, "flagsOfInterest":I
    iget v7, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v8, -0x18082001

    and-int/2addr v7, v8

    .line 2226
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const v9, 0x18082000

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    iput v7, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2227
    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget v8, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2228
    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v7, v8}, Lcom/android/server/wm/TaskRecord;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2229
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2234
    .end local v6  # "flagsOfInterest":I
    goto :goto_c1

    :cond_b6
    iget v6, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v6, v4

    if-eqz v6, :cond_bf

    .line 2235
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    goto :goto_c1

    .line 2238
    :cond_bf
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2241
    :goto_c1
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    iput-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/TaskRecord;

    .line 2242
    .end local v0  # "baseIntent":Landroid/content/Intent;
    .end local v5  # "root":Lcom/android/server/wm/ActivityRecord;
    goto :goto_101

    .line 2200
    .restart local v0  # "baseIntent":Landroid/content/Intent;
    .restart local v5  # "root":Lcom/android/server/wm/ActivityRecord;
    :cond_c6
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2201
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launching into task without base intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2243
    .end local v0  # "baseIntent":Landroid/content/Intent;
    .end local v5  # "root":Lcom/android/server/wm/ActivityRecord;
    :cond_e4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    .line 2249
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isResolverActivity()Z

    move-result v0

    if-nez v0, :cond_f5

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-eqz v0, :cond_101

    :cond_f5
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_101

    .line 2250
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_101

    .line 2251
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2255
    :cond_101
    :goto_101
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    if-nez v0, :cond_14e

    .line 2256
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v3, :cond_12e

    .line 2259
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v4

    if-nez v1, :cond_14e

    if-nez v0, :cond_14e

    .line 2260
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

    .line 2262
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    goto :goto_14e

    .line 2268
    :cond_12e
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isAccessApplication()Z

    move-result v0

    if-eqz v0, :cond_137

    goto :goto_14e

    .line 2270
    :cond_137
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget v0, v0, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    if-ne v0, v2, :cond_143

    .line 2274
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    goto :goto_14e

    .line 2275
    :cond_143
    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_14e

    .line 2278
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2281
    :cond_14e
    :goto_14e
    return-void
.end method

.method static computeResolveFilterUid(III)I
    .registers 4
    .param p0, "customCallingUid"  # I
    .param p1, "actualCallingUid"  # I
    .param p2, "filterCallingUid"  # I

    .line 1568
    const/16 v0, -0x2710

    if-eq p2, v0, :cond_6

    .line 1569
    move v0, p2

    goto :goto_b

    .line 1570
    :cond_6
    if-ltz p0, :cond_a

    move v0, p0

    goto :goto_b

    :cond_a
    move v0, p1

    .line 1568
    :goto_b
    return v0
.end method

.method private computeSourceStack()V
    .registers 5

    .line 2284
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2285
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    .line 2286
    return-void

    .line 2288
    :cond_8
    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_15

    .line 2289
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    .line 2290
    return-void

    .line 2297
    :cond_15
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000000

    and-int/2addr v0, v2

    if-nez v0, :cond_57

    .line 2298
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

    .line 2300
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2301
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 2307
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 2308
    .local v0, "sourceTask":Lcom/android/server/wm/TaskRecord;
    if-eqz v0, :cond_54

    iget-object v2, v0, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    goto :goto_55

    :cond_54
    move-object v2, v1

    :goto_55
    iput-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 2310
    .end local v0  # "sourceTask":Lcom/android/server/wm/TaskRecord;
    :cond_57
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2311
    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    .line 2312
    return-void
.end method

.method private computeStackFocus(Lcom/android/server/wm/ActivityRecord;ZILandroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;
    .registers 13
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "newTask"  # Z
    .param p3, "launchFlags"  # I
    .param p4, "aOptions"  # Landroid/app/ActivityOptions;

    .line 2873
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 2874
    .local v0, "task":Lcom/android/server/wm/TaskRecord;
    invoke-direct {p0, p1, p3, v0, p4}, Lcom/android/server/wm/ActivityStarter;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2875
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_b

    .line 2876
    return-object v1

    .line 2879
    :cond_b
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    .line 2880
    .local v2, "currentStack":Lcom/android/server/wm/ActivityStack;
    :goto_13
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2881
    .local v3, "focusedStack":Lcom/android/server/wm/ActivityStack;
    const-string v4, "ActivityTaskManager"

    if-eqz v2, :cond_61

    .line 2882
    if-eq v3, v2, :cond_44

    .line 2883
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_FOCUS:Z

    if-nez v5, :cond_27

    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v5, :cond_60

    :cond_27
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "computeStackFocus: Setting focused stack to r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 2887
    :cond_44
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_FOCUS:Z

    if-nez v5, :cond_4c

    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v5, :cond_60

    :cond_4c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "computeStackFocus: Focused stack already="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2890
    :cond_60
    :goto_60
    return-object v2

    .line 2893
    :cond_61
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityStarter;->canLaunchIntoFocusedStack(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 2894
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_FOCUS:Z

    if-nez v5, :cond_6f

    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v5, :cond_83

    :cond_6f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "computeStackFocus: Have a focused stack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2896
    :cond_83
    return-object v3

    .line 2899
    :cond_84
    iget v5, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    if-eqz v5, :cond_bd

    .line 2901
    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v6, v5, p1, p4, v7}, Lcom/android/server/wm/RootActivityContainer;->getValidLaunchStackOnDisplay(ILcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2903
    if-nez v1, :cond_bd

    .line 2905
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_FOCUS:Z

    if-nez v5, :cond_9a

    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v5, :cond_b5

    :cond_9a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "computeStackFocus: Can\'t launch on mPreferredDisplayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", looking on all displays."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    :cond_b5
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v6, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    invoke-virtual {v5, p1, v6}, Lcom/android/server/wm/RootActivityContainer;->getNextValidLaunchStack(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2911
    :cond_bd
    if-nez v1, :cond_c6

    .line 2912
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v6, 0x1

    invoke-virtual {v5, p1, p4, v0, v6}, Lcom/android/server/wm/RootActivityContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2914
    :cond_c6
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_FOCUS:Z

    if-nez v5, :cond_ce

    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v5, :cond_ec

    :cond_ce
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "computeStackFocus: New stack r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " stackId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    :cond_ec
    return-object v1
.end method

.method private createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 27
    .param p1, "auxiliaryResponse"  # Landroid/content/pm/AuxiliaryResolveInfo;
    .param p2, "originalIntent"  # Landroid/content/Intent;
    .param p3, "callingPackage"  # Ljava/lang/String;
    .param p4, "verificationBundle"  # Landroid/os/Bundle;
    .param p5, "resolvedType"  # Ljava/lang/String;
    .param p6, "userId"  # I

    .line 1165
    move-object/from16 v7, p1

    if-eqz v7, :cond_20

    iget-boolean v0, v7, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v0, :cond_20

    .line 1167
    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/PackageManagerInternal;->requestInstantAppResolutionPhaseTwo(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_22

    .line 1165
    :cond_20
    move-object/from16 v8, p0

    .line 1171
    :goto_22
    nop

    .line 1173
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/InstantAppResolver;->sanitizeIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v10

    .line 1174
    const/4 v0, 0x0

    if-nez v7, :cond_2c

    move-object v11, v0

    goto :goto_2f

    :cond_2c
    iget-object v1, v7, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    move-object v11, v1

    .line 1179
    :goto_2f
    if-nez v7, :cond_34

    move-object/from16 v16, v0

    goto :goto_38

    :cond_34
    iget-object v1, v7, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    move-object/from16 v16, v1

    .line 1180
    :goto_38
    if-nez v7, :cond_3d

    move-object/from16 v17, v0

    goto :goto_41

    :cond_3d
    iget-object v1, v7, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    move-object/from16 v17, v1

    :goto_41
    if-eqz v7, :cond_49

    iget-boolean v1, v7, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    if-eqz v1, :cond_49

    const/4 v1, 0x1

    goto :goto_4a

    :cond_49
    const/4 v1, 0x0

    :goto_4a
    move/from16 v18, v1

    .line 1182
    if-nez v7, :cond_4f

    goto :goto_51

    :cond_4f
    iget-object v0, v7, Landroid/content/pm/AuxiliaryResolveInfo;->filters:Ljava/util/List;

    :goto_51
    move-object/from16 v19, v0

    .line 1171
    move-object/from16 v9, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move/from16 v15, p6

    invoke-static/range {v9 .. v19}, Lcom/android/server/pm/InstantAppResolver;->buildEphemeralInstallerIntent(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private deliverNewIntent(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5
    .param p1, "activity"  # Lcom/android/server/wm/ActivityRecord;

    .line 2615
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    if-eqz v0, :cond_5

    .line 2616
    return-void

    .line 2619
    :cond_5
    const/16 v0, 0x7533

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/server/wm/ActivityStack;->logStartActivity(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;)V

    .line 2620
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/wm/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    .line 2622
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    .line 2623
    return-void
.end method

.method private getCrossUserChooseActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILandroid/app/ProfilerInfo;)Lcom/android/server/wm/ActivityStarter$ChooseActivityInfo;
    .registers 23
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "rInfo"  # Landroid/content/pm/ResolveInfo;
    .param p3, "aInfo"  # Landroid/content/pm/ActivityInfo;
    .param p4, "resolvedType"  # Ljava/lang/String;
    .param p5, "startFlags"  # I
    .param p6, "profilerInfo"  # Landroid/app/ProfilerInfo;

    .line 3375
    move-object/from16 v1, p0

    new-instance v0, Lcom/android/server/wm/ActivityStarter$ChooseActivityInfo;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/server/wm/ActivityStarter$ChooseActivityInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)V

    move-object v6, v0

    .line 3376
    .local v6, "ret":Lcom/android/server/wm/ActivityStarter$ChooseActivityInfo;
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/android/server/wm/ActivityStarter$ChooseActivityInfo;->isOk:Z

    .line 3378
    iget-object v0, v6, Lcom/android/server/wm/ActivityStarter$ChooseActivityInfo;->intent:Landroid/content/Intent;

    iget-object v7, v6, Lcom/android/server/wm/ActivityStarter$ChooseActivityInfo;->resolvedType:Ljava/lang/String;

    invoke-direct {v1, v0, v7}, Lcom/android/server/wm/ActivityStarter;->getCrossUserChoseIntents(Landroid/content/Intent;Ljava/lang/String;)[Landroid/content/Intent;

    move-result-object v7

    .line 3379
    .local v7, "initialIntents":[Landroid/content/Intent;
    if-eqz v7, :cond_8e

    array-length v0, v7

    const/4 v8, 0x1

    if-gt v0, v8, :cond_26

    move/from16 v12, p5

    move-object/from16 v13, p6

    goto :goto_92

    .line 3383
    :cond_26
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x104077c

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3386
    .local v9, "title":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {v0, v9}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wm/ActivityStarter$ChooseActivityInfo;->intent:Landroid/content/Intent;

    .line 3387
    iget-object v0, v6, Lcom/android/server/wm/ActivityStarter$ChooseActivityInfo;->intent:Landroid/content/Intent;

    const-string v10, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v0, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3388
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/android/server/wm/ActivityStarter$ChooseActivityInfo;->resolvedType:Ljava/lang/String;

    .line 3390
    :try_start_4a
    iget-object v10, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v11, v6, Lcom/android/server/wm/ActivityStarter$ChooseActivityInfo;->intent:Landroid/content/Intent;

    iget-object v12, v6, Lcom/android/server/wm/ActivityStarter$ChooseActivityInfo;->resolvedType:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wm/ActivityStarter$ChooseActivityInfo;->rInfo:Landroid/content/pm/ResolveInfo;

    .line 3391
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v10, v6, Lcom/android/server/wm/ActivityStarter$ChooseActivityInfo;->intent:Landroid/content/Intent;

    iget-object v11, v6, Lcom/android/server/wm/ActivityStarter$ChooseActivityInfo;->rInfo:Landroid/content/pm/ResolveInfo;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_5f} :catch_6e

    move/from16 v12, p5

    move-object/from16 v13, p6

    :try_start_63
    invoke-virtual {v0, v10, v11, v12, v13}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/wm/ActivityStarter$ChooseActivityInfo;->aInfo:Landroid/content/pm/ActivityInfo;

    .line 3392
    iput-boolean v8, v6, Lcom/android/server/wm/ActivityStarter$ChooseActivityInfo;->isOk:Z
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_6b} :catch_6c

    .line 3395
    goto :goto_8d

    .line 3393
    :catch_6c
    move-exception v0

    goto :goto_73

    :catch_6e
    move-exception v0

    move/from16 v12, p5

    move-object/from16 v13, p6

    .line 3394
    .local v0, "e":Ljava/lang/Exception;
    :goto_73
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mo2-ams-as : CrossUserChose E:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "ActivityTaskManager"

    invoke-static {v10, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3396
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_8d
    return-object v6

    .line 3379
    .end local v9  # "title":Ljava/lang/String;
    :cond_8e
    move/from16 v12, p5

    move-object/from16 v13, p6

    .line 3380
    :goto_92
    return-object v6
.end method

.method private getCrossUserChoseIntents(Landroid/content/Intent;Ljava/lang/String;)[Landroid/content/Intent;
    .registers 21
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "resolvedType"  # Ljava/lang/String;

    .line 3339
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v8

    .line 3340
    .local v8, "userManager":Landroid/os/UserManager;
    invoke-virtual {v8}, Landroid/os/UserManager;->getFlymeParallelSpaceUserIds()[I

    move-result-object v9

    .line 3341
    .local v9, "flymeParallelSpaceUserIds":[I
    if-eqz v9, :cond_69

    array-length v1, v9

    if-gtz v1, :cond_18

    move-object/from16 v17, v8

    goto :goto_6b

    .line 3345
    :cond_18
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v9

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v10, v1

    .line 3346
    .local v10, "initialIntentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    const/4 v1, 0x0

    invoke-direct {v0, v7, v1}, Lcom/android/server/wm/ActivityStarter;->appendUserId(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v11

    .line 3347
    .local v11, "it1":Landroid/content/Intent;
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3349
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 3350
    .local v12, "callerId":J
    array-length v14, v9

    move v15, v1

    :goto_2f
    if-ge v15, v14, :cond_59

    aget v6, v9, v15

    .line 3351
    .local v6, "fpsUserId":I
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/16 v16, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v6

    move v5, v6

    move-object/from16 v17, v8

    move v8, v6

    .end local v6  # "fpsUserId":I
    .local v8, "fpsUserId":I
    .local v17, "userManager":Landroid/os/UserManager;
    move/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 3352
    .local v1, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_54

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_4d

    .line 3353
    goto :goto_54

    .line 3355
    :cond_4d
    invoke-direct {v0, v7, v8}, Lcom/android/server/wm/ActivityStarter;->appendUserId(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v2

    .line 3356
    .local v2, "itTmp":Landroid/content/Intent;
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3350
    .end local v1  # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v2  # "itTmp":Landroid/content/Intent;
    .end local v8  # "fpsUserId":I
    :cond_54
    :goto_54
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v8, v17

    goto :goto_2f

    .line 3358
    .end local v17  # "userManager":Landroid/os/UserManager;
    .local v8, "userManager":Landroid/os/UserManager;
    :cond_59
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3360
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/Intent;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/Intent;

    return-object v1

    .line 3341
    .end local v10  # "initialIntentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v11  # "it1":Landroid/content/Intent;
    .end local v12  # "callerId":J
    :cond_69
    move-object/from16 v17, v8

    .line 3342
    .end local v8  # "userManager":Landroid/os/UserManager;
    .restart local v17  # "userManager":Landroid/os/UserManager;
    :goto_6b
    const/4 v1, 0x0

    return-object v1
.end method

.method static getExternalResult(I)I
    .registers 2
    .param p0, "result"  # I

    .line 623
    const/16 v0, 0x66

    if-eq p0, v0, :cond_6

    move v0, p0

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private getLaunchStack(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;
    .registers 13
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "launchFlags"  # I
    .param p3, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p4, "aOptions"  # Landroid/app/ActivityOptions;

    .line 2958
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/TaskRecord;

    if-eqz v0, :cond_9

    .line 2959
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0

    .line 2962
    :cond_9
    and-int/lit16 v0, p2, 0x1000

    const/4 v1, 0x1

    if-eqz v0, :cond_61

    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    if-eqz v0, :cond_13

    goto :goto_61

    .line 2971
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2974
    .local v0, "focusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz p3, :cond_20

    invoke-virtual {p3}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    goto :goto_21

    :cond_20
    move-object v2, v0

    .line 2976
    .local v2, "parentStack":Lcom/android/server/wm/ActivityStack;
    :goto_21
    if-eq v2, v0, :cond_24

    .line 2978
    return-object v2

    .line 2980
    :cond_24
    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    if-ne p3, v3, :cond_2d

    .line 2983
    return-object v0

    .line 2986
    :cond_2d
    if-eqz v2, :cond_47

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 2989
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2990
    invoke-virtual {v3, p1, v4, p3}, Lcom/android/server/wm/RootActivityContainer;->resolveActivityType(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;)I

    move-result v3

    .line 2991
    .local v3, "activityType":I
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5, v3, v1}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    return-object v1

    .line 2997
    .end local v3  # "activityType":I
    :cond_47
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 2998
    invoke-virtual {v3}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2999
    .local v3, "dockedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_60

    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-nez v4, :cond_60

    .line 3001
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v4, p1, p4, p3, v1}, Lcom/android/server/wm/RootActivityContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    return-object v1

    .line 3003
    :cond_60
    return-object v3

    .line 2964
    .end local v0  # "focusedStack":Lcom/android/server/wm/ActivityStack;
    .end local v2  # "parentStack":Lcom/android/server/wm/ActivityStack;
    .end local v3  # "dockedStack":Lcom/android/server/wm/ActivityStack;
    :cond_61
    :goto_61
    if-eqz p4, :cond_6b

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v0

    if-nez v0, :cond_6a

    goto :goto_6b

    :cond_6a
    const/4 v1, 0x0

    :cond_6b
    :goto_6b
    move v6, v1

    .line 2965
    .local v6, "onTop":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 2966
    move-object v3, p1

    move-object v4, p4

    move-object v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/RootActivityContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;ZLcom/android/server/wm/LaunchParamsController$LaunchParams;)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2967
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    return-object v0
.end method

.method private getReusableIntentActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 10

    .line 2324
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

    .line 2326
    :cond_10
    invoke-direct {p0, v3, v2}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    move v0, v5

    goto :goto_19

    :cond_18
    move v0, v4

    .line 2330
    .local v0, "putIntoExistingTask":Z
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

    .line 2331
    const/4 v1, 0x0

    .line 2332
    .local v1, "intentActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v6, :cond_49

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_49

    .line 2333
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    .line 2334
    .local v2, "task":Lcom/android/server/wm/TaskRecord;
    if-eqz v2, :cond_46

    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    goto :goto_47

    :cond_46
    const/4 v3, 0x0

    :goto_47
    move-object v1, v3

    .end local v2  # "task":Lcom/android/server/wm/TaskRecord;
    goto :goto_85

    .line 2335
    :cond_49
    if-eqz v0, :cond_85

    .line 2336
    iget v6, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v3, v6, :cond_62

    .line 2339
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2340
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v5

    .line 2339
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/RootActivityContainer;->findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto :goto_86

    .line 2341
    :cond_62
    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_7a

    .line 2344
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-eq v2, v8, :cond_75

    move v4, v5

    :cond_75
    invoke-virtual {v3, v6, v7, v4}, Lcom/android/server/wm/RootActivityContainer;->findActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto :goto_86

    .line 2348
    :cond_7a
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v4, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    .line 2349
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/RootActivityContainer;->findTask(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto :goto_86

    .line 2335
    :cond_85
    :goto_85
    nop

    .line 2353
    :goto_86
    if-eqz v1, :cond_9f

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2354
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v2

    if-nez v2, :cond_96

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 2355
    :cond_96
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v2

    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    if-eq v2, v3, :cond_9f

    .line 2357
    const/4 v1, 0x0

    .line 2360
    :cond_9f
    return-object v1
.end method

.method private handleBackgroundActivityAbort(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 15
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 1639
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBackgroundActivityStartsEnabled()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1640
    .local v0, "abort":Z
    if-nez v0, :cond_c

    .line 1641
    const/4 v1, 0x0

    return v1

    .line 1643
    :cond_c
    iget-object v9, p1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 1644
    .local v9, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    iget-object v10, p1, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 1645
    .local v10, "resultWho":Ljava/lang/String;
    iget v11, p1, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 1646
    .local v11, "requestCode":I
    if-eqz v9, :cond_22

    .line 1647
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v12

    .line 1648
    .local v12, "resultStack":Lcom/android/server/wm/ActivityStack;
    const/4 v3, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v12

    move-object v4, v9

    move-object v5, v10

    move v6, v11

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/ActivityStack;->sendActivityResultLocked(ILcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1653
    .end local v12  # "resultStack":Lcom/android/server/wm/ActivityStack;
    :cond_22
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->pendingOptions:Landroid/app/ActivityOptions;

    invoke-static {v2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1654
    return v1
.end method

.method static isDocumentLaunchesIntoExisting(I)Z
    .registers 2
    .param p0, "flags"  # I

    .line 3014
    const/high16 v0, 0x80000

    and-int/2addr v0, p0

    if-eqz v0, :cond_c

    const/high16 v0, 0x8000000

    and-int/2addr v0, p0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isLaunchModeOneOf(II)Z
    .registers 4
    .param p1, "mode1"  # I
    .param p2, "mode2"  # I

    .line 3010
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-eq p1, v0, :cond_9

    if-ne p2, v0, :cond_7

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

.method private isMainActivity(Landroid/content/Intent;)Z
    .registers 6
    .param p1, "intent"  # Landroid/content/Intent;

    .line 3248
    const/4 v0, 0x0

    .line 3249
    .local v0, "isMainActivity":Z
    if-eqz p1, :cond_1e

    .line 3250
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 3251
    .local v1, "action":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    .line 3252
    .local v2, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v3, "android.intent.action.MAIN"

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    if-eqz v2, :cond_1e

    .line 3253
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 3254
    const/4 v0, 0x1

    .line 3257
    .end local v1  # "action":Ljava/lang/String;
    .end local v2  # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1e
    return v0
.end method

.method private isNeedChooseActivity(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Ljava/lang/String;II)Z
    .registers 16
    .param p1, "rInfo"  # Landroid/content/pm/ResolveInfo;
    .param p2, "intent"  # Landroid/content/Intent;
    .param p3, "srcPkg"  # Ljava/lang/String;
    .param p4, "srcUserId"  # I
    .param p5, "targetUserId"  # I

    .line 3267
    const-string v0, "com.meizu.flyme.launcher"

    invoke-static {p3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_fe

    .line 3268
    const-string v0, "com.meizu.flyme.easylauncher"

    invoke-static {p3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fe

    .line 3269
    const-string v0, "com.meizu.flyme.childrenlauncher"

    invoke-static {p3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fe

    .line 3270
    const-string v0, "android"

    invoke-static {p3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fe

    .line 3271
    const-string v2, "system"

    invoke-static {p3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fe

    .line 3272
    const-string v2, "com.flyme.systemuitools"

    invoke-static {p3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    goto/16 :goto_fe

    .line 3276
    :cond_33
    if-eqz p1, :cond_fd

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_3b

    goto/16 :goto_fd

    .line 3279
    :cond_3b
    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3280
    .local v2, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v4, 0x0

    if-nez v3, :cond_44

    move-object v3, v4

    goto :goto_48

    :cond_44
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3281
    .local v3, "pkg":Ljava/lang/String;
    :goto_48
    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 3282
    return v1

    .line 3285
    :cond_4f
    if-nez p2, :cond_52

    .line 3286
    return v1

    .line 3288
    :cond_52
    iget v0, p2, Landroid/content/Intent;->mTargetUserId:I

    const/16 v5, -0x2710

    if-eq v0, v5, :cond_59

    .line 3289
    return v1

    .line 3291
    :cond_59
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 3292
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_60

    goto :goto_64

    :cond_60
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 3293
    .local v4, "dstPkg":Ljava/lang/String;
    :goto_64
    invoke-static {p3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 3294
    return v1

    .line 3297
    :cond_6b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 3298
    .local v5, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 3299
    .local v6, "cp":Landroid/content/ComponentName;
    if-nez v5, :cond_9e

    .line 3300
    if-nez v6, :cond_78

    .line 3301
    return v1

    .line 3303
    :cond_78
    invoke-virtual {v6}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v7

    .line 3304
    .local v7, "cpName":Ljava/lang/String;
    const-string v8, "{com.tencent.mm/com.tencent.mm.plugin.base.stub.WXEntryActivity}"

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9d

    .line 3305
    const-string v8, "{com.sina.weibo/com.sina.weibo.composerinde.ComposerDispatchActivity}"

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9d

    .line 3306
    const-string v8, "{com.tencent.mobileqq/com.tencent.open.agent.AgentActivity}"

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9d

    .line 3307
    const-string v8, "{com.sina.weibo/com.sina.weibo.SSOActivity}"

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9d

    .line 3308
    return v1

    .line 3310
    .end local v7  # "cpName":Ljava/lang/String;
    :cond_9d
    goto :goto_ea

    .line 3311
    :cond_9e
    const-string v7, "android.intent.action.MAIN"

    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c1

    .line 3312
    if-eqz p3, :cond_c0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_af

    goto :goto_c0

    .line 3315
    :cond_af
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v7

    .line 3316
    .local v7, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v7, :cond_bf

    const-string v8, "android.intent.category.LAUNCHER"

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_be

    goto :goto_bf

    .line 3320
    .end local v7  # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_be
    goto :goto_ea

    .line 3317
    .restart local v7  # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_bf
    :goto_bf
    return v1

    .line 3313
    .end local v7  # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_c0
    :goto_c0
    return v1

    .line 3320
    :cond_c1
    const-string v7, "android.intent.action.VIEW"

    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_ea

    .line 3321
    const-string v7, "android.intent.action.SEND"

    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_ea

    .line 3322
    const-string v7, "android.intent.action.SENDTO"

    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_ea

    .line 3323
    const-string v7, "android.intent.action.SEND_MULTIPLE"

    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_ea

    .line 3324
    const-string v7, "com.sina.weibo.sdk.action.ACTION_WEIBO_ACTIVITY"

    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_ea

    .line 3325
    return v1

    .line 3328
    :cond_ea
    :goto_ea
    invoke-static {p4, p5}, Landroid/os/UserHandle;->getCrossUserType(II)I

    move-result v7

    .line 3329
    .local v7, "crossUserType":I
    const/4 v8, 0x1

    if-eq v7, v8, :cond_fc

    const/4 v9, 0x2

    if-eq v7, v9, :cond_fc

    const/4 v9, 0x3

    if-eq v7, v9, :cond_fc

    const/4 v9, 0x4

    if-ne v7, v9, :cond_fb

    goto :goto_fc

    .line 3335
    :cond_fb
    return v1

    .line 3333
    :cond_fc
    :goto_fc
    return v8

    .line 3277
    .end local v0  # "cn":Landroid/content/ComponentName;
    .end local v2  # "ai":Landroid/content/pm/ActivityInfo;
    .end local v3  # "pkg":Ljava/lang/String;
    .end local v4  # "dstPkg":Ljava/lang/String;
    .end local v5  # "action":Ljava/lang/String;
    .end local v6  # "cp":Landroid/content/ComponentName;
    .end local v7  # "crossUserType":I
    :cond_fd
    :goto_fd
    return v1

    .line 3273
    :cond_fe
    :goto_fe
    return v1
.end method

.method private matchCrossUserLogining(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    .registers 26
    .param p1, "rInfo"  # Landroid/content/pm/ResolveInfo;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "resultTo"  # Landroid/os/IBinder;
    .param p4, "intent"  # Landroid/content/Intent;
    .param p5, "resolvedType"  # Ljava/lang/String;
    .param p6, "callingUid"  # I
    .param p7, "realCallingUid"  # I

    .line 3421
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string v5, "ActivityTaskManager"

    iget-boolean v0, v1, Lcom/android/server/wm/ActivityStarter;->matchMultiCrossUserLogin:Z

    const/4 v6, 0x0

    if-eqz v0, :cond_bd

    sget-boolean v0, Lcom/android/server/pm/UserManagerService;->isFlymeParallelSpaceOpen:Z

    if-nez v0, :cond_15

    goto/16 :goto_bd

    .line 3423
    :cond_15
    if-eqz v4, :cond_bc

    if-eqz v2, :cond_bc

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_1f

    goto/16 :goto_bc

    .line 3427
    :cond_1f
    :try_start_1f
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    return-object v6

    .line 3429
    :cond_2a
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mLoginComponentNames:[Landroid/content/ComponentName;

    array-length v7, v0

    const/4 v8, 0x0

    :goto_2e
    if-ge v8, v7, :cond_a1

    aget-object v9, v0, v8

    .line 3430
    .local v9, "component":Landroid/content/ComponentName;
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9e

    .line 3431
    iget-object v10, v1, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v10, v4}, Lcom/android/server/wm/RootActivityContainer;->isInAnyStack(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    .line 3432
    .local v10, "resultToRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v10, :cond_9e

    iget-object v11, v10, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    if-eqz v11, :cond_9e

    iget-object v11, v10, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9e

    .line 3433
    iget-object v11, v1, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v12, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v13, v10, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v11, v12, v13}, Lcom/android/server/wm/RootActivityContainer;->changedTargetUid(Ljava/lang/String;I)I

    move-result v11

    .line 3434
    .local v11, "userId":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Will send result to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " ; new userId= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3435
    if-ltz v11, :cond_9e

    .line 3436
    iget-object v12, v1, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/16 v16, 0x0

    iget-object v13, v1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v13, v13, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 3438
    move/from16 v15, p6

    move/from16 v14, p7

    invoke-static {v15, v14, v13}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v17

    .line 3436
    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move v15, v11

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v12
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_9b} :catch_a2

    .line 3440
    .local v12, "resultResolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v12, :cond_9e

    .line 3441
    return-object v12

    .line 3429
    .end local v9  # "component":Landroid/content/ComponentName;
    .end local v10  # "resultToRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v11  # "userId":I
    .end local v12  # "resultResolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_9e
    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    .line 3449
    :cond_a1
    goto :goto_bb

    .line 3447
    :catch_a2
    move-exception v0

    .line 3448
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " MulitiApp crossUser login fail:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3450
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_bb
    return-object v6

    .line 3423
    :cond_bc
    :goto_bc
    return-object v6

    .line 3422
    :cond_bd
    :goto_bd
    return-object v6
.end method

.method private onExecutionComplete()V
    .registers 2

    .line 631
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityStartController;->onExecutionComplete(Lcom/android/server/wm/ActivityStarter;)V

    .line 632
    return-void
.end method

.method private resumeTargetStackIfNeeded()V
    .registers 5

    .line 2563
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_f

    .line 2564
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_14

    .line 2566
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2568
    :goto_14
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/RootActivityContainer;->updateUserStack(ILcom/android/server/wm/ActivityStack;)V

    .line 2569
    return-void
.end method

.method private sendNewTaskResultRequestIfNeeded()V
    .registers 10

    .line 2178
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 2179
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    goto :goto_11

    :cond_10
    move-object v0, v1

    .line 2180
    .local v0, "sourceStack":Lcom/android/server/wm/ActivityStack;
    :goto_11
    if-eqz v0, :cond_38

    iget v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_38

    .line 2185
    const-string v2, "ActivityTaskManager"

    const-string v3, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    const/4 v3, -0x1

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v6, v2, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/ActivityStack;->sendActivityResultLocked(ILcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2189
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v1, v2, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 2191
    :cond_38
    return-void
.end method

.method private setInitialState(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;ZILcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)V
    .registers 28
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"  # Landroid/app/ActivityOptions;
    .param p3, "inTask"  # Lcom/android/server/wm/TaskRecord;
    .param p4, "doResume"  # Z
    .param p5, "startFlags"  # I
    .param p6, "sourceRecord"  # Lcom/android/server/wm/ActivityRecord;
    .param p7, "voiceSession"  # Landroid/service/voice/IVoiceInteractionSession;
    .param p8, "voiceInteractor"  # Lcom/android/internal/app/IVoiceInteractor;
    .param p9, "restrictedBgActivity"  # Z

    .line 2045
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lcom/android/server/wm/ActivityStarter;->reset(Z)V

    .line 2047
    iput-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2048
    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 2049
    move-object/from16 v14, p2

    iput-object v14, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2050
    iget v1, v9, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 2051
    move-object/from16 v15, p6

    iput-object v15, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2052
    move-object/from16 v8, p7

    iput-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 2053
    move-object/from16 v7, p8

    iput-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 2054
    move/from16 v6, p9

    iput-boolean v6, v0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    .line 2056
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 2060
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v1

    iget-object v2, v9, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    const/16 v16, 0x0

    move-object/from16 v2, p3

    move-object/from16 v4, p1

    move-object/from16 v17, v5

    move-object/from16 v5, p6

    move-object/from16 v6, p2

    move/from16 v7, v16

    move-object/from16 v8, v17

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 2062
    nop

    .line 2063
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasPreferredDisplay()Z

    move-result v1

    if-eqz v1, :cond_5e

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    goto :goto_5f

    .line 2064
    :cond_5e
    move v1, v13

    :goto_5f
    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    .line 2066
    iget v1, v9, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 2068
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v2, v1, :cond_6d

    move v1, v3

    goto :goto_6e

    :cond_6d
    move v1, v13

    :goto_6e
    iget v4, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v5, 0x2

    if-ne v5, v4, :cond_75

    move v4, v3

    goto :goto_76

    :cond_75
    move v4, v13

    :goto_76
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 2070
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    .line 2068
    invoke-direct {v0, v9, v1, v4, v6}, Lcom/android/server/wm/ActivityStarter;->adjustLaunchFlagsToDocumentMode(Lcom/android/server/wm/ActivityRecord;ZZI)I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2071
    iget-boolean v1, v9, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    const/high16 v4, 0x80000

    if-eqz v1, :cond_95

    .line 2072
    invoke-direct {v0, v5, v2}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v1

    if-nez v1, :cond_95

    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_95

    move v1, v3

    goto :goto_96

    :cond_95
    move v1, v13

    :goto_96
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 2075
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->sendNewTaskResultRequestIfNeeded()V

    .line 2077
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v4

    const/high16 v2, 0x10000000

    if-eqz v1, :cond_ab

    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_ab

    .line 2078
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2083
    :cond_ab
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_c1

    .line 2084
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v1, :cond_ba

    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-ne v1, v5, :cond_c1

    .line 2086
    :cond_ba
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x8000000

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2092
    :cond_c1
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v2, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x40000

    and-int/2addr v2, v4

    if-nez v2, :cond_cc

    move v2, v3

    goto :goto_cd

    :cond_cc
    move v2, v13

    :goto_cd
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    .line 2093
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    const-string v2, "ActivityTaskManager"

    if-eqz v1, :cond_ed

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startActivity() => mUserLeaving="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    :cond_ed
    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2100
    if-eqz v11, :cond_f7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->okToShowLocked()Z

    move-result v1

    if-nez v1, :cond_fb

    .line 2101
    :cond_f7
    iput-boolean v3, v9, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    .line 2102
    iput-boolean v13, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2105
    :cond_fb
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v4, 0x0

    if-eqz v1, :cond_148

    .line 2106
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_13c

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getTaskOverlay()Z

    move-result v1

    if-eqz v1, :cond_13c

    .line 2107
    iput-boolean v3, v9, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    .line 2108
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->canTaskOverlayResume()Z

    move-result v1

    if-nez v1, :cond_148

    .line 2109
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2110
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v5

    .line 2109
    invoke-virtual {v1, v5}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    .line 2111
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    if-eqz v1, :cond_12c

    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    goto :goto_12d

    :cond_12c
    move-object v5, v4

    .line 2112
    .local v5, "top":Lcom/android/server/wm/ActivityRecord;
    :goto_12d
    if-eqz v5, :cond_13b

    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v6

    if-nez v6, :cond_13b

    .line 2116
    iput-boolean v13, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2117
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 2119
    .end local v1  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v5  # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_13b
    goto :goto_148

    .line 2120
    :cond_13c
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v1

    if-eqz v1, :cond_148

    .line 2121
    iput-boolean v13, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2122
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 2127
    :cond_148
    :goto_148
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isAccessApplication()Z

    move-result v1

    if-eqz v1, :cond_164

    .line 2129
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 2130
    if-eqz v10, :cond_164

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 2131
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/wm/RootActivityContainer;->isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v1

    if-nez v1, :cond_164

    .line 2133
    iput-boolean v13, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2138
    :cond_164
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v5, 0x1000000

    and-int/2addr v1, v5

    if-eqz v1, :cond_16d

    move-object v1, v15

    goto :goto_16e

    :cond_16d
    move-object v1, v4

    :goto_16e
    iput-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 2140
    iput-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    .line 2147
    if-eqz v10, :cond_196

    iget-boolean v1, v10, Lcom/android/server/wm/TaskRecord;->inRecents:Z

    if-nez v1, :cond_196

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isAccessApplication()Z

    move-result v1

    if-nez v1, :cond_196

    .line 2149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting activity in task not in recents: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    iput-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    .line 2153
    :cond_196
    iput v12, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 2157
    and-int/lit8 v1, v12, 0x1

    if-eqz v1, :cond_1bc

    .line 2158
    move-object/from16 v1, p6

    .line 2159
    .local v1, "checkedCaller":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_1ac

    .line 2160
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 2161
    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2163
    :cond_1ac
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v4, v9, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1bc

    .line 2165
    iget v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 2169
    .end local v1  # "checkedCaller":Lcom/android/server/wm/ActivityRecord;
    :cond_1bc
    iget v1, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1c5

    move v1, v3

    goto :goto_1c6

    :cond_1c5
    move v1, v13

    :goto_1c6
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 2171
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    if-eqz v1, :cond_1d8

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isBackgroundActivityStartsEnabled()Z

    move-result v1

    if-nez v1, :cond_1d8

    .line 2172
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 2173
    iput-boolean v13, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2175
    :cond_1d8
    return-void
.end method

.method private setTargetStackAndMoveToFrontIfNeeded(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 21
    .param p1, "intentActivity"  # Lcom/android/server/wm/ActivityRecord;

    .line 2370
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2371
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2377
    iget v4, v0, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    iget v2, v2, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v2, :cond_47

    .line 2378
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 2379
    .local v2, "focusStack":Lcom/android/server/wm/ActivityStack;
    if-nez v2, :cond_25

    .line 2380
    move-object v4, v3

    goto :goto_2b

    :cond_25
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 2381
    .local v4, "curTop":Lcom/android/server/wm/ActivityRecord;
    :goto_2b
    if-eqz v4, :cond_32

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v7

    goto :goto_33

    :cond_32
    move-object v7, v3

    .line 2382
    .local v7, "topTask":Lcom/android/server/wm/TaskRecord;
    :goto_33
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v8

    if-ne v7, v8, :cond_44

    if-eqz v2, :cond_42

    .line 2383
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v8

    if-eq v7, v8, :cond_42

    goto :goto_44

    :cond_42
    move v8, v5

    goto :goto_45

    :cond_44
    :goto_44
    move v8, v6

    :goto_45
    move v2, v8

    .line 2384
    .end local v4  # "curTop":Lcom/android/server/wm/ActivityRecord;
    .end local v7  # "topTask":Lcom/android/server/wm/TaskRecord;
    .local v2, "differentTopTask":Z
    goto :goto_48

    .line 2386
    .end local v2  # "differentTopTask":Z
    :cond_47
    const/4 v2, 0x1

    .line 2389
    .restart local v2  # "differentTopTask":Z
    :goto_48
    if-eqz v2, :cond_13c

    iget-boolean v4, v0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v4, :cond_13c

    .line 2390
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v7, 0x400000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2391
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_75

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_13c

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    .line 2392
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2393
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v7

    if-ne v4, v7, :cond_13c

    .line 2395
    :cond_75
    iget-boolean v4, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v4, :cond_84

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_84

    .line 2396
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/wm/TaskRecord;)V

    .line 2405
    :cond_84
    iget v4, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v7, 0x10008000

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_8e

    move v4, v6

    goto :goto_8f

    :cond_8e
    move v4, v5

    .line 2408
    .local v4, "willClearTask":Z
    :goto_8f
    if-nez v4, :cond_13c

    .line 2409
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v8, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2410
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v9

    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2409
    invoke-direct {v0, v7, v8, v9, v10}, Lcom/android/server/wm/ActivityStarter;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;

    move-result-object v7

    .line 2411
    .local v7, "launchStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v18

    .line 2412
    .local v18, "intentTask":Lcom/android/server/wm/TaskRecord;
    if-eqz v7, :cond_124

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    if-ne v7, v8, :cond_ab

    goto/16 :goto_124

    .line 2419
    :cond_ab
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->inSplitScreenWindowingMode()Z

    move-result v8

    if-eqz v8, :cond_ea

    .line 2420
    iget v8, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    and-int/lit16 v8, v8, 0x1000

    if-eqz v8, :cond_c5

    .line 2423
    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    const-string v17, "launchToSide"

    move-object/from16 v11, v18

    move-object v12, v7

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    goto :goto_d6

    .line 2431
    :cond_c5
    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-boolean v10, v0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v12, v9, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v13, "bringToFrontInsteadOfAdjacentLaunch"

    move-object/from16 v9, v18

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/wm/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/wm/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2435
    :goto_d6
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v8

    .line 2436
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/wm/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v8

    if-eq v7, v8, :cond_e6

    move v8, v6

    goto :goto_e7

    :cond_e6
    move v8, v5

    :goto_e7
    iput-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    goto :goto_137

    .line 2437
    :cond_ea
    iget v8, v7, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget v9, v9, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    if-eq v8, v9, :cond_104

    .line 2441
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v11

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    const-string v17, "reparentToDisplay"

    move-object v12, v7

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2444
    iput-boolean v6, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    goto :goto_137

    .line 2445
    :cond_104
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v8

    if-eqz v8, :cond_137

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2446
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v8

    if-nez v8, :cond_137

    .line 2451
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v11

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    const-string v17, "reparentingHome"

    move-object v12, v7

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2454
    iput-boolean v6, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    goto :goto_137

    .line 2416
    :cond_124
    :goto_124
    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-boolean v10, v0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iget-object v11, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v12, v9, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v13, "bringingFoundTaskToFront"

    move-object/from16 v9, v18

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/wm/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/wm/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2418
    iput-boolean v6, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 2456
    :cond_137
    :goto_137
    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2460
    invoke-virtual {v1, v3, v5, v6}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 2467
    .end local v4  # "willClearTask":Z
    .end local v7  # "launchStack":Lcom/android/server/wm/ActivityStack;
    .end local v18  # "intentTask":Lcom/android/server/wm/TaskRecord;
    :cond_13c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2468
    iget-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    if-nez v3, :cond_175

    iget-boolean v3, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v3, :cond_175

    .line 2469
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v3, :cond_16e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bring to front target: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    :cond_16e
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const-string v4, "intentActivityFound"

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2474
    :cond_175
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, v4, v5, v5, v6}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;IILcom/android/server/wm/ActivityStack;)V

    .line 2478
    iget v3, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-eqz v3, :cond_190

    .line 2479
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v1, v4}, Lcom/android/server/wm/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    return-object v3

    .line 2481
    :cond_190
    return-object v1
.end method

.method private setTaskFromInTask()I
    .registers 14

    .line 2733
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/TaskRecord;)Z

    move-result v0

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_29

    .line 2734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    const/16 v0, 0x65

    return v0

    .line 2738
    :cond_29
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2742
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2743
    .local v0, "top":Lcom/android/server/wm/ActivityRecord;
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_78

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_78

    iget v4, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v5, v5, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v4, v5, :cond_78

    .line 2745
    iget v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v5, 0x20000000

    and-int/2addr v4, v5

    if-nez v4, :cond_5c

    .line 2746
    invoke-direct {p0, v3, v2}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 2747
    :cond_5c
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    iget-boolean v7, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, v1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v10, "inTaskToFront"

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/wm/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2749
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_73

    .line 2752
    return v3

    .line 2754
    :cond_73
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2755
    const/4 v1, 0x3

    return v1

    .line 2759
    :cond_78
    iget-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-nez v4, :cond_93

    .line 2760
    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    iget-boolean v7, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, v1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v10, "inTaskToFront"

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/wm/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2764
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2765
    return v2

    .line 2768
    :cond_93
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v2, v2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_cb

    .line 2770
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v4, v3}, Lcom/android/server/wm/RootActivityContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 2772
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    if-eq v2, v3, :cond_c2

    .line 2773
    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v12, "inTaskToFront"

    move-object v7, v2

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2775
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2778
    :cond_c2
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v4, v4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/ActivityStarter;->updateBounds(Lcom/android/server/wm/TaskRecord;Landroid/graphics/Rect;)V

    .line 2782
    .end local v2  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_cb
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v2, :cond_e0

    .line 2784
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    iget-boolean v5, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v8, "inTaskToFront"

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/wm/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 2787
    :cond_e0
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    const-string v3, "setTaskFromInTask"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;)V

    .line 2788
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_10f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting new activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in explicit task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2789
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2788
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    :cond_10f
    const/4 v1, 0x0

    return v1
.end method

.method private setTaskFromIntentActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 9
    .param p1, "intentActivity"  # Lcom/android/server/wm/ActivityRecord;

    .line 2485
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v1, 0x10008000

    and-int v2, v0, v1

    if-ne v2, v1, :cond_1b

    .line 2496
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 2497
    .local v0, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->performClearTaskLocked()V

    .line 2498
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/TaskRecord;

    .line 2499
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/TaskRecord;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskRecord;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2500
    .end local v0  # "task":Lcom/android/server/wm/TaskRecord;
    goto/16 :goto_cf

    :cond_1b
    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-nez v0, :cond_91

    const/4 v0, 0x3

    const/4 v2, 0x2

    .line 2501
    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_91

    .line 2525
    :cond_2a
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 2526
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 2525
    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 2531
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

    .line 2533
    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 2535
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->frontOfTask:Z

    if-eqz v0, :cond_5e

    .line 2536
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskRecord;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2538
    :cond_5e
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_cf

    .line 2539
    :cond_62
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskRecord;->isSameIntentFilter(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_cf

    .line 2542
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2543
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    goto :goto_cf

    .line 2545
    :cond_73
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-nez v0, :cond_7f

    .line 2550
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2551
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    goto :goto_cf

    .line 2552
    :cond_7f
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/TaskRecord;->rootWasReset:Z

    if-nez v0, :cond_cf

    .line 2558
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskRecord;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_cf

    .line 2502
    :cond_91
    :goto_91
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/TaskRecord;->performClearTaskLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2504
    .local v0, "top":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_ce

    .line 2508
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2511
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->setTask(Lcom/android/server/wm/TaskRecord;)V

    .line 2514
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2515
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    .line 2516
    .local v2, "task":Lcom/android/server/wm/TaskRecord;
    if-eqz v2, :cond_ce

    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    if-nez v3, :cond_ce

    .line 2519
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v6, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/server/wm/ActivityStarter;->computeStackFocus(Lcom/android/server/wm/ActivityRecord;ZILandroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2521
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    xor-int/2addr v1, v4

    const-string v4, "startActivityUnchecked"

    invoke-virtual {v3, v2, v1, v4}, Lcom/android/server/wm/ActivityStack;->addTask(Lcom/android/server/wm/TaskRecord;ZLjava/lang/String;)V

    .line 2525
    .end local v0  # "top":Lcom/android/server/wm/ActivityRecord;
    .end local v2  # "task":Lcom/android/server/wm/TaskRecord;
    :cond_ce
    nop

    .line 2560
    :cond_cf
    :goto_cf
    return-void
.end method

.method private setTaskFromReuseOrCreateNewTask(Lcom/android/server/wm/TaskRecord;)I
    .registers 16
    .param p1, "taskToAffiliate"  # Lcom/android/server/wm/TaskRecord;

    .line 2572
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

    .line 2573
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityStarter;->handleBackgroundActivityAbort(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2574
    const/16 v0, 0x66

    return v0

    .line 2577
    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/server/wm/ActivityStarter;->computeStackFocus(Lcom/android/server/wm/ActivityRecord;ZILandroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2582
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/TaskRecord;

    const-string v1, "ActivityTaskManager"

    const/4 v2, 0x0

    if-nez v0, :cond_a1

    .line 2583
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-nez v0, :cond_39

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v0, :cond_39

    move v10, v3

    goto :goto_3a

    :cond_39
    move v10, v2

    .line 2584
    .local v10, "toTop":Z
    :goto_3a
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v3, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 2585
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v5

    .line 2586
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_4b

    goto :goto_4f

    :cond_4b
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    :goto_4f
    move-object v6, v0

    .line 2587
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    if-eqz v0, :cond_55

    goto :goto_57

    :cond_55
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    :goto_57
    move-object v7, v0

    iget-object v8, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v9, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iget-object v11, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v12, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v13, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2584
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/wm/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 2589
    .local v0, "task":Lcom/android/server/wm/TaskRecord;
    const-string v3, "setTaskFromReuseOrCreateNewTask - mReuseTask"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;)V

    .line 2590
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v4, v4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/ActivityStarter;->updateBounds(Lcom/android/server/wm/TaskRecord;Landroid/graphics/Rect;)V

    .line 2592
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v3, :cond_a0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting new activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in new task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2593
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2592
    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    .end local v0  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v10  # "toTop":Z
    :cond_a0
    goto :goto_a6

    .line 2595
    :cond_a1
    const-string v3, "setTaskFromReuseOrCreateNewTask"

    invoke-direct {p0, v0, v3}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;)V

    .line 2598
    :goto_a6
    if-eqz p1, :cond_ad

    .line 2599
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->setTaskToAffiliateWith(Lcom/android/server/wm/TaskRecord;)V

    .line 2602
    :cond_ad
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2603
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    .line 2602
    invoke-virtual {v0, v3}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/TaskRecord;)Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 2604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    const/16 v0, 0x65

    return v0

    .line 2608
    :cond_d8
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_e3

    .line 2609
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const-string v1, "reuseOrNewTask"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2611
    :cond_e3
    return v2
.end method

.method private setTaskFromSourceRecord()I
    .registers 18

    .line 2626
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2627
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    .line 2626
    invoke-virtual {v1, v2}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/TaskRecord;)Z

    move-result v1

    const-string v2, "ActivityTaskManager"

    if-eqz v1, :cond_2f

    .line 2628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted Lock Task Mode violation mStartActivity="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    const/16 v1, 0x65

    return v1

    .line 2631
    :cond_2f
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2632
    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v3, :cond_47

    .line 2633
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/16 v7, 0x1081

    .line 2634
    invoke-virtual {v3, v7, v1, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v3

    iput v3, v6, Lcom/android/server/wm/ActivityRecord;->perfActivityBoostHandler:I

    .line 2638
    :cond_47
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    .line 2639
    .local v3, "sourceTask":Lcom/android/server/wm/TaskRecord;
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v13

    .line 2640
    .local v13, "sourceStack":Lcom/android/server/wm/ActivityStack;
    iget-boolean v6, v0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    if-eqz v6, :cond_6a

    iget v6, v0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    invoke-virtual {v3, v6}, Lcom/android/server/wm/TaskRecord;->containsAppUid(I)Z

    move-result v6

    if-nez v6, :cond_6a

    .line 2641
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-direct {v0, v6}, Lcom/android/server/wm/ActivityStarter;->handleBackgroundActivityAbort(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 2642
    const/16 v2, 0x66

    return v2

    .line 2649
    :cond_6a
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    if-eqz v6, :cond_71

    iget v6, v6, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    goto :goto_73

    .line 2650
    :cond_71
    iget v6, v13, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    :goto_73
    move v14, v6

    .line 2651
    .local v14, "targetDisplayId":I
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    const/4 v15, 0x0

    if-ne v6, v3, :cond_86

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2652
    invoke-virtual {v6, v14}, Lcom/android/server/wm/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v6

    if-nez v6, :cond_84

    goto :goto_86

    :cond_84
    move v6, v15

    goto :goto_87

    :cond_86
    :goto_86
    move v6, v5

    :goto_87
    move/from16 v16, v6

    .line 2653
    .local v16, "moveStackAllowed":Z
    if-eqz v16, :cond_c1

    .line 2654
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v7, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2655
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2654
    invoke-direct {v0, v6, v7, v8, v9}, Lcom/android/server/wm/ActivityStarter;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2658
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    if-nez v6, :cond_b3

    iget v6, v13, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    if-eq v14, v6, :cond_b3

    .line 2660
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v7, v13, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    iget-object v8, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/server/wm/RootActivityContainer;->getValidLaunchStackOnDisplay(ILcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2663
    :cond_b3
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    if-nez v6, :cond_c1

    .line 2666
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6, v7, v4}, Lcom/android/server/wm/RootActivityContainer;->getNextValidLaunchStack(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2671
    :cond_c1
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    if-nez v7, :cond_c8

    .line 2672
    iput-object v13, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    goto :goto_d4

    .line 2673
    :cond_c8
    if-eq v7, v13, :cond_d4

    .line 2674
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-string v12, "launchToSide"

    move-object v6, v3

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 2678
    :cond_d4
    :goto_d4
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    .line 2679
    .local v4, "topTask":Lcom/android/server/wm/TaskRecord;
    if-eq v4, v3, :cond_f1

    iget-boolean v6, v0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    if-nez v6, :cond_f1

    .line 2680
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-boolean v8, v0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iget-object v9, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v10, v7, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v11, "sourceTaskToFront"

    move-object v7, v3

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/wm/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    goto :goto_fc

    .line 2682
    :cond_f1
    iget-boolean v6, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v6, :cond_fc

    .line 2683
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const-string v7, "sourceStackToFront"

    invoke-virtual {v6, v7}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2686
    :cond_fc
    :goto_fc
    iget-boolean v6, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/16 v9, 0x7533

    if-nez v6, :cond_135

    iget v6, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v10, 0x4000000

    and-int/2addr v10, v6

    if-eqz v10, :cond_135

    .line 2689
    iget-object v10, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v10, v6}, Lcom/android/server/wm/TaskRecord;->performClearTaskLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 2690
    .local v6, "top":Lcom/android/server/wm/ActivityRecord;
    iput-boolean v5, v0, Lcom/android/server/wm/ActivityStarter;->mKeepCurTransition:Z

    .line 2691
    if-eqz v6, :cond_134

    .line 2692
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v5

    invoke-static {v9, v2, v5}, Lcom/android/server/wm/ActivityStack;->logStartActivity(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;)V

    .line 2693
    invoke-direct {v0, v6}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2695
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iput-object v8, v2, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2696
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v2, :cond_12e

    .line 2697
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 2699
    :cond_12e
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2700
    return v7

    .line 2691
    .end local v6  # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_134
    goto :goto_16a

    .line 2702
    :cond_135
    iget-boolean v5, v0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-nez v5, :cond_16a

    iget v5, v0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v6, 0x20000

    and-int/2addr v5, v6

    if-eqz v5, :cond_16a

    .line 2706
    iget-object v5, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/TaskRecord;->findActivityInHistoryLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 2707
    .local v5, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_16b

    .line 2708
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    .line 2709
    .local v2, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v2, v5}, Lcom/android/server/wm/TaskRecord;->moveActivityToFrontLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 2710
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 2711
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v9, v6, v2}, Lcom/android/server/wm/ActivityStack;->logStartActivity(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;)V

    .line 2712
    invoke-direct {v0, v5}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2713
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iput-object v8, v6, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2714
    iget-boolean v6, v0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v6, :cond_169

    .line 2715
    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v6}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 2717
    :cond_169
    return v7

    .line 2702
    .end local v2  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v5  # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_16a
    :goto_16a
    nop

    .line 2723
    :cond_16b
    const-string v5, "setTaskFromSourceRecord"

    invoke-direct {v0, v3, v5}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;)V

    .line 2724
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v5, :cond_1a2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting new activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " in existing task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2725
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " from source "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2724
    invoke-static {v2, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    :cond_1a2
    return v15
.end method

.method private setTaskToCurrentTopOrCreateNewTask()I
    .registers 15

    .line 2810
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/server/wm/ActivityStarter;->computeStackFocus(Lcom/android/server/wm/ActivityRecord;ZILandroid/app/ActivityOptions;)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2811
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_18

    .line 2812
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const-string v1, "addingToTopTask"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2814
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2815
    .local v0, "prev":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    const/16 v2, 0x66

    if-eqz v1, :cond_2f

    if-nez v0, :cond_2f

    .line 2816
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityStarter;->handleBackgroundActivityAbort(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 2817
    return v2

    .line 2820
    :cond_2f
    if-eqz v0, :cond_36

    .line 2821
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    goto :goto_55

    :cond_36
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v5, v5, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 2822
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

    .line 2821
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/wm/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    .line 2824
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    :goto_55
    iget-boolean v4, p0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    if-eqz v4, :cond_6c

    if-eqz v0, :cond_6c

    iget v4, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    invoke-virtual {v1, v4}, Lcom/android/server/wm/TaskRecord;->containsAppUid(I)Z

    move-result v4

    if-nez v4, :cond_6c

    .line 2825
    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-direct {p0, v4}, Lcom/android/server/wm/ActivityStarter;->handleBackgroundActivityAbort(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 2826
    return v2

    .line 2829
    :cond_6c
    const-string v2, "setTaskToCurrentTopOrCreateNewTask"

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/ActivityStarter;->addOrReparentStartingActivity(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;)V

    .line 2830
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityStack;->positionChildWindowContainerAtTop(Lcom/android/server/wm/TaskRecord;)V

    .line 2831
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v2, :cond_a0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting new activity "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in new guessed "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2832
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2831
    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2833
    :cond_a0
    return v3
.end method

.method private startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/wm/SafeActivityOptions;ZZ[Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I
    .registers 54
    .param p1, "caller"  # Landroid/app/IApplicationThread;
    .param p2, "intent"  # Landroid/content/Intent;
    .param p3, "ephemeralIntent"  # Landroid/content/Intent;
    .param p4, "resolvedType"  # Ljava/lang/String;
    .param p5, "aInfo"  # Landroid/content/pm/ActivityInfo;
    .param p6, "rInfo"  # Landroid/content/pm/ResolveInfo;
    .param p7, "voiceSession"  # Landroid/service/voice/IVoiceInteractionSession;
    .param p8, "voiceInteractor"  # Lcom/android/internal/app/IVoiceInteractor;
    .param p9, "resultTo"  # Landroid/os/IBinder;
    .param p10, "resultWho"  # Ljava/lang/String;
    .param p11, "requestCode"  # I
    .param p12, "callingPid"  # I
    .param p13, "callingUid"  # I
    .param p14, "callingPackage"  # Ljava/lang/String;
    .param p15, "realCallingPid"  # I
    .param p16, "realCallingUid"  # I
    .param p17, "startFlags"  # I
    .param p18, "options"  # Lcom/android/server/wm/SafeActivityOptions;
    .param p19, "ignoreTargetSecurity"  # Z
    .param p20, "componentSpecified"  # Z
    .param p21, "outActivity"  # [Lcom/android/server/wm/ActivityRecord;
    .param p22, "inTask"  # Lcom/android/server/wm/TaskRecord;
    .param p23, "reason"  # Ljava/lang/String;
    .param p24, "allowPendingRemoteAnimationRegistryLookup"  # Z
    .param p25, "originatingPendingIntent"  # Lcom/android/server/am/PendingIntentRecord;
    .param p26, "allowBackgroundActivityStart"  # Z

    .line 599
    move-object/from16 v15, p0

    invoke-static/range {p23 .. p23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 602
    move-object/from16 v14, p23

    iput-object v14, v15, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 603
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v15, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    .line 604
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/wm/ActivityRecord;

    move-object/from16 v21, v0

    const/4 v1, 0x0

    const/16 v26, 0x0

    aput-object v1, v0, v26

    .line 606
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

    .line 613
    if-eqz p21, :cond_5d

    .line 615
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/wm/ActivityRecord;

    aget-object v0, v0, v26

    aput-object v0, p21, v26

    .line 618
    :cond_5d
    iget v0, v1, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    invoke-static {v0}, Lcom/android/server/wm/ActivityStarter;->getExternalResult(I)I

    move-result v0

    return v0

    .line 600
    :cond_64
    move-object v1, v15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Need to specify a reason."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/wm/SafeActivityOptions;ZZ[Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;ZLcom/android/server/am/PendingIntentRecord;Z)I
    .registers 94
    .param p1, "caller"  # Landroid/app/IApplicationThread;
    .param p2, "intent"  # Landroid/content/Intent;
    .param p3, "ephemeralIntent"  # Landroid/content/Intent;
    .param p4, "resolvedType"  # Ljava/lang/String;
    .param p5, "aInfo"  # Landroid/content/pm/ActivityInfo;
    .param p6, "rInfo"  # Landroid/content/pm/ResolveInfo;
    .param p7, "voiceSession"  # Landroid/service/voice/IVoiceInteractionSession;
    .param p8, "voiceInteractor"  # Lcom/android/internal/app/IVoiceInteractor;
    .param p9, "resultTo"  # Landroid/os/IBinder;
    .param p10, "resultWho"  # Ljava/lang/String;
    .param p11, "requestCode"  # I
    .param p12, "callingPid"  # I
    .param p13, "callingUid"  # I
    .param p14, "callingPackage"  # Ljava/lang/String;
    .param p15, "realCallingPid"  # I
    .param p16, "realCallingUid"  # I
    .param p17, "startFlags"  # I
    .param p18, "options"  # Lcom/android/server/wm/SafeActivityOptions;
    .param p19, "ignoreTargetSecurity"  # Z
    .param p20, "componentSpecified"  # Z
    .param p21, "outActivity"  # [Lcom/android/server/wm/ActivityRecord;
    .param p22, "inTask"  # Lcom/android/server/wm/TaskRecord;
    .param p23, "allowPendingRemoteAnimationRegistryLookup"  # Z
    .param p24, "originatingPendingIntent"  # Lcom/android/server/am/PendingIntentRecord;
    .param p25, "allowBackgroundActivityStart"  # Z

    .line 643
    move-object/from16 v14, p0

    move-object/from16 v13, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p4

    move-object/from16 v10, p5

    move-object/from16 v9, p9

    move/from16 v8, p15

    move/from16 v7, p16

    move/from16 v6, p17

    move-object/from16 v5, p18

    move-object/from16 v4, p21

    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;)V

    .line 644
    const/4 v0, 0x0

    .line 647
    .local v0, "err":I
    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {v11, v2, v2, v2, v3}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v1

    .line 648
    .local v1, "str":Ljava/lang/String;
    const-string v15, "com.tencent.mm/.plugin.luckymoney.ui"

    invoke-virtual {v1, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_42

    .line 649
    invoke-static {}, Landroid/scene/SceneClient;->getInstance()Landroid/scene/SceneClient;

    move-result-object v15

    new-instance v3, Landroid/scene/Scene;

    const v2, 0x1000015

    move/from16 v16, v0

    .end local v0  # "err":I
    .local v16, "err":I
    const-string v0, "WeixinLuckyMoney"

    invoke-direct {v3, v2, v0}, Landroid/scene/Scene;-><init>(ILjava/lang/String;)V

    invoke-virtual {v15, v3}, Landroid/scene/SceneClient;->notifyScene(Landroid/scene/Scene;)V

    goto :goto_44

    .line 648
    .end local v16  # "err":I
    .restart local v0  # "err":I
    :cond_42
    move/from16 v16, v0

    .line 655
    .end local v0  # "err":I
    .restart local v16  # "err":I
    :goto_44
    if-eqz v5, :cond_4c

    invoke-virtual/range {p18 .. p18}, Lcom/android/server/wm/SafeActivityOptions;->popAppVerificationBundle()Landroid/os/Bundle;

    move-result-object v0

    move-object v15, v0

    goto :goto_4d

    :cond_4c
    const/4 v15, 0x0

    .line 659
    .local v15, "verificationBundle":Landroid/os/Bundle;
    :goto_4d
    if-eqz v10, :cond_77

    .line 660
    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v10, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    if-eqz v17, :cond_62

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v17

    goto :goto_64

    :cond_62
    const-string v17, "null"

    :goto_64
    move-object/from16 v19, v17

    iget-object v3, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move/from16 v20, v3

    invoke-static/range {v17 .. v22}, Lcom/android/server/wm/DataMonInjector;->reportActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 664
    :cond_77
    const/4 v0, 0x0

    .line 665
    .local v0, "callerApp":Lcom/android/server/wm/WindowProcessController;
    const-string v3, "ActivityTaskManager"

    if-eqz v13, :cond_cb

    .line 666
    iget-object v2, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, v13}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 667
    if-eqz v0, :cond_92

    .line 668
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v2

    .line 669
    .end local p12  # "callingPid":I
    .local v2, "callingPid":I
    move-object/from16 v32, v1

    .end local v1  # "str":Ljava/lang/String;
    .local v32, "str":Ljava/lang/String;
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v33, v2

    move-object v2, v0

    .end local p13  # "callingUid":I
    .local v1, "callingUid":I
    goto :goto_d4

    .line 671
    .end local v2  # "callingPid":I
    .end local v32  # "str":Ljava/lang/String;
    .local v1, "str":Ljava/lang/String;
    .restart local p12  # "callingPid":I
    .restart local p13  # "callingUid":I
    :cond_92
    move-object/from16 v32, v1

    .end local v1  # "str":Ljava/lang/String;
    .restart local v32  # "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find app for caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p12

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v17, v0

    .end local v0  # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v17, "callerApp":Lcom/android/server/wm/WindowProcessController;
    const-string v0, ") when starting: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 671
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const/16 v0, -0x5e

    move/from16 v1, p13

    move/from16 v16, v0

    move/from16 v33, v2

    move-object/from16 v2, v17

    .end local v16  # "err":I
    .local v0, "err":I
    goto :goto_d4

    .line 665
    .end local v17  # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v32  # "str":Ljava/lang/String;
    .local v0, "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v1  # "str":Ljava/lang/String;
    .restart local v16  # "err":I
    :cond_cb
    move/from16 v2, p12

    move-object/from16 v32, v1

    .end local v1  # "str":Ljava/lang/String;
    .restart local v32  # "str":Ljava/lang/String;
    move/from16 v1, p13

    move/from16 v33, v2

    move-object v2, v0

    .line 678
    .end local v0  # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local p12  # "callingPid":I
    .end local p13  # "callingUid":I
    .local v1, "callingUid":I
    .local v2, "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v33, "callingPid":I
    :goto_d4
    if-eqz v10, :cond_e3

    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_e3

    .line 679
    iget-object v0, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    goto :goto_e4

    :cond_e3
    const/4 v0, 0x0

    :goto_e4
    move/from16 p12, v0

    .line 682
    .local p12, "userId":I
    const/4 v0, 0x0

    .line 683
    .local v0, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    const/16 v17, 0x0

    .line 684
    .local v17, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v9, :cond_121

    .line 685
    move-object/from16 p13, v0

    .end local v0  # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local p13, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0, v9}, Lcom/android/server/wm/RootActivityContainer;->isInAnyStack(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 686
    .end local p13  # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v0  # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v18, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    if-eqz v18, :cond_113

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Will send result to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_113
    if-eqz v0, :cond_11f

    .line 689
    if-ltz p11, :cond_11f

    iget-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v4, :cond_11f

    .line 690
    move-object/from16 v17, v0

    move-object v5, v0

    goto :goto_125

    .line 695
    :cond_11f
    move-object v5, v0

    goto :goto_125

    .line 684
    :cond_121
    move-object/from16 p13, v0

    .end local v0  # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local p13  # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v5, p13

    .line 695
    .end local p13  # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v5, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :goto_125
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v51

    .line 697
    .local v51, "launchFlags":I
    const/high16 v0, 0x2000000

    and-int v0, v51, v0

    if-eqz v0, :cond_166

    if-eqz v5, :cond_166

    .line 700
    if-ltz p11, :cond_139

    .line 701
    invoke-static/range {p18 .. p18}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 702
    const/16 v0, -0x5d

    return v0

    .line 704
    :cond_139
    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 705
    .end local v17  # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .local v0, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_144

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked()Z

    move-result v4

    if-nez v4, :cond_144

    .line 706
    const/4 v0, 0x0

    .line 708
    :cond_144
    iget-object v4, v5, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 709
    .end local p10  # "resultWho":Ljava/lang/String;
    .local v4, "resultWho":Ljava/lang/String;
    iget v6, v5, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 710
    .end local p11  # "requestCode":I
    .local v6, "requestCode":I
    const/4 v7, 0x0

    iput-object v7, v5, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 711
    if-eqz v0, :cond_150

    .line 712
    invoke-virtual {v0, v5, v4, v6}, Lcom/android/server/wm/ActivityRecord;->removeResultsLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V

    .line 714
    :cond_150
    iget v7, v5, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    if-ne v7, v1, :cond_15d

    .line 725
    iget-object v7, v5, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v60, v0

    move-object/from16 v59, v4

    move/from16 v61, v6

    .end local p14  # "callingPackage":Ljava/lang/String;
    .local v7, "callingPackage":Ljava/lang/String;
    goto :goto_16e

    .line 714
    .end local v7  # "callingPackage":Ljava/lang/String;
    .restart local p14  # "callingPackage":Ljava/lang/String;
    :cond_15d
    move-object/from16 v7, p14

    move-object/from16 v60, v0

    move-object/from16 v59, v4

    move/from16 v61, v6

    goto :goto_16e

    .line 729
    .end local v0  # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v4  # "resultWho":Ljava/lang/String;
    .end local v6  # "requestCode":I
    .restart local v17  # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local p10  # "resultWho":Ljava/lang/String;
    .restart local p11  # "requestCode":I
    :cond_166
    move-object/from16 v59, p10

    move/from16 v61, p11

    move-object/from16 v7, p14

    move-object/from16 v60, v17

    .end local v17  # "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .end local p10  # "resultWho":Ljava/lang/String;
    .end local p11  # "requestCode":I
    .end local p14  # "callingPackage":Ljava/lang/String;
    .restart local v7  # "callingPackage":Ljava/lang/String;
    .local v59, "resultWho":Ljava/lang/String;
    .local v60, "resultRecord":Lcom/android/server/wm/ActivityRecord;
    .local v61, "requestCode":I
    :goto_16e
    if-nez v16, :cond_178

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_178

    .line 732
    const/16 v16, -0x5b

    .line 735
    :cond_178
    if-nez v16, :cond_17e

    if-nez v10, :cond_17e

    .line 738
    const/16 v16, -0x5c

    .line 741
    :cond_17e
    const-string v4, "Failure checking voice capabilities"

    if-nez v16, :cond_1d2

    if-eqz v5, :cond_1d2

    .line 742
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_1d2

    .line 747
    const/high16 v0, 0x10000000

    and-int v0, v51, v0

    if-nez v0, :cond_1d2

    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v0, v6, :cond_1d2

    .line 750
    :try_start_19e
    const-string v0, "android.intent.category.VOICE"

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 751
    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 752
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 751
    invoke-interface {v0, v6, v11, v12}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1cb

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity being started in current voice task does not support voice: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c7
    .catch Landroid/os/RemoteException; {:try_start_19e .. :try_end_1c7} :catch_1cc

    .line 756
    const/16 v0, -0x61

    move/from16 v16, v0

    .line 761
    :cond_1cb
    goto :goto_1d2

    .line 758
    :catch_1cc
    move-exception v0

    .line 759
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 760
    const/16 v16, -0x61

    .line 765
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_1d2
    :goto_1d2
    if-nez v16, :cond_20a

    if-eqz p7, :cond_20a

    .line 769
    :try_start_1d6
    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-interface {v0, v6, v11, v12}, Landroid/content/pm/IPackageManager;->activitySupportsIntent(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1fe

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity being started in new voice task does not support: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1fa
    .catch Landroid/os/RemoteException; {:try_start_1d6 .. :try_end_1fa} :catch_201

    .line 774
    const/16 v0, -0x61

    move/from16 v16, v0

    .line 779
    :cond_1fe
    move/from16 v62, v16

    goto :goto_20c

    .line 776
    :catch_201
    move-exception v0

    .line 777
    .restart local v0  # "e":Landroid/os/RemoteException;
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 778
    const/16 v16, -0x61

    move/from16 v62, v16

    goto :goto_20c

    .line 782
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_20a
    move/from16 v62, v16

    .end local v16  # "err":I
    .local v62, "err":I
    :goto_20c
    if-nez v60, :cond_211

    .line 783
    const/16 v52, 0x0

    goto :goto_217

    :cond_211
    invoke-virtual/range {v60 .. v60}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    move-object/from16 v52, v0

    .line 785
    .local v52, "resultStack":Lcom/android/server/wm/ActivityStack;
    :goto_217
    if-eqz v62, :cond_22e

    .line 786
    if-eqz v60, :cond_22a

    .line 787
    const/16 v53, -0x1

    const/16 v57, 0x0

    const/16 v58, 0x0

    move-object/from16 v54, v60

    move-object/from16 v55, v59

    move/from16 v56, v61

    invoke-virtual/range {v52 .. v58}, Lcom/android/server/wm/ActivityStack;->sendActivityResultLocked(ILcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 790
    :cond_22a
    invoke-static/range {p18 .. p18}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 791
    return v62

    .line 794
    :cond_22e
    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    if-eqz p22, :cond_235

    const/16 v25, 0x1

    goto :goto_237

    :cond_235
    const/16 v25, 0x0

    :goto_237
    move-object/from16 v16, v0

    move-object/from16 v17, p2

    move-object/from16 v18, p5

    move-object/from16 v19, v59

    move/from16 v20, v61

    move/from16 v21, v33

    move/from16 v22, v1

    move-object/from16 v23, v7

    move/from16 v24, p19

    move-object/from16 v26, v2

    move-object/from16 v27, v60

    move-object/from16 v28, v52

    invoke-virtual/range {v16 .. v28}, Lcom/android/server/wm/ActivityStackSupervisor;->checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;ZZLcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack;)Z

    move-result v0

    const/4 v4, 0x1

    xor-int/2addr v0, v4

    .line 797
    .local v0, "abort":Z
    iget-object v6, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    iget-object v8, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 p10, v1

    move-object/from16 v30, v32

    .end local v1  # "callingUid":I
    .end local v32  # "str":Ljava/lang/String;
    .local v30, "str":Ljava/lang/String;
    .local p10, "callingUid":I
    move-object v1, v6

    move-object v6, v2

    .end local v2  # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v6, "callerApp":Lcom/android/server/wm/WindowProcessController;
    move-object/from16 v2, p2

    move-object v12, v3

    move-object/from16 v31, v15

    const/4 v15, 0x0

    .end local v15  # "verificationBundle":Landroid/os/Bundle;
    .local v31, "verificationBundle":Landroid/os/Bundle;
    move/from16 v3, p10

    move v15, v4

    move/from16 v4, v33

    move-object/from16 p11, v5

    .end local v5  # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local p11, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v5, p4

    move-object/from16 p13, v6

    .end local v6  # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local p13, "callerApp":Lcom/android/server/wm/WindowProcessController;
    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    xor-int/2addr v1, v15

    or-int/2addr v0, v1

    .line 799
    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getPermissionPolicyInternal()Lcom/android/server/policy/PermissionPolicyInternal;

    move-result-object v1

    move/from16 v8, p10

    .end local p10  # "callingUid":I
    .local v8, "callingUid":I
    invoke-virtual {v1, v11, v8, v7}, Lcom/android/server/policy/PermissionPolicyInternal;->checkStartActivity(Landroid/content/Intent;ILjava/lang/String;)Z

    move-result v1

    xor-int/2addr v1, v15

    or-int v16, v0, v1

    .line 802
    .end local v0  # "abort":Z
    .local v16, "abort":Z
    const/16 v17, 0x0

    .line 803
    .local v17, "restrictedBgActivity":Z
    if-nez v16, :cond_2c8

    .line 805
    const-wide/16 v5, 0x40

    :try_start_28e
    const-string v0, "shouldAbortBackgroundActivityStart"

    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_293
    .catchall {:try_start_28e .. :try_end_293} :catchall_2bb

    .line 807
    move-object/from16 v1, p0

    move v2, v8

    move/from16 v3, v33

    move-object v4, v7

    move-wide/from16 v18, v5

    move/from16 v5, p16

    move/from16 v6, p15

    move-object v15, v7

    .end local v7  # "callingPackage":Ljava/lang/String;
    .local v15, "callingPackage":Ljava/lang/String;
    move-object/from16 v7, p13

    move/from16 v13, p15

    move/from16 v34, v8

    .end local v8  # "callingUid":I
    .local v34, "callingUid":I
    move-object/from16 v8, p24

    move/from16 v9, p25

    move-object/from16 v35, v12

    move-object v12, v10

    move-object/from16 v10, p2

    :try_start_2af
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/wm/ActivityStarter;->shouldAbortBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLandroid/content/Intent;)Z

    move-result v0
    :try_end_2b3
    .catchall {:try_start_2af .. :try_end_2b3} :catchall_2b9

    .line 811
    .end local v17  # "restrictedBgActivity":Z
    .local v0, "restrictedBgActivity":Z
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 812
    move/from16 v53, v0

    goto :goto_2d2

    .line 811
    .end local v0  # "restrictedBgActivity":Z
    .restart local v17  # "restrictedBgActivity":Z
    :catchall_2b9
    move-exception v0

    goto :goto_2c4

    .end local v15  # "callingPackage":Ljava/lang/String;
    .end local v34  # "callingUid":I
    .restart local v7  # "callingPackage":Ljava/lang/String;
    .restart local v8  # "callingUid":I
    :catchall_2bb
    move-exception v0

    move/from16 v13, p15

    move-wide/from16 v18, v5

    move-object v15, v7

    move/from16 v34, v8

    move-object v12, v10

    .end local v7  # "callingPackage":Ljava/lang/String;
    .end local v8  # "callingUid":I
    .restart local v15  # "callingPackage":Ljava/lang/String;
    .restart local v34  # "callingUid":I
    :goto_2c4
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 803
    .end local v15  # "callingPackage":Ljava/lang/String;
    .end local v34  # "callingUid":I
    .restart local v7  # "callingPackage":Ljava/lang/String;
    .restart local v8  # "callingUid":I
    :cond_2c8
    move/from16 v13, p15

    move-object v15, v7

    move/from16 v34, v8

    move-object/from16 v35, v12

    move-object v12, v10

    .end local v7  # "callingPackage":Ljava/lang/String;
    .end local v8  # "callingUid":I
    .restart local v15  # "callingPackage":Ljava/lang/String;
    .restart local v34  # "callingUid":I
    move/from16 v53, v17

    .line 816
    .end local v17  # "restrictedBgActivity":Z
    .local v53, "restrictedBgActivity":Z
    :goto_2d2
    move-object/from16 v10, p18

    if-eqz v10, :cond_2df

    .line 817
    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    move-object/from16 v9, p13

    .end local p13  # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v9, "callerApp":Lcom/android/server/wm/WindowProcessController;
    invoke-virtual {v10, v11, v12, v9, v0}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v3

    goto :goto_2e2

    .end local v9  # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local p13  # "callerApp":Lcom/android/server/wm/WindowProcessController;
    :cond_2df
    move-object/from16 v9, p13

    .end local p13  # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v9  # "callerApp":Lcom/android/server/wm/WindowProcessController;
    const/4 v3, 0x0

    :goto_2e2
    move-object v0, v3

    .line 818
    .local v0, "checkedOptions":Landroid/app/ActivityOptions;
    if-eqz p23, :cond_2f6

    .line 819
    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    .line 820
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStartController;->getPendingRemoteAnimationRegistry()Lcom/android/server/wm/PendingRemoteAnimationRegistry;

    move-result-object v1

    .line 821
    invoke-virtual {v1, v15, v0}, Lcom/android/server/wm/PendingRemoteAnimationRegistry;->overrideOptionsIfNeeded(Ljava/lang/String;Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    move-result-object v0

    move-object/from16 v36, v0

    goto :goto_2f8

    .line 818
    :cond_2f6
    move-object/from16 v36, v0

    .line 823
    .end local v0  # "checkedOptions":Landroid/app/ActivityOptions;
    .local v36, "checkedOptions":Landroid/app/ActivityOptions;
    :goto_2f8
    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_31b

    .line 827
    :try_start_2fe
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v0

    .line 828
    .local v0, "watchIntent":Landroid/content/Intent;
    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object v2, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1
    :try_end_30e
    .catch Landroid/os/RemoteException; {:try_start_2fe .. :try_end_30e} :catch_315

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    or-int v16, v16, v1

    .line 832
    .end local v0  # "watchIntent":Landroid/content/Intent;
    move/from16 v0, v16

    goto :goto_31d

    .line 830
    :catch_315
    move-exception v0

    .line 831
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 837
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_31b
    move/from16 v0, v16

    .end local v16  # "abort":Z
    .local v0, "abort":Z
    :goto_31d
    iget-object v8, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 838
    .local v8, "calleePkg":Ljava/lang/String;
    const/4 v1, -0x1

    .line 839
    .local v1, "calleeUid":I
    nop

    .line 840
    iget-object v2, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_327

    const/4 v2, -0x1

    goto :goto_32b

    :cond_327
    iget-object v2, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_32b
    move v7, v2

    .line 843
    .end local v1  # "calleeUid":I
    .local v7, "calleeUid":I
    invoke-static {}, Landroid/os/Binder;->getRealCallingPid()I

    move-result v54

    .line 844
    .local v54, "realCallingPid2":I
    const-string v1, ""

    .line 845
    .local v1, "calleeClass":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_342

    .line 846
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_343

    .line 848
    :cond_342
    move-object v6, v1

    .end local v1  # "calleeClass":Ljava/lang/String;
    .local v6, "calleeClass":Ljava/lang/String;
    :goto_343
    invoke-virtual {v14, v13, v15}, Lcom/android/server/wm/ActivityStarter;->isTopPackageRequest(ILjava/lang/String;)Z

    move-result v5

    .line 849
    .local v5, "isTop":Z
    iget-object v1, v12, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 860
    invoke-static {}, Lcom/android/server/hips/intercept/LinkWakenInterception;->getInstance()Lcom/android/server/hips/intercept/LinkWakenInterception;

    move-result-object v24

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    .line 850
    const-string v22, "activity"

    move/from16 v16, v5

    move-object/from16 v17, v15

    move-object/from16 v18, v8

    move/from16 v19, v7

    move-object/from16 v20, v1

    move-object/from16 v21, p2

    move/from16 v23, v54

    move/from16 v25, p15

    invoke-static/range {v16 .. v29}, Lcom/android/server/hips/intercept/Interception;->isIntercept(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;ILcom/android/server/hips/intercept/Interception;IJZZ)Z

    move-result v4

    .line 865
    .local v4, "isIntercept":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INTERCEPT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " fg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isIntercept "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 866
    .local v3, "events":Ljava/lang/String;
    const v1, 0xdc3372

    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 867
    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object v2, v15

    move-object/from16 v29, v3

    .end local v3  # "events":Ljava/lang/String;
    .local v29, "events":Ljava/lang/String;
    move-object v3, v8

    move/from16 v55, v4

    .end local v4  # "isIntercept":Z
    .local v55, "isIntercept":Z
    move-object v4, v15

    move/from16 v56, v5

    .end local v5  # "isTop":Z
    .local v56, "isTop":Z
    move-object/from16 v5, p2

    move-object/from16 v57, v6

    .end local v6  # "calleeClass":Ljava/lang/String;
    .local v57, "calleeClass":Ljava/lang/String;
    move/from16 v6, v55

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityTaskManagerService;->hook_Activity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Z)Z

    .line 868
    if-eqz v55, :cond_3c8

    .line 869
    const/4 v6, 0x0

    return v6

    .line 873
    :cond_3c8
    const/4 v6, 0x0

    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    move/from16 v2, p12

    move/from16 v3, p15

    move/from16 v4, p16

    move/from16 v5, p17

    move v10, v6

    move-object v6, v15

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStartInterceptor;->setStates(IIIILjava/lang/String;)V

    .line 874
    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    move-object/from16 v2, p2

    move-object/from16 v3, p6

    move-object/from16 v4, p5

    move-object/from16 v5, p4

    move-object/from16 v6, p22

    move/from16 v58, v7

    .end local v7  # "calleeUid":I
    .local v58, "calleeUid":I
    move/from16 v7, v33

    move-object/from16 v63, v8

    .end local v8  # "calleePkg":Ljava/lang/String;
    .local v63, "calleePkg":Ljava/lang/String;
    move/from16 v8, v34

    move-object/from16 v64, v9

    .end local v9  # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v64, "callerApp":Lcom/android/server/wm/WindowProcessController;
    move-object/from16 v9, v36

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/ActivityStartInterceptor;->intercept(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;Lcom/android/server/wm/TaskRecord;IILandroid/app/ActivityOptions;)Z

    move-result v1

    if-eqz v1, :cond_41d

    .line 878
    iget-object v1, v14, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStartInterceptor;->mIntent:Landroid/content/Intent;

    .line 879
    .end local p2  # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, v14, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStartInterceptor;->mRInfo:Landroid/content/pm/ResolveInfo;

    .line 880
    .end local p6  # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v2, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v3, v14, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStartInterceptor;->mAInfo:Landroid/content/pm/ActivityInfo;

    .line 881
    .end local p5  # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v3, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v4, v14, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStartInterceptor;->mResolvedType:Ljava/lang/String;

    .line 882
    .end local p4  # "resolvedType":Ljava/lang/String;
    .local v4, "resolvedType":Ljava/lang/String;
    iget-object v5, v14, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v5, v5, Lcom/android/server/wm/ActivityStartInterceptor;->mInTask:Lcom/android/server/wm/TaskRecord;

    .line 883
    .end local p22  # "inTask":Lcom/android/server/wm/TaskRecord;
    .local v5, "inTask":Lcom/android/server/wm/TaskRecord;
    iget-object v6, v14, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget v6, v6, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingPid:I

    .line 884
    .end local v33  # "callingPid":I
    .local v6, "callingPid":I
    iget-object v7, v14, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget v7, v7, Lcom/android/server/wm/ActivityStartInterceptor;->mCallingUid:I

    .line 885
    .end local v34  # "callingUid":I
    .local v7, "callingUid":I
    iget-object v8, v14, Lcom/android/server/wm/ActivityStarter;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    iget-object v8, v8, Lcom/android/server/wm/ActivityStartInterceptor;->mActivityOptions:Landroid/app/ActivityOptions;

    move-object v11, v1

    move-object v12, v3

    move-object/from16 v65, v5

    move-object/from16 v66, v8

    .end local v36  # "checkedOptions":Landroid/app/ActivityOptions;
    .local v8, "checkedOptions":Landroid/app/ActivityOptions;
    goto :goto_429

    .line 874
    .end local v1  # "intent":Landroid/content/Intent;
    .end local v2  # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v3  # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v4  # "resolvedType":Ljava/lang/String;
    .end local v5  # "inTask":Lcom/android/server/wm/TaskRecord;
    .end local v6  # "callingPid":I
    .end local v7  # "callingUid":I
    .end local v8  # "checkedOptions":Landroid/app/ActivityOptions;
    .restart local v33  # "callingPid":I
    .restart local v34  # "callingUid":I
    .restart local v36  # "checkedOptions":Landroid/app/ActivityOptions;
    .restart local p2  # "intent":Landroid/content/Intent;
    .restart local p4  # "resolvedType":Ljava/lang/String;
    .restart local p5  # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local p6  # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local p22  # "inTask":Lcom/android/server/wm/TaskRecord;
    :cond_41d
    move-object/from16 v4, p4

    move-object/from16 v2, p6

    move-object/from16 v65, p22

    move/from16 v6, v33

    move/from16 v7, v34

    move-object/from16 v66, v36

    .line 888
    .end local v33  # "callingPid":I
    .end local v34  # "callingUid":I
    .end local v36  # "checkedOptions":Landroid/app/ActivityOptions;
    .end local p2  # "intent":Landroid/content/Intent;
    .end local p4  # "resolvedType":Ljava/lang/String;
    .end local p5  # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local p6  # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local p22  # "inTask":Lcom/android/server/wm/TaskRecord;
    .restart local v2  # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v4  # "resolvedType":Ljava/lang/String;
    .restart local v6  # "callingPid":I
    .restart local v7  # "callingUid":I
    .local v11, "intent":Landroid/content/Intent;
    .local v12, "aInfo":Landroid/content/pm/ActivityInfo;
    .local v65, "inTask":Lcom/android/server/wm/TaskRecord;
    .local v66, "checkedOptions":Landroid/app/ActivityOptions;
    :goto_429
    if-eqz v0, :cond_444

    .line 889
    if-eqz v60, :cond_43e

    .line 890
    const/16 v18, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, v52

    move-object/from16 v19, v60

    move-object/from16 v20, v59

    move/from16 v21, v61

    invoke-virtual/range {v17 .. v23}, Lcom/android/server/wm/ActivityStack;->sendActivityResultLocked(ILcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 895
    :cond_43e
    invoke-static/range {v66 .. v66}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 896
    const/16 v1, 0x66

    return v1

    .line 899
    :cond_444
    const-string v1, "} from uid "

    const-string v3, " {"

    const-string v9, "START u"

    if-nez v62, :cond_478

    .line 900
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p12

    .end local p12  # "userId":I
    .local v8, "userId":I
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 p12, v0

    move-object/from16 p2, v2

    const/4 v2, 0x1

    .end local v0  # "abort":Z
    .end local v2  # "rInfo":Landroid/content/pm/ResolveInfo;
    .local p2, "rInfo":Landroid/content/pm/ResolveInfo;
    .local p12, "abort":Z
    invoke-virtual {v11, v2, v2, v2, v10}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v35

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_480

    .line 899
    .end local v8  # "userId":I
    .end local p2  # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v0  # "abort":Z
    .restart local v2  # "rInfo":Landroid/content/pm/ResolveInfo;
    .local p12, "userId":I
    :cond_478
    move/from16 v8, p12

    move/from16 p12, v0

    move-object/from16 p2, v2

    move-object/from16 v2, v35

    .line 906
    .end local v0  # "abort":Z
    .end local v2  # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v8  # "userId":I
    .restart local p2  # "rInfo":Landroid/content/pm/ResolveInfo;
    .local p12, "abort":Z
    :goto_480
    if-eqz v12, :cond_582

    .line 907
    iget-object v5, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v5

    iget-object v0, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v0, v8}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_578

    .line 909
    iget-object v0, v14, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/16 v18, 0x2

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 p5, v6

    const/4 v5, 0x1

    .end local v6  # "callingPid":I
    .local p5, "callingPid":I
    new-array v6, v5, [Landroid/content/Intent;

    aput-object v11, v6, v10

    move-object/from16 p6, v9

    new-array v9, v5, [Ljava/lang/String;

    aput-object v4, v9, v10

    const/high16 v27, 0x50000000

    const/16 v28, 0x0

    move-object/from16 v17, v0

    move-object/from16 v19, v15

    move/from16 v20, v7

    move/from16 v21, v8

    move-object/from16 v25, v6

    move-object/from16 v26, v9

    invoke-virtual/range {v17 .. v28}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 917
    .local v0, "target":Landroid/content/IIntentSender;
    new-instance v5, Landroid/content/Intent;

    invoke-static {}, Lmeizu/os/DeviceStateManager;->isCtsRunningStatic()Z

    move-result v6

    if-eqz v6, :cond_4c6

    .line 918
    const-string v6, "android.intent.action.REVIEW_PERMISSIONS"

    goto :goto_4c8

    :cond_4c6
    const-string v6, "flyme.intent.action.REVIEW_PERMISSIONS"

    :goto_4c8
    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v9, v5

    .line 921
    .local v9, "newIntent":Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/content/Intent;->getFlags()I

    move-result v5

    .line 922
    .local v5, "flags":I
    const/high16 v6, 0x800000

    or-int/2addr v5, v6

    .line 933
    const/high16 v6, 0x10080000

    and-int/2addr v6, v5

    if-eqz v6, :cond_4dd

    .line 934
    const/high16 v6, 0x8000000

    or-int/2addr v5, v6

    move v6, v5

    goto :goto_4de

    .line 933
    :cond_4dd
    move v6, v5

    .line 936
    .end local v5  # "flags":I
    .local v6, "flags":I
    :goto_4de
    invoke-virtual {v9, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 938
    iget-object v5, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v10, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v9, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 939
    new-instance v5, Landroid/content/IntentSender;

    invoke-direct {v5, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    const-string v10, "android.intent.extra.INTENT"

    invoke-virtual {v9, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 940
    if-eqz v60, :cond_4fa

    .line 941
    const-string v5, "android.intent.extra.RESULT_NEEDED"

    const/4 v10, 0x1

    invoke-virtual {v9, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 943
    :cond_4fa
    move-object v10, v9

    .line 945
    .end local v11  # "intent":Landroid/content/Intent;
    .local v10, "intent":Landroid/content/Intent;
    const/4 v11, 0x0

    .line 946
    .end local v4  # "resolvedType":Ljava/lang/String;
    .local v11, "resolvedType":Ljava/lang/String;
    move/from16 v7, p16

    .line 947
    move/from16 v16, p15

    .line 949
    .end local p5  # "callingPid":I
    .local v16, "callingPid":I
    iget-object v4, v14, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/16 v17, 0x0

    iget-object v5, v14, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v5, v5, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 950
    move-object/from16 v19, v15

    move/from16 v15, p16

    .end local v15  # "callingPackage":Ljava/lang/String;
    .local v19, "callingPackage":Ljava/lang/String;
    invoke-static {v7, v15, v5}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v20

    .line 949
    move-object v5, v10

    move/from16 v21, v6

    .end local v6  # "flags":I
    .local v21, "flags":I
    move-object v6, v11

    move-object/from16 p13, v0

    move v0, v7

    .end local v7  # "callingUid":I
    .local v0, "callingUid":I
    .local p13, "target":Landroid/content/IIntentSender;
    move v7, v8

    move v15, v8

    .end local v8  # "userId":I
    .local v15, "userId":I
    move/from16 v8, v17

    move-object/from16 v17, v9

    move-object/from16 v67, v11

    move-object/from16 v11, p6

    move-object/from16 p6, v67

    .end local v9  # "newIntent":Landroid/content/Intent;
    .end local v11  # "resolvedType":Ljava/lang/String;
    .local v17, "newIntent":Landroid/content/Intent;
    .local p6, "resolvedType":Ljava/lang/String;
    move/from16 v9, v20

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 952
    .end local p2  # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v4, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v14, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    move/from16 v9, p17

    const/4 v6, 0x0

    invoke-virtual {v5, v10, v4, v9, v6}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v12

    .line 955
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    if-eqz v5, :cond_56f

    .line 956
    iget-object v5, v14, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 957
    invoke-virtual {v5}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 958
    .local v5, "focusedStack":Lcom/android/server/wm/ActivityStack;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/4 v8, 0x1

    invoke-virtual {v10, v8, v8, v8, v3}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " on display "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    if-nez v5, :cond_562

    const/4 v3, 0x0

    goto :goto_564

    :cond_562
    iget v3, v5, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    :goto_564
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 958
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_570

    .line 955
    .end local v5  # "focusedStack":Lcom/android/server/wm/ActivityStack;
    :cond_56f
    const/4 v8, 0x1

    .line 969
    .end local v17  # "newIntent":Landroid/content/Intent;
    .end local v21  # "flags":I
    .end local p13  # "target":Landroid/content/IIntentSender;
    :goto_570
    move v7, v0

    move-object v0, v4

    move-object v2, v12

    move/from16 v1, v16

    move-object/from16 v4, p6

    goto :goto_591

    .line 907
    .end local v0  # "callingUid":I
    .end local v10  # "intent":Landroid/content/Intent;
    .end local v16  # "callingPid":I
    .end local v19  # "callingPackage":Ljava/lang/String;
    .end local p6  # "resolvedType":Ljava/lang/String;
    .local v4, "resolvedType":Ljava/lang/String;
    .local v6, "callingPid":I
    .restart local v7  # "callingUid":I
    .restart local v8  # "userId":I
    .local v11, "intent":Landroid/content/Intent;
    .local v15, "callingPackage":Ljava/lang/String;
    .restart local p2  # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_578
    move/from16 v9, p17

    move/from16 p5, v6

    move-object/from16 v19, v15

    const/4 v6, 0x0

    move v15, v8

    const/4 v8, 0x1

    .end local v6  # "callingPid":I
    .end local v8  # "userId":I
    .local v15, "userId":I
    .restart local v19  # "callingPackage":Ljava/lang/String;
    .restart local p5  # "callingPid":I
    goto :goto_58b

    .line 906
    .end local v19  # "callingPackage":Ljava/lang/String;
    .end local p5  # "callingPid":I
    .restart local v6  # "callingPid":I
    .restart local v8  # "userId":I
    .local v15, "callingPackage":Ljava/lang/String;
    :cond_582
    move/from16 v9, p17

    move/from16 p5, v6

    move-object/from16 v19, v15

    const/4 v6, 0x0

    move v15, v8

    const/4 v8, 0x1

    .line 969
    .end local v6  # "callingPid":I
    .end local v8  # "userId":I
    .local v15, "userId":I
    .restart local v19  # "callingPackage":Ljava/lang/String;
    .restart local p5  # "callingPid":I
    :goto_58b
    move-object/from16 v0, p2

    move/from16 v1, p5

    move-object v10, v11

    move-object v2, v12

    .end local v11  # "intent":Landroid/content/Intent;
    .end local v12  # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local p2  # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local p5  # "callingPid":I
    .local v0, "rInfo":Landroid/content/pm/ResolveInfo;
    .local v1, "callingPid":I
    .local v2, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v10  # "intent":Landroid/content/Intent;
    :goto_591
    if-eqz v0, :cond_5c4

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    if-eqz v3, :cond_5c4

    .line 970
    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->auxiliaryInfo:Landroid/content/pm/AuxiliaryResolveInfo;

    move-object/from16 v11, p0

    move-object/from16 v13, p3

    move-object v5, v14

    move-object/from16 v14, v19

    move-object/from16 v16, v4

    move/from16 v17, v15

    move v3, v8

    move-object/from16 v20, v19

    move/from16 v8, p16

    move/from16 v19, v15

    move-object/from16 v15, v31

    .end local v31  # "verificationBundle":Landroid/os/Bundle;
    .local v15, "verificationBundle":Landroid/os/Bundle;
    .local v19, "userId":I
    .local v20, "callingPackage":Ljava/lang/String;
    invoke-direct/range {v11 .. v17}, Lcom/android/server/wm/ActivityStarter;->createLaunchIntent(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    .line 972
    const/4 v4, 0x0

    .line 973
    move/from16 v7, p16

    .line 974
    move/from16 v1, p15

    .line 976
    iget-object v11, v5, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v11, v10, v0, v9, v6}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    move v12, v1

    move-object/from16 v17, v2

    move-object/from16 v16, v4

    move v13, v7

    move-object v14, v10

    goto :goto_5d5

    .line 969
    .end local v20  # "callingPackage":Ljava/lang/String;
    .local v15, "userId":I
    .local v19, "callingPackage":Ljava/lang/String;
    .restart local v31  # "verificationBundle":Landroid/os/Bundle;
    :cond_5c4
    move v3, v8

    move-object v5, v14

    move-object/from16 v20, v19

    move/from16 v8, p16

    move/from16 v19, v15

    move-object/from16 v15, v31

    .line 979
    .end local v31  # "verificationBundle":Landroid/os/Bundle;
    .local v15, "verificationBundle":Landroid/os/Bundle;
    .local v19, "userId":I
    .restart local v20  # "callingPackage":Ljava/lang/String;
    move v12, v1

    move-object/from16 v17, v2

    move-object/from16 v16, v4

    move v13, v7

    move-object v14, v10

    .end local v1  # "callingPid":I
    .end local v2  # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v4  # "resolvedType":Ljava/lang/String;
    .end local v7  # "callingUid":I
    .end local v10  # "intent":Landroid/content/Intent;
    .local v12, "callingPid":I
    .local v13, "callingUid":I
    .local v14, "intent":Landroid/content/Intent;
    .local v16, "resolvedType":Ljava/lang/String;
    .local v17, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_5d5
    new-instance v1, Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v5, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 980
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v42

    if-eqz p7, :cond_5e2

    move/from16 v47, v3

    goto :goto_5e4

    :cond_5e2
    const/16 v47, 0x0

    :goto_5e4
    iget-object v3, v5, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    move-object/from16 v48, v3

    move-object/from16 v33, v1

    move-object/from16 v34, v2

    move-object/from16 v35, v64

    move/from16 v36, v12

    move/from16 v37, v13

    move-object/from16 v38, v20

    move-object/from16 v39, v14

    move-object/from16 v40, v16

    move-object/from16 v41, v17

    move-object/from16 v43, v60

    move-object/from16 v44, v59

    move/from16 v45, v61

    move/from16 v46, p20

    move-object/from16 v49, v66

    move-object/from16 v50, p11

    invoke-direct/range {v33 .. v50}, Lcom/android/server/wm/ActivityRecord;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;IILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/wm/ActivityStackSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V

    move-object v11, v1

    .line 983
    .local v11, "r":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v10, p21

    if-eqz v10, :cond_611

    .line 984
    const/4 v1, 0x0

    aput-object v11, v10, v1

    .line 988
    :cond_611
    if-nez p1, :cond_62b

    iget-object v1, v11, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_62b

    if-eqz v14, :cond_62b

    iget-object v1, v14, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget v1, v1, Landroid/content/IntentExt;->mMeizuFlags:I

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_62b

    .line 990
    iget-object v1, v11, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->mComponmentState:I

    const/high16 v3, 0x4000000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ActivityInfo;->mComponmentState:I

    .line 993
    :cond_62b
    iget-object v1, v11, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-nez v1, :cond_638

    move-object/from16 v7, p11

    .end local p11  # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v7, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v7, :cond_63a

    .line 996
    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    iput-object v1, v11, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    goto :goto_63a

    .line 993
    .end local v7  # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local p11  # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_638
    move-object/from16 v7, p11

    .line 999
    .end local p11  # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local v7  # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_63a
    :goto_63a
    iget-object v1, v5, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v21

    .line 1003
    .local v21, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez p7, :cond_6a0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_65d

    .line 1004
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v1, v8, :cond_655

    goto :goto_65d

    :cond_655
    move-object/from16 p4, v0

    move-object/from16 v23, v6

    move/from16 p2, v12

    move-object v12, v5

    goto :goto_6a7

    .line 1005
    :cond_65d
    :goto_65d
    iget-object v1, v5, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v22, "Activity start"

    move v2, v12

    move v3, v13

    move/from16 v4, p15

    move/from16 p2, v12

    move-object v12, v5

    .end local v12  # "callingPid":I
    .local p2, "callingPid":I
    move/from16 v5, p16

    move-object/from16 v23, v6

    move-object/from16 v6, v22

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityTaskManagerService;->checkAppSwitchAllowedLocked(IIIILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_69d

    .line 1007
    if-eqz v53, :cond_680

    invoke-direct {v12, v11}, Lcom/android/server/wm/ActivityStarter;->handleBackgroundActivityAbort(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_67d

    goto :goto_680

    :cond_67d
    move-object/from16 p4, v0

    goto :goto_697

    .line 1008
    :cond_680
    :goto_680
    iget-object v6, v12, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    new-instance v5, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;

    move-object v1, v5

    move-object v2, v11

    move-object v3, v7

    move/from16 v4, p17

    move-object/from16 p4, v0

    move-object v0, v5

    .end local v0  # "rInfo":Landroid/content/pm/ResolveInfo;
    .local p4, "rInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v5, v21

    move-object v8, v6

    move-object/from16 v6, v64

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityStack;Lcom/android/server/wm/WindowProcessController;)V

    invoke-virtual {v8, v0}, Lcom/android/server/wm/ActivityStartController;->addPendingActivityLaunch(Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;)V

    .line 1011
    :goto_697
    invoke-static/range {v66 .. v66}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1012
    const/16 v0, 0x64

    return v0

    .line 1005
    .end local p4  # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v0  # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_69d
    move-object/from16 p4, v0

    .end local v0  # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local p4  # "rInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_6a7

    .line 1003
    .end local p2  # "callingPid":I
    .end local p4  # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v0  # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v12  # "callingPid":I
    :cond_6a0
    move-object/from16 p4, v0

    move-object/from16 v23, v6

    move/from16 p2, v12

    move-object v12, v5

    .line 1016
    .end local v0  # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v12  # "callingPid":I
    .restart local p2  # "callingPid":I
    .restart local p4  # "rInfo":Landroid/content/pm/ResolveInfo;
    :goto_6a7
    iget-object v0, v12, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->onStartActivitySetDidAppSwitch()V

    .line 1017
    iget-object v0, v12, Lcom/android/server/wm/ActivityStarter;->mController:Lcom/android/server/wm/ActivityStartController;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityStartController;->doPendingActivityLaunches(Z)V

    .line 1019
    const/4 v0, 0x1

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v7

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move/from16 v6, p17

    move-object/from16 v18, v7

    .end local v7  # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .local v18, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    move v7, v0

    move/from16 v22, v8

    move-object/from16 v8, v66

    move-object/from16 v9, v65

    move-object/from16 v10, p21

    move-object v0, v11

    .end local v11  # "r":Lcom/android/server/wm/ActivityRecord;
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    move/from16 v11, v53

    invoke-direct/range {v1 .. v11}, Lcom/android/server/wm/ActivityStarter;->startActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;[Lcom/android/server/wm/ActivityRecord;Z)I

    move-result v1

    .line 1023
    .local v1, "res":I
    move-object/from16 v2, p21

    if-eqz v2, :cond_6db

    array-length v3, v2

    if-lez v3, :cond_6db

    .line 1024
    aget-object v3, v2, v22

    move-object/from16 v23, v3

    goto :goto_6dc

    :cond_6db
    nop

    :goto_6dc
    move-object/from16 v3, v23

    .line 1025
    .local v3, "outRecord":Lcom/android/server/wm/ActivityRecord;
    iget-object v4, v12, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/wm/ActivityRecord;)V

    .line 1027
    return v1
.end method

.method private startActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;[Lcom/android/server/wm/ActivityRecord;Z)I
    .registers 25
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "sourceRecord"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "voiceSession"  # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"  # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"  # I
    .param p6, "doResume"  # Z
    .param p7, "options"  # Landroid/app/ActivityOptions;
    .param p8, "inTask"  # Lcom/android/server/wm/TaskRecord;
    .param p9, "outActivity"  # [Lcom/android/server/wm/ActivityRecord;
    .param p10, "restrictedBgActivity"  # Z

    .line 1577
    move-object v1, p0

    const/16 v2, -0x60

    .line 1580
    .local v2, "result":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_5
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 1581
    invoke-direct/range {p0 .. p10}, Lcom/android/server/wm/ActivityStarter;->startActivityUnchecked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;[Lcom/android/server/wm/ActivityRecord;Z)I

    move-result v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_8a

    move v2, v0

    .line 1584
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 1585
    .local v5, "currentStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v5, :cond_19

    move-object v0, v5

    goto :goto_1b

    :cond_19
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    :goto_1b
    move-object v6, v0

    .line 1588
    .local v6, "startedActivityStack":Lcom/android/server/wm/ActivityStack;
    :try_start_1c
    invoke-static {v2}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1589
    if-eqz v6, :cond_65

    .line 1593
    nop

    .line 1594
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1595
    .local v0, "currentTop":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->shouldUpdateConfigForDisplayChanged()Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 1596
    iget-object v7, v1, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 1597
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v8

    .line 1596
    invoke-virtual {v7, v0, v8, v4, v3}, Lcom/android/server/wm/RootActivityContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    .line 1600
    .end local v0  # "currentTop":Lcom/android/server/wm/ActivityRecord;
    :cond_3a
    goto :goto_65

    .line 1605
    :cond_3b
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1606
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_4e

    .line 1607
    iget-object v8, v1, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "startActivity"

    const/4 v12, 0x1

    move-object v7, v0

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1612
    :cond_4e
    if-eqz v6, :cond_65

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v3

    if-eqz v3, :cond_65

    .line 1613
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->numActivities()I

    move-result v3

    if-nez v3, :cond_65

    .line 1614
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v3

    if-nez v3, :cond_65

    .line 1615
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->remove()V

    .line 1618
    .end local v0  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_65
    :goto_65
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    if-eqz v0, :cond_72

    .line 1619
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->removeEmptyActivityStackIfNeed()V
    :try_end_72
    .catchall {:try_start_1c .. :try_end_72} :catchall_80

    .line 1622
    :cond_72
    iget-object v0, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1623
    nop

    .line 1625
    .end local v5  # "currentStack":Lcom/android/server/wm/ActivityStack;
    nop

    .line 1627
    move-object v7, p1

    invoke-virtual {p0, p1, v2, v6}, Lcom/android/server/wm/ActivityStarter;->postStartActivityProcessing(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityStack;)V

    .line 1629
    return v2

    .line 1622
    .restart local v5  # "currentStack":Lcom/android/server/wm/ActivityStack;
    :catchall_80
    move-exception v0

    move-object v7, p1

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0

    .line 1584
    .end local v5  # "currentStack":Lcom/android/server/wm/ActivityStack;
    .end local v6  # "startedActivityStack":Lcom/android/server/wm/ActivityStack;
    :catchall_8a
    move-exception v0

    move-object v7, p1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 1585
    .restart local v5  # "currentStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v5, :cond_94

    move-object v6, v5

    goto :goto_96

    :cond_94
    iget-object v6, v1, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 1588
    .restart local v6  # "startedActivityStack":Lcom/android/server/wm/ActivityStack;
    :goto_96
    :try_start_96
    invoke-static {v2}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v8

    if-eqz v8, :cond_b5

    .line 1589
    if-eqz v6, :cond_df

    .line 1593
    nop

    .line 1594
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    .line 1595
    .local v8, "currentTop":Lcom/android/server/wm/ActivityRecord;
    if-eqz v8, :cond_b4

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->shouldUpdateConfigForDisplayChanged()Z

    move-result v9

    if-eqz v9, :cond_b4

    .line 1596
    iget-object v9, v1, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 1597
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v10

    .line 1596
    invoke-virtual {v9, v8, v10, v4, v3}, Lcom/android/server/wm/RootActivityContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    .line 1600
    .end local v8  # "currentTop":Lcom/android/server/wm/ActivityRecord;
    :cond_b4
    goto :goto_df

    .line 1605
    :cond_b5
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1606
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_c8

    .line 1607
    iget-object v9, v1, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "startActivity"

    const/4 v13, 0x1

    move-object v8, v3

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1612
    :cond_c8
    if-eqz v6, :cond_df

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v4

    if-eqz v4, :cond_df

    .line 1613
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->numActivities()I

    move-result v4

    if-nez v4, :cond_df

    .line 1614
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v4

    if-nez v4, :cond_df

    .line 1615
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->remove()V

    .line 1618
    .end local v3  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_df
    :goto_df
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    if-eqz v3, :cond_ec

    .line 1619
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->removeEmptyActivityStackIfNeed()V
    :try_end_ec
    .catchall {:try_start_96 .. :try_end_ec} :catchall_f5

    .line 1622
    :cond_ec
    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1623
    nop

    .line 1625
    .end local v5  # "currentStack":Lcom/android/server/wm/ActivityStack;
    throw v0

    .line 1622
    .restart local v5  # "currentStack":Lcom/android/server/wm/ActivityStack;
    :catchall_f5
    move-exception v0

    iget-object v3, v1, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method private startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/WaitResult;Landroid/content/res/Configuration;Lcom/android/server/wm/SafeActivityOptions;ZILcom/android/server/wm/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I
    .registers 82
    .param p1, "caller"  # Landroid/app/IApplicationThread;
    .param p2, "callingUid"  # I
    .param p3, "callingPackage"  # Ljava/lang/String;
    .param p4, "requestRealCallingPid"  # I
    .param p5, "requestRealCallingUid"  # I
    .param p6, "intent"  # Landroid/content/Intent;
    .param p7, "resolvedType"  # Ljava/lang/String;
    .param p8, "voiceSession"  # Landroid/service/voice/IVoiceInteractionSession;
    .param p9, "voiceInteractor"  # Lcom/android/internal/app/IVoiceInteractor;
    .param p10, "resultTo"  # Landroid/os/IBinder;
    .param p11, "resultWho"  # Ljava/lang/String;
    .param p12, "requestCode"  # I
    .param p13, "startFlags"  # I
    .param p14, "profilerInfo"  # Landroid/app/ProfilerInfo;
    .param p15, "outResult"  # Landroid/app/WaitResult;
    .param p16, "globalConfig"  # Landroid/content/res/Configuration;
    .param p17, "options"  # Lcom/android/server/wm/SafeActivityOptions;
    .param p18, "ignoreTargetSecurity"  # Z
    .param p19, "userId"  # I
    .param p20, "inTask"  # Lcom/android/server/wm/TaskRecord;
    .param p21, "reason"  # Ljava/lang/String;
    .param p22, "allowPendingRemoteAnimationRegistryLookup"  # Z
    .param p23, "originatingPendingIntent"  # Lcom/android/server/am/PendingIntentRecord;
    .param p24, "allowBackgroundActivityStart"  # Z

    .line 1235
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v0, p6

    move-object/from16 v13, p15

    move-object/from16 v12, p16

    if-eqz v0, :cond_1b

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_1b

    .line 1236
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "File descriptors passed in Intent"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1238
    :cond_1b
    :goto_1b
    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;)V

    .line 1239
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    const/4 v9, 0x1

    const/4 v11, 0x0

    if-eqz v1, :cond_2e

    move v1, v9

    goto :goto_2f

    :cond_2e
    move v1, v11

    .line 1241
    .local v1, "componentSpecified":Z
    :goto_2f
    if-eqz p4, :cond_34

    .line 1242
    move/from16 v42, p4

    goto :goto_3a

    .line 1243
    :cond_34
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    move/from16 v42, v2

    :goto_3a
    nop

    .line 1244
    .local v42, "realCallingPid":I
    const/4 v10, -0x1

    move/from16 v8, p5

    if-eq v8, v10, :cond_42

    .line 1245
    move v2, v8

    goto :goto_46

    .line 1246
    :cond_42
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    :goto_46
    move v7, v2

    .line 1249
    .local v7, "realCallingUid":I
    if-ltz p2, :cond_4e

    .line 1250
    const/4 v2, -0x1

    move/from16 v6, p2

    move v5, v2

    .local v2, "callingPid":I
    goto :goto_5a

    .line 1251
    .end local v2  # "callingPid":I
    :cond_4e
    if-nez v14, :cond_56

    .line 1252
    move/from16 v2, v42

    .line 1253
    .restart local v2  # "callingPid":I
    move v3, v7

    move v5, v2

    move v6, v3

    .end local p2  # "callingUid":I
    .local v3, "callingUid":I
    goto :goto_5a

    .line 1255
    .end local v2  # "callingPid":I
    .end local v3  # "callingUid":I
    .restart local p2  # "callingUid":I
    :cond_56
    move v2, v10

    .end local p2  # "callingUid":I
    .local v2, "callingUid":I
    move v3, v10

    move v6, v2

    move v5, v3

    .line 1259
    .end local v2  # "callingUid":I
    .local v5, "callingPid":I
    .local v6, "callingUid":I
    :goto_5a
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v30, v2

    .line 1261
    .local v30, "ephemeralIntent":Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v4, v2

    .line 1262
    .end local p6  # "intent":Landroid/content/Intent;
    .local v4, "intent":Landroid/content/Intent;
    const/4 v0, 0x0

    if-eqz v1, :cond_ab

    .line 1263
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_ab

    .line 1264
    :cond_7c
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.INSTALL_INSTANT_APP_PACKAGE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ab

    .line 1265
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ab

    iget-object v2, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1266
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    .line 1267
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManagerInternal;->isInstantAppInstallerComponent(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 1271
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1272
    const/4 v1, 0x0

    move/from16 v29, v1

    goto :goto_ad

    .line 1276
    :cond_ab
    move/from16 v29, v1

    .end local v1  # "componentSpecified":Z
    .local v29, "componentSpecified":Z
    :goto_ad
    iget v1, v4, Landroid/content/Intent;->mTargetUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_b7

    .line 1277
    iget v1, v4, Landroid/content/Intent;->mTargetUserId:I

    move v3, v1

    .end local p19  # "userId":I
    .local v1, "userId":I
    goto :goto_b9

    .line 1276
    .end local v1  # "userId":I
    .restart local p19  # "userId":I
    :cond_b7
    move/from16 v3, p19

    .line 1280
    .end local p19  # "userId":I
    .local v3, "userId":I
    :goto_b9
    iget-object v1, v15, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/16 v20, 0x0

    iget-object v2, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v2, v2, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 1282
    invoke-static {v6, v7, v2}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v21

    .line 1280
    move-object/from16 v16, v1

    move-object/from16 v17, v4

    move-object/from16 v18, p7

    move/from16 v19, v3

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1287
    .local v2, "rInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v1, p0

    move-object/from16 p2, v2

    .end local v2  # "rInfo":Landroid/content/pm/ResolveInfo;
    .local p2, "rInfo":Landroid/content/pm/ResolveInfo;
    move v14, v3

    .end local v3  # "userId":I
    .local v14, "userId":I
    move-object/from16 v3, p3

    move-object/from16 p6, v4

    .end local v4  # "intent":Landroid/content/Intent;
    .restart local p6  # "intent":Landroid/content/Intent;
    move-object/from16 v4, p10

    move/from16 p19, v5

    .end local v5  # "callingPid":I
    .local p19, "callingPid":I
    move-object/from16 v5, p6

    move/from16 v31, v6

    .end local v6  # "callingUid":I
    .local v31, "callingUid":I
    move-object/from16 v6, p7

    move/from16 v54, v7

    .end local v7  # "realCallingUid":I
    .local v54, "realCallingUid":I
    move/from16 v7, v31

    move/from16 v8, v54

    invoke-direct/range {v1 .. v8}, Lcom/android/server/wm/ActivityStarter;->matchCrossUserLogining(Landroid/content/pm/ResolveInfo;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1288
    .local v1, "mulitiResolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_114

    .line 1289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " MulitiApp crossUser logining "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p2

    .end local p2  # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v3, "rInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " changing to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    move-object v2, v1

    move-object/from16 v27, v2

    .end local v3  # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v2  # "rInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_118

    .line 1288
    .end local v2  # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local p2  # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_114
    move-object/from16 v3, p2

    .end local p2  # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v3  # "rInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v27, v3

    .line 1294
    .end local v3  # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v27, "rInfo":Landroid/content/pm/ResolveInfo;
    :goto_118
    if-nez v27, :cond_1ce

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getForceMode()Z

    move-result v2

    if-eqz v2, :cond_1ce

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1ce

    .line 1296
    iget-object v2, v15, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1297
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v28

    .line 1298
    .local v28, "packageInfo":Z
    if-eqz v28, :cond_15d

    .line 1299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is available for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v0

    move-object/from16 v56, v1

    move v0, v11

    move/from16 v55, v14

    goto/16 :goto_1d4

    .line 1301
    :cond_15d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "recovery":Landroid/content/Intent;
    move-object v3, v0

    .line 1302
    const-string v2, "com.flyme.packageinstaller.RESTORE_MZ_APP"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1303
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1304
    const-string v32, "mz_app_intent"

    .line 1305
    .local v32, "INTENT_KEY_NAME":Ljava/lang/String;
    const-string v2, "mz_app_intent"

    move-object/from16 v10, p6

    .end local p6  # "intent":Landroid/content/Intent;
    .local v10, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1306
    iget-object v2, v15, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, v0

    move/from16 v21, v14

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;

    move-result-object v33

    .local v33, "recoveryInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v6, v33

    .line 1307
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v34

    .line 1308
    .local v34, "origId":J
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    .end local v10  # "intent":Landroid/content/Intent;
    .restart local p6  # "intent":Landroid/content/Intent;
    move-object/from16 v10, v16

    move-object/from16 p2, v0

    move v0, v11

    .end local v0  # "recovery":Landroid/content/Intent;
    .local p2, "recovery":Landroid/content/Intent;
    move-object/from16 v11, v16

    const/16 v16, 0x0

    move/from16 v12, v16

    move/from16 v13, v16

    move/from16 v55, v14

    .end local v14  # "userId":I
    .local v55, "userId":I
    move/from16 v14, v16

    const/16 v16, 0x0

    move-object/from16 v15, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v56, v1

    .end local v1  # "mulitiResolveInfo":Landroid/content/pm/ResolveInfo;
    .local v56, "mulitiResolveInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v26}, Lcom/android/server/wm/ActivityStarter;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/wm/SafeActivityOptions;ZZ[Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;ZLcom/android/server/am/PendingIntentRecord;Z)I

    .line 1315
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1316
    return v0

    .line 1294
    .end local v28  # "packageInfo":Z
    .end local v32  # "INTENT_KEY_NAME":Ljava/lang/String;
    .end local v33  # "recoveryInfo":Landroid/content/pm/ActivityInfo;
    .end local v34  # "origId":J
    .end local v55  # "userId":I
    .end local v56  # "mulitiResolveInfo":Landroid/content/pm/ResolveInfo;
    .end local p2  # "recovery":Landroid/content/Intent;
    .restart local v1  # "mulitiResolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v14  # "userId":I
    :cond_1ce
    move-object v8, v0

    move-object/from16 v56, v1

    move v0, v11

    move/from16 v55, v14

    .line 1321
    .end local v1  # "mulitiResolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v14  # "userId":I
    .restart local v55  # "userId":I
    .restart local v56  # "mulitiResolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_1d4
    if-nez v27, :cond_29a

    .line 1322
    move-object/from16 v11, p0

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    move/from16 v7, v55

    .end local v55  # "userId":I
    .local v7, "userId":I
    invoke-virtual {v1, v7}, Lcom/android/server/wm/ActivityStackSupervisor;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1323
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_295

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_295

    .line 1327
    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    .line 1328
    .local v2, "userManager":Landroid/os/UserManager;
    const/4 v3, 0x0

    .line 1329
    .local v3, "profileLockedAndParentUnlockingOrUnlocked":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1331
    .local v4, "token":J
    :try_start_1f5
    invoke-virtual {v2, v7}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v6
    :try_end_1f9
    .catchall {:try_start_1f5 .. :try_end_1f9} :catchall_28c

    .line 1332
    .local v6, "parent":Landroid/content/pm/UserInfo;
    if-eqz v6, :cond_212

    :try_start_1fb
    iget v12, v6, Landroid/content/pm/UserInfo;->id:I

    .line 1333
    invoke-virtual {v2, v12}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v12

    if-eqz v12, :cond_212

    .line 1334
    invoke-virtual {v2, v7}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v12
    :try_end_207
    .catchall {:try_start_1fb .. :try_end_207} :catchall_20b

    if-nez v12, :cond_212

    move v12, v9

    goto :goto_213

    .line 1336
    .end local v6  # "parent":Landroid/content/pm/UserInfo;
    :catchall_20b
    move-exception v0

    move-object/from16 v8, p6

    move/from16 v6, v54

    goto/16 :goto_291

    .line 1334
    .restart local v6  # "parent":Landroid/content/pm/UserInfo;
    :cond_212
    move v12, v0

    :goto_213
    move v3, v12

    .line 1336
    .end local v6  # "parent":Landroid/content/pm/UserInfo;
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1337
    nop

    .line 1338
    if-eqz v3, :cond_235

    .line 1339
    iget-object v12, v11, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/high16 v16, 0xc0000

    iget-object v6, v11, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v6, v6, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 1342
    move/from16 v14, v31

    move/from16 v15, v54

    .end local v31  # "callingUid":I
    .end local v54  # "realCallingUid":I
    .local v14, "callingUid":I
    .local v15, "realCallingUid":I
    invoke-static {v14, v15, v6}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v17

    .line 1339
    move-object/from16 v13, p6

    .end local v14  # "callingUid":I
    .restart local v31  # "callingUid":I
    move-object/from16 v14, p7

    move v6, v15

    .end local v15  # "realCallingUid":I
    .local v6, "realCallingUid":I
    move v15, v7

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v27

    goto :goto_237

    .line 1338
    .end local v6  # "realCallingUid":I
    .restart local v54  # "realCallingUid":I
    :cond_235
    move/from16 v6, v54

    .line 1347
    .end local v54  # "realCallingUid":I
    .restart local v6  # "realCallingUid":I
    :goto_237
    if-nez v27, :cond_289

    invoke-static {v7}, Landroid/os/UserHandle;->isMultiOpenUserId(I)Z

    move-result v12

    if-eqz v12, :cond_289

    .line 1348
    move-object/from16 v15, p6

    .end local p6  # "intent":Landroid/content/Intent;
    .local v15, "intent":Landroid/content/Intent;
    invoke-direct {v11, v15}, Lcom/android/server/wm/ActivityStarter;->isMainActivity(Landroid/content/Intent;)Z

    move-result v12

    if-nez v12, :cond_287

    .line 1349
    const-string v12, "app_uid"

    invoke-virtual {v15, v12, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v10, :cond_276

    .line 1350
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "put userid  "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " in intent "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "ActivityTaskManager"

    invoke-static {v12, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    const-string v12, "app_uid"

    invoke-virtual {v15, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1353
    :cond_276
    iget-object v12, v11, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v10, 0x0

    const/high16 v16, 0xc0000

    const/16 v17, 0x0

    move-object v13, v15

    move-object/from16 v14, p7

    move-object v8, v15

    .end local v15  # "intent":Landroid/content/Intent;
    .local v8, "intent":Landroid/content/Intent;
    move v15, v10

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .end local v27  # "rInfo":Landroid/content/pm/ResolveInfo;
    .local v10, "rInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_2a4

    .line 1348
    .end local v8  # "intent":Landroid/content/Intent;
    .end local v10  # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v15  # "intent":Landroid/content/Intent;
    .restart local v27  # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_287
    move-object v8, v15

    .end local v15  # "intent":Landroid/content/Intent;
    .restart local v8  # "intent":Landroid/content/Intent;
    goto :goto_2a2

    .line 1347
    .end local v8  # "intent":Landroid/content/Intent;
    .restart local p6  # "intent":Landroid/content/Intent;
    :cond_289
    move-object/from16 v8, p6

    .end local p6  # "intent":Landroid/content/Intent;
    .restart local v8  # "intent":Landroid/content/Intent;
    goto :goto_2a2

    .line 1336
    .end local v6  # "realCallingUid":I
    .end local v8  # "intent":Landroid/content/Intent;
    .restart local v54  # "realCallingUid":I
    .restart local p6  # "intent":Landroid/content/Intent;
    :catchall_28c
    move-exception v0

    move-object/from16 v8, p6

    move/from16 v6, v54

    .end local v54  # "realCallingUid":I
    .end local p6  # "intent":Landroid/content/Intent;
    .restart local v6  # "realCallingUid":I
    .restart local v8  # "intent":Landroid/content/Intent;
    :goto_291
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1323
    .end local v2  # "userManager":Landroid/os/UserManager;
    .end local v3  # "profileLockedAndParentUnlockingOrUnlocked":Z
    .end local v4  # "token":J
    .end local v6  # "realCallingUid":I
    .end local v8  # "intent":Landroid/content/Intent;
    .restart local v54  # "realCallingUid":I
    .restart local p6  # "intent":Landroid/content/Intent;
    :cond_295
    move-object/from16 v8, p6

    move/from16 v6, v54

    .end local v54  # "realCallingUid":I
    .end local p6  # "intent":Landroid/content/Intent;
    .restart local v6  # "realCallingUid":I
    .restart local v8  # "intent":Landroid/content/Intent;
    goto :goto_2a2

    .line 1321
    .end local v1  # "userInfo":Landroid/content/pm/UserInfo;
    .end local v6  # "realCallingUid":I
    .end local v7  # "userId":I
    .end local v8  # "intent":Landroid/content/Intent;
    .restart local v54  # "realCallingUid":I
    .restart local v55  # "userId":I
    .restart local p6  # "intent":Landroid/content/Intent;
    :cond_29a
    move-object/from16 v11, p0

    move-object/from16 v8, p6

    move/from16 v6, v54

    move/from16 v7, v55

    .line 1362
    .end local v54  # "realCallingUid":I
    .end local v55  # "userId":I
    .end local p6  # "intent":Landroid/content/Intent;
    .restart local v6  # "realCallingUid":I
    .restart local v7  # "userId":I
    .restart local v8  # "intent":Landroid/content/Intent;
    :goto_2a2
    move-object/from16 v10, v27

    .end local v27  # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v10  # "rInfo":Landroid/content/pm/ResolveInfo;
    :goto_2a4
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    move/from16 v15, p13

    move-object/from16 v13, p14

    invoke-virtual {v1, v8, v10, v15, v13}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v12

    .line 1365
    .local v12, "aInfo":Landroid/content/pm/ActivityInfo;
    nop

    .line 1366
    invoke-static/range {v31 .. v31}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1365
    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v8

    move-object/from16 v4, p3

    move v14, v6

    .end local v6  # "realCallingUid":I
    .local v14, "realCallingUid":I
    move v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/ActivityStarter;->isNeedChooseActivity(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Ljava/lang/String;II)Z

    move-result v54

    .line 1367
    .local v54, "isNeedChooseActivity":Z
    if-eqz v54, :cond_2e3

    .line 1368
    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v10

    move-object v4, v12

    move-object/from16 v5, p7

    move/from16 v6, p13

    move/from16 v55, v7

    .end local v7  # "userId":I
    .restart local v55  # "userId":I
    move-object/from16 v7, p14

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/ActivityStarter;->getCrossUserChooseActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/pm/ActivityInfo;Ljava/lang/String;ILandroid/app/ProfilerInfo;)Lcom/android/server/wm/ActivityStarter$ChooseActivityInfo;

    move-result-object v1

    .line 1372
    .local v1, "chooseActivityInfo":Lcom/android/server/wm/ActivityStarter$ChooseActivityInfo;
    if-eqz v1, :cond_2e5

    iget-boolean v2, v1, Lcom/android/server/wm/ActivityStarter$ChooseActivityInfo;->isOk:Z

    if-eqz v2, :cond_2e5

    .line 1373
    iget-object v4, v1, Lcom/android/server/wm/ActivityStarter$ChooseActivityInfo;->intent:Landroid/content/Intent;

    .line 1374
    .end local v8  # "intent":Landroid/content/Intent;
    .local v4, "intent":Landroid/content/Intent;
    iget-object v10, v1, Lcom/android/server/wm/ActivityStarter$ChooseActivityInfo;->rInfo:Landroid/content/pm/ResolveInfo;

    .line 1375
    iget-object v12, v1, Lcom/android/server/wm/ActivityStarter$ChooseActivityInfo;->aInfo:Landroid/content/pm/ActivityInfo;

    .line 1376
    iget-object v2, v1, Lcom/android/server/wm/ActivityStarter$ChooseActivityInfo;->resolvedType:Ljava/lang/String;

    move-object v8, v4

    move-object v1, v12

    .end local p7  # "resolvedType":Ljava/lang/String;
    .local v2, "resolvedType":Ljava/lang/String;
    goto :goto_2e8

    .line 1367
    .end local v1  # "chooseActivityInfo":Lcom/android/server/wm/ActivityStarter$ChooseActivityInfo;
    .end local v2  # "resolvedType":Ljava/lang/String;
    .end local v4  # "intent":Landroid/content/Intent;
    .end local v55  # "userId":I
    .restart local v7  # "userId":I
    .restart local v8  # "intent":Landroid/content/Intent;
    .restart local p7  # "resolvedType":Ljava/lang/String;
    :cond_2e3
    move/from16 v55, v7

    .line 1381
    .end local v7  # "userId":I
    .restart local v55  # "userId":I
    :cond_2e5
    move-object/from16 v2, p7

    move-object v1, v12

    .end local v12  # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local p7  # "resolvedType":Ljava/lang/String;
    .local v1, "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v2  # "resolvedType":Ljava/lang/String;
    :goto_2e8
    if-eqz v1, :cond_381

    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getFlymePackageManagerService()Lcom/android/server/pm/FlymePackageManagerService;

    move-result-object v3

    if-eqz v3, :cond_381

    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getFlymePackageManagerService()Lcom/android/server/pm/FlymePackageManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/FlymePackageManagerService;->getProtectionState()Z

    move-result v3

    if-eqz v3, :cond_381

    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getFlymePackageManagerService()Lcom/android/server/pm/FlymePackageManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/FlymePackageManagerService;->getMayForbitPackage()Ljava/util/List;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_381

    .line 1382
    const-string v3, "ActivityTaskManager"

    const-string v4, "we are in protection state"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    iget-object v3, v8, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    iget v3, v3, Landroid/content/IntentExt;->mMeizuFlags:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-nez v3, :cond_37f

    iget-boolean v3, v1, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v3, :cond_37f

    .line 1385
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "privacy":Landroid/content/Intent;
    move-object/from16 v17, v0

    .line 1386
    const-string v3, "com.meizu.remotecooperation.PRIVACY_PROTECTION"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1387
    const-string v3, "RemoteCooperation"

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1388
    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "packageName"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1389
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "we are in protection state and send broadcast "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v12, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const/16 v3, 0x3e8

    move v4, v14

    .end local v14  # "realCallingUid":I
    .local v4, "realCallingUid":I
    move v14, v3

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const-string v3, "android"

    move-object v13, v3

    move/from16 v15, v31

    move/from16 v16, p19

    move/from16 v27, v55

    invoke-virtual/range {v12 .. v28}, Landroid/app/ActivityManagerInternal;->broadcastIntentInPackage(Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZIZ)I

    .line 1393
    const/16 v3, -0x58

    return v3

    .line 1383
    .end local v0  # "privacy":Landroid/content/Intent;
    .end local v4  # "realCallingUid":I
    .restart local v14  # "realCallingUid":I
    :cond_37f
    move v4, v14

    .end local v14  # "realCallingUid":I
    .restart local v4  # "realCallingUid":I
    goto :goto_3ae

    .line 1381
    .end local v4  # "realCallingUid":I
    .restart local v14  # "realCallingUid":I
    :cond_381
    move v4, v14

    .line 1396
    .end local v14  # "realCallingUid":I
    .restart local v4  # "realCallingUid":I
    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mFlymePackageManagerService:Lcom/android/server/pm/FlymePackageManagerService;

    if-eqz v3, :cond_3a7

    .line 1397
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "protection state "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mFlymePackageManagerService:Lcom/android/server/pm/FlymePackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/FlymePackageManagerService;->getProtectionState()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3ae

    .line 1399
    :cond_3a7
    const-string v3, "ActivityTaskManager"

    const-string v5, "flymePackageManagerService is null!!  "

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    :goto_3ae
    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_3b3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1405
    iget-object v5, v11, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5
    :try_end_3bc
    .catchall {:try_start_3b3 .. :try_end_3bc} :catchall_72c

    .line 1406
    .local v5, "stack":Lcom/android/server/wm/ActivityStack;
    move-object/from16 v6, p16

    if-eqz v6, :cond_3dc

    :try_start_3c0
    iget-object v7, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1407
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v7
    :try_end_3ca
    .catchall {:try_start_3c0 .. :try_end_3ca} :catchall_3ce

    if-eqz v7, :cond_3dc

    move v7, v9

    goto :goto_3dd

    .line 1553
    .end local v5  # "stack":Lcom/android/server/wm/ActivityStack;
    :catchall_3ce
    move-exception v0

    move/from16 v5, p19

    move/from16 v16, v4

    move-object v13, v8

    move/from16 v6, v31

    move/from16 v12, v55

    move-object/from16 v8, p1

    goto/16 :goto_739

    .line 1407
    .restart local v5  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_3dc
    move v7, v0

    :goto_3dd
    :try_start_3dd
    iput-boolean v7, v5, Lcom/android/server/wm/ActivityStack;->mConfigWillChange:Z

    .line 1408
    sget-boolean v7, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z
    :try_end_3e1
    .catchall {:try_start_3dd .. :try_end_3e1} :catchall_72c

    if-eqz v7, :cond_3fb

    :try_start_3e3
    const-string v7, "ActivityTaskManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Starting activity when config will change = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v5, Lcom/android/server/wm/ActivityStack;->mConfigWillChange:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3fb
    .catchall {:try_start_3e3 .. :try_end_3fb} :catchall_3ce

    .line 1411
    :cond_3fb
    :try_start_3fb
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12
    :try_end_3ff
    .catchall {:try_start_3fb .. :try_end_3ff} :catchall_72c

    move-wide/from16 v25, v12

    .line 1413
    .local v25, "origId":J
    const/4 v7, 0x2

    if-eqz v1, :cond_5c0

    :try_start_404
    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/2addr v12, v7

    if-eqz v12, :cond_5c0

    iget-object v12, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v12, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mHasHeavyWeightFeature:Z

    if-eqz v12, :cond_5c0

    .line 1419
    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v13, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5ac

    .line 1420
    iget-object v12, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v12, v12, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    move-object v15, v12

    .line 1421
    .local v15, "heavy":Lcom/android/server/wm/WindowProcessController;
    if-eqz v15, :cond_5a5

    iget-object v12, v15, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v13, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_42c
    .catchall {:try_start_404 .. :try_end_42c} :catchall_5b1

    if-ne v12, v13, :cond_43f

    :try_start_42e
    iget-object v12, v15, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget-object v13, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 1422
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_436
    .catchall {:try_start_42e .. :try_end_436} :catchall_3ce

    if-nez v12, :cond_439

    goto :goto_43f

    :cond_439
    move/from16 v7, p19

    move/from16 v12, v55

    goto/16 :goto_5c4

    .line 1423
    :cond_43f
    :goto_43f
    move/from16 v12, v31

    .line 1424
    .local v12, "appCallingUid":I
    move-object/from16 v14, p1

    if-eqz v14, :cond_4aa

    .line 1425
    :try_start_445
    iget-object v13, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1426
    invoke-virtual {v13, v14}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v13

    .line 1427
    .local v13, "callerApp":Lcom/android/server/wm/WindowProcessController;
    if-eqz v13, :cond_456

    .line 1428
    iget-object v7, v13, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v27, v7

    move/from16 v7, p19

    .end local v12  # "appCallingUid":I
    .local v7, "appCallingUid":I
    goto :goto_4ae

    .line 1430
    .end local v7  # "appCallingUid":I
    .restart local v12  # "appCallingUid":I
    :cond_456
    const-string v0, "ActivityTaskManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to find app for caller "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " (pid="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_46a
    .catchall {:try_start_445 .. :try_end_46a} :catchall_49d

    move/from16 v9, p19

    .end local p19  # "callingPid":I
    .local v9, "callingPid":I
    :try_start_46c
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_46f
    .catchall {:try_start_46c .. :try_end_46f} :catchall_48e

    move/from16 p19, v9

    .end local v9  # "callingPid":I
    .restart local p19  # "callingPid":I
    :try_start_471
    const-string v9, ") when starting: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1432
    invoke-virtual {v8}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1430
    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    invoke-static/range {p17 .. p17}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1434
    const/16 v0, -0x5e

    monitor-exit v3
    :try_end_48a
    .catchall {:try_start_471 .. :try_end_48a} :catchall_49d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 1553
    .end local v5  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v12  # "appCallingUid":I
    .end local v13  # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v15  # "heavy":Lcom/android/server/wm/WindowProcessController;
    .end local v25  # "origId":J
    .end local p19  # "callingPid":I
    .restart local v9  # "callingPid":I
    :catchall_48e
    move-exception v0

    move/from16 p19, v9

    move/from16 v5, p19

    move/from16 v16, v4

    move-object v13, v8

    move-object v8, v14

    move/from16 v6, v31

    move/from16 v12, v55

    .end local v9  # "callingPid":I
    .restart local p19  # "callingPid":I
    goto/16 :goto_739

    :catchall_49d
    move-exception v0

    move/from16 v5, p19

    move/from16 v16, v4

    move-object v13, v8

    move-object v8, v14

    move/from16 v6, v31

    move/from16 v12, v55

    goto/16 :goto_739

    .line 1424
    .restart local v5  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v12  # "appCallingUid":I
    .restart local v15  # "heavy":Lcom/android/server/wm/WindowProcessController;
    .restart local v25  # "origId":J
    :cond_4aa
    move/from16 v7, p19

    .end local p19  # "callingPid":I
    .local v7, "callingPid":I
    move/from16 v27, v12

    .line 1438
    .end local v12  # "appCallingUid":I
    .local v27, "appCallingUid":I
    :goto_4ae
    :try_start_4ae
    iget-object v12, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v16, "android"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    new-array v13, v9, [Landroid/content/Intent;

    aput-object v8, v13, v0

    move-object/from16 v20, v13

    new-array v13, v9, [Ljava/lang/String;

    aput-object v2, v13, v0

    const/high16 v22, 0x50000000

    const/16 v23, 0x0

    move-object/from16 v21, v13

    const/4 v13, 0x2

    move-object/from16 v14, v16

    move-object v0, v15

    .end local v15  # "heavy":Lcom/android/server/wm/WindowProcessController;
    .local v0, "heavy":Lcom/android/server/wm/WindowProcessController;
    move/from16 v15, v27

    move/from16 v16, v55

    invoke-virtual/range {v12 .. v23}, Lcom/android/server/wm/ActivityTaskManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v12

    move-object v15, v12

    .line 1444
    .local v15, "target":Landroid/content/IIntentSender;
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V
    :try_end_4da
    .catchall {:try_start_4ae .. :try_end_4da} :catchall_598

    move-object v14, v12

    .line 1445
    .local v14, "newIntent":Landroid/content/Intent;
    if-ltz p12, :cond_4f0

    .line 1447
    :try_start_4dd
    const-string v12, "has_result"

    invoke-virtual {v14, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_4e2
    .catchall {:try_start_4dd .. :try_end_4e2} :catchall_4e3

    goto :goto_4f0

    .line 1553
    .end local v0  # "heavy":Lcom/android/server/wm/WindowProcessController;
    .end local v5  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v14  # "newIntent":Landroid/content/Intent;
    .end local v15  # "target":Landroid/content/IIntentSender;
    .end local v25  # "origId":J
    .end local v27  # "appCallingUid":I
    :catchall_4e3
    move-exception v0

    move/from16 v16, v4

    move v5, v7

    move-object v13, v8

    move/from16 v6, v31

    move/from16 v12, v55

    move-object/from16 v8, p1

    goto/16 :goto_739

    .line 1449
    .restart local v0  # "heavy":Lcom/android/server/wm/WindowProcessController;
    .restart local v5  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v14  # "newIntent":Landroid/content/Intent;
    .restart local v15  # "target":Landroid/content/IIntentSender;
    .restart local v25  # "origId":J
    .restart local v27  # "appCallingUid":I
    :cond_4f0
    :goto_4f0
    :try_start_4f0
    const-string v12, "intent"

    new-instance v13, Landroid/content/IntentSender;

    invoke-direct {v13, v15}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    invoke-virtual {v14, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1451
    invoke-virtual {v0, v14}, Lcom/android/server/wm/WindowProcessController;->updateIntentForHeavyWeightActivity(Landroid/content/Intent;)V

    .line 1452
    const-string v12, "new_app"

    iget-object v13, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1454
    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v12

    invoke-virtual {v14, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1455
    const-string v12, "android"

    const-class v13, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    .line 1456
    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    .line 1455
    invoke-virtual {v14, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_516
    .catchall {:try_start_4f0 .. :try_end_516} :catchall_598

    .line 1457
    move-object v13, v14

    .line 1458
    .end local v8  # "intent":Landroid/content/Intent;
    .local v13, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 1459
    const/4 v8, 0x0

    .line 1460
    .end local p1  # "caller":Landroid/app/IApplicationThread;
    .local v8, "caller":Landroid/app/IApplicationThread;
    :try_start_519
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12
    :try_end_51d
    .catchall {:try_start_519 .. :try_end_51d} :catchall_58e

    .line 1461
    .end local v31  # "callingUid":I
    .local v12, "callingUid":I
    :try_start_51d
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    move/from16 v7, v16

    .line 1462
    const/16 v29, 0x1

    .line 1463
    iget-object v9, v11, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v19, v0

    .end local v0  # "heavy":Lcom/android/server/wm/WindowProcessController;
    .local v19, "heavy":Lcom/android/server/wm/WindowProcessController;
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 1464
    invoke-static {v12, v4, v0}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v0
    :try_end_535
    .catchall {:try_start_51d .. :try_end_535} :catchall_582

    .line 1463
    move/from16 v20, v12

    .end local v12  # "callingUid":I
    .local v20, "callingUid":I
    move-object v12, v9

    move-object v9, v14

    .end local v14  # "newIntent":Landroid/content/Intent;
    .local v9, "newIntent":Landroid/content/Intent;
    move-object/from16 v14, v16

    move-object/from16 v21, v15

    .end local v15  # "target":Landroid/content/IIntentSender;
    .local v21, "target":Landroid/content/IIntentSender;
    move/from16 v15, v55

    move/from16 v16, v17

    move/from16 v17, v0

    :try_start_543
    invoke-virtual/range {v12 .. v17}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v0
    :try_end_547
    .catchall {:try_start_543 .. :try_end_547} :catchall_578

    move-object v10, v0

    .line 1466
    if-eqz v10, :cond_557

    :try_start_54a
    iget-object v0, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_54c
    .catchall {:try_start_54a .. :try_end_54c} :catchall_54d

    goto :goto_558

    .line 1553
    .end local v5  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v9  # "newIntent":Landroid/content/Intent;
    .end local v19  # "heavy":Lcom/android/server/wm/WindowProcessController;
    .end local v21  # "target":Landroid/content/IIntentSender;
    .end local v25  # "origId":J
    .end local v27  # "appCallingUid":I
    :catchall_54d
    move-exception v0

    move/from16 v16, v4

    move v5, v7

    move/from16 v6, v20

    move/from16 v12, v55

    goto/16 :goto_739

    .line 1466
    .restart local v5  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v9  # "newIntent":Landroid/content/Intent;
    .restart local v19  # "heavy":Lcom/android/server/wm/WindowProcessController;
    .restart local v21  # "target":Landroid/content/IIntentSender;
    .restart local v25  # "origId":J
    .restart local v27  # "appCallingUid":I
    :cond_557
    const/4 v0, 0x0

    :goto_558
    move-object v1, v0

    .line 1467
    if-eqz v1, :cond_572

    .line 1468
    :try_start_55b
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;
    :try_end_55f
    .catchall {:try_start_55b .. :try_end_55f} :catchall_578

    move/from16 v12, v55

    .end local v55  # "userId":I
    .local v12, "userId":I
    :try_start_561
    invoke-virtual {v0, v1, v12}, Landroid/app/ActivityManagerInternal;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_565
    .catchall {:try_start_561 .. :try_end_565} :catchall_56a

    move-object v1, v0

    move/from16 v9, v29

    .end local v1  # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    goto/16 :goto_5cb

    .line 1553
    .end local v0  # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v5  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v9  # "newIntent":Landroid/content/Intent;
    .end local v19  # "heavy":Lcom/android/server/wm/WindowProcessController;
    .end local v21  # "target":Landroid/content/IIntentSender;
    .end local v25  # "origId":J
    .end local v27  # "appCallingUid":I
    .restart local v1  # "aInfo":Landroid/content/pm/ActivityInfo;
    :catchall_56a
    move-exception v0

    move/from16 v16, v4

    move v5, v7

    move/from16 v6, v20

    goto/16 :goto_739

    .line 1467
    .end local v12  # "userId":I
    .restart local v5  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v9  # "newIntent":Landroid/content/Intent;
    .restart local v19  # "heavy":Lcom/android/server/wm/WindowProcessController;
    .restart local v21  # "target":Landroid/content/IIntentSender;
    .restart local v25  # "origId":J
    .restart local v27  # "appCallingUid":I
    .restart local v55  # "userId":I
    :cond_572
    move/from16 v12, v55

    .end local v55  # "userId":I
    .restart local v12  # "userId":I
    move/from16 v9, v29

    goto/16 :goto_5cb

    .line 1553
    .end local v5  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v9  # "newIntent":Landroid/content/Intent;
    .end local v12  # "userId":I
    .end local v19  # "heavy":Lcom/android/server/wm/WindowProcessController;
    .end local v21  # "target":Landroid/content/IIntentSender;
    .end local v25  # "origId":J
    .end local v27  # "appCallingUid":I
    .restart local v55  # "userId":I
    :catchall_578
    move-exception v0

    move/from16 v12, v55

    move/from16 v16, v4

    move v5, v7

    move/from16 v6, v20

    .end local v55  # "userId":I
    .restart local v12  # "userId":I
    goto/16 :goto_739

    .end local v20  # "callingUid":I
    .local v12, "callingUid":I
    .restart local v55  # "userId":I
    :catchall_582
    move-exception v0

    move/from16 v20, v12

    move/from16 v12, v55

    move/from16 v16, v4

    move v5, v7

    move/from16 v6, v20

    .end local v55  # "userId":I
    .local v12, "userId":I
    .restart local v20  # "callingUid":I
    goto/16 :goto_739

    .end local v12  # "userId":I
    .end local v20  # "callingUid":I
    .restart local v31  # "callingUid":I
    .restart local v55  # "userId":I
    :catchall_58e
    move-exception v0

    move/from16 v12, v55

    move/from16 v16, v4

    move v5, v7

    move/from16 v6, v31

    .end local v55  # "userId":I
    .restart local v12  # "userId":I
    goto/16 :goto_739

    .end local v12  # "userId":I
    .end local v13  # "intent":Landroid/content/Intent;
    .local v8, "intent":Landroid/content/Intent;
    .restart local v55  # "userId":I
    .restart local p1  # "caller":Landroid/app/IApplicationThread;
    :catchall_598
    move-exception v0

    move/from16 v12, v55

    move/from16 v16, v4

    move v5, v7

    move-object v13, v8

    move/from16 v6, v31

    move-object/from16 v8, p1

    .end local v55  # "userId":I
    .restart local v12  # "userId":I
    goto/16 :goto_739

    .line 1421
    .end local v7  # "callingPid":I
    .end local v12  # "userId":I
    .restart local v5  # "stack":Lcom/android/server/wm/ActivityStack;
    .local v15, "heavy":Lcom/android/server/wm/WindowProcessController;
    .restart local v25  # "origId":J
    .restart local v55  # "userId":I
    .restart local p19  # "callingPid":I
    :cond_5a5
    move/from16 v7, p19

    move-object/from16 v19, v15

    move/from16 v12, v55

    .end local v15  # "heavy":Lcom/android/server/wm/WindowProcessController;
    .end local v55  # "userId":I
    .end local p19  # "callingPid":I
    .restart local v7  # "callingPid":I
    .restart local v12  # "userId":I
    .restart local v19  # "heavy":Lcom/android/server/wm/WindowProcessController;
    goto :goto_5c4

    .line 1419
    .end local v7  # "callingPid":I
    .end local v12  # "userId":I
    .end local v19  # "heavy":Lcom/android/server/wm/WindowProcessController;
    .restart local v55  # "userId":I
    .restart local p19  # "callingPid":I
    :cond_5ac
    move/from16 v7, p19

    move/from16 v12, v55

    .end local v55  # "userId":I
    .end local p19  # "callingPid":I
    .restart local v7  # "callingPid":I
    .restart local v12  # "userId":I
    goto :goto_5c4

    .line 1553
    .end local v5  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v7  # "callingPid":I
    .end local v12  # "userId":I
    .end local v25  # "origId":J
    .restart local v55  # "userId":I
    .restart local p19  # "callingPid":I
    :catchall_5b1
    move-exception v0

    move/from16 v7, p19

    move/from16 v12, v55

    move/from16 v16, v4

    move v5, v7

    move-object v13, v8

    move/from16 v6, v31

    move-object/from16 v8, p1

    .end local v55  # "userId":I
    .end local p19  # "callingPid":I
    .restart local v7  # "callingPid":I
    .restart local v12  # "userId":I
    goto/16 :goto_739

    .line 1413
    .end local v7  # "callingPid":I
    .end local v12  # "userId":I
    .restart local v5  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v25  # "origId":J
    .restart local v55  # "userId":I
    .restart local p19  # "callingPid":I
    :cond_5c0
    move/from16 v7, p19

    move/from16 v12, v55

    .line 1474
    .end local v55  # "userId":I
    .end local p19  # "callingPid":I
    .restart local v7  # "callingPid":I
    .restart local v12  # "userId":I
    :goto_5c4
    move-object v13, v8

    move/from16 v9, v29

    move/from16 v20, v31

    move-object/from16 v8, p1

    .end local v29  # "componentSpecified":Z
    .end local v31  # "callingUid":I
    .end local p1  # "caller":Landroid/app/IApplicationThread;
    .local v8, "caller":Landroid/app/IApplicationThread;
    .local v9, "componentSpecified":Z
    .restart local v13  # "intent":Landroid/content/Intent;
    .restart local v20  # "callingUid":I
    :goto_5cb
    const/4 v0, 0x1

    :try_start_5cc
    new-array v14, v0, [Lcom/android/server/wm/ActivityRecord;

    .local v14, "outRecord":[Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v48, v14

    .line 1475
    move-object/from16 v27, p0

    move-object/from16 v28, v8

    move-object/from16 v29, v13

    move-object/from16 v31, v2

    move-object/from16 v32, v1

    move-object/from16 v33, v10

    move-object/from16 v34, p8

    move-object/from16 v35, p9

    move-object/from16 v36, p10

    move-object/from16 v37, p11

    move/from16 v38, p12

    move/from16 v39, v7

    move/from16 v40, v20

    move-object/from16 v41, p3

    move/from16 v43, v4

    move/from16 v44, p13

    move-object/from16 v45, p17

    move/from16 v46, p18

    move/from16 v47, v9

    move-object/from16 v49, p20

    move-object/from16 v50, p21

    move/from16 v51, p22

    move-object/from16 v52, p23

    move/from16 v53, p24

    invoke-direct/range {v27 .. v53}, Lcom/android/server/wm/ActivityStarter;->startActivity(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILcom/android/server/wm/SafeActivityOptions;ZZ[Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v15

    .line 1482
    .local v15, "res":I
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1484
    iget-boolean v0, v5, Lcom/android/server/wm/ActivityStack;->mConfigWillChange:Z
    :try_end_609
    .catchall {:try_start_5cc .. :try_end_609} :catchall_71b

    if-eqz v0, :cond_65a

    .line 1489
    :try_start_60b
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;
    :try_end_60f
    .catchall {:try_start_60b .. :try_end_60f} :catchall_64c

    move-object/from16 p1, v1

    .end local v1  # "aInfo":Landroid/content/pm/ActivityInfo;
    .local p1, "aInfo":Landroid/content/pm/ActivityInfo;
    :try_start_611
    const-string v1, "android.permission.CHANGE_CONFIGURATION"
    :try_end_613
    .catchall {:try_start_611 .. :try_end_613} :catchall_63e

    move-object/from16 p7, v2

    .end local v2  # "resolvedType":Ljava/lang/String;
    .restart local p7  # "resolvedType":Ljava/lang/String;
    :try_start_615
    const-string v2, "updateConfiguration()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    const/4 v0, 0x0

    iput-boolean v0, v5, Lcom/android/server/wm/ActivityStack;->mConfigWillChange:Z

    .line 1492
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v0, :cond_628

    const-string v0, "ActivityTaskManager"

    const-string v1, "Updating to new configuration after starting activity."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    :cond_628
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z
    :try_end_62f
    .catchall {:try_start_615 .. :try_end_62f} :catchall_630

    goto :goto_65e

    .line 1553
    .end local v5  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v14  # "outRecord":[Lcom/android/server/wm/ActivityRecord;
    .end local v15  # "res":I
    .end local v25  # "origId":J
    :catchall_630
    move-exception v0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move/from16 v16, v4

    move v5, v7

    move/from16 v29, v9

    move/from16 v6, v20

    goto/16 :goto_739

    .end local p7  # "resolvedType":Ljava/lang/String;
    .restart local v2  # "resolvedType":Ljava/lang/String;
    :catchall_63e
    move-exception v0

    move-object/from16 p7, v2

    move-object/from16 v1, p1

    move/from16 v16, v4

    move v5, v7

    move/from16 v29, v9

    move/from16 v6, v20

    .end local v2  # "resolvedType":Ljava/lang/String;
    .restart local p7  # "resolvedType":Ljava/lang/String;
    goto/16 :goto_739

    .end local p1  # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local p7  # "resolvedType":Ljava/lang/String;
    .restart local v1  # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v2  # "resolvedType":Ljava/lang/String;
    :catchall_64c
    move-exception v0

    move-object/from16 p1, v1

    move-object/from16 p7, v2

    move/from16 v16, v4

    move v5, v7

    move/from16 v29, v9

    move/from16 v6, v20

    .end local v1  # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v2  # "resolvedType":Ljava/lang/String;
    .restart local p1  # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local p7  # "resolvedType":Ljava/lang/String;
    goto/16 :goto_739

    .line 1484
    .end local p1  # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local p7  # "resolvedType":Ljava/lang/String;
    .restart local v1  # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v2  # "resolvedType":Ljava/lang/String;
    .restart local v5  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v14  # "outRecord":[Lcom/android/server/wm/ActivityRecord;
    .restart local v15  # "res":I
    .restart local v25  # "origId":J
    :cond_65a
    move-object/from16 p1, v1

    move-object/from16 p7, v2

    .line 1499
    .end local v1  # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v2  # "resolvedType":Ljava/lang/String;
    .restart local p1  # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local p7  # "resolvedType":Ljava/lang/String;
    :goto_65e
    :try_start_65e
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v14, v1

    invoke-virtual {v0, v15, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/wm/ActivityRecord;)V
    :try_end_66a
    .catchall {:try_start_65e .. :try_end_66a} :catchall_70c

    .line 1500
    move-object/from16 v1, p15

    if-eqz v1, :cond_6f8

    .line 1501
    :try_start_66e
    iput v15, v1, Landroid/app/WaitResult;->result:I

    .line 1503
    const/4 v0, 0x0

    aget-object v2, v14, v0
    :try_end_673
    .catchall {:try_start_66e .. :try_end_673} :catchall_6f6

    .line 1505
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v15, :cond_6ce

    move/from16 v16, v4

    move-object/from16 p19, v5

    .end local v4  # "realCallingUid":I
    .end local v5  # "stack":Lcom/android/server/wm/ActivityStack;
    .local v16, "realCallingUid":I
    .local p19, "stack":Lcom/android/server/wm/ActivityStack;
    const/4 v0, 0x3

    const/4 v4, 0x2

    if-eq v15, v4, :cond_68e

    if-eq v15, v0, :cond_681

    goto/16 :goto_6fc

    .line 1521
    :cond_681
    const/4 v0, 0x0

    :try_start_682
    iput-boolean v0, v1, Landroid/app/WaitResult;->timeout:Z

    .line 1522
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v0, v1, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 1523
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Landroid/app/WaitResult;->totalTime:J

    .line 1524
    goto/16 :goto_6fc

    .line 1527
    :cond_68e
    nop

    .line 1528
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v4

    if-eqz v4, :cond_696

    goto :goto_697

    :cond_696
    const/4 v0, 0x1

    :goto_697
    iput v0, v1, Landroid/app/WaitResult;->launchState:I

    .line 1531
    iget-boolean v0, v2, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v0, :cond_6b1

    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v0

    if-eqz v0, :cond_6b1

    .line 1532
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/app/WaitResult;->timeout:Z

    .line 1533
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v0, v1, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 1534
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Landroid/app/WaitResult;->totalTime:J

    goto :goto_6fc

    .line 1536
    :cond_6b1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1537
    .local v4, "startTimeMs":J
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v6, v1, v4, v5}, Lcom/android/server/wm/ActivityStackSupervisor;->waitActivityVisible(Landroid/content/ComponentName;Landroid/app/WaitResult;J)V
    :try_end_6bc
    .catchall {:try_start_682 .. :try_end_6bc} :catchall_701

    .line 1542
    :cond_6bc
    :try_start_6bc
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_6c3
    .catch Ljava/lang/InterruptedException; {:try_start_6bc .. :try_end_6c3} :catch_6c4
    .catchall {:try_start_6bc .. :try_end_6c3} :catchall_701

    .line 1544
    goto :goto_6c5

    .line 1543
    :catch_6c4
    move-exception v0

    .line 1545
    :goto_6c5
    :try_start_6c5
    iget-boolean v0, v1, Landroid/app/WaitResult;->timeout:Z

    if-nez v0, :cond_6fc

    iget-object v0, v1, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v0, :cond_6bc

    goto :goto_6fc

    .line 1507
    .end local v16  # "realCallingUid":I
    .end local p19  # "stack":Lcom/android/server/wm/ActivityStack;
    .local v4, "realCallingUid":I
    .restart local v5  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_6ce
    move/from16 v16, v4

    move-object/from16 p19, v5

    .end local v4  # "realCallingUid":I
    .end local v5  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v16  # "realCallingUid":I
    .restart local p19  # "stack":Lcom/android/server/wm/ActivityStack;
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6d9
    .catchall {:try_start_6c5 .. :try_end_6d9} :catchall_701

    .line 1510
    :cond_6d9
    :try_start_6d9
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_6e0
    .catch Ljava/lang/InterruptedException; {:try_start_6d9 .. :try_end_6e0} :catch_6e1
    .catchall {:try_start_6d9 .. :try_end_6e0} :catchall_701

    .line 1512
    goto :goto_6e2

    .line 1511
    :catch_6e1
    move-exception v0

    .line 1513
    :goto_6e2
    :try_start_6e2
    iget v0, v1, Landroid/app/WaitResult;->result:I

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6ef

    iget-boolean v0, v1, Landroid/app/WaitResult;->timeout:Z

    if-nez v0, :cond_6ef

    iget-object v0, v1, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v0, :cond_6d9

    .line 1515
    :cond_6ef
    iget v0, v1, Landroid/app/WaitResult;->result:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_6fc

    .line 1516
    const/4 v15, 0x2

    goto :goto_6fc

    .line 1553
    .end local v2  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v14  # "outRecord":[Lcom/android/server/wm/ActivityRecord;
    .end local v15  # "res":I
    .end local v16  # "realCallingUid":I
    .end local v25  # "origId":J
    .end local p19  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v4  # "realCallingUid":I
    :catchall_6f6
    move-exception v0

    goto :goto_70f

    .line 1500
    .restart local v5  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v14  # "outRecord":[Lcom/android/server/wm/ActivityRecord;
    .restart local v15  # "res":I
    .restart local v25  # "origId":J
    :cond_6f8
    move/from16 v16, v4

    move-object/from16 p19, v5

    .line 1552
    .end local v4  # "realCallingUid":I
    .end local v5  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v16  # "realCallingUid":I
    .restart local p19  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_6fc
    :goto_6fc
    monitor-exit v3
    :try_end_6fd
    .catchall {:try_start_6e2 .. :try_end_6fd} :catchall_701

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v15

    .line 1553
    .end local v14  # "outRecord":[Lcom/android/server/wm/ActivityRecord;
    .end local v15  # "res":I
    .end local v25  # "origId":J
    .end local p19  # "stack":Lcom/android/server/wm/ActivityStack;
    :catchall_701
    move-exception v0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move v5, v7

    move/from16 v29, v9

    move/from16 v6, v20

    goto :goto_739

    .end local v16  # "realCallingUid":I
    .restart local v4  # "realCallingUid":I
    :catchall_70c
    move-exception v0

    move-object/from16 v1, p15

    :goto_70f
    move/from16 v16, v4

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move v5, v7

    move/from16 v29, v9

    move/from16 v6, v20

    .end local v4  # "realCallingUid":I
    .restart local v16  # "realCallingUid":I
    goto :goto_739

    .end local v16  # "realCallingUid":I
    .end local p1  # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local p7  # "resolvedType":Ljava/lang/String;
    .restart local v1  # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v2, "resolvedType":Ljava/lang/String;
    .restart local v4  # "realCallingUid":I
    :catchall_71b
    move-exception v0

    move-object/from16 p1, v1

    move-object/from16 p7, v2

    move/from16 v16, v4

    move-object/from16 v1, p15

    move-object/from16 v1, p1

    move v5, v7

    move/from16 v29, v9

    move/from16 v6, v20

    .end local v1  # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v2  # "resolvedType":Ljava/lang/String;
    .end local v4  # "realCallingUid":I
    .restart local v16  # "realCallingUid":I
    .restart local p1  # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local p7  # "resolvedType":Ljava/lang/String;
    goto :goto_739

    .end local v7  # "callingPid":I
    .end local v9  # "componentSpecified":Z
    .end local v12  # "userId":I
    .end local v13  # "intent":Landroid/content/Intent;
    .end local v16  # "realCallingUid":I
    .end local v20  # "callingUid":I
    .end local p7  # "resolvedType":Ljava/lang/String;
    .restart local v1  # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v2  # "resolvedType":Ljava/lang/String;
    .restart local v4  # "realCallingUid":I
    .local v8, "intent":Landroid/content/Intent;
    .restart local v29  # "componentSpecified":Z
    .restart local v31  # "callingUid":I
    .restart local v55  # "userId":I
    .local p1, "caller":Landroid/app/IApplicationThread;
    .local p19, "callingPid":I
    :catchall_72c
    move-exception v0

    move/from16 v7, p19

    move/from16 v16, v4

    move/from16 v12, v55

    move v5, v7

    move-object v13, v8

    move/from16 v6, v31

    move-object/from16 v8, p1

    .end local v4  # "realCallingUid":I
    .end local v31  # "callingUid":I
    .end local v55  # "userId":I
    .end local p1  # "caller":Landroid/app/IApplicationThread;
    .end local p19  # "callingPid":I
    .local v5, "callingPid":I
    .local v6, "callingUid":I
    .local v8, "caller":Landroid/app/IApplicationThread;
    .restart local v12  # "userId":I
    .restart local v13  # "intent":Landroid/content/Intent;
    .restart local v16  # "realCallingUid":I
    :goto_739
    :try_start_739
    monitor-exit v3
    :try_end_73a
    .catchall {:try_start_739 .. :try_end_73a} :catchall_73e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_73e
    move-exception v0

    goto :goto_739
.end method

.method private startActivityUnchecked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;[Lcom/android/server/wm/ActivityRecord;Z)I
    .registers 44
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "sourceRecord"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "voiceSession"  # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"  # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"  # I
    .param p6, "doResume"  # Z
    .param p7, "options"  # Landroid/app/ActivityOptions;
    .param p8, "inTask"  # Lcom/android/server/wm/TaskRecord;
    .param p9, "outActivity"  # [Lcom/android/server/wm/ActivityRecord;
    .param p10, "restrictedBgActivity"  # Z

    .line 1662
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move/from16 v5, p6

    move/from16 v6, p5

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p10

    invoke-direct/range {v1 .. v10}, Lcom/android/server/wm/ActivityStarter;->setInitialState(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;ZILcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)V

    .line 1665
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget v9, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 1667
    .local v9, "preferredWindowingMode":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->computeLaunchingTaskFlags()V

    .line 1669
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->computeSourceStack()V

    .line 1671
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget v1, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1673
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->getReusableIntentActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1676
    .local v0, "reusedActivity":Lcom/android/server/wm/ActivityRecord;
    iget v1, v11, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 1677
    .local v10, "callingUserId":I
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getContentUserHint()I

    move-result v1

    .line 1678
    .local v1, "contentUserHint":I
    const/4 v2, -0x2

    if-ne v1, v2, :cond_46

    .line 1679
    move v1, v10

    move v15, v1

    goto :goto_47

    .line 1678
    :cond_46
    move v15, v1

    .line 1681
    .end local v1  # "contentUserHint":I
    .local v15, "contentUserHint":I
    :goto_47
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v10, v1}, Landroid/os/UserHandle;->isCrossMultiOpenUser(II)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 1682
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v15}, Landroid/content/Intent;->fixUris(I)V

    .line 1687
    :cond_56
    iget v1, v11, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    if-nez v1, :cond_77

    if-eqz v0, :cond_77

    .line 1688
    invoke-static {v1}, Lcom/android/server/wm/FlymeFeatureFactory;->getWindowModeController(I)Lcom/android/server/wm/FlymeWindowModeController;

    move-result-object v1

    iget-object v6, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    move-object/from16 v2, p1

    move-object v3, v0

    move-object/from16 v4, p2

    move-object/from16 v5, p7

    invoke-interface/range {v1 .. v6}, Lcom/android/server/wm/FlymeWindowModeController;->isLaunchInSpaceMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 1689
    iget-object v1, v12, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v2, 0x18000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1690
    const/4 v0, 0x0

    .line 1695
    :cond_77
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v1

    const/4 v8, 0x1

    if-eqz v1, :cond_b8

    if-eqz v13, :cond_b8

    .line 1696
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->isMzWindowMode()Z

    move-result v1

    if-eqz v1, :cond_b8

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_b8

    .line 1697
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MODE:Z

    if-eqz v1, :cond_a6

    .line 1698
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivityUnchecked : moveWindowTaskToBack sourceRecord="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    :cond_a6
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, v2, v8}, Lcom/android/server/wm/FlymeWindowManagerInternal;->moveWindowTaskToBack(Lcom/android/server/wm/TaskStack;Z)V

    .line 1701
    const/16 v1, 0x66

    return v1

    .line 1705
    :cond_b8
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v1

    .line 1706
    if-eqz v0, :cond_c5

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    goto :goto_c7

    :cond_c5
    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    :goto_c7
    iget-object v3, v12, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    const/4 v7, 0x2

    iget-object v6, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 1705
    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v16, v6

    move-object/from16 v6, p7

    move/from16 v17, v10

    move v10, v8

    .end local v10  # "callingUserId":I
    .local v17, "callingUserId":I
    move-object/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 1708
    nop

    .line 1709
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasPreferredDisplay()Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_ed

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget v1, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    goto :goto_ee

    .line 1710
    :cond_ed
    move v1, v8

    :goto_ee
    iput v1, v11, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    .line 1715
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v1

    const-string v2, "ActivityTaskManager"

    if-eqz v1, :cond_11d

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v3, v12, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v11, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    invoke-virtual {v1, v3, v4, v10}, Lcom/android/server/wm/RootActivityContainer;->canStartHomeOnDisplay(Landroid/content/pm/ActivityInfo;IZ)Z

    move-result v1

    if-nez v1, :cond_11d

    .line 1717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot launch home on display "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v11, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    const/16 v1, -0x60

    return v1

    .line 1721
    :cond_11d
    const/4 v1, 0x3

    const/4 v4, 0x2

    if-eqz v0, :cond_24e

    .line 1725
    iget-object v5, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v5

    .line 1726
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    iget v7, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v3, 0x10008000

    and-int/2addr v7, v3

    if-ne v7, v3, :cond_135

    move v3, v10

    goto :goto_136

    :cond_135
    move v3, v8

    .line 1725
    :goto_136
    invoke-virtual {v5, v6, v3}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/TaskRecord;Z)Z

    move-result v3

    if-eqz v3, :cond_144

    .line 1729
    const-string v1, "startActivityUnchecked: Attempt to violate Lock Task Mode"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    const/16 v1, 0x65

    return v1

    .line 1735
    :cond_144
    iget v2, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v3, 0x4200000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_151

    iget v2, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-nez v2, :cond_151

    move v2, v10

    goto :goto_152

    :cond_151
    move v2, v8

    .line 1743
    .local v2, "clearTopAndResetStandardLaunchMode":Z
    :goto_152
    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    if-nez v3, :cond_165

    if-nez v2, :cond_165

    .line 1744
    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityRecord;->setTask(Lcom/android/server/wm/TaskRecord;)V

    .line 1747
    :cond_165
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v3, :cond_177

    .line 1750
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    iget-object v5, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/TaskRecord;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_19c

    .line 1752
    :cond_177
    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1753
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/16 v5, 0x4000

    and-int/2addr v3, v5

    if-eqz v3, :cond_186

    move v3, v10

    goto :goto_187

    :cond_186
    move v3, v8

    .line 1754
    .local v3, "taskOnHome":Z
    :goto_187
    if-eqz v3, :cond_193

    .line 1755
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_19c

    .line 1757
    :cond_193
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v5}, Landroid/content/Intent;->removeFlags(I)V

    .line 1764
    .end local v3  # "taskOnHome":Z
    :goto_19c
    iget v3, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v5, 0x4000000

    and-int/2addr v5, v3

    if-nez v5, :cond_1af

    .line 1765
    invoke-static {v3}, Lcom/android/server/wm/ActivityStarter;->isDocumentLaunchesIntoExisting(I)Z

    move-result v3

    if-nez v3, :cond_1af

    .line 1766
    invoke-direct {v11, v1, v4}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v3

    if-eqz v3, :cond_1d6

    .line 1767
    :cond_1af
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    .line 1772
    .local v3, "task":Lcom/android/server/wm/TaskRecord;
    iget-object v5, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v6, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-virtual {v3, v5, v6}, Lcom/android/server/wm/TaskRecord;->performClearTaskForReuseLocked(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 1779
    .local v5, "top":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    if-nez v6, :cond_1c4

    .line 1780
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->setTask(Lcom/android/server/wm/TaskRecord;)V

    .line 1783
    :cond_1c4
    if-eqz v5, :cond_1d6

    .line 1784
    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->frontOfTask:Z

    if-eqz v6, :cond_1d3

    .line 1787
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    iget-object v7, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/TaskRecord;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 1789
    :cond_1d3
    invoke-direct {v11, v5}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 1793
    .end local v3  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v5  # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_1d6
    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 1794
    invoke-virtual {v3, v8, v0}, Lcom/android/server/wm/RootActivityContainer;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1799
    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1ef

    .line 1800
    iget-object v3, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-boolean v10, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mDenyCheckingAccessControl:Z

    .line 1804
    :cond_1ef
    invoke-direct {v11, v0}, Lcom/android/server/wm/ActivityStarter;->setTargetStackAndMoveToFrontIfNeeded(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1806
    .end local v0  # "reusedActivity":Lcom/android/server/wm/ActivityRecord;
    .local v3, "reusedActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-boolean v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDenyCheckingAccessControl:Z

    .line 1810
    if-eqz v14, :cond_1ff

    array-length v0, v14

    if-lez v0, :cond_1ff

    aget-object v0, v14, v8

    goto :goto_200

    :cond_1ff
    const/4 v0, 0x0

    :goto_200
    move-object v5, v0

    .line 1814
    .local v5, "outResult":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_20d

    iget-boolean v0, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_20b

    iget-boolean v0, v5, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-eqz v0, :cond_20d

    .line 1815
    :cond_20b
    aput-object v3, v14, v8

    .line 1818
    :cond_20d
    iget v0, v11, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/2addr v0, v10

    if-eqz v0, :cond_216

    .line 1822
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->resumeTargetStackIfNeeded()V

    .line 1823
    return v10

    .line 1826
    :cond_216
    if-eqz v3, :cond_24d

    .line 1827
    invoke-direct {v11, v3}, Lcom/android/server/wm/ActivityStarter;->setTaskFromIntentActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 1829
    iget-boolean v0, v11, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-nez v0, :cond_24d

    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/TaskRecord;

    if-nez v0, :cond_24d

    .line 1832
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->resumeTargetStackIfNeeded()V

    .line 1833
    if-eqz v14, :cond_247

    array-length v0, v14

    if-lez v0, :cond_247

    .line 1839
    :try_start_22b
    iget-boolean v0, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_238

    .line 1840
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_239

    :cond_238
    move-object v0, v3

    :goto_239
    aput-object v0, v14, v8
    :try_end_23b
    .catch Ljava/lang/RuntimeException; {:try_start_22b .. :try_end_23b} :catch_23c

    .line 1844
    goto :goto_247

    .line 1841
    :catch_23c
    move-exception v0

    .line 1842
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const-string v6, "system_server"

    invoke-static {v6, v1, v4, v4}, Lcom/flyme/server/exceptionmonitor/ExceptionMonitorService;->dumpErrorInfo(Ljava/lang/String;III)V

    .line 1843
    throw v0

    .line 1848
    .end local v0  # "e":Ljava/lang/RuntimeException;
    :cond_247
    :goto_247
    iget-boolean v0, v11, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    if-eqz v0, :cond_24c

    move v1, v4

    :cond_24c
    return v1

    .line 1853
    .end local v2  # "clearTopAndResetStandardLaunchMode":Z
    .end local v5  # "outResult":Lcom/android/server/wm/ActivityRecord;
    :cond_24d
    move-object v0, v3

    .end local v3  # "reusedActivity":Lcom/android/server/wm/ActivityRecord;
    .local v0, "reusedActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_24e
    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    if-nez v2, :cond_286

    .line 1854
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_265

    .line 1855
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    move-object/from16 v16, v3

    goto :goto_267

    :cond_265
    const/16 v16, 0x0

    :goto_267
    move-object/from16 v8, v16

    .line 1856
    .local v8, "sourceStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v8, :cond_27e

    .line 1857
    const/4 v2, -0x1

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v5, v1, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityStack;->sendActivityResultLocked(ILcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1861
    :cond_27e
    iget-object v1, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1862
    const/16 v1, -0x5c

    return v1

    .line 1867
    .end local v8  # "sourceStack":Lcom/android/server/wm/ActivityStack;
    :cond_286
    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1868
    .local v2, "topStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1869
    .local v3, "topFocused":Lcom/android/server/wm/ActivityRecord;
    iget-object v5, v11, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v5}, Lcom/android/server/wm/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 1870
    .local v5, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_2dd

    iget-object v6, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v6, :cond_2dd

    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v7, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 1871
    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2dd

    iget v6, v5, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v7, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v7, v7, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v6, v7, :cond_2dd

    .line 1873
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v6

    if-eqz v6, :cond_2dd

    iget v6, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v7, 0x20000000

    and-int/2addr v6, v7

    if-nez v6, :cond_2c5

    .line 1875
    invoke-direct {v11, v10, v4}, Lcom/android/server/wm/ActivityStarter;->isLaunchModeOneOf(II)Z

    move-result v6

    if-eqz v6, :cond_2dd

    .line 1879
    :cond_2c5
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v6

    if-eqz v6, :cond_2d3

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v6

    iget v7, v11, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    if-ne v6, v7, :cond_2dd

    :cond_2d3
    iget-object v6, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1882
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isAccessApplication()Z

    move-result v6

    if-nez v6, :cond_2dd

    move v6, v10

    goto :goto_2de

    :cond_2dd
    move v6, v8

    .line 1884
    .local v6, "dontStart":Z
    :goto_2de
    if-eqz v6, :cond_306

    .line 1886
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1887
    iget-boolean v4, v11, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v4, :cond_2ec

    .line 1888
    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 1890
    :cond_2ec
    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-static {v4}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 1891
    iget v4, v11, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    and-int/2addr v4, v10

    if-eqz v4, :cond_2f7

    .line 1894
    return v10

    .line 1897
    :cond_2f7
    invoke-direct {v11, v5}, Lcom/android/server/wm/ActivityStarter;->deliverNewIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 1901
    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v7

    iget v8, v11, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    invoke-virtual {v4, v7, v9, v8, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;IILcom/android/server/wm/ActivityStack;)V

    .line 1904
    return v1

    .line 1907
    :cond_306
    const/4 v1, 0x0

    .line 1908
    .local v1, "newTask":Z
    iget-boolean v7, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    if-eqz v7, :cond_314

    iget-object v7, v11, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v7, :cond_314

    .line 1909
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v7

    goto :goto_315

    :cond_314
    const/4 v7, 0x0

    .line 1912
    .local v7, "taskToAffiliate":Lcom/android/server/wm/TaskRecord;
    :goto_315
    const/16 v18, 0x0

    .line 1913
    .local v18, "result":I
    iget-object v8, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v8, :cond_35a

    iget-object v8, v11, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    if-nez v8, :cond_35a

    iget-boolean v8, v11, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    if-nez v8, :cond_35a

    iget v8, v11, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const/high16 v19, 0x10000000

    and-int v8, v8, v19

    if-eqz v8, :cond_35a

    .line 1915
    const/4 v1, 0x1

    .line 1916
    iget-object v8, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 1917
    .local v8, "packageName":Ljava/lang/String;
    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mPerf:Landroid/util/BoostFramework;

    if-eqz v4, :cond_34d

    .line 1918
    iget-object v10, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    move-object/from16 v24, v0

    .end local v0  # "reusedActivity":Lcom/android/server/wm/ActivityRecord;
    .local v24, "reusedActivity":Lcom/android/server/wm/ActivityRecord;
    const/16 v0, 0x1081

    move/from16 v21, v1

    .end local v1  # "newTask":Z
    .local v21, "newTask":Z
    const/4 v1, -0x1

    .line 1919
    move-object/from16 v25, v2

    const/4 v2, 0x1

    .end local v2  # "topStack":Lcom/android/server/wm/ActivityStack;
    .local v25, "topStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v4, v0, v8, v1, v2}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    iput v0, v10, Lcom/android/server/wm/ActivityRecord;->perfActivityBoostHandler:I

    goto :goto_353

    .line 1917
    .end local v21  # "newTask":Z
    .end local v24  # "reusedActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v25  # "topStack":Lcom/android/server/wm/ActivityStack;
    .restart local v0  # "reusedActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v1  # "newTask":Z
    .restart local v2  # "topStack":Lcom/android/server/wm/ActivityStack;
    :cond_34d
    move-object/from16 v24, v0

    move/from16 v21, v1

    move-object/from16 v25, v2

    .line 1922
    .end local v0  # "reusedActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v1  # "newTask":Z
    .end local v2  # "topStack":Lcom/android/server/wm/ActivityStack;
    .restart local v21  # "newTask":Z
    .restart local v24  # "reusedActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v25  # "topStack":Lcom/android/server/wm/ActivityStack;
    :goto_353
    invoke-direct {v11, v7}, Lcom/android/server/wm/ActivityStarter;->setTaskFromReuseOrCreateNewTask(Lcom/android/server/wm/TaskRecord;)I

    move-result v0

    .line 1923
    .end local v8  # "packageName":Ljava/lang/String;
    .end local v18  # "result":I
    .local v0, "result":I
    move/from16 v1, v21

    goto :goto_374

    .line 1913
    .end local v21  # "newTask":Z
    .end local v24  # "reusedActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v25  # "topStack":Lcom/android/server/wm/ActivityStack;
    .local v0, "reusedActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v1  # "newTask":Z
    .restart local v2  # "topStack":Lcom/android/server/wm/ActivityStack;
    .restart local v18  # "result":I
    :cond_35a
    move-object/from16 v24, v0

    move-object/from16 v25, v2

    .line 1923
    .end local v0  # "reusedActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v2  # "topStack":Lcom/android/server/wm/ActivityStack;
    .restart local v24  # "reusedActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v25  # "topStack":Lcom/android/server/wm/ActivityStack;
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_367

    .line 1924
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->setTaskFromSourceRecord()I

    move-result v0

    .end local v18  # "result":I
    .local v0, "result":I
    goto :goto_374

    .line 1925
    .end local v0  # "result":I
    .restart local v18  # "result":I
    :cond_367
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    if-eqz v0, :cond_370

    .line 1926
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->setTaskFromInTask()I

    move-result v0

    .end local v18  # "result":I
    .restart local v0  # "result":I
    goto :goto_374

    .line 1930
    .end local v0  # "result":I
    .restart local v18  # "result":I
    :cond_370
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->setTaskToCurrentTopOrCreateNewTask()I

    move-result v0

    .line 1932
    .end local v18  # "result":I
    .restart local v0  # "result":I
    :goto_374
    if-eqz v0, :cond_377

    .line 1933
    return v0

    .line 1936
    :cond_377
    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget v4, v11, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    iget-object v8, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v10, v11, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    move/from16 v32, v0

    .end local v0  # "result":I
    .local v32, "result":I
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1937
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v30

    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v0, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 1936
    move-object/from16 v26, v2

    move/from16 v27, v4

    move-object/from16 v28, v8

    move-object/from16 v29, v10

    move/from16 v31, v0

    invoke-interface/range {v26 .. v31}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionFromIntent(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/uri/UriPermissionOwner;I)V

    .line 1938
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iget-object v8, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1939
    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    iget v10, v11, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 1940
    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v10

    .line 1938
    invoke-virtual {v0, v2, v4, v8, v10}, Landroid/content/pm/PackageManagerInternal;->grantEphemeralAccess(ILandroid/content/Intent;II)V

    .line 1941
    if-eqz v1, :cond_3df

    .line 1942
    const/16 v0, 0x7534

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v4, v4, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x0

    aput-object v4, v2, v8

    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1943
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x1

    aput-object v4, v2, v8

    .line 1942
    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1945
    :cond_3df
    const/16 v0, 0x7535

    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1946
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    .line 1945
    invoke-static {v0, v2, v4}, Lcom/android/server/wm/ActivityStack;->logStartActivity(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskRecord;)V

    .line 1947
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/wm/ActivityStack;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1949
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Lcom/android/server/wm/RootActivityContainer;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1952
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v4, v11, Lcom/android/server/wm/ActivityStarter;->mKeepCurTransition:Z

    iget-object v8, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move/from16 v21, v1

    move/from16 v22, v4

    move-object/from16 v23, v8

    invoke-virtual/range {v18 .. v23}, Lcom/android/server/wm/ActivityStack;->startActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZZLandroid/app/ActivityOptions;)V

    .line 1954
    iget-boolean v0, v11, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    if-eqz v0, :cond_468

    .line 1955
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1956
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1957
    .local v0, "topTaskActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_454

    if-eqz v0, :cond_42f

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-eqz v2, :cond_42f

    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v2, v0, :cond_42f

    goto :goto_454

    .line 1976
    :cond_42f
    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_448

    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 1977
    invoke-virtual {v2, v4}, Lcom/android/server/wm/RootActivityContainer;->isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v2

    if-nez v2, :cond_448

    .line 1978
    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    const-string v4, "startActivityUnchecked"

    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 1980
    :cond_448
    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v8, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v10, v11, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v2, v4, v8, v10}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_47a

    .line 1966
    :cond_454
    :goto_454
    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v8, 0x0

    invoke-virtual {v2, v4, v8, v8}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1969
    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    goto :goto_47a

    .line 1983
    .end local v0  # "topTaskActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_468
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_47a

    .line 1984
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/TaskRecord;)V

    goto :goto_47b

    .line 1983
    :cond_47a
    :goto_47a
    nop

    .line 1986
    :goto_47b
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v4, v11, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/RootActivityContainer;->updateUserStack(ILcom/android/server/wm/ActivityStack;)V

    .line 1988
    iget-object v0, v11, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v11, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    iget v4, v11, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    iget-object v8, v11, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0, v2, v9, v4, v8}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;IILcom/android/server/wm/ActivityStack;)V

    .line 1991
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 3196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3197
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3198
    const-string v0, "mCurrentUser="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3199
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v0, v0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3200
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3201
    const-string v0, "mLastStartReason="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3202
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3203
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3204
    const-string v0, "mLastStartActivityTimeMs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3205
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3206
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3207
    const-string v0, "mLastStartActivityResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3208
    iget v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3209
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 3210
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_75

    .line 3211
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3212
    const-string v3, "mLastStartActivityRecord:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3215
    :cond_75
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_95

    .line 3216
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3217
    const-string v3, "mStartActivity:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3218
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p1, v1}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3220
    :cond_95
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_a6

    .line 3221
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3222
    const-string v1, "mIntent="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3223
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3225
    :cond_a6
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v1, :cond_b7

    .line 3226
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3227
    const-string v1, "mOptions="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3228
    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3230
    :cond_b7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3231
    const-string v1, "mLaunchSingleTop="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3232
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    const/4 v3, 0x1

    if-ne v3, v1, :cond_c6

    move v1, v3

    goto :goto_c7

    :cond_c6
    move v1, v2

    :goto_c7
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3233
    const-string v1, " mLaunchSingleInstance="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3234
    const/4 v1, 0x3

    iget v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v1, v4, :cond_d6

    move v1, v3

    goto :goto_d7

    :cond_d6
    move v1, v2

    :goto_d7
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3235
    const-string v1, " mLaunchSingleTask="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3236
    const/4 v1, 0x2

    iget v4, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    if-ne v1, v4, :cond_e5

    move v2, v3

    :cond_e5
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3237
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3238
    const-string v1, "mLaunchFlags=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3239
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3240
    const-string v1, " mDoResume="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3241
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3242
    const-string v1, " mAddingToTask="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3243
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3244
    return-void
.end method

.method execute()I
    .registers 29

    move-object/from16 v15, p0

    .line 536
    :try_start_2
    iget-object v0, v15, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->mayWait:Z

    if-eqz v0, :cond_87

    .line 537
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

    .line 560
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 537
    return v0

    .line 548
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

    .line 560
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 548
    return v0

    .line 560
    :catchall_114
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    throw v0
.end method

.method getCallingUid()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3030
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    return v0
.end method

.method getIntent()Landroid/content/Intent;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3025
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method getStartActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 519
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method public isTopPackageRequest(ILjava/lang/String;)Z
    .registers 4
    .param p1, "pid"  # I
    .param p2, "caller"  # Ljava/lang/String;

    .line 3457
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->isTopPackageRequest(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method postStartActivityProcessing(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityStack;)V
    .registers 9
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "result"  # I
    .param p3, "startedActivityStack"  # Lcom/android/server/wm/ActivityStack;

    .line 1187
    invoke-static {p2}, Landroid/app/ActivityManager;->isStartResultFatalError(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1188
    return-void

    .line 1196
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->reportWaitingActivityLaunchedIfNeeded(Lcom/android/server/wm/ActivityRecord;I)V

    .line 1198
    if-nez p3, :cond_f

    .line 1199
    return-void

    .line 1202
    :cond_f
    const v0, 0x10008000

    .line 1203
    .local v0, "clearTaskFlags":I
    iget v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    const v2, 0x10008000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_20

    iget-object v1, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/TaskRecord;

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    .line 1205
    .local v1, "clearedTask":Z
    :goto_21
    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p2, v3, :cond_29

    if-eq p2, v2, :cond_29

    if-eqz v1, :cond_56

    .line 1209
    :cond_29
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v4

    if-eq v4, v3, :cond_4c

    if-eq v4, v2, :cond_32

    goto :goto_56

    .line 1215
    :cond_32
    nop

    .line 1216
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getHomeStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1217
    .local v2, "homeStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v2, :cond_56

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStack;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 1218
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->showRecentApps()V

    goto :goto_56

    .line 1211
    .end local v2  # "homeStack":Lcom/android/server/wm/ActivityStack;
    :cond_4c
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyPinnedActivityRestartAttempt(Z)V

    .line 1213
    nop

    .line 1223
    :cond_56
    :goto_56
    return-void
.end method

.method relatedToPackage(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;

    .line 523
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_11

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 524
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1f

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 525
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1d
    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    nop

    .line 523
    :goto_20
    return v1
.end method

.method reset(Z)V
    .registers 6
    .param p1, "clearRequest"  # Z

    .line 1999
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2000
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 2001
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 2002
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 2003
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    .line 2005
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 2006
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 2007
    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 2009
    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v3}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 2011
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 2012
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 2013
    iput v2, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 2014
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 2015
    iput v1, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    .line 2017
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    .line 2018
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 2019
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/TaskRecord;

    .line 2021
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 2022
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 2023
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    .line 2025
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 2026
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 2027
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 2028
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mKeepCurTransition:Z

    .line 2029
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 2031
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 2032
    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 2034
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    .line 2036
    if-eqz p1, :cond_45

    .line 2037
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter$Request;->reset()V

    .line 2039
    :cond_45
    return-void
.end method

.method set(Lcom/android/server/wm/ActivityStarter;)V
    .registers 4
    .param p1, "starter"  # Lcom/android/server/wm/ActivityStarter;

    .line 478
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartActivity:Lcom/android/server/wm/ActivityRecord;

    .line 479
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntent:Landroid/content/Intent;

    .line 480
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mCallingUid:I

    .line 481
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mOptions:Landroid/app/ActivityOptions;

    .line 482
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mRestrictedBgActivity:Z

    .line 484
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchTaskBehind:Z

    .line 485
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchFlags:I

    .line 486
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchMode:I

    .line 488
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v1, p1, Lcom/android/server/wm/ActivityStarter;->mLaunchParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->set(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 490
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNotTop:Lcom/android/server/wm/ActivityRecord;

    .line 491
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mDoResume:Z

    .line 492
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mStartFlags:I

    .line 493
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceRecord:Lcom/android/server/wm/ActivityRecord;

    .line 494
    iget v0, p1, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    iput v0, p0, Lcom/android/server/wm/ActivityStarter;->mPreferredDisplayId:I

    .line 496
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mInTask:Lcom/android/server/wm/TaskRecord;

    .line 497
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAddingToTask:Z

    .line 498
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/TaskRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mReuseTask:Lcom/android/server/wm/TaskRecord;

    .line 500
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskInfo:Landroid/content/pm/ActivityInfo;

    .line 501
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mNewTaskIntent:Landroid/content/Intent;

    .line 502
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mSourceStack:Lcom/android/server/wm/ActivityStack;

    .line 504
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mTargetStack:Lcom/android/server/wm/ActivityStack;

    .line 505
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mMovedToFront:Z

    .line 506
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mNoAnimation:Z

    .line 507
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mKeepCurTransition:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mKeepCurTransition:Z

    .line 508
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mAvoidMoveToFront:Z

    .line 510
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 511
    iget-object v0, p1, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mVoiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 513
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStarter;->mIntentDelivered:Z

    .line 515
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iget-object v1, p1, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter$Request;->set(Lcom/android/server/wm/ActivityStarter$Request;)V

    .line 516
    return-void
.end method

.method setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "info"  # Landroid/content/pm/ActivityInfo;

    .line 3055
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 3056
    return-object p0
.end method

.method setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "bOptions"  # Landroid/os/Bundle;

    .line 3125
    invoke-static {p1}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    return-object v0
.end method

.method setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "options"  # Lcom/android/server/wm/SafeActivityOptions;

    .line 3120
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 3121
    return-object p0
.end method

.method setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "allowBackgroundActivityStart"  # Z

    .line 3191
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->allowBackgroundActivityStart:Z

    .line 3192
    return-object p0
.end method

.method setAllowPendingRemoteAnimationRegistryLookup(Z)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "allowLookup"  # Z

    .line 3181
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->allowPendingRemoteAnimationRegistryLookup:Z

    .line 3182
    return-object p0
.end method

.method setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "caller"  # Landroid/app/IApplicationThread;

    .line 3039
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->caller:Landroid/app/IApplicationThread;

    .line 3040
    return-object p0
.end method

.method setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "callingPackage"  # Ljava/lang/String;

    .line 3100
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPackage:Ljava/lang/String;

    .line 3101
    return-object p0
.end method

.method setCallingPid(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "pid"  # I

    .line 3090
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    .line 3091
    return-object p0
.end method

.method setCallingUid(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "uid"  # I

    .line 3095
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    .line 3096
    return-object p0
.end method

.method setComponentSpecified(Z)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "componentSpecified"  # Z

    .line 3139
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->componentSpecified:Z

    .line 3140
    return-object p0
.end method

.method setEphemeralIntent(Landroid/content/Intent;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "intent"  # Landroid/content/Intent;

    .line 3044
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->ephemeralIntent:Landroid/content/Intent;

    .line 3045
    return-object p0
.end method

.method setFilterCallingUid(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "filterCallingUid"  # I

    .line 3134
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->filterCallingUid:I

    .line 3135
    return-object p0
.end method

.method setGlobalConfiguration(Landroid/content/res/Configuration;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "config"  # Landroid/content/res/Configuration;

    .line 3164
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->globalConfig:Landroid/content/res/Configuration;

    .line 3165
    return-object p0
.end method

.method setIgnoreTargetSecurity(Z)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "ignoreTargetSecurity"  # Z

    .line 3129
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-boolean p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->ignoreTargetSecurity:Z

    .line 3130
    return-object p0
.end method

.method setInTask(Lcom/android/server/wm/TaskRecord;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "inTask"  # Lcom/android/server/wm/TaskRecord;

    .line 3149
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->inTask:Lcom/android/server/wm/TaskRecord;

    .line 3150
    return-object p0
.end method

.method setIntent(Landroid/content/Intent;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "intent"  # Landroid/content/Intent;

    .line 3019
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->intent:Landroid/content/Intent;

    .line 3020
    return-object p0
.end method

.method setMayWait(I)Lcom/android/server/wm/ActivityStarter;
    .registers 4
    .param p1, "userId"  # I

    .line 3174
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityStarter$Request;->mayWait:Z

    .line 3175
    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 3177
    return-object p0
.end method

.method setOriginatingPendingIntent(Lcom/android/server/am/PendingIntentRecord;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "originatingPendingIntent"  # Lcom/android/server/am/PendingIntentRecord;

    .line 3186
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->originatingPendingIntent:Lcom/android/server/am/PendingIntentRecord;

    .line 3187
    return-object p0
.end method

.method setOutActivity([Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "outActivity"  # [Lcom/android/server/wm/ActivityRecord;

    .line 3144
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->outActivity:[Lcom/android/server/wm/ActivityRecord;

    .line 3145
    return-object p0
.end method

.method setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "info"  # Landroid/app/ProfilerInfo;

    .line 3159
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->profilerInfo:Landroid/app/ProfilerInfo;

    .line 3160
    return-object p0
.end method

.method setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "pid"  # I

    .line 3105
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    .line 3106
    return-object p0
.end method

.method setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "uid"  # I

    .line 3110
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 3111
    return-object p0
.end method

.method setReason(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "reason"  # Ljava/lang/String;

    .line 3034
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->reason:Ljava/lang/String;

    .line 3035
    return-object p0
.end method

.method setRequestCode(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "requestCode"  # I

    .line 3085
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->requestCode:I

    .line 3086
    return-object p0
.end method

.method setResolveInfo(Landroid/content/pm/ResolveInfo;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "info"  # Landroid/content/pm/ResolveInfo;

    .line 3060
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 3061
    return-object p0
.end method

.method setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "type"  # Ljava/lang/String;

    .line 3050
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resolvedType:Ljava/lang/String;

    .line 3051
    return-object p0
.end method

.method setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "resultTo"  # Landroid/os/IBinder;

    .line 3075
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultTo:Landroid/os/IBinder;

    .line 3076
    return-object p0
.end method

.method setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "resultWho"  # Ljava/lang/String;

    .line 3080
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->resultWho:Ljava/lang/String;

    .line 3081
    return-object p0
.end method

.method setStartFlags(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "startFlags"  # I

    .line 3115
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->startFlags:I

    .line 3116
    return-object p0
.end method

.method setUserId(I)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "userId"  # I

    .line 3169
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->userId:I

    .line 3170
    return-object p0
.end method

.method setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "voiceInteractor"  # Lcom/android/internal/app/IVoiceInteractor;

    .line 3070
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 3071
    return-object p0
.end method

.method setVoiceSession(Landroid/service/voice/IVoiceInteractionSession;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "voiceSession"  # Landroid/service/voice/IVoiceInteractionSession;

    .line 3065
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 3066
    return-object p0
.end method

.method setWaitResult(Landroid/app/WaitResult;)Lcom/android/server/wm/ActivityStarter;
    .registers 3
    .param p1, "result"  # Landroid/app/WaitResult;

    .line 3154
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter;->mRequest:Lcom/android/server/wm/ActivityStarter$Request;

    iput-object p1, v0, Lcom/android/server/wm/ActivityStarter$Request;->waitResult:Landroid/app/WaitResult;

    .line 3155
    return-object p0
.end method

.method shouldAbortBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLandroid/content/Intent;)Z
    .registers 42
    .param p1, "callingUid"  # I
    .param p2, "callingPid"  # I
    .param p3, "callingPackage"  # Ljava/lang/String;
    .param p4, "realCallingUid"  # I
    .param p5, "realCallingPid"  # I
    .param p6, "callerApp"  # Lcom/android/server/wm/WindowProcessController;
    .param p7, "originatingPendingIntent"  # Lcom/android/server/am/PendingIntentRecord;
    .param p8, "allowBackgroundActivityStart"  # Z
    .param p9, "intent"  # Landroid/content/Intent;

    .line 1035
    move-object/from16 v0, p0

    move/from16 v12, p1

    move/from16 v13, p2

    move-object/from16 v14, p3

    move/from16 v15, p4

    move-object/from16 v11, p7

    move/from16 v10, p8

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    .line 1036
    .local v9, "callingAppId":I
    if-eqz v12, :cond_236

    const/16 v2, 0x3e8

    if-eq v9, v2, :cond_236

    const/16 v3, 0x403

    if-ne v9, v3, :cond_21

    move/from16 v22, v9

    const/4 v1, 0x0

    goto/16 :goto_239

    .line 1041
    :cond_21
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3, v12}, Lcom/android/server/wm/ActivityTaskManagerService;->getUidState(I)I

    move-result v8

    .line 1042
    .local v8, "callingUidProcState":I
    iget-object v3, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 1043
    invoke-virtual {v3, v12}, Lcom/android/server/wm/RootWindowContainer;->isAnyNonToastWindowVisibleForUid(I)Z

    move-result v16

    .line 1044
    .local v16, "callingUidHasAnyVisibleWindow":Z
    const/4 v3, 0x2

    const/4 v7, 0x1

    if-nez v16, :cond_3d

    if-eq v8, v3, :cond_3d

    const/4 v4, 0x4

    if-ne v8, v4, :cond_3b

    goto :goto_3d

    :cond_3b
    const/4 v4, 0x0

    goto :goto_3e

    :cond_3d
    :goto_3d
    move v4, v7

    :goto_3e
    move v6, v4

    .line 1047
    .local v6, "isCallingUidForeground":Z
    if-gt v8, v7, :cond_43

    move v4, v7

    goto :goto_44

    :cond_43
    const/4 v4, 0x0

    :goto_44
    move v5, v4

    .line 1049
    .local v5, "isCallingUidPersistentSystemProcess":Z
    if-nez v16, :cond_22c

    if-eqz v5, :cond_53

    move/from16 v28, v5

    move/from16 v29, v6

    move/from16 v30, v8

    move/from16 v22, v9

    goto/16 :goto_234

    .line 1053
    :cond_53
    if-ne v12, v15, :cond_57

    .line 1054
    move v4, v8

    goto :goto_5d

    .line 1055
    :cond_57
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4, v15}, Lcom/android/server/wm/ActivityTaskManagerService;->getUidState(I)I

    move-result v4

    :goto_5d
    nop

    .line 1056
    .local v4, "realCallingUidProcState":I
    if-ne v12, v15, :cond_63

    .line 1057
    move/from16 v1, v16

    goto :goto_6d

    .line 1058
    :cond_63
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v15}, Lcom/android/server/wm/RootWindowContainer;->isAnyNonToastWindowVisibleForUid(I)Z

    move-result v1

    :goto_6d
    move/from16 v18, v1

    .line 1059
    .local v18, "realCallingUidHasAnyVisibleWindow":Z
    if-ne v12, v15, :cond_73

    .line 1060
    move v1, v6

    goto :goto_7b

    .line 1062
    :cond_73
    if-nez v18, :cond_7a

    if-ne v4, v3, :cond_78

    goto :goto_7a

    :cond_78
    const/4 v1, 0x0

    goto :goto_7b

    :cond_7a
    :goto_7a
    move v1, v7

    :goto_7b
    move v3, v1

    .line 1063
    .local v3, "isRealCallingUidForeground":Z
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 1064
    .local v1, "realCallingAppId":I
    if-ne v12, v15, :cond_84

    .line 1065
    move v2, v5

    goto :goto_8c

    .line 1067
    :cond_84
    if-eq v1, v2, :cond_8b

    if-gt v4, v7, :cond_89

    goto :goto_8b

    :cond_89
    const/4 v2, 0x0

    goto :goto_8c

    :cond_8b
    :goto_8b
    move v2, v7

    :goto_8c
    nop

    .line 1068
    .local v2, "isRealCallingUidPersistentSystemProcess":Z
    if-eq v15, v12, :cond_aa

    .line 1070
    if-eqz v18, :cond_94

    .line 1071
    const/16 v17, 0x0

    return v17

    .line 1075
    :cond_94
    const/16 v17, 0x0

    if-eqz v2, :cond_9b

    if-eqz v10, :cond_9b

    .line 1076
    return v17

    .line 1079
    :cond_9b
    iget-object v7, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    move/from16 v20, v1

    .end local v1  # "realCallingAppId":I
    .local v20, "realCallingAppId":I
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v7, v1, v15}, Lcom/android/server/wm/ActivityTaskManagerService;->isAssociatedCompanionApp(II)Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 1081
    return v17

    .line 1068
    .end local v20  # "realCallingAppId":I
    .restart local v1  # "realCallingAppId":I
    :cond_aa
    move/from16 v20, v1

    const/16 v17, 0x0

    .line 1085
    .end local v1  # "realCallingAppId":I
    .restart local v20  # "realCallingAppId":I
    :cond_ae
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v1, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    invoke-static {v1, v13, v12}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_b9

    .line 1087
    return v17

    .line 1090
    :cond_b9
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v1, v12}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 1091
    return v17

    .line 1094
    :cond_c4
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, v12}, Lcom/android/server/wm/ActivityTaskManagerService;->isDeviceOwner(I)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 1095
    return v17

    .line 1098
    :cond_cd
    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 1099
    .local v7, "callingUserId":I
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, v7, v12}, Lcom/android/server/wm/ActivityTaskManagerService;->isAssociatedCompanionApp(II)Z

    move-result v1

    if-eqz v1, :cond_da

    .line 1100
    return v17

    .line 1106
    :cond_da
    move/from16 v1, p1

    .line 1107
    .local v1, "callerAppUid":I
    if-nez p6, :cond_ef

    .line 1108
    move/from16 v21, v1

    .end local v1  # "callerAppUid":I
    .local v21, "callerAppUid":I
    iget-object v1, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    move/from16 v22, v9

    move/from16 v9, p5

    .end local v9  # "callingAppId":I
    .local v22, "callingAppId":I
    invoke-virtual {v1, v9, v15}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    .line 1109
    .end local p6  # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v1, "callerApp":Lcom/android/server/wm/WindowProcessController;
    move/from16 v21, p4

    move/from16 v9, v21

    goto :goto_f9

    .line 1107
    .end local v21  # "callerAppUid":I
    .end local v22  # "callingAppId":I
    .local v1, "callerAppUid":I
    .restart local v9  # "callingAppId":I
    .restart local p6  # "callerApp":Lcom/android/server/wm/WindowProcessController;
    :cond_ef
    move/from16 v21, v1

    move/from16 v22, v9

    move/from16 v9, p5

    .end local v1  # "callerAppUid":I
    .end local v9  # "callingAppId":I
    .restart local v21  # "callerAppUid":I
    .restart local v22  # "callingAppId":I
    move-object/from16 v1, p6

    move/from16 v9, v21

    .line 1112
    .end local v21  # "callerAppUid":I
    .end local p6  # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v1, "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v9, "callerAppUid":I
    :goto_f9
    if-eqz v1, :cond_142

    .line 1114
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->areBackgroundActivityStartsAllowed()Z

    move-result v21

    if-eqz v21, :cond_104

    .line 1115
    const/16 v17, 0x0

    return v17

    .line 1118
    :cond_104
    move/from16 v21, v4

    .end local v4  # "realCallingUidProcState":I
    .local v21, "realCallingUidProcState":I
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 1119
    invoke-virtual {v4, v9}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcesses(I)Landroid/util/ArraySet;

    move-result-object v4

    .line 1120
    .local v4, "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    if-eqz v4, :cond_13b

    .line 1121
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v23

    const/16 v19, 0x1

    add-int/lit8 v23, v23, -0x1

    move/from16 v24, v7

    move/from16 v7, v23

    .local v7, "i":I
    .local v24, "callingUserId":I
    :goto_11c
    if-ltz v7, :cond_138

    .line 1122
    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 p6, v4

    .end local v4  # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    .local p6, "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    move-object/from16 v4, v23

    check-cast v4, Lcom/android/server/wm/WindowProcessController;

    .line 1123
    .local v4, "proc":Lcom/android/server/wm/WindowProcessController;
    if-eq v4, v1, :cond_133

    invoke-virtual {v4}, Lcom/android/server/wm/WindowProcessController;->areBackgroundActivityStartsAllowed()Z

    move-result v23

    if-eqz v23, :cond_133

    .line 1124
    const/16 v17, 0x0

    return v17

    .line 1121
    .end local v4  # "proc":Lcom/android/server/wm/WindowProcessController;
    :cond_133
    add-int/lit8 v7, v7, -0x1

    move-object/from16 v4, p6

    goto :goto_11c

    .end local p6  # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    .local v4, "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    :cond_138
    move-object/from16 p6, v4

    .end local v4  # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    .restart local p6  # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    goto :goto_148

    .line 1120
    .end local v24  # "callingUserId":I
    .end local p6  # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    .restart local v4  # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    .local v7, "callingUserId":I
    :cond_13b
    move-object/from16 p6, v4

    move/from16 v24, v7

    const/16 v19, 0x1

    .end local v4  # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    .end local v7  # "callingUserId":I
    .restart local v24  # "callingUserId":I
    .restart local p6  # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    goto :goto_148

    .line 1112
    .end local v21  # "realCallingUidProcState":I
    .end local v24  # "callingUserId":I
    .end local p6  # "uidProcesses":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    .local v4, "realCallingUidProcState":I
    .restart local v7  # "callingUserId":I
    :cond_142
    move/from16 v21, v4

    move/from16 v24, v7

    const/16 v19, 0x1

    .line 1130
    .end local v4  # "realCallingUidProcState":I
    .end local v7  # "callingUserId":I
    .restart local v21  # "realCallingUidProcState":I
    .restart local v24  # "callingUserId":I
    :goto_148
    iget-object v4, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4, v12, v13, v14}, Lcom/android/server/wm/ActivityTaskManagerService;->hasSystemAlertWindowPermission(IILjava/lang/String;)Z

    move-result v4

    const-string v7, "ActivityTaskManager"

    if-eqz v4, :cond_16f

    .line 1131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v9

    .end local v9  # "callerAppUid":I
    .local v23, "callerAppUid":I
    const-string v9, "Background activity start for "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " allowed because SYSTEM_ALERT_WINDOW permission is granted."

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    const/4 v4, 0x0

    return v4

    .line 1136
    .end local v23  # "callerAppUid":I
    .restart local v9  # "callerAppUid":I
    :cond_16f
    move/from16 v23, v9

    .end local v9  # "callerAppUid":I
    .restart local v23  # "callerAppUid":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Background activity start [callingPackage: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; callingUid: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "; isCallingUidForeground: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "; isCallingUidPersistentSystemProcess: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "; realCallingUid: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "; isRealCallingUidForeground: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "; isRealCallingUidPersistentSystemProcess: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "; originatingPendingIntent: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "; isBgStartWhitelisted: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "; intent: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move/from16 v25, v2

    .end local v2  # "isRealCallingUidPersistentSystemProcess":Z
    .local v25, "isRealCallingUidPersistentSystemProcess":Z
    const-string v2, "; callerApp: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isActivityStartsLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_21b

    .line 1151
    iget-object v2, v0, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v2

    if-eqz v11, :cond_1f1

    move/from16 v17, v19

    goto :goto_1f3

    :cond_1f1
    const/16 v17, 0x0

    :goto_1f3
    move-object/from16 v26, v1

    .end local v1  # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v26, "callerApp":Lcom/android/server/wm/WindowProcessController;
    move-object v1, v2

    move-object/from16 v2, p9

    move/from16 v27, v3

    .end local v3  # "isRealCallingUidForeground":Z
    .local v27, "isRealCallingUidForeground":Z
    move-object/from16 v3, v26

    move/from16 v4, p1

    move/from16 v28, v5

    .end local v5  # "isCallingUidPersistentSystemProcess":Z
    .local v28, "isCallingUidPersistentSystemProcess":Z
    move-object/from16 v5, p3

    move/from16 v29, v6

    .end local v6  # "isCallingUidForeground":Z
    .local v29, "isCallingUidForeground":Z
    move v6, v8

    move/from16 v31, v24

    move/from16 v24, v19

    move/from16 v19, v31

    .end local v24  # "callingUserId":I
    .local v19, "callingUserId":I
    move/from16 v7, v16

    move/from16 v30, v8

    .end local v8  # "callingUidProcState":I
    .local v30, "callingUidProcState":I
    move/from16 v8, p4

    move/from16 v9, v21

    move/from16 v10, v18

    move/from16 v11, v17

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/wm/ActivityMetricsLogger;->logAbortedBgActivityStart(Landroid/content/Intent;Lcom/android/server/wm/WindowProcessController;ILjava/lang/String;IZIIZZ)V

    goto :goto_22b

    .line 1150
    .end local v19  # "callingUserId":I
    .end local v26  # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v27  # "isRealCallingUidForeground":Z
    .end local v28  # "isCallingUidPersistentSystemProcess":Z
    .end local v29  # "isCallingUidForeground":Z
    .end local v30  # "callingUidProcState":I
    .restart local v1  # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v3  # "isRealCallingUidForeground":Z
    .restart local v5  # "isCallingUidPersistentSystemProcess":Z
    .restart local v6  # "isCallingUidForeground":Z
    .restart local v8  # "callingUidProcState":I
    .restart local v24  # "callingUserId":I
    :cond_21b
    move-object/from16 v26, v1

    move/from16 v27, v3

    move/from16 v28, v5

    move/from16 v29, v6

    move/from16 v30, v8

    move/from16 v31, v24

    move/from16 v24, v19

    move/from16 v19, v31

    .line 1156
    .end local v1  # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v3  # "isRealCallingUidForeground":Z
    .end local v5  # "isCallingUidPersistentSystemProcess":Z
    .end local v6  # "isCallingUidForeground":Z
    .end local v8  # "callingUidProcState":I
    .end local v24  # "callingUserId":I
    .restart local v19  # "callingUserId":I
    .restart local v26  # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .restart local v27  # "isRealCallingUidForeground":Z
    .restart local v28  # "isCallingUidPersistentSystemProcess":Z
    .restart local v29  # "isCallingUidForeground":Z
    .restart local v30  # "callingUidProcState":I
    :goto_22b
    return v24

    .line 1049
    .end local v18  # "realCallingUidHasAnyVisibleWindow":Z
    .end local v19  # "callingUserId":I
    .end local v20  # "realCallingAppId":I
    .end local v21  # "realCallingUidProcState":I
    .end local v22  # "callingAppId":I
    .end local v23  # "callerAppUid":I
    .end local v25  # "isRealCallingUidPersistentSystemProcess":Z
    .end local v26  # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v27  # "isRealCallingUidForeground":Z
    .end local v28  # "isCallingUidPersistentSystemProcess":Z
    .end local v29  # "isCallingUidForeground":Z
    .end local v30  # "callingUidProcState":I
    .restart local v5  # "isCallingUidPersistentSystemProcess":Z
    .restart local v6  # "isCallingUidForeground":Z
    .restart local v8  # "callingUidProcState":I
    .local v9, "callingAppId":I
    .local p6, "callerApp":Lcom/android/server/wm/WindowProcessController;
    :cond_22c
    move/from16 v28, v5

    move/from16 v29, v6

    move/from16 v30, v8

    move/from16 v22, v9

    .line 1050
    .end local v5  # "isCallingUidPersistentSystemProcess":Z
    .end local v6  # "isCallingUidForeground":Z
    .end local v8  # "callingUidProcState":I
    .end local v9  # "callingAppId":I
    .restart local v22  # "callingAppId":I
    .restart local v28  # "isCallingUidPersistentSystemProcess":Z
    .restart local v29  # "isCallingUidForeground":Z
    .restart local v30  # "callingUidProcState":I
    :goto_234
    const/4 v1, 0x0

    return v1

    .line 1036
    .end local v16  # "callingUidHasAnyVisibleWindow":Z
    .end local v22  # "callingAppId":I
    .end local v28  # "isCallingUidPersistentSystemProcess":Z
    .end local v29  # "isCallingUidForeground":Z
    .end local v30  # "callingUidProcState":I
    .restart local v9  # "callingAppId":I
    :cond_236
    move/from16 v22, v9

    const/4 v1, 0x0

    .line 1038
    .end local v9  # "callingAppId":I
    .restart local v22  # "callingAppId":I
    :goto_239
    return v1
.end method

.method startResolvedActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;IZLandroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;)I
    .registers 24
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "sourceRecord"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "voiceSession"  # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"  # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "startFlags"  # I
    .param p6, "doResume"  # Z
    .param p7, "options"  # Landroid/app/ActivityOptions;
    .param p8, "inTask"  # Lcom/android/server/wm/TaskRecord;

    move-object v12, p0

    move-object/from16 v13, p1

    .line 574
    :try_start_3
    iget-object v0, v12, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    iget-object v1, v13, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;)V

    .line 575
    const-string v0, "startResolvedActivity"

    iput-object v0, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartReason:Ljava/lang/String;

    .line 576
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityTimeMs:J

    .line 577
    iget-object v0, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/wm/ActivityRecord;

    const/4 v14, 0x0

    aput-object v13, v0, v14

    .line 578
    iget-object v10, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/wm/ActivityRecord;

    const/4 v11, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

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

    .line 581
    iget-object v0, v12, Lcom/android/server/wm/ActivityStarter;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    iget v1, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I

    iget-object v2, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityRecord:[Lcom/android/server/wm/ActivityRecord;

    aget-object v2, v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/wm/ActivityRecord;)V

    .line 583
    iget v0, v12, Lcom/android/server/wm/ActivityStarter;->mLastStartActivityResult:I
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_4c

    .line 585
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    .line 583
    return v0

    .line 585
    :catchall_4c
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/wm/ActivityStarter;->onExecutionComplete()V

    throw v0
.end method

.method updateBounds(Lcom/android/server/wm/TaskRecord;Landroid/graphics/Rect;)V
    .registers 12
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "bounds"  # Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2796
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2797
    return-void

    .line 2800
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2801
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->resizeStackWithLaunchBounds()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2802
    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, v0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, -0x1

    move-object v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    goto :goto_23

    .line 2805
    :cond_20
    invoke-virtual {p1, p2}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 2807
    :goto_23
    return-void
.end method
