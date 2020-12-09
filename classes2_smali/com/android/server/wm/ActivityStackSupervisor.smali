.class public Lcom/android/server/wm/ActivityStackSupervisor;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"

# interfaces
.implements Lcom/android/server/wm/RecentTasks$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;,
        Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;,
        Lcom/android/server/wm/ActivityStackSupervisor$PendingActivityLaunch;
    }
.end annotation


# static fields
.field private static final ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ACTIVITY_RESTRICTION_APPOP:I = 0x2

.field private static final ACTIVITY_RESTRICTION_NONE:I = 0x0

.field private static final ACTIVITY_RESTRICTION_PERMISSION:I = 0x1

.field static final DEFER_RESUME:Z = true

.field static final IDLE_NOW_MSG:I = 0xc9

.field static final IDLE_TIMEOUT:I = 0x2710

.field static final IDLE_TIMEOUT_MSG:I = 0xc8

.field static final LAUNCH_TASK_BEHIND_COMPLETE:I = 0xd4

.field static final LAUNCH_TIMEOUT:I = 0x2710

.field static final LAUNCH_TIMEOUT_MSG:I = 0xcc

.field private static final MAX_TASK_IDS_PER_USER:I = 0x186a0

.field static final ON_TOP:Z = true

.field static final PAUSE_IMMEDIATELY:Z = true

.field static final PRESERVE_WINDOWS:Z = true

.field static final REMOVE_FROM_RECENTS:Z = true

.field static final REPORT_HOME_CHANGED_MSG:I = 0xd8

.field static final REPORT_MULTI_WINDOW_MODE_CHANGED_MSG:I = 0xd6

.field static final REPORT_PIP_MODE_CHANGED_MSG:I = 0xd7

.field static final RESTART_ACTIVITY_PROCESS_TIMEOUT_MSG:I = 0xd5

.field static final RESUME_TOP_ACTIVITY_MSG:I = 0xca

.field static final SLEEP_TIMEOUT:I = 0x1388

.field static final SLEEP_TIMEOUT_MSG:I = 0xcb

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_IDLE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_PAUSE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_STACK:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_TASKS:Ljava/lang/String; = "ActivityTaskManager"

.field static final TOP_RESUMED_STATE_LOSS_TIMEOUT:I = 0x1f4

.field static final TOP_RESUMED_STATE_LOSS_TIMEOUT_MSG:I = 0xd9

.field static final VALIDATE_WAKE_LOCK_CALLER:Z = false


# instance fields
.field private mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

.field private mAllowDockedStackResize:Z

.field mAppVisibilitiesChangedSinceLastPause:Z

.field private final mCurTaskIdForUser:Landroid/util/SparseIntArray;

.field private mDeferResumeCount:I

.field private mDockedStackResizing:Z

.field final mFinishingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mGoingToSleepActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

.field private mHasPendingDockedBounds:Z

.field private mInitialized:Z

.field private mKeyguardController:Lcom/android/server/wm/KeyguardController;

.field private mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

.field mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

.field mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mLooper:Landroid/os/Looper;

.field final mMultiWindowModeChangedActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mNoAnimActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingDockedBounds:Landroid/graphics/Rect;

.field private mPendingTempDockedTaskBounds:Landroid/graphics/Rect;

.field private mPendingTempDockedTaskInsetBounds:Landroid/graphics/Rect;

.field private mPendingTempOtherTaskBounds:Landroid/graphics/Rect;

.field private mPendingTempOtherTaskInsetBounds:Landroid/graphics/Rect;

.field mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

.field final mPipModeChangedActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPipModeChangedTargetStackBounds:Landroid/graphics/Rect;

.field private mPowerManager:Landroid/os/PowerManager;

.field mRecentTasks:Lcom/android/server/wm/RecentTasks;

.field private final mResizingTasksDuringAnimation:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

.field mRunningTasks:Lcom/android/server/wm/RunningTasks;

.field final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field final mStartingUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/UserState;",
            ">;"
        }
    .end annotation
.end field

.field final mStoppingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemChooserActivity:Landroid/content/ComponentName;

.field private final mTmpOptions:Landroid/app/ActivityOptions;

.field private mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field private mTopResumedActivityWaitingForPrev:Z

.field mUserLeaving:Z

.field final mWaitingActivityLaunched:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mWaitingForActivityVisible:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field private final tempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 221
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 225
    sget-object v0, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v1, "android.permission.CAMERA"

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V
    .registers 5

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    .line 351
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    .line 352
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTmpOptions:Landroid/app/ActivityOptions;

    .line 385
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 436
    iput-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 437
    iput-object p2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLooper:Landroid/os/Looper;

    .line 438
    new-instance p1, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    .line 439
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->handleLaunchTaskBehindCompleteLocked(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method private checkFinishBootingLocked()Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1241
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v0

    .line 1242
    nop

    .line 1243
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->setBooting(Z)V

    .line 1244
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1c

    .line 1245
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->setBooted(Z)V

    .line 1246
    move v2, v3

    .line 1248
    :cond_1c
    if-nez v0, :cond_20

    if-eqz v2, :cond_25

    .line 1249
    :cond_20
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->postFinishBooting(ZZ)V

    .line 1251
    :cond_25
    return v0
.end method

.method private continueUpdateRecentsHomeStackBounds()V
    .registers 3

    .line 1472
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootActivityContainer;->continueUpdateBounds(I)V

    .line 1473
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootActivityContainer;->continueUpdateBounds(I)V

    .line 1474
    return-void
.end method

.method private deferUpdateRecentsHomeStackBounds()V
    .registers 3

    .line 1467
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootActivityContainer;->deferUpdateBounds(I)V

    .line 1468
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootActivityContainer;->deferUpdateBounds(I)V

    .line 1469
    return-void
.end method

.method static dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/wm/TaskRecord;)Z
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/TaskRecord;",
            ")Z"
        }
    .end annotation

    .line 2222
    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p8

    .line 2223
    nop

    .line 2224
    nop

    .line 2225
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    const/4 v6, 0x0

    move/from16 v10, p9

    move-object/from16 v9, p10

    move-object/from16 v11, p11

    move v7, v0

    move v0, v6

    const/4 v8, 0x0

    const/4 v12, 0x0

    :goto_19
    if-ltz v7, :cond_162

    .line 2226
    move-object/from16 v13, p2

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/ActivityRecord;

    .line 2227
    if-eqz v3, :cond_33

    iget-object v15, v14, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_33

    .line 2228
    move-object/from16 v5, p0

    move-object/from16 v4, p4

    goto/16 :goto_15d

    .line 2230
    :cond_33
    if-nez v8, :cond_48

    .line 2231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "      "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2232
    new-array v12, v6, [Ljava/lang/String;

    .line 2234
    :cond_48
    nop

    .line 2235
    if-nez p6, :cond_55

    if-nez p5, :cond_53

    invoke-virtual {v14}, Lcom/android/server/wm/ActivityRecord;->isInHistory()Z

    move-result v0

    if-nez v0, :cond_55

    :cond_53
    move v0, v4

    goto :goto_56

    :cond_55
    move v0, v6

    .line 2236
    :goto_56
    if-eqz v10, :cond_5e

    .line 2237
    const-string v10, ""

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2238
    move v10, v6

    .line 2240
    :cond_5e
    if-eqz v9, :cond_64

    .line 2241
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2242
    const/4 v9, 0x0

    .line 2244
    :cond_64
    invoke-virtual {v14}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v15

    if-eq v11, v15, :cond_ab

    .line 2245
    invoke-virtual {v14}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v11

    .line 2246
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2247
    const-string v15, "  "

    if-eqz v0, :cond_7a

    const-string v16, "* "

    move-object/from16 v4, v16

    goto :goto_7b

    :cond_7a
    move-object v4, v15

    :goto_7b
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2248
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2249
    if-eqz v0, :cond_96

    .line 2250
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v1, v4}, Lcom/android/server/wm/TaskRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_ab

    .line 2251
    :cond_96
    if-eqz p5, :cond_ab

    .line 2253
    iget-object v4, v11, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_ab

    .line 2254
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2255
    iget-object v4, v11, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->toInsecureStringWithClip()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2259
    :cond_ab
    :goto_ab
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v0, :cond_b3

    const-string v4, "  * "

    goto :goto_b5

    :cond_b3
    const-string v4, "    "

    :goto_b5
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v4, p4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2260
    const-string v15, " #"

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v15, ": "

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2261
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2262
    if-eqz v0, :cond_d3

    .line 2263
    invoke-virtual {v14, v1, v8}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_ed

    .line 2264
    :cond_d3
    if-eqz p5, :cond_ed

    .line 2266
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v14, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2267
    iget-object v0, v14, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_ed

    .line 2268
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v14, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2271
    :cond_ed
    :goto_ed
    if-eqz p7, :cond_15a

    invoke-virtual {v14}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_15a

    .line 2274
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 2276
    :try_start_f8
    new-instance v10, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v10}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_fd} :catch_13c
    .catch Landroid/os/RemoteException; {:try_start_f8 .. :try_end_fd} :catch_124

    .line 2278
    :try_start_fd
    iget-object v0, v14, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    .line 2279
    invoke-virtual {v10}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v15

    iget-object v14, v14, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 2278
    invoke-interface {v0, v15, v14, v8, v12}, Landroid/app/IApplicationThread;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_10c
    .catchall {:try_start_fd .. :try_end_10c} :catchall_119

    .line 2281
    const-wide/16 v14, 0x7d0

    move-object/from16 v5, p0

    :try_start_110
    invoke-virtual {v10, v5, v14, v15}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_113
    .catchall {:try_start_110 .. :try_end_113} :catchall_117

    .line 2283
    :try_start_113
    invoke-virtual {v10}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 2284
    goto :goto_156

    .line 2283
    :catchall_117
    move-exception v0

    goto :goto_11c

    :catchall_119
    move-exception v0

    move-object/from16 v5, p0

    :goto_11c
    invoke-virtual {v10}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v0
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_120} :catch_122
    .catch Landroid/os/RemoteException; {:try_start_113 .. :try_end_120} :catch_120

    .line 2287
    :catch_120
    move-exception v0

    goto :goto_127

    .line 2285
    :catch_122
    move-exception v0

    goto :goto_13f

    .line 2287
    :catch_124
    move-exception v0

    move-object/from16 v5, p0

    .line 2288
    :goto_127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "Got a RemoteException while dumping the activity"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_157

    .line 2285
    :catch_13c
    move-exception v0

    move-object/from16 v5, p0

    .line 2286
    :goto_13f
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "Failure while dumping the activity: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2289
    :goto_156
    nop

    .line 2290
    :goto_157
    const/4 v0, 0x1

    const/4 v10, 0x1

    goto :goto_15d

    .line 2271
    :cond_15a
    move-object/from16 v5, p0

    .line 2225
    const/4 v0, 0x1

    :goto_15d
    add-int/lit8 v7, v7, -0x1

    const/4 v4, 0x1

    goto/16 :goto_19

    .line 2293
    :cond_162
    return v0
.end method

.method private getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 8

    .line 1181
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1182
    return v0

    .line 1185
    :cond_4
    sget-object v1, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1186
    if-nez p1, :cond_f

    .line 1187
    return v0

    .line 1192
    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x1000

    .line 1193
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_1d} :catch_48

    .line 1197
    nop

    .line 1199
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 1200
    return v0

    .line 1203
    :cond_27
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p1, p3, p4}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result p3

    const/4 v1, -0x1

    if-ne p3, v1, :cond_32

    .line 1204
    const/4 p1, 0x1

    return p1

    .line 1207
    :cond_32
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result p1

    .line 1208
    if-ne p1, v1, :cond_39

    .line 1209
    return v0

    .line 1212
    :cond_39
    iget-object p3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsService()Lcom/android/server/appop/AppOpsService;

    move-result-object p3

    invoke-virtual {p3, p1, p4, p2}, Lcom/android/server/appop/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_47

    .line 1214
    const/4 p1, 0x2

    return p1

    .line 1217
    :cond_47
    return v0

    .line 1194
    :catch_48
    move-exception p1

    .line 1195
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot find package info for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityTaskManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    return v0
.end method

.method private getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)I
    .registers 10

    .line 1154
    const/4 v0, -0x1

    if-nez p5, :cond_15

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v3, p1, Landroid/content/pm/ActivityInfo;->exported:Z

    invoke-static {v1, p3, p4, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result p3

    if-ne p3, v0, :cond_15

    .line 1157
    const/4 p1, 0x1

    return p1

    .line 1160
    :cond_15
    iget-object p3, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p3, :cond_1b

    .line 1161
    return v1

    .line 1164
    :cond_1b
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result p1

    .line 1165
    if-ne p1, v0, :cond_24

    .line 1166
    return v1

    .line 1169
    :cond_24
    iget-object p3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsService()Lcom/android/server/appop/AppOpsService;

    move-result-object p3

    invoke-virtual {p3, p1, p4, p2}, Lcom/android/server/appop/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_34

    .line 1171
    if-nez p5, :cond_34

    .line 1172
    const/4 p1, 0x2

    return p1

    .line 1176
    :cond_34
    return v1
.end method

.method private handleForcedResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;I)V
    .registers 5

    .line 2481
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2482
    if-eqz v0, :cond_21

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-nez v1, :cond_21

    .line 2483
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isNonResizableOrForcedResizable()Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_21

    .line 2486
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    iget p1, p1, Lcom/android/server/wm/TaskRecord;->taskId:I

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    .line 2488
    return-void

    .line 2484
    :cond_21
    :goto_21
    return-void
.end method

.method private handleLaunchTaskBehindCompleteLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6

    .line 2091
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 2092
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2094
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    .line 2095
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/TaskRecord;)V

    .line 2096
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 2097
    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 2101
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 2102
    if-eqz p1, :cond_29

    .line 2103
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->touchActiveTime()V

    .line 2105
    :cond_29
    return-void
.end method

.method private logIfTransactionTooLarge(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 6

    .line 957
    nop

    .line 958
    const/4 v0, 0x0

    if-eqz p1, :cond_f

    .line 959
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 960
    if-eqz v1, :cond_f

    .line 961
    invoke-virtual {v1}, Landroid/os/Bundle;->getSize()I

    move-result v1

    goto :goto_10

    .line 964
    :cond_f
    move v1, v0

    :goto_10
    if-nez p2, :cond_13

    goto :goto_17

    :cond_13
    invoke-virtual {p2}, Landroid/os/Bundle;->getSize()I

    move-result v0

    .line 965
    :goto_17
    add-int p2, v1, v0

    const v2, 0x30d40

    if-le p2, v2, :cond_44

    .line 966
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transaction too large, intent: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", extras size: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", icicle size: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityTaskManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_44
    return-void
.end method

.method private moveHomeStackToFrontIfNeeded(ILcom/android/server/wm/ActivityDisplay;Ljava/lang/String;)V
    .registers 7

    .line 1440
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1442
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityDisplay;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    and-int/2addr p1, v2

    if-nez p1, :cond_16

    :cond_e
    if-eqz v0, :cond_19

    .line 1444
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeRecents()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 1447
    :cond_16
    invoke-virtual {p2, p3}, Lcom/android/server/wm/ActivityDisplay;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 1449
    :cond_19
    return-void
.end method

.method private moveTasksToFullscreenStackInSurfaceTransaction(Lcom/android/server/wm/ActivityStack;IZ)V
    .registers 21

    .line 1496
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 1498
    const/4 v2, 0x1

    :try_start_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    .line 1499
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v0, v3, :cond_12

    move v3, v2

    goto :goto_13

    :cond_12
    move v3, v4

    .line 1500
    :goto_13
    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 1501
    move/from16 v6, p2

    invoke-virtual {v5, v6}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v13

    .line 1503
    const/4 v5, 0x3

    if-ne v0, v5, :cond_3b

    .line 1505
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityDisplay;->onExitingSplitScreenMode()V

    .line 1509
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_26
    if-ltz v0, :cond_39

    .line 1510
    invoke-virtual {v13, v0}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 1511
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v6

    if-nez v6, :cond_33

    .line 1512
    goto :goto_36

    .line 1514
    :cond_33
    invoke-virtual {v5, v4}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    .line 1509
    :goto_36
    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    .line 1521
    :cond_39
    iput-boolean v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 1526
    :cond_3b
    nop

    .line 1527
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 1529
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9e

    .line 1530
    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mTmpOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5, v2}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 1531
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 1532
    move v15, v4

    :goto_50
    if-ge v15, v14, :cond_9e

    .line 1533
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lcom/android/server/wm/TaskRecord;

    .line 1534
    const/4 v7, 0x0

    iget-object v8, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mTmpOptions:Landroid/app/ActivityOptions;

    .line 1535
    invoke-virtual {v12}, Lcom/android/server/wm/TaskRecord;->getActivityType()I

    move-result v10

    .line 1534
    move-object v6, v13

    move-object v9, v12

    move/from16 v11, p3

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;IZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 1537
    if-eqz p3, :cond_8e

    .line 1538
    add-int/lit8 v5, v14, -0x1

    if-ne v15, v5, :cond_70

    move v9, v2

    goto :goto_71

    :cond_70
    move v9, v4

    .line 1540
    :goto_71
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x1

    const-string v16, "moveTasksToFullscreenStack - onTop"

    move-object v5, v12

    move v11, v3

    move-object v2, v12

    move-object/from16 v12, v16

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZZLjava/lang/String;)Z

    .line 1544
    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget v6, v2, Lcom/android/server/wm/TaskRecord;->effectiveUid:I

    iget-object v2, v2, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 1545
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    .line 1544
    invoke-static {v5, v6, v2}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logPictureInPictureFullScreen(Landroid/content/Context;ILjava/lang/String;)V

    .line 1546
    goto :goto_9a

    .line 1550
    :cond_8e
    move-object v2, v12

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-string v12, "moveTasksToFullscreenStack - NOT_onTop"

    move-object v5, v2

    move v11, v3

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZZLjava/lang/String;)Z

    .line 1532
    :goto_9a
    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x1

    goto :goto_50

    .line 1558
    :cond_9e
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v4, v3}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1559
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z
    :try_end_aa
    .catchall {:try_start_8 .. :try_end_aa} :catchall_b3

    .line 1561
    iput-boolean v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 1562
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1563
    nop

    .line 1564
    return-void

    .line 1561
    :catchall_b3
    move-exception v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 1562
    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method static nextTaskIdForUser(II)I
    .registers 3

    .line 530
    add-int/lit8 p0, p0, 0x1

    .line 531
    add-int/lit8 p1, p1, 0x1

    const v0, 0x186a0

    mul-int/2addr p1, v0

    if-ne p0, p1, :cond_b

    .line 533
    sub-int/2addr p0, v0

    .line 535
    :cond_b
    return p0
.end method

.method static printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z
    .registers 6

    .line 2206
    if-eqz p1, :cond_19

    .line 2207
    if-eqz p2, :cond_c

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 2208
    :cond_c
    if-eqz p3, :cond_11

    .line 2209
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 2211
    :cond_11
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2212
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2213
    const/4 p0, 0x1

    return p0

    .line 2216
    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method private removeStackInSurfaceTransaction(Lcom/android/server/wm/ActivityStack;)V
    .registers 6

    .line 1737
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 1738
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1c

    .line 1748
    iput-boolean v2, p1, Lcom/android/server/wm/ActivityStack;->mForceHidden:Z

    .line 1749
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1750
    iput-boolean v1, p1, Lcom/android/server/wm/ActivityStack;->mForceHidden:Z

    .line 1751
    invoke-virtual {p0, v0, v1, v2, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->activityIdleInternalLocked(Landroid/os/IBinder;ZZLandroid/content/res/Configuration;)Lcom/android/server/wm/ActivityRecord;

    .line 1755
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;Z)V

    goto :goto_33

    .line 1757
    :cond_1c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_21
    if-ltz p1, :cond_33

    .line 1758
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskRecord;

    iget v1, v1, Lcom/android/server/wm/TaskRecord;->taskId:I

    const-string v3, "remove-stack"

    invoke-virtual {p0, v1, v2, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    .line 1757
    add-int/lit8 p1, p1, -0x1

    goto :goto_21

    .line 1762
    :cond_33
    :goto_33
    return-void
.end method

.method private scheduleTopResumedActivityStateIfNeeded()V
    .registers 3

    .line 2340
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_c

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivityWaitingForPrev:Z

    if-nez v1, :cond_c

    .line 2341
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->scheduleTopResumedActivityChanged(Z)Z

    .line 2343
    :cond_c
    return-void
.end method

.method private scheduleTopResumedStateLossTimeout(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 2349
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd9

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2350
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2351
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/wm/ActivityRecord;->topResumedStateLossTime:J

    .line 2352
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2354
    return-void
.end method


# virtual methods
.method acquireLaunchWakelock()V
    .registers 5

    .line 1228
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1229
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1231
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1233
    :cond_16
    return-void
.end method

.method final activityIdleInternalLocked(Landroid/os/IBinder;ZZLandroid/content/res/Configuration;)Lcom/android/server/wm/ActivityRecord;
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1260
    nop

    .line 1261
    nop

    .line 1262
    nop

    .line 1263
    nop

    .line 1264
    nop

    .line 1265
    nop

    .line 1267
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 1268
    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_45

    .line 1271
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1272
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->finishLaunchTickingLocked()V

    .line 1273
    if-eqz p2, :cond_23

    .line 1274
    const-wide/16 v3, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p2

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->reportActivityLaunchedLocked(ZLcom/android/server/wm/ActivityRecord;JI)V

    .line 1283
    :cond_23
    if-eqz p4, :cond_28

    .line 1284
    invoke-virtual {p1, p4}, Lcom/android/server/wm/ActivityRecord;->setLastReportedGlobalConfiguration(Landroid/content/res/Configuration;)V

    .line 1289
    :cond_28
    iput-boolean v6, p1, Lcom/android/server/wm/ActivityRecord;->idle:Z

    .line 1295
    iget-object p4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result p4

    if-eqz p4, :cond_3a

    iget-object p4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p4}, Lcom/android/server/wm/RootActivityContainer;->allResumedActivitiesIdle()Z

    move-result p4

    if-nez p4, :cond_3c

    :cond_3a
    if-eqz p2, :cond_41

    .line 1297
    :cond_3c
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->checkFinishBootingLocked()Z

    move-result p2

    goto :goto_42

    .line 1295
    :cond_41
    move p2, v7

    .line 1302
    :goto_42
    iput v7, p1, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    goto :goto_46

    .line 1268
    :cond_45
    move p2, v7

    .line 1305
    :goto_46
    iget-object p4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p4}, Lcom/android/server/wm/RootActivityContainer;->allResumedActivitiesIdle()Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_6f

    .line 1306
    if-eqz p1, :cond_56

    .line 1307
    iget-object p4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityTaskManagerService;->scheduleAppGcsLocked()V

    .line 1310
    :cond_56
    iget-object p4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p4

    if-eqz p4, :cond_6a

    .line 1311
    iget-object p4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xcc

    invoke-virtual {p4, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 1316
    iget-object p4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1318
    :cond_6a
    iget-object p4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p4, v0, v7, v7}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1322
    :cond_6f
    invoke-virtual {p0, p1, v6, p3}, Lcom/android/server/wm/ActivityStackSupervisor;->processStoppingActivitiesLocked(Lcom/android/server/wm/ActivityRecord;ZZ)Ljava/util/ArrayList;

    move-result-object p3

    .line 1324
    if-eqz p3, :cond_7a

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    goto :goto_7b

    :cond_7a
    move p4, v7

    .line 1325
    :goto_7b
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_90

    .line 1326
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1327
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_91

    .line 1325
    :cond_90
    move-object v2, v0

    .line 1330
    :goto_91
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_a5

    .line 1331
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1332
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1337
    :cond_a5
    move-object v3, p1

    move p1, v7

    :goto_a7
    if-ge p1, p4, :cond_c5

    .line 1338
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1339
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 1340
    if-eqz v4, :cond_c2

    .line 1341
    iget-boolean v5, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_bf

    .line 1342
    const-string v5, "activityIdleInternalLocked"

    invoke-virtual {v4, v3, v7, v7, v5}, Lcom/android/server/wm/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/wm/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    goto :goto_c2

    .line 1345
    :cond_bf
    invoke-virtual {v4, v3}, Lcom/android/server/wm/ActivityStack;->stopActivityLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 1337
    :cond_c2
    :goto_c2
    add-int/lit8 p1, p1, 0x1

    goto :goto_a7

    .line 1352
    :cond_c5
    move p1, v7

    move p3, p1

    :goto_c7
    if-ge p1, v1, :cond_e0

    .line 1353
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    move-object v3, p4

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1354
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p4

    .line 1355
    if-eqz p4, :cond_dd

    .line 1356
    const-string v4, "finish-idle"

    invoke-virtual {p4, v3, v6, v4}, Lcom/android/server/wm/ActivityStack;->destroyActivityLocked(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)Z

    move-result p4

    or-int/2addr p3, p4

    .line 1352
    :cond_dd
    add-int/lit8 p1, p1, 0x1

    goto :goto_c7

    .line 1360
    :cond_e0
    if-nez p2, :cond_f9

    .line 1362
    if-eqz v0, :cond_f9

    .line 1363
    nop

    :goto_e5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v7, p1, :cond_f9

    .line 1364
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/ActivityManagerInternal;->finishUserSwitch(Ljava/lang/Object;)V

    .line 1363
    add-int/lit8 v7, v7, 0x1

    goto :goto_e5

    .line 1369
    :cond_f9
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance p2, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$28Zuzbi6usdgbDcOi8hrJg6nZO0;

    invoke-direct {p2, p0}, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$28Zuzbi6usdgbDcOi8hrJg6nZO0;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;)V

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 1373
    if-eqz p3, :cond_10c

    .line 1374
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 1377
    :cond_10c
    return-object v3
.end method

.method activityRelaunchedLocked(Landroid/os/IBinder;)V
    .registers 3

    .line 2491
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->notifyAppRelaunchingFinished(Landroid/os/IBinder;)V

    .line 2492
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 2493
    if-eqz p1, :cond_19

    .line 2494
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2495
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lcom/android/server/wm/ActivityRecord;->setSleeping(ZZ)V

    .line 2498
    :cond_19
    return-void
.end method

.method activityRelaunchingLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 2501
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->notifyAppRelaunching(Landroid/os/IBinder;)V

    .line 2502
    return-void
.end method

.method activitySleptLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 2041
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2042
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    .line 2043
    if-eqz p1, :cond_f

    .line 2044
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->checkReadyForSleep()V

    goto :goto_13

    .line 2046
    :cond_f
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 2048
    :goto_13
    return-void
.end method

.method beginDeferResume()V
    .registers 2

    .line 2574
    iget v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDeferResumeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDeferResumeCount:I

    .line 2575
    return-void
.end method

.method canPlaceEntityOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z
    .registers 8

    .line 359
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 361
    return v0

    .line 363
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 365
    return v2

    .line 367
    :cond_c
    invoke-virtual {p0, p2, p3, p1, p4}, Lcom/android/server/wm/ActivityStackSupervisor;->isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 371
    return v2

    .line 373
    :cond_13
    return v0
.end method

.method canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z
    .registers 4

    .line 1454
    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_1f

    .line 1457
    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v1, :cond_17

    .line 1458
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1d

    :cond_17
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz p1, :cond_1e

    :cond_1d
    const/4 v0, 0x1

    .line 1457
    :cond_1e
    return v0

    .line 1455
    :cond_1f
    :goto_1f
    return v0
.end method

.method checkReadyForSleepLocked(Z)V
    .registers 4

    .line 2051
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2053
    return-void

    .line 2056
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/RootActivityContainer;->putStacksToSleep(ZZ)Z

    move-result p1

    if-nez p1, :cond_13

    .line 2058
    return-void

    .line 2062
    :cond_13
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootActivityContainer;->sendPowerHintForLaunchEndIfNeeded()V

    .line 2064
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 2066
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 2067
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2069
    :cond_28
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-eqz p1, :cond_35

    .line 2070
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 2072
    :cond_35
    return-void
.end method

.method checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;ZZLcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack;)Z
    .registers 33

    .line 1007
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p10

    iget-object v0, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_22

    iget-object v0, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1008
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v0

    if-eqz v0, :cond_22

    move v0, v12

    goto :goto_23

    :cond_22
    move v0, v11

    .line 1009
    :goto_23
    iget-object v1, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v1, "android.permission.START_ANY_ACTIVITY"

    invoke-static {v1, v8, v9}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    .line 1011
    if-eqz v1, :cond_196

    if-eqz v0, :cond_33

    if-eqz p9, :cond_33

    goto/16 :goto_196

    .line 1017
    :cond_33
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p7

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)I

    move-result v0

    .line 1019
    nop

    .line 1020
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1019
    invoke-direct {v6, v1, v2, v8, v9}, Lcom/android/server/wm/ActivityStackSupervisor;->getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    .line 1021
    const-string v2, ") requires "

    const-string v3, "ActivityTaskManager"

    const-string v4, ", uid="

    const-string v5, " (pid="

    const-string v6, " from "

    if-eq v0, v12, :cond_da

    if-ne v1, v12, :cond_5c

    goto/16 :goto_da

    .line 1049
    :cond_5c
    const-string v13, "Appop Denial: starting "

    const/4 v14, 0x2

    if-ne v1, v14, :cond_a0

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 1054
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1053
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1055
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    return v11

    .line 1057
    :cond_a0
    if-ne v0, v14, :cond_d9

    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") requires appop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 1061
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1062
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    return v11

    .line 1066
    :cond_d9
    return v12

    .line 1023
    :cond_da
    :goto_da
    if-eqz p11, :cond_ec

    .line 1024
    const/4 v14, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v13, p12

    move-object/from16 v15, p11

    move-object/from16 v16, p3

    move/from16 v17, p4

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/wm/ActivityStack;->sendActivityResultLocked(ILcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1029
    :cond_ec
    const-string v0, "Permission Denial: starting "

    if-eq v1, v12, :cond_154

    .line 1034
    iget-boolean v1, v7, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v1, :cond_126

    .line 1035
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") not exported from uid "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_18d

    .line 1040
    :cond_126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_18d

    .line 1030
    :cond_154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") with revoked permission "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 1033
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1045
    :goto_18d
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1015
    :cond_196
    :goto_196
    return v12
.end method

.method cleanUpRemovedTaskLocked(Lcom/android/server/wm/TaskRecord;ZZ)V
    .registers 12

    .line 1811
    if-eqz p3, :cond_7

    .line 1812
    iget-object p3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p3, p1}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/TaskRecord;)V

    .line 1814
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p3

    .line 1815
    if-nez p3, :cond_28

    .line 1816
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No component for base intent of task: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityTaskManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    return-void

    .line 1821
    :cond_28
    sget-object v0, Lcom/android/server/wm/-$$Lambda$z5j5fiv3cZuY5AODkt3H3rhKimk;->INSTANCE:Lcom/android/server/wm/-$$Lambda$z5j5fiv3cZuY5AODkt3H3rhKimk;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v2, p1, Lcom/android/server/wm/TaskRecord;->userId:I

    .line 1822
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1821
    invoke-static {v0, v1, v2, p3, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1823
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1825
    if-nez p2, :cond_4b

    .line 1826
    return-void

    .line 1830
    :cond_4b
    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 1831
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 1832
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    .line 1833
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 1834
    const/4 v1, 0x0

    move v2, v1

    :goto_5e
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_a5

    .line 1836
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 1837
    move v4, v1

    :goto_6b
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_a2

    .line 1838
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowProcessController;

    .line 1839
    iget v6, v5, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    iget v7, p1, Lcom/android/server/wm/TaskRecord;->userId:I

    if-eq v6, v7, :cond_7e

    .line 1841
    goto :goto_9f

    .line 1843
    :cond_7e
    iget-object v6, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne v5, v6, :cond_85

    .line 1845
    goto :goto_9f

    .line 1847
    :cond_85
    iget-object v6, v5, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    invoke-virtual {v6, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8e

    .line 1849
    goto :goto_9f

    .line 1852
    :cond_8e
    invoke-virtual {v5, p1}, Lcom/android/server/wm/WindowProcessController;->shouldKillProcessForRemovedTask(Lcom/android/server/wm/TaskRecord;)Z

    move-result v6

    if-nez v6, :cond_95

    .line 1855
    return-void

    .line 1858
    :cond_95
    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessController;->hasForegroundServices()Z

    move-result v6

    if-eqz v6, :cond_9c

    .line 1860
    return-void

    .line 1864
    :cond_9c
    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1837
    :goto_9f
    add-int/lit8 v4, v4, 0x1

    goto :goto_6b

    .line 1834
    :cond_a2
    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    .line 1870
    :cond_a5
    sget-object p1, Lcom/android/server/wm/-$$Lambda$j9nJq2XXOKyN4f0dfDaTjqmQRvg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$j9nJq2XXOKyN4f0dfDaTjqmQRvg;

    iget-object p2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1873
    iget-object p2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1874
    return-void
.end method

.method cleanupActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 569
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 571
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;)V

    .line 572
    return-void
.end method

.method comeOutOfSleepIfNeededLocked()V
    .registers 2

    .line 2034
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 2035
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2036
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2038
    :cond_10
    return-void
.end method

.method createRunningTasks()Lcom/android/server/wm/RunningTasks;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 494
    new-instance v0, Lcom/android/server/wm/RunningTasks;

    invoke-direct {v0}, Lcom/android/server/wm/RunningTasks;-><init>()V

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 2185
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2186
    const-string v0, "ActivityStackSupervisor state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2187
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/RootActivityContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2188
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurTaskIdForUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mUserStackInFront="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootActivityContainer;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2191
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_86

    .line 2192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mWaitingForActivityVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2193
    const/4 v0, 0x0

    :goto_5e
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_86

    .line 2194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2193
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 2197
    :cond_86
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isHomeRecentsComponent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2198
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v1, v1, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentTasks;->isRecentsComponentHomeActivity(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2200
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/KeyguardController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2201
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/LockTaskController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2202
    return-void
.end method

.method endDeferResume()V
    .registers 2

    .line 2581
    iget v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDeferResumeCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDeferResumeCount:I

    .line 2582
    return-void
.end method

.method findTaskToMoveToFront(Lcom/android/server/wm/TaskRecord;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V
    .registers 28

    .line 1383
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1384
    if-nez v1, :cond_2a

    .line 1385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findTaskToMoveToFront: can\'t move task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to front. Stack is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    return-void

    .line 1390
    :cond_2a
    and-int/lit8 v2, v9, 0x2

    const/4 v11, 0x1

    if-nez v2, :cond_31

    .line 1391
    iput-boolean v11, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    .line 1394
    :cond_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " findTaskToMoveToFront"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1395
    const/4 v2, 0x0

    .line 1396
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v3

    const/4 v13, 0x0

    if-eqz v3, :cond_95

    invoke-virtual {v0, v10}, Lcom/android/server/wm/ActivityStackSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z

    move-result v3

    if-eqz v3, :cond_95

    .line 1397
    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v15

    .line 1398
    invoke-virtual {v8, v15}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 1400
    iget-object v3, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 1401
    invoke-virtual {v3, v13, v10, v8, v11}, Lcom/android/server/wm/RootActivityContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v14

    .line 1403
    if-eq v14, v1, :cond_76

    .line 1404
    invoke-virtual {v14}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    invoke-direct {v0, v9, v1, v12}, Lcom/android/server/wm/ActivityStackSupervisor;->moveHomeStackToFrontIfNeeded(ILcom/android/server/wm/ActivityDisplay;Ljava/lang/String;)V

    .line 1405
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v1, p1

    move-object v2, v14

    move-object v7, v12

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 1407
    nop

    .line 1408
    move v2, v11

    move-object v1, v14

    .line 1412
    :cond_76
    invoke-virtual {v14}, Lcom/android/server/wm/ActivityStack;->resizeStackWithLaunchBounds()Z

    move-result v3

    if-eqz v3, :cond_92

    .line 1413
    iget-object v3, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object v4, v14

    move-object v14, v3

    move-object v3, v15

    move-object v15, v4

    move-object/from16 v16, v3

    invoke-virtual/range {v14 .. v21}, Lcom/android/server/wm/RootActivityContainer;->resizeStack(Lcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    goto :goto_95

    .line 1420
    :cond_92
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->resizeWindowContainer()V

    .line 1424
    :cond_95
    :goto_95
    move-object v7, v1

    if-nez v2, :cond_9f

    .line 1425
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    invoke-direct {v0, v9, v1, v12}, Lcom/android/server/wm/ActivityStackSupervisor;->moveHomeStackToFrontIfNeeded(ILcom/android/server/wm/ActivityDisplay;Ljava/lang/String;)V

    .line 1428
    :cond_9f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1429
    const/4 v3, 0x0

    .line 1430
    if-nez v1, :cond_a8

    move-object v5, v13

    goto :goto_ab

    :cond_a8
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    move-object v5, v1

    .line 1429
    :goto_ab
    move-object v1, v7

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object v6, v12

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/wm/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 1435
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v4, v7

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;IILcom/android/server/wm/ActivityStack;Z)V

    .line 1437
    return-void
.end method

.method public getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;
    .registers 2

    .line 472
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    return-object v0
.end method

.method public getKeyguardController()Lcom/android/server/wm/KeyguardController;
    .registers 2

    .line 476
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    return-object v0
.end method

.method getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;
    .registers 2

    .line 1463
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    return-object v0
.end method

.method getNextTaskIdForUserLocked(I)I
    .registers 6

    .line 539
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    const v1, 0x186a0

    mul-int/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 543
    invoke-static {v0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->nextTaskIdForUser(II)I

    move-result v1

    .line 544
    :goto_e
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/wm/RecentTasks;->containsTaskId(II)Z

    move-result v2

    if-nez v2, :cond_26

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v3, 0x1

    .line 545
    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_20

    goto :goto_26

    .line 556
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 557
    return v1

    .line 547
    :cond_26
    :goto_26
    invoke-static {v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->nextTaskIdForUser(II)I

    move-result v1

    .line 548
    if-eq v1, v0, :cond_2d

    goto :goto_e

    .line 551
    :cond_2d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot get an available task id. Reached limit of 100000 running tasks per user."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getReparentTargetStack(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;
    .registers 9

    .line 1939
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1940
    iget v1, p2, Lcom/android/server/wm/ActivityStack;->mStackId:I

    .line 1941
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->inMultiWindowMode()Z

    move-result v2

    .line 1944
    const-string v3, "ActivityTaskManager"

    if-eqz v0, :cond_2f

    iget v4, v0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    if-ne v4, v1, :cond_2f

    .line 1945
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can not reparent to same stack, task="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already in stackId="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    return-object v0

    .line 1952
    :cond_2f
    if-eqz v2, :cond_57

    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    if-eqz v4, :cond_38

    goto :goto_57

    .line 1953
    :cond_38
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device doesn\'t support multi-window, can not reparent task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to stack="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 1959
    :cond_57
    :goto_57
    iget v4, p2, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    if-eqz v4, :cond_81

    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    if-eqz v4, :cond_62

    goto :goto_81

    .line 1960
    :cond_62
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Device doesn\'t support multi-display, can not reparent task="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to stackId="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1965
    :cond_81
    :goto_81
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v1

    const/4 v4, 0x5

    if-ne v1, v4, :cond_a6

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v1, :cond_8f

    goto :goto_a6

    .line 1967
    :cond_8f
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Device doesn\'t support freeform, can not reparent task="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1973
    :cond_a6
    :goto_a6
    if-eqz v2, :cond_df

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v1

    if-nez v1, :cond_df

    .line 1974
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not move unresizeable task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to multi-window stack="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " Moving to a fullscreen stack instead."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    if-eqz v0, :cond_d2

    .line 1977
    return-object v0

    .line 1979
    :cond_d2
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object p1

    const/4 v0, 0x1

    .line 1980
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result p2

    .line 1979
    invoke-virtual {p1, v0, p2, p3}, Lcom/android/server/wm/ActivityDisplay;->createStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object p2

    .line 1982
    :cond_df
    return-object p2
.end method

.method getSystemChooserActivity()Landroid/content/ComponentName;
    .registers 3

    .line 480
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mSystemChooserActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_19

    .line 481
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 482
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104014c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 481
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mSystemChooserActivity:Landroid/content/ComponentName;

    .line 484
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mSystemChooserActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 5

    .line 1144
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1146
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 1148
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1146
    return-object p1

    .line 1148
    :catchall_14
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method goingToSleepLocked()V
    .registers 3

    .line 1986
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleSleepTimeout()V

    .line 1987
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_24

    .line 1988
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1989
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1993
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1994
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 1998
    :cond_24
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootActivityContainer;->applySleepTokens(Z)V

    .line 2000
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 2001
    return-void
.end method

.method handleNonResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;IILcom/android/server/wm/ActivityStack;)V
    .registers 11

    .line 2407
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;IILcom/android/server/wm/ActivityStack;Z)V

    .line 2409
    return-void
.end method

.method handleNonResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;IILcom/android/server/wm/ActivityStack;Z)V
    .registers 10

    .line 2413
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_9

    const/4 v2, -0x1

    if-eq p3, v2, :cond_9

    move v2, v1

    goto :goto_a

    :cond_9
    move v2, v0

    .line 2415
    :goto_a
    if-eqz p4, :cond_18

    .line 2416
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->hasSplitScreenPrimaryStack()Z

    move-result v3

    if-eqz v3, :cond_18

    move v3, v1

    goto :goto_19

    :cond_18
    move v3, v0

    .line 2417
    :goto_19
    if-nez v3, :cond_20

    const/4 v3, 0x3

    if-eq p2, v3, :cond_20

    if-eqz v2, :cond_26

    .line 2418
    :cond_20
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->isActivityTypeStandardOrUndefined()Z

    move-result p2

    if-nez p2, :cond_27

    .line 2419
    :cond_26
    return-void

    .line 2423
    :cond_27
    if-eqz v2, :cond_93

    .line 2424
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p2

    iget p2, p2, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    .line 2425
    invoke-virtual {p1, p2}, Lcom/android/server/wm/TaskRecord;->canBeLaunchedOnDisplay(I)Z

    move-result p4

    if-eqz p4, :cond_8b

    .line 2429
    iget-object p4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 2430
    invoke-virtual {p4, p3}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object p4

    .line 2432
    if-eqz p4, :cond_45

    .line 2433
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityDisplay;->isSingleTaskInstance()Z

    move-result p4

    if-eqz p4, :cond_45

    move v0, v1

    goto :goto_46

    :cond_45
    nop

    .line 2435
    :goto_46
    if-eq p3, p2, :cond_84

    .line 2439
    if-eqz v0, :cond_58

    .line 2440
    iget-object p2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p2

    .line 2441
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/TaskInfo;I)V

    .line 2443
    return-void

    .line 2446
    :cond_58
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to put "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " on display "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "ActivityTaskManager"

    invoke-static {p4, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    iget-object p2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p2

    .line 2449
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityLaunchOnSecondaryDisplayFailed(Landroid/app/TaskInfo;I)V

    goto :goto_8a

    .line 2451
    :cond_84
    if-nez p5, :cond_8a

    .line 2452
    const/4 p2, 0x2

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->handleForcedResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;I)V

    .line 2457
    :cond_8a
    :goto_8a
    return-void

    .line 2426
    :cond_8b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Task resolved to incompatible display"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2460
    :cond_93
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result p2

    if-eqz p2, :cond_a0

    if-eqz p5, :cond_9c

    goto :goto_a0

    .line 2476
    :cond_9c
    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->handleForcedResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;I)V

    .line 2477
    return-void

    .line 2464
    :cond_a0
    :goto_a0
    nop

    .line 2465
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    .line 2466
    if-eqz p1, :cond_be

    .line 2469
    iget-object p2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p2

    .line 2470
    invoke-virtual {p2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityDismissingDockedStack()V

    .line 2471
    if-ne p4, p1, :cond_bb

    move v0, v1

    :cond_bb
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;Z)V

    .line 2473
    :cond_be
    return-void
.end method

.method handleTopResumedStateReleased(Z)V
    .registers 3

    .line 2365
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v0, 0xd9

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 2366
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivityWaitingForPrev:Z

    if-nez p1, :cond_c

    .line 2368
    return-void

    .line 2370
    :cond_c
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivityWaitingForPrev:Z

    .line 2371
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleTopResumedActivityStateIfNeeded()V

    .line 2372
    return-void
.end method

.method initPowerManagement()V
    .registers 4

    .line 502
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    .line 503
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    .line 504
    const/4 v1, 0x1

    const-string v2, "ActivityManager-Sleep"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 505
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "*launch*"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 506
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 507
    return-void
.end method

.method public initialize()V
    .registers 4

    .line 442
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mInitialized:Z

    if-eqz v0, :cond_5

    .line 443
    return-void

    .line 446
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mInitialized:Z

    .line 447
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->createRunningTasks()Lcom/android/server/wm/RunningTasks;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRunningTasks:Lcom/android/server/wm/RunningTasks;

    .line 449
    new-instance v0, Lcom/android/server/wm/ActivityMetricsLogger;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    .line 450
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/wm/ActivityMetricsLogger;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 451
    new-instance v0, Lcom/android/server/wm/KeyguardController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/KeyguardController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 453
    new-instance v0, Lcom/android/server/wm/PersisterQueue;

    invoke-direct {v0}, Lcom/android/server/wm/PersisterQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 454
    new-instance v0, Lcom/android/server/wm/LaunchParamsPersister;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/LaunchParamsPersister;-><init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityStackSupervisor;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    .line 455
    new-instance v0, Lcom/android/server/wm/LaunchParamsController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/LaunchParamsController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/LaunchParamsPersister;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    .line 456
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/LaunchParamsController;->registerDefaultModifiers(Lcom/android/server/wm/ActivityStackSupervisor;)V

    .line 457
    return-void
.end method

.method isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z
    .registers 13

    .line 1075
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v0, :cond_7

    if-ne p2, v0, :cond_7

    .line 1077
    return v1

    .line 1080
    :cond_7
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 1081
    invoke-virtual {v2, p3}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplayOrCreate(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object p3

    .line 1082
    const-string v2, "ActivityTaskManager"

    const/4 v3, 0x0

    if-eqz p3, :cond_69

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityDisplay;->isRemoved()Z

    move-result v4

    if-eqz v4, :cond_19

    goto :goto_69

    .line 1089
    :cond_19
    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v4, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-static {v4, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    .line 1091
    if-nez v4, :cond_24

    .line 1094
    return v1

    .line 1098
    :cond_24
    invoke-virtual {p3, p2}, Lcom/android/server/wm/ActivityDisplay;->isUidPresent(I)Z

    move-result v4

    .line 1100
    iget-object v5, p3, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getOwnerUid()I

    move-result v5

    .line 1101
    iget-object v6, p3, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getType()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_56

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_56

    iget-object v6, p4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v5, v6, :cond_56

    .line 1105
    iget p4, p4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v6, -0x80000000

    and-int/2addr p4, v6

    if-nez p4, :cond_49

    .line 1108
    return v3

    .line 1111
    :cond_49
    iget-object p4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string p4, "android.permission.ACTIVITY_EMBEDDING"

    invoke-static {p4, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v0, :cond_56

    if-nez v4, :cond_56

    .line 1115
    return v3

    .line 1119
    :cond_56
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityDisplay;->isPrivate()Z

    move-result p1

    if-nez p1, :cond_5d

    .line 1123
    return v1

    .line 1127
    :cond_5d
    if-ne v5, p2, :cond_60

    .line 1130
    return v1

    .line 1133
    :cond_60
    if-eqz v4, :cond_63

    .line 1136
    return v1

    .line 1139
    :cond_63
    const-string p1, "Launch on display check: denied"

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    return v3

    .line 1083
    :cond_69
    :goto_69
    const-string p1, "Launch on display check: display not found"

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    return v3
.end method

.method isCurrentProfileLocked(I)Z
    .registers 3

    .line 2113
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v0, v0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    if-ne p1, v0, :cond_8

    const/4 p1, 0x1

    return p1

    .line 2114
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->isCurrentProfile(I)Z

    move-result p1

    return p1
.end method

.method isStoppingNoHistoryActivity()Z
    .registers 3

    .line 2125
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 2126
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isNoHistory()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2127
    const/4 v0, 0x1

    return v0

    .line 2129
    :cond_1a
    goto :goto_6

    .line 2131
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$activityIdleInternalLocked$0$ActivityStackSupervisor()V
    .registers 2

    .line 1369
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->trimApplications()V

    return-void
.end method

.method public synthetic lambda$moveTasksToFullscreenStackLocked$1$ActivityStackSupervisor(Lcom/android/server/wm/ActivityStack;IZ)V
    .registers 4

    .line 1572
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityStackSupervisor;->moveTasksToFullscreenStackInSurfaceTransaction(Lcom/android/server/wm/ActivityStack;IZ)V

    return-void
.end method

.method public synthetic lambda$removeStack$2$ActivityStackSupervisor(Lcom/android/server/wm/ActivityStack;)V
    .registers 2

    .line 1770
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeStackInSurfaceTransaction(Lcom/android/server/wm/ActivityStack;)V

    return-void
.end method

.method logStackState()V
    .registers 2

    .line 2505
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityMetricsLogger;->logWindowState()V

    .line 2506
    return-void
.end method

.method moveRecentsStackToFront(Ljava/lang/String;)V
    .registers 5

    .line 515
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityDisplay;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 517
    if-eqz v0, :cond_11

    .line 518
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 520
    :cond_11
    return-void
.end method

.method moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;IZ)V
    .registers 6

    .line 1571
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$PHIj4FpzoLIwUTmMRMOYA9us0rc;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$PHIj4FpzoLIwUTmMRMOYA9us0rc;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStack;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 1573
    return-void
.end method

.method moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;Z)V
    .registers 4

    .line 1567
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;IZ)V

    .line 1568
    return-void
.end method

.method notifyAppTransitionDone()V
    .registers 5

    .line 1477
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->continueUpdateRecentsHomeStackBounds()V

    .line 1478
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_b
    if-ltz v0, :cond_28

    .line 1479
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1480
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 1481
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    .line 1482
    if-eqz v1, :cond_25

    .line 1483
    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskRecord;->setTaskDockedResizing(Z)V

    .line 1478
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 1486
    :cond_28
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1487
    return-void
.end method

.method public onRecentTaskAdded(Lcom/android/server/wm/TaskRecord;)V
    .registers 2

    .line 1913
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->touchActiveTime()V

    .line 1914
    return-void
.end method

.method public onRecentTaskRemoved(Lcom/android/server/wm/TaskRecord;ZZ)V
    .registers 10

    .line 1918
    if-eqz p2, :cond_19

    .line 1921
    iget v1, p1, Lcom/android/server/wm/TaskRecord;->taskId:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "recent-task-trimmed"

    move-object v0, p0

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTaskByIdLocked(IZZZLjava/lang/String;)Z

    move-result p2

    .line 1926
    if-nez p2, :cond_19

    .line 1927
    iget-object p2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 1930
    :cond_19
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->removedFromRecents()V

    .line 1931
    return-void
.end method

.method onSystemReady()V
    .registers 2

    .line 460
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v0}, Lcom/android/server/wm/LaunchParamsPersister;->onSystemReady()V

    .line 461
    return-void
.end method

.method onUserUnlocked(I)V
    .registers 3

    .line 467
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-virtual {v0}, Lcom/android/server/wm/PersisterQueue;->startPersisting()V

    .line 468
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->onUnlockUser(I)V

    .line 469
    return-void
.end method

.method final processStoppingActivitiesLocked(Lcom/android/server/wm/ActivityRecord;ZZ)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/ActivityRecord;",
            "ZZ)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation

    .line 2136
    nop

    .line 2138
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->allResumedActivitiesVisible()Z

    move-result v0

    .line 2139
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_10
    if-ltz v1, :cond_64

    .line 2140
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 2142
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v4

    .line 2146
    if-eqz v0, :cond_2a

    iget-boolean v5, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_2a

    .line 2154
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 2156
    :cond_2a
    if-eqz p2, :cond_61

    .line 2157
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 2158
    if-eqz v5, :cond_37

    .line 2159
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v5

    goto :goto_3d

    .line 2160
    :cond_37
    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v5

    .line 2161
    :goto_3d
    if-eqz v4, :cond_41

    if-eqz v5, :cond_61

    .line 2162
    :cond_41
    if-nez p3, :cond_52

    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 2165
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 2166
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 2167
    goto :goto_61

    .line 2171
    :cond_52
    if-nez v2, :cond_59

    .line 2172
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2174
    :cond_59
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2176
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2139
    :cond_61
    :goto_61
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 2181
    :cond_64
    return-object v2
.end method

.method readyToResume()Z
    .registers 2

    .line 2586
    iget v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDeferResumeCount:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method realStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;ZZ)Z
    .registers 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 723
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->allPausedActivitiesComplete()Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_10

    .line 730
    return v4

    .line 733
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 734
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 736
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->beginDeferResume()V

    .line 739
    :try_start_1b
    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/wm/WindowProcessController;I)V

    .line 742
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->startLaunchTickingLocked()V

    .line 744
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/wm/ActivityRecord;->setProcess(Lcom/android/server/wm/WindowProcessController;)V

    .line 747
    if-eqz p3, :cond_2e

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->canResumeByCompat()Z

    move-result v6

    if-nez v6, :cond_2e

    .line 748
    move v6, v4

    goto :goto_30

    .line 751
    :cond_2e
    move/from16 v6, p3

    :goto_30
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 752
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->notifyUnknownVisibilityLaunched()V

    .line 759
    :cond_3d
    const/4 v7, 0x1

    if-eqz p4, :cond_49

    .line 763
    iget-object v8, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v9

    invoke-virtual {v8, v2, v9, v4, v7}, Lcom/android/server/wm/RootActivityContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    .line 767
    :cond_49
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v8

    invoke-virtual {v8, v2, v7, v7}, Lcom/android/server/wm/ActivityStack;->checkKeyguardVisibility(Lcom/android/server/wm/ActivityRecord;ZZ)Z

    move-result v8

    if-eqz v8, :cond_56

    .line 774
    invoke-virtual {v2, v7}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 778
    :cond_56
    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_63

    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_64

    :cond_63
    const/4 v8, -0x1

    .line 779
    :goto_64
    iget v9, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v10, v3, Lcom/android/server/wm/WindowProcessController;->mUserId:I
    :try_end_68
    .catchall {:try_start_1b .. :try_end_68} :catchall_2d8

    const-string v11, "ActivityTaskManager"

    if-ne v9, v10, :cond_72

    :try_start_6c
    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v9, v8, :cond_ac

    .line 780
    :cond_72
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "User ID for activity changing for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " appInfo.uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " info.ai.uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " old="

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " new="

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_ac
    iget v8, v2, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    add-int/2addr v8, v7

    iput v8, v2, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    .line 788
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    .line 792
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowProcessController;->addActivityIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 794
    iget-object v8, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v8

    .line 795
    iget v9, v0, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    const/4 v10, 0x3

    const/4 v12, 0x4

    const/4 v13, 0x2

    if-eq v9, v13, :cond_d5

    iget v9, v0, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    if-eq v9, v12, :cond_d5

    iget v9, v0, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    if-ne v9, v10, :cond_d8

    .line 798
    invoke-virtual {v8}, Lcom/android/server/wm/LockTaskController;->getLockTaskModeState()I

    move-result v9

    if-ne v9, v7, :cond_d8

    .line 800
    :cond_d5
    invoke-virtual {v8, v0, v4, v4}, Lcom/android/server/wm/LockTaskController;->startLockTaskMode(Lcom/android/server/wm/TaskRecord;ZI)V
    :try_end_d8
    .catchall {:try_start_6c .. :try_end_d8} :catchall_2d8

    .line 804
    :cond_d8
    :try_start_d8
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v8

    if-eqz v8, :cond_28b

    .line 807
    nop

    .line 808
    nop

    .line 809
    const/4 v8, 0x0

    if-eqz v6, :cond_ec

    .line 812
    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 813
    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    goto :goto_f0

    .line 809
    :cond_ec
    move-object/from16 v25, v8

    move-object/from16 v26, v25

    .line 818
    :goto_f0
    const/16 v8, 0x7536

    new-array v9, v12, [Ljava/lang/Object;

    iget v12, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v4

    .line 819
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v7

    iget v12, v0, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v9, v13

    iget-object v12, v2, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v12, v9, v10

    .line 818
    invoke-static {v8, v9}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 820
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v8

    if-eqz v8, :cond_128

    .line 822
    iget-object v8, v0, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, v8}, Lcom/android/server/wm/ActivityStackSupervisor;->updateHomeProcess(Lcom/android/server/wm/WindowProcessController;)V

    .line 824
    :cond_128
    iget-object v8, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v8

    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 825
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 824
    invoke-virtual {v8, v9, v4}, Landroid/content/pm/PackageManagerInternal;->notifyPackageUse(Ljava/lang/String;I)V

    .line 826
    iput-boolean v4, v2, Lcom/android/server/wm/ActivityRecord;->sleeping:Z

    .line 827
    iput-boolean v4, v2, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    .line 828
    iget-object v8, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppWarningsLocked()Lcom/android/server/wm/AppWarnings;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/android/server/wm/AppWarnings;->onStartActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 829
    iget-object v8, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v9}, Lcom/android/server/wm/ActivityTaskManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v8

    iput-object v8, v2, Lcom/android/server/wm/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    .line 835
    new-instance v8, Landroid/util/MergedConfiguration;

    .line 836
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 837
    invoke-virtual {v2, v8}, Lcom/android/server/wm/ActivityRecord;->setLastReportedConfiguration(Landroid/util/MergedConfiguration;)V

    .line 839
    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v10, v2, Lcom/android/server/wm/ActivityRecord;->icicle:Landroid/os/Bundle;

    invoke-direct {v1, v9, v10}, Lcom/android/server/wm/ActivityStackSupervisor;->logIfTransactionTooLarge(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 843
    nop

    .line 844
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v9

    iget-object v10, v2, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 843
    invoke-static {v9, v10}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v9

    .line 846
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 847
    new-instance v14, Landroid/content/Intent;

    iget-object v12, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v14, v12}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 848
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v15

    iget-object v12, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 851
    invoke-virtual {v8}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    .line 852
    invoke-virtual {v8}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/wm/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 853
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->getReportedProcState()I

    move-result v22

    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->icicle:Landroid/os/Bundle;

    iget-object v13, v2, Lcom/android/server/wm/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 855
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    move-result v27

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->createProfilerInfoIfNeeded()Landroid/app/ProfilerInfo;

    move-result-object v28
    :try_end_1a7
    .catch Landroid/os/RemoteException; {:try_start_d8 .. :try_end_1a7} :catch_294
    .catchall {:try_start_d8 .. :try_end_1a7} :catchall_2d8

    move-object/from16 v30, v5

    :try_start_1a9
    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->assistToken:Landroid/os/Binder;

    .line 847
    move-object/from16 v16, v12

    move-object/from16 v19, v8

    move-object/from16 v20, v7

    move-object/from16 v21, v0

    move-object/from16 v23, v4

    move-object/from16 v24, v13

    move-object/from16 v29, v5

    invoke-static/range {v14 .. v29}, Landroid/app/servertransaction/LaunchActivityItem;->obtain(Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZLandroid/app/ProfilerInfo;Landroid/os/IBinder;)Landroid/app/servertransaction/LaunchActivityItem;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 860
    if-eqz v6, :cond_1cb

    .line 861
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    move-result v0

    invoke-static {v0}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(Z)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v0

    goto :goto_1cf

    .line 863
    :cond_1cb
    invoke-static {}, Landroid/app/servertransaction/PauseActivityItem;->obtain()Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v0

    .line 865
    :goto_1cf
    invoke-virtual {v9, v0}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 868
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 870
    iget-object v0, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/4 v4, 0x2

    and-int/2addr v0, v4

    if-eqz v0, :cond_226

    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHasHeavyWeightFeature:Z

    if-eqz v0, :cond_226

    .line 875
    iget-object v0, v3, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget-object v4, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_226

    .line 876
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_221

    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eq v0, v3, :cond_221

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting new heavy weight process "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " when already running "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_221
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->setHeavyWeightProcess(Lcom/android/server/wm/ActivityRecord;)V
    :try_end_226
    .catch Landroid/os/RemoteException; {:try_start_1a9 .. :try_end_226} :catch_287
    .catchall {:try_start_1a9 .. :try_end_226} :catchall_2d8

    .line 902
    :cond_226
    nop

    .line 904
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->endDeferResume()V

    .line 905
    nop

    .line 907
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    .line 908
    move-object/from16 v4, v30

    invoke-virtual {v4, v2}, Lcom/android/server/wm/ActivityStack;->updateLRUListLocked(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_24f

    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " being launched, but already in LRU list"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_24f
    if-eqz v6, :cond_25b

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->readyToResume()Z

    move-result v0

    if-eqz v0, :cond_25b

    .line 917
    invoke-virtual {v4, v2}, Lcom/android/server/wm/ActivityStack;->minimalResumeActivityLocked(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_262

    .line 924
    :cond_25b
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v5, "realStartActivityLocked"

    invoke-virtual {v2, v0, v5}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 928
    :goto_262
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v0, v5}, Lcom/android/server/wm/WindowProcessController;->onStartActivity(ILandroid/content/pm/ActivityInfo;)V

    .line 934
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/RootActivityContainer;->isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v0

    if-eqz v0, :cond_27c

    .line 935
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStartController;->startSetupActivity()V

    .line 940
    :cond_27c
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_285

    .line 941
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->updateServiceConnectionActivities()V

    .line 944
    :cond_285
    const/4 v1, 0x1

    return v1

    .line 886
    :catch_287
    move-exception v0

    move-object/from16 v4, v30

    goto :goto_296

    .line 805
    :cond_28b
    move-object v4, v5

    :try_start_28c
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
    :try_end_292
    .catch Landroid/os/RemoteException; {:try_start_28c .. :try_end_292} :catch_292
    .catchall {:try_start_28c .. :try_end_292} :catchall_2d8

    .line 886
    :catch_292
    move-exception v0

    goto :goto_296

    :catch_294
    move-exception v0

    move-object v4, v5

    .line 887
    :goto_296
    :try_start_296
    iget-boolean v5, v2, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    if-eqz v5, :cond_2d1

    .line 889
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Second failure launching "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 890
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", giving up"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 889
    invoke-static {v11, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 891
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->appDied()V

    .line 892
    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "2nd-crash"

    const/4 v10, 0x0

    move-object v5, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    :try_end_2cb
    .catchall {:try_start_296 .. :try_end_2cb} :catchall_2d8

    .line 894
    nop

    .line 904
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->endDeferResume()V

    .line 894
    const/4 v1, 0x0

    return v1

    .line 899
    :cond_2d1
    const/4 v4, 0x1

    :try_start_2d2
    iput-boolean v4, v2, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    .line 900
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowProcessController;->removeActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 901
    throw v0
    :try_end_2d8
    .catchall {:try_start_2d2 .. :try_end_2d8} :catchall_2d8

    .line 904
    :catchall_2d8
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->endDeferResume()V

    throw v0
.end method

.method removeRestartTimeouts(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 2396
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd5

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2397
    return-void
.end method

.method removeSleepTimeouts()V
    .registers 3

    .line 2387
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 2388
    return-void
.end method

.method removeStack(Lcom/android/server/wm/ActivityStack;)V
    .registers 4

    .line 1770
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$0u1RcpeZ6m0BHDGGv8EXroS3KyE;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$0u1RcpeZ6m0BHDGGv8EXroS3KyE;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStack;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 1771
    return-void
.end method

.method removeTaskByIdLocked(IZZLjava/lang/String;)Z
    .registers 11

    .line 1778
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTaskByIdLocked(IZZZLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method removeTaskByIdLocked(IZZZLjava/lang/String;)Z
    .registers 8

    .line 1794
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 1795
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 1796
    if-eqz v0, :cond_2c

    .line 1797
    invoke-virtual {v0, p4, p5}, Lcom/android/server/wm/TaskRecord;->removeTaskActivitiesLocked(ZLjava/lang/String;)V

    .line 1798
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/wm/ActivityStackSupervisor;->cleanUpRemovedTaskLocked(Lcom/android/server/wm/TaskRecord;ZZ)V

    .line 1799
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/TaskRecord;)V

    .line 1800
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 1801
    iget-boolean p1, v0, Lcom/android/server/wm/TaskRecord;->isPersistable:Z

    if-eqz p1, :cond_2b

    .line 1802
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 1804
    :cond_2b
    return v1

    .line 1806
    :cond_2c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Request to remove task ignored for non-existent task "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityTaskManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    const/4 p1, 0x0

    return p1
.end method

.method removeTimeoutsForActivityLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 2377
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2378
    return-void
.end method

.method reportActivityLaunchedLocked(ZLcom/android/server/wm/ActivityRecord;JI)V
    .registers 12

    .line 624
    nop

    .line 625
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_a
    if-ltz v0, :cond_34

    .line 626
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WaitResult;

    .line 627
    iget-object v4, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-nez v4, :cond_31

    .line 628
    nop

    .line 629
    iput-boolean p1, v3, Landroid/app/WaitResult;->timeout:Z

    .line 630
    if-eqz p2, :cond_2c

    .line 631
    new-instance v2, Landroid/content/ComponentName;

    iget-object v4, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 633
    :cond_2c
    iput-wide p3, v3, Landroid/app/WaitResult;->totalTime:J

    .line 634
    iput p5, v3, Landroid/app/WaitResult;->launchState:I

    move v2, v1

    .line 625
    :cond_31
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 638
    :cond_34
    if-eqz v2, :cond_3d

    .line 639
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 641
    :cond_3d
    return-void
.end method

.method reportResumedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 2076
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2078
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    .line 2079
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityDisplay;->allResumedActivitiesComplete()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_21

    .line 2080
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v0}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 2083
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootActivityContainer;->executeAppTransitionForAllDisplay()V

    .line 2084
    const/4 p1, 0x1

    return p1

    .line 2086
    :cond_21
    return v0
.end method

.method reportWaitingActivityLaunchedIfNeeded(Lcom/android/server/wm/ActivityRecord;I)V
    .registers 9

    .line 593
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 594
    return-void

    .line 597
    :cond_9
    const/4 v0, 0x3

    if-eq p2, v0, :cond_10

    const/4 v1, 0x2

    if-eq p2, v1, :cond_10

    .line 598
    return-void

    .line 601
    :cond_10
    const/4 v1, 0x0

    .line 603
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_19
    if-ltz v2, :cond_34

    .line 604
    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/WaitResult;

    .line 605
    iget-object v5, v4, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-nez v5, :cond_31

    .line 606
    nop

    .line 607
    iput p2, v4, Landroid/app/WaitResult;->result:I

    .line 611
    if-ne p2, v0, :cond_30

    .line 612
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v1, v4, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 603
    :cond_30
    move v1, v3

    :cond_31
    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    .line 617
    :cond_34
    if-eqz v1, :cond_3d

    .line 618
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 620
    :cond_3d
    return-void
.end method

.method resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 15

    .line 1600
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 1603
    return-void
.end method

.method resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .registers 27

    .line 1609
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-boolean v2, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    if-nez v2, :cond_9

    .line 1611
    return-void

    .line 1614
    :cond_9
    iget-object v2, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 1615
    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1616
    if-nez v2, :cond_1d

    .line 1617
    const-string v0, "ActivityTaskManager"

    const-string v1, "resizeDockedStackLocked: docked stack not found"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    return-void

    .line 1621
    :cond_1d
    iget-boolean v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mDockedStackResizing:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_42

    .line 1622
    iput-boolean v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mHasPendingDockedBounds:Z

    .line 1623
    invoke-static/range {p1 .. p1}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingDockedBounds:Landroid/graphics/Rect;

    .line 1624
    invoke-static/range {p2 .. p2}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempDockedTaskBounds:Landroid/graphics/Rect;

    .line 1625
    invoke-static/range {p3 .. p3}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempDockedTaskInsetBounds:Landroid/graphics/Rect;

    .line 1626
    invoke-static/range {p4 .. p4}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempOtherTaskBounds:Landroid/graphics/Rect;

    .line 1627
    invoke-static/range {p5 .. p5}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempOtherTaskInsetBounds:Landroid/graphics/Rect;

    .line 1630
    :cond_42
    const-wide/16 v5, 0x40

    const-string v3, "am.resizeDockedStack"

    invoke-static {v5, v6, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1631
    iget-object v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 1634
    const/4 v3, 0x0

    :try_start_4f
    iput-boolean v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 1635
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1636
    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-virtual {v2, v0, v7, v8}, Lcom/android/server/wm/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1640
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v7

    const/4 v8, 0x0

    if-eq v7, v4, :cond_ca

    if-nez v0, :cond_6d

    .line 1641
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v7

    if-nez v7, :cond_6d

    goto/16 :goto_ca

    .line 1654
    :cond_6d
    iget-object v7, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v7}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v7

    .line 1655
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 1656
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v10

    sub-int/2addr v10, v4

    :goto_7d
    if-ltz v10, :cond_c8

    .line 1657
    invoke-virtual {v7, v10}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v12

    .line 1658
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v11

    if-nez v11, :cond_8a

    .line 1659
    goto :goto_c5

    .line 1661
    :cond_8a
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityStack;->affectedBySplitScreenResize()Z

    move-result v11

    if-nez v11, :cond_91

    .line 1662
    goto :goto_c5

    .line 1664
    :cond_91
    iget-boolean v11, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mDockedStackResizing:Z

    if-eqz v11, :cond_9c

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityStack;->isTopActivityVisible()Z

    move-result v11

    if-nez v11, :cond_9c

    .line 1667
    goto :goto_c5

    .line 1669
    :cond_9c
    iget-object v11, v1, Lcom/android/server/wm/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    move-object/from16 v15, p4

    invoke-virtual {v12, v0, v15, v11, v9}, Lcom/android/server/wm/ActivityStack;->getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1674
    iget-object v11, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 1675
    iget-object v13, v1, Lcom/android/server/wm/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_b0

    iget-object v13, v1, Lcom/android/server/wm/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    goto :goto_b1

    :cond_b0
    move-object v13, v8

    .line 1676
    :goto_b1
    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_b9

    move-object v14, v9

    goto :goto_ba

    :cond_b9
    move-object v14, v15

    :goto_ba
    const/16 v17, 0x1

    .line 1674
    move-object/from16 v15, p5

    move/from16 v16, p6

    move/from16 v18, p7

    invoke-virtual/range {v11 .. v18}, Lcom/android/server/wm/RootActivityContainer;->resizeStack(Lcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    .line 1656
    :goto_c5
    add-int/lit8 v10, v10, -0x1

    goto :goto_7d

    :cond_c8
    move-object v8, v3

    goto :goto_ce

    .line 1645
    :cond_ca
    :goto_ca
    invoke-virtual {v1, v2, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;Z)V

    .line 1648
    nop

    .line 1681
    :goto_ce
    if-nez p7, :cond_d5

    .line 1682
    move/from16 v0, p6

    invoke-virtual {v2, v8, v0}, Lcom/android/server/wm/ActivityStack;->ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/wm/ActivityRecord;Z)V
    :try_end_d5
    .catchall {:try_start_4f .. :try_end_d5} :catchall_e1

    .line 1685
    :cond_d5
    iput-boolean v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 1686
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1687
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1688
    nop

    .line 1689
    return-void

    .line 1685
    :catchall_e1
    move-exception v0

    iput-boolean v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 1686
    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1687
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method resizePinnedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 10

    .line 1693
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 1694
    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getPinnedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1695
    if-nez v0, :cond_14

    .line 1696
    const-string p1, "ActivityTaskManager"

    const-string p2, "resizePinnedStackLocked: pinned stack not found"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    return-void

    .line 1704
    :cond_14
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 1705
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->pinnedStackResizeDisallowed()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1706
    return-void

    .line 1709
    :cond_1f
    const-wide/16 v1, 0x40

    const-string v3, "am.resizePinnedStack"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1710
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 1712
    :try_start_2b
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1713
    const/4 v4, 0x0

    .line 1714
    const/4 v5, 0x0

    if-eqz p2, :cond_4b

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isAnimatingBoundsToFullscreen()Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 1716
    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    .line 1717
    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1718
    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 1719
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->right:I

    .line 1720
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 1722
    :cond_4b
    if-eqz p1, :cond_52

    if-nez p2, :cond_52

    .line 1726
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->onPipAnimationEndResize()V

    .line 1728
    :cond_52
    invoke-virtual {v0, p1, p2, v4}, Lcom/android/server/wm/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1729
    invoke-virtual {v0, v3, v5}, Lcom/android/server/wm/ActivityStack;->ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/wm/ActivityRecord;Z)V
    :try_end_58
    .catchall {:try_start_2b .. :try_end_58} :catchall_62

    .line 1731
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1732
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1733
    nop

    .line 1734
    return-void

    .line 1731
    :catchall_62
    move-exception p1

    iget-object p2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1732
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;
    .registers 12

    .line 645
    if-eqz p2, :cond_5

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_6

    :cond_5
    const/4 p2, 0x0

    .line 646
    :goto_6
    if-eqz p2, :cond_69

    .line 651
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 655
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 656
    and-int/lit8 v0, p3, 0xe

    if-nez v0, :cond_26

    if-eqz p4, :cond_5d

    .line 663
    :cond_26
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v6

    :try_start_2b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 665
    sget-object v0, Lcom/android/server/wm/-$$Lambda$8ew6SY_v_7ex9pwFGDswbkGWuXc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$8ew6SY_v_7ex9pwFGDswbkGWuXc;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 667
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object p3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 665
    move-object v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    .line 669
    iget-object p4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p4, p4, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p4, p3}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_49
    .catchall {:try_start_2b .. :try_end_49} :catchall_57

    .line 671
    :try_start_49
    iget-object p3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {p3}, Ljava/lang/Object;->wait()V
    :try_end_50
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_50} :catch_51
    .catchall {:try_start_49 .. :try_end_50} :catchall_57

    .line 674
    goto :goto_52

    .line 672
    :catch_51
    move-exception p3

    .line 675
    :goto_52
    :try_start_52
    monitor-exit v6
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_57

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_5d

    :catchall_57
    move-exception p1

    :try_start_58
    monitor-exit v6
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 678
    :cond_5d
    :goto_5d
    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchToken()Ljava/lang/String;

    move-result-object p1

    .line 679
    iget-object p3, p2, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    if-nez p3, :cond_69

    if-eqz p1, :cond_69

    .line 680
    iput-object p1, p2, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    .line 683
    :cond_69
    return-object p2
.end method

.method resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;
    .registers 13

    .line 716
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    .line 717
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    return-object p1
.end method

.method resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;
    .registers 18

    .line 689
    const-wide/16 v1, 0x40

    :try_start_2
    const-string v0, "resolveIntent"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 690
    const/high16 v0, 0x10000

    or-int v0, p4, v0

    or-int/lit16 v0, v0, 0x400

    .line 692
    invoke-virtual {p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 693
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_1c

    goto :goto_1e

    :cond_1c
    move v6, v0

    goto :goto_22

    .line 694
    :cond_1e
    :goto_1e
    const/high16 v3, 0x800000

    or-int/2addr v0, v3

    move v6, v0

    .line 702
    :goto_22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10
    :try_end_26
    .catchall {:try_start_2 .. :try_end_26} :catchall_43

    .line 704
    move-object v0, p0

    :try_start_27
    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    const/4 v8, 0x1

    move-object v4, p1

    move-object v5, p2

    move v7, p3

    move/from16 v9, p5

    invoke-virtual/range {v3 .. v9}, Landroid/content/pm/PackageManagerInternal;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIZI)Landroid/content/pm/ResolveInfo;

    move-result-object v0
    :try_end_37
    .catchall {:try_start_27 .. :try_end_37} :catchall_3e

    .line 707
    :try_start_37
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_43

    .line 710
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 704
    return-object v0

    .line 707
    :catchall_3e
    move-exception v0

    :try_start_3f
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_43

    .line 710
    :catchall_43
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method restoreRecentTaskLocked(Lcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;Z)Z
    .registers 7

    .line 1885
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 1886
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p1, p3}, Lcom/android/server/wm/RootActivityContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object p2

    .line 1887
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1888
    const/4 v1, 0x1

    if-eqz v0, :cond_16

    .line 1890
    if-ne v0, p2, :cond_11

    .line 1892
    return v1

    .line 1896
    :cond_11
    const-string v2, "restoreRecentTaskLocked"

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/server/wm/ActivityStack;->removeTask(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;I)V

    .line 1899
    :cond_16
    const-string v0, "restoreRecentTask"

    invoke-virtual {p2, p1, p3, v0}, Lcom/android/server/wm/ActivityStack;->addTask(Lcom/android/server/wm/TaskRecord;ZLjava/lang/String;)V

    .line 1901
    invoke-virtual {p1, p3, v1}, Lcom/android/server/wm/TaskRecord;->createTask(ZZ)V

    .line 1904
    iget-object p1, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1905
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    :goto_25
    if-ltz p2, :cond_33

    .line 1906
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->createAppWindowToken()V

    .line 1905
    add-int/lit8 p2, p2, -0x1

    goto :goto_25

    .line 1908
    :cond_33
    return v1
.end method

.method final scheduleIdleLocked()V
    .registers 3

    .line 2304
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 2305
    return-void
.end method

.method scheduleIdleTimeoutLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 2299
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2300
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2301
    return-void
.end method

.method scheduleLaunchTaskBehindComplete(Landroid/os/IBinder;)V
    .registers 4

    .line 2108
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd4

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2109
    return-void
.end method

.method final scheduleRestartTimeout(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 2400
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeRestartTimeouts(Lcom/android/server/wm/ActivityRecord;)V

    .line 2401
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd5

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2403
    return-void
.end method

.method final scheduleResumeTopActivities()V
    .registers 3

    .line 2381
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2382
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 2384
    :cond_f
    return-void
.end method

.method final scheduleSleepTimeout()V
    .registers 5

    .line 2391
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 2392
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xcb

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2393
    return-void
.end method

.method scheduleUpdateMultiWindowMode(Lcom/android/server/wm/TaskRecord;)V
    .registers 5

    .line 2511
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->deferScheduleMultiWindowModeChanged()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2512
    return-void

    .line 2515
    :cond_b
    iget-object v0, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_13
    if-ltz v0, :cond_2b

    .line 2516
    iget-object v1, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 2517
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 2518
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2515
    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 2522
    :cond_2b
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v0, 0xd6

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_3a

    .line 2523
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 2525
    :cond_3a
    return-void
.end method

.method scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/TaskRecord;Landroid/graphics/Rect;)V
    .registers 6

    .line 2538
    iget-object v0, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_25

    .line 2539
    iget-object v1, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 2540
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2541
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2545
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2538
    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2548
    :cond_25
    iput-object p2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPipModeChangedTargetStackBounds:Landroid/graphics/Rect;

    .line 2550
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 p2, 0xd7

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_36

    .line 2551
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 2553
    :cond_36
    return-void
.end method

.method scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityStack;)V
    .registers 4

    .line 2528
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2529
    if-eqz p2, :cond_1d

    if-eq p2, v0, :cond_1d

    .line 2530
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result p2

    if-nez p2, :cond_15

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result p2

    if-nez p2, :cond_15

    goto :goto_1d

    .line 2534
    :cond_15
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/TaskRecord;Landroid/graphics/Rect;)V

    .line 2535
    return-void

    .line 2531
    :cond_1d
    :goto_1d
    return-void
.end method

.method setLaunchSource(I)V
    .registers 4

    .line 1221
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1222
    return-void
.end method

.method setNextTaskIdForUserLocked(II)V
    .registers 5

    .line 523
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 524
    if-le p1, v0, :cond_e

    .line 525
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 527
    :cond_e
    return-void
.end method

.method setRecentTasks(Lcom/android/server/wm/RecentTasks;)V
    .registers 2

    .line 488
    iput-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 489
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/RecentTasks;->registerCallback(Lcom/android/server/wm/RecentTasks$Callbacks;)V

    .line 490
    return-void
.end method

.method setResizingDuringAnimation(Lcom/android/server/wm/TaskRecord;)V
    .registers 4

    .line 2713
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    iget v1, p1, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2714
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskRecord;->setTaskDockedResizing(Z)V

    .line 2715
    return-void
.end method

.method setSplitScreenResizing(Z)V
    .registers 9

    .line 1576
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDockedStackResizing:Z

    if-ne p1, v0, :cond_5

    .line 1577
    return-void

    .line 1580
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDockedStackResizing:Z

    .line 1581
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->setDockedStackResizing(Z)V

    .line 1583
    if-nez p1, :cond_2f

    iget-boolean p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHasPendingDockedBounds:Z

    if-eqz p1, :cond_2f

    .line 1584
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingDockedBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempDockedTaskBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempDockedTaskInsetBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempOtherTaskBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempOtherTaskInsetBounds:Landroid/graphics/Rect;

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 1588
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHasPendingDockedBounds:Z

    .line 1589
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingDockedBounds:Landroid/graphics/Rect;

    .line 1590
    iput-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempDockedTaskBounds:Landroid/graphics/Rect;

    .line 1591
    iput-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempDockedTaskInsetBounds:Landroid/graphics/Rect;

    .line 1592
    iput-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempOtherTaskBounds:Landroid/graphics/Rect;

    .line 1593
    iput-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempOtherTaskInsetBounds:Landroid/graphics/Rect;

    .line 1595
    :cond_2f
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3

    .line 510
    iput-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 511
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/KeyguardController;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 512
    return-void
.end method

.method shutdownLocked(I)Z
    .registers 10

    .line 2004
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->goingToSleepLocked()V

    .line 2006
    nop

    .line 2007
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 2009
    :goto_a
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v2}, Lcom/android/server/wm/RootActivityContainer;->putStacksToSleep(ZZ)Z

    move-result p1

    const/4 v3, 0x0

    if-nez p1, :cond_34

    .line 2011
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v0, v4

    .line 2012
    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-lez p1, :cond_2b

    .line 2014
    :try_start_20
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {p1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_27} :catch_28

    goto :goto_29

    .line 2015
    :catch_28
    move-exception p1

    .line 2016
    :goto_29
    nop

    .line 2022
    goto :goto_a

    .line 2018
    :cond_2b
    const-string p1, "ActivityTaskManager"

    const-string v0, "Activity manager shutdown timed out"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    nop

    .line 2020
    goto :goto_35

    .line 2009
    :cond_34
    move v2, v3

    .line 2028
    :goto_35
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 2030
    return v2
.end method

.method startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;)I
    .registers 32

    .line 2719
    move-object/from16 v1, p0

    move/from16 v0, p3

    move-object/from16 v13, p4

    .line 2723
    nop

    .line 2724
    nop

    .line 2725
    const/4 v2, 0x0

    if-eqz v13, :cond_10

    .line 2726
    invoke-virtual {v13, v1}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v3

    goto :goto_11

    .line 2727
    :cond_10
    move-object v3, v2

    .line 2728
    :goto_11
    const/4 v15, 0x0

    if-eqz v3, :cond_36

    .line 2729
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v4

    .line 2730
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v5

    .line 2731
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->freezeRecentTasksReordering()Z

    move-result v6

    if-eqz v6, :cond_32

    iget-object v6, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 2732
    move/from16 v7, p2

    invoke-virtual {v6, v7}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 2733
    iget-object v6, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v6}, Lcom/android/server/wm/RecentTasks;->setFreezeTaskListReordering()V

    goto :goto_34

    .line 2731
    :cond_32
    move/from16 v7, p2

    .line 2736
    :cond_34
    :goto_34
    move v14, v5

    goto :goto_3a

    .line 2728
    :cond_36
    move/from16 v7, p2

    move v4, v15

    move v14, v4

    .line 2736
    :goto_3a
    const-string v5, "startActivityFromRecents: Task "

    const/4 v9, 0x2

    if-eq v4, v9, :cond_1e7

    const/4 v12, 0x3

    if-eq v4, v12, :cond_1e7

    .line 2741
    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 2743
    const-string v11, "startActivityFromRecents: homeVisibleInSplitScreen"

    const/4 v10, 0x4

    if-ne v14, v12, :cond_5f

    .line 2744
    :try_start_4c
    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 2745
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getSplitScreenCreateMode()I

    move-result v6

    .line 2744
    invoke-virtual {v4, v6, v2}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateState(ILandroid/graphics/Rect;)V

    .line 2750
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->deferUpdateRecentsHomeStackBounds()V

    .line 2752
    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v6, 0x13

    invoke-virtual {v4, v6, v15}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    .line 2755
    :cond_5f
    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v6, 0x1

    invoke-virtual {v4, v0, v9, v3, v6}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/TaskRecord;

    move-result-object v8
    :try_end_66
    .catchall {:try_start_4c .. :try_end_66} :catchall_1b9

    .line 2757
    if-eqz v8, :cond_18f

    .line 2764
    if-eq v14, v12, :cond_75

    .line 2769
    :try_start_6a
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    const-string v2, "startActivityFromRecents"

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityDisplay;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 2775
    :cond_75
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v2, v8, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v0, v2}, Landroid/app/ActivityManagerInternal;->shouldConfirmCredentials(I)Z

    move-result v0
    :try_end_7f
    .catchall {:try_start_6a .. :try_end_7f} :catchall_18c

    if-nez v0, :cond_108

    .line 2776
    :try_start_81
    invoke-virtual {v8}, Lcom/android/server/wm/TaskRecord;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0
    :try_end_85
    .catchall {:try_start_81 .. :try_end_85} :catchall_104

    if-eqz v0, :cond_102

    .line 2777
    :try_start_87
    invoke-virtual {v8}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    .line 2779
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/wm/RootActivityContainer;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 2781
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    iget-object v2, v8, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;)V
    :try_end_97
    .catchall {:try_start_87 .. :try_end_97} :catchall_fa

    .line 2783
    :try_start_97
    iget-object v2, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v8, Lcom/android/server/wm/TaskRecord;->taskId:I
    :try_end_9d
    .catchall {:try_start_97 .. :try_end_9d} :catchall_ef

    const/4 v6, 0x0

    const/4 v0, 0x1

    move-object/from16 p1, v7

    move-object/from16 v7, p4

    move-object v13, v8

    move v8, v0

    :try_start_a5
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/ActivityTaskManagerService;->moveTaskToFrontLocked(Landroid/app/IApplicationThread;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;Z)V

    .line 2787
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->applyOptionsLocked()V
    :try_end_ab
    .catchall {:try_start_a5 .. :try_end_ab} :catchall_eb

    .line 2789
    :try_start_ab
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    move-object/from16 v2, p1

    invoke-virtual {v0, v9, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/wm/ActivityRecord;)V

    .line 2791
    nop

    .line 2793
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    .line 2794
    invoke-virtual {v13}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 2795
    invoke-virtual {v13}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2793
    invoke-virtual {v0, v2, v9, v3}, Lcom/android/server/wm/ActivityStartController;->postStartActivityProcessingForLastStarter(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityStack;)V
    :try_end_c4
    .catchall {:try_start_ab .. :try_end_c4} :catchall_f8

    .line 2796
    nop

    .line 2808
    if-ne v14, v12, :cond_e5

    .line 2812
    invoke-virtual {v1, v13}, Lcom/android/server/wm/ActivityStackSupervisor;->setResizingDuringAnimation(Lcom/android/server/wm/TaskRecord;)V

    .line 2814
    invoke-virtual {v13}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 2815
    nop

    .line 2816
    invoke-virtual {v0, v10}, Lcom/android/server/wm/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 2817
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_e5

    .line 2823
    invoke-virtual {v0, v11}, Lcom/android/server/wm/ActivityDisplay;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 2829
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v15}, Lcom/android/server/wm/WindowManagerService;->checkSplitScreenMinimizedChanged(Z)V

    .line 2832
    :cond_e5
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 2796
    return v9

    .line 2789
    :catchall_eb
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_f2

    :catchall_ef
    move-exception v0

    move-object v2, v7

    move-object v13, v8

    :goto_f2
    :try_start_f2
    iget-object v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    invoke-virtual {v3, v9, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/wm/ActivityRecord;)V

    throw v0
    :try_end_f8
    .catchall {:try_start_f2 .. :try_end_f8} :catchall_f8

    .line 2808
    :catchall_f8
    move-exception v0

    goto :goto_fc

    :catchall_fa
    move-exception v0

    move-object v13, v8

    :goto_fc
    move v4, v10

    move-object v6, v11

    move v3, v12

    move-object v2, v13

    goto/16 :goto_1bd

    .line 2776
    :cond_102
    move-object v9, v8

    goto :goto_109

    .line 2808
    :catchall_104
    move-exception v0

    move-object v9, v8

    goto/16 :goto_18a

    .line 2775
    :cond_108
    move-object v9, v8

    .line 2798
    :goto_109
    :try_start_109
    iget-object v6, v9, Lcom/android/server/wm/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 2799
    iget-object v0, v9, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    .line 2800
    const/high16 v2, 0x100000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2801
    iget v8, v9, Lcom/android/server/wm/TaskRecord;->userId:I

    .line 2802
    iget-object v2, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v2

    iget v3, v9, Lcom/android/server/wm/TaskRecord;->mCallingUid:I

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-string v24, "startActivityFromRecents"
    :try_end_128
    .catchall {:try_start_109 .. :try_end_128} :catchall_189

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object v7, v0

    move v0, v8

    move-object/from16 v8, v16

    move-object/from16 p1, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    move-object/from16 v25, v11

    move/from16 v11, v22

    move/from16 v12, v23

    move-object/from16 v13, p4

    move/from16 v26, v14

    move v14, v0

    move-object/from16 v15, p1

    move-object/from16 v16, v24

    :try_start_14b
    invoke-virtual/range {v2 .. v19}, Lcom/android/server/wm/ActivityStartController;->startActivityInPackage(IIILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0
    :try_end_14f
    .catchall {:try_start_14b .. :try_end_14f} :catchall_17e

    .line 2808
    move/from16 v15, v26

    const/4 v3, 0x3

    if-ne v15, v3, :cond_178

    .line 2812
    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->setResizingDuringAnimation(Lcom/android/server/wm/TaskRecord;)V

    .line 2814
    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    .line 2815
    nop

    .line 2816
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2817
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_178

    .line 2823
    move-object/from16 v6, v25

    invoke-virtual {v2, v6}, Lcom/android/server/wm/ActivityDisplay;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 2829
    iget-object v2, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/android/server/wm/WindowManagerService;->checkSplitScreenMinimizedChanged(Z)V

    .line 2832
    :cond_178
    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 2802
    return v0

    .line 2808
    :catchall_17e
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v6, v25

    move/from16 v15, v26

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v7, 0x0

    goto :goto_1bf

    :catchall_189
    move-exception v0

    :goto_18a
    move-object v2, v9

    goto :goto_1ba

    :catchall_18c
    move-exception v0

    move-object v2, v8

    goto :goto_1ba

    .line 2758
    :cond_18f
    move-object v2, v8

    move v4, v10

    move-object v6, v11

    move v3, v12

    move v7, v15

    move v15, v14

    :try_start_195
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->continueUpdateRecentsHomeStackBounds()V

    .line 2759
    iget-object v8, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 2760
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not found."

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1b7
    .catchall {:try_start_195 .. :try_end_1b7} :catchall_1b7

    .line 2808
    :catchall_1b7
    move-exception v0

    goto :goto_1bf

    :catchall_1b9
    move-exception v0

    :goto_1ba
    move v4, v10

    move-object v6, v11

    move v3, v12

    :goto_1bd
    move v7, v15

    move v15, v14

    :goto_1bf
    if-ne v15, v3, :cond_1e1

    if-eqz v2, :cond_1e1

    .line 2812
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->setResizingDuringAnimation(Lcom/android/server/wm/TaskRecord;)V

    .line 2814
    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    .line 2815
    nop

    .line 2816
    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2817
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_1e1

    .line 2823
    invoke-virtual {v2, v6}, Lcom/android/server/wm/ActivityDisplay;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 2829
    iget-object v2, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v7}, Lcom/android/server/wm/WindowManagerService;->checkSplitScreenMinimizedChanged(Z)V

    .line 2832
    :cond_1e1
    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0

    .line 2737
    :cond_1e7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " can\'t be launch in the home/recents stack."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method startSpecificActivityLocked(Lcom/android/server/wm/ActivityRecord;ZZ)V
    .registers 8

    .line 973
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 974
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 976
    nop

    .line 977
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 979
    :try_start_19
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/wm/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;ZZ)Z
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_1d

    .line 980
    return-void

    .line 981
    :catch_1d
    move-exception p3

    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when starting activity "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 983
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 982
    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v0, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 988
    move p3, v1

    goto :goto_41

    .line 994
    :cond_40
    move p3, v2

    :goto_41
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 995
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->notifyUnknownVisibilityLaunched()V

    .line 998
    :cond_4e
    if-eqz p2, :cond_57

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    move-result p2

    if-eqz p2, :cond_57

    goto :goto_58

    :cond_57
    move v1, v2

    .line 999
    :goto_58
    iget-object p2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v1, :cond_5f

    const-string v0, "top-activity"

    goto :goto_61

    :cond_5f
    const-string v0, "activity"

    :goto_61
    invoke-virtual {p2, p1, p3, v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->startProcessAsync(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V

    .line 1000
    return-void
.end method

.method stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;)V
    .registers 11

    .line 575
    nop

    .line 576
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ltz v0, :cond_3e

    .line 577
    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;

    .line 578
    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->matches(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 579
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->getResult()Landroid/app/WaitResult;

    move-result-object v3

    .line 580
    nop

    .line 581
    iput-boolean v2, v3, Landroid/app/WaitResult;->timeout:Z

    .line 582
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 583
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->getStartTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, v3, Landroid/app/WaitResult;->totalTime:J

    .line 584
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move v3, v1

    .line 576
    :cond_3b
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 587
    :cond_3e
    if-eqz v3, :cond_47

    .line 588
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 590
    :cond_47
    return-void
.end method

.method updateHomeProcess(Lcom/android/server/wm/WindowProcessController;)V
    .registers 4

    .line 948
    if-eqz p1, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-eq v0, p1, :cond_1b

    .line 949
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd8

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 950
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 952
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    .line 954
    :cond_1b
    return-void
.end method

.method updatePictureInPictureMode(Lcom/android/server/wm/TaskRecord;Landroid/graphics/Rect;Z)V
    .registers 7

    .line 2556
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd7

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 2557
    iget-object v0, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_f
    if-ltz v0, :cond_25

    .line 2558
    iget-object v1, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 2559
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2560
    invoke-virtual {v1, p2, p3}, Lcom/android/server/wm/ActivityRecord;->updatePictureInPictureMode(Landroid/graphics/Rect;Z)V

    .line 2557
    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 2563
    :cond_25
    return-void
.end method

.method updateTopResumedActivityIfNeeded()V
    .registers 6

    .line 2315
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2316
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2317
    if-eqz v1, :cond_2f

    iget-object v2, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v2, v0, :cond_f

    goto :goto_2f

    .line 2322
    :cond_f
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_19

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivityWaitingForPrev:Z

    if-nez v4, :cond_19

    move v4, v2

    goto :goto_1a

    :cond_19
    move v4, v3

    .line 2327
    :goto_1a
    if-eqz v4, :cond_27

    .line 2328
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->scheduleTopResumedActivityChanged(Z)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 2329
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleTopResumedStateLossTimeout(Lcom/android/server/wm/ActivityRecord;)V

    .line 2330
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivityWaitingForPrev:Z

    .line 2334
    :cond_27
    iget-object v0, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2335
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleTopResumedActivityStateIfNeeded()V

    .line 2336
    return-void

    .line 2318
    :cond_2f
    :goto_2f
    return-void
.end method

.method waitActivityVisible(Landroid/content/ComponentName;Landroid/app/WaitResult;J)V
    .registers 6

    .line 561
    new-instance v0, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;-><init>(Landroid/content/ComponentName;Landroid/app/WaitResult;J)V

    .line 562
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    return-void
.end method

.method wakeUp(Ljava/lang/String;)V
    .registers 7

    .line 2566
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.server.am:TURN_ON:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 2568
    return-void
.end method
