.class public Lcom/android/server/wm/ActivityStackSupervisor;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"

# interfaces
.implements Lcom/android/server/wm/RecentTasks$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityStackSupervisor$PreferredAppsTask;,
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

.field public static mIsPerfBoostAcquired:Z

.field public static mPerfHandle:I

.field public static mPerfSendTapHint:Z


# instance fields
.field private mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

.field private mAllowDockedStackResize:Z

.field mAppVisibilitiesChangedSinceLastPause:Z

.field mCurActivityPkgName:Ljava/lang/String;

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

.field public mPerfBoost:Landroid/util/BoostFramework;

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

.field public mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

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

.field private final mTmpOptions:Landroid/app/ActivityOptions;

.field private mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field private mTopResumedActivityWaitingForPrev:Z

.field mUserLeaving:Z

.field public mUxPerf:Landroid/util/BoostFramework;

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

    .line 207
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfSendTapHint:Z

    .line 208
    sput-boolean v0, Lcom/android/server/wm/ActivityStackSupervisor;->mIsPerfBoostAcquired:Z

    .line 209
    const/4 v0, -0x1

    sput v0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfHandle:I

    .line 252
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 256
    sget-object v0, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v1, "android.permission.CAMERA"

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p1, "service"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "looper"  # Landroid/os/Looper;

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    .line 211
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mUxPerf:Landroid/util/BoostFramework;

    .line 301
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    .line 355
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    .line 376
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    .line 377
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTmpOptions:Landroid/app/ActivityOptions;

    .line 410
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 3034
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurActivityPkgName:Ljava/lang/String;

    .line 461
    iput-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 462
    iput-object p2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLooper:Landroid/os/Looper;

    .line 463
    new-instance v0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    .line 467
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurActivityPkgName:Ljava/lang/String;

    .line 469
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p1, "x1"  # Lcom/android/server/wm/ActivityRecord;

    .line 180
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

    .line 1320
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v0

    .line 1321
    .local v0, "booting":Z
    const/4 v1, 0x0

    .line 1322
    .local v1, "enableScreen":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->setBooting(Z)V

    .line 1323
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1324
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->setBooted(Z)V

    .line 1325
    const/4 v1, 0x1

    .line 1327
    :cond_1c
    if-nez v0, :cond_20

    if-eqz v1, :cond_25

    .line 1328
    :cond_20
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->postFinishBooting(ZZ)V

    .line 1330
    :cond_25
    return v0
.end method

.method private continueUpdateRecentsHomeStackBounds()V
    .registers 3

    .line 1568
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootActivityContainer;->continueUpdateBounds(I)V

    .line 1569
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootActivityContainer;->continueUpdateBounds(I)V

    .line 1570
    return-void
.end method

.method private deferUpdateRecentsHomeStackBounds()V
    .registers 3

    .line 1563
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootActivityContainer;->deferUpdateBounds(I)V

    .line 1564
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootActivityContainer;->deferUpdateBounds(I)V

    .line 1565
    return-void
.end method

.method static dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Lcom/android/server/wm/TaskRecord;)Z
    .registers 29
    .param p0, "fd"  # Ljava/io/FileDescriptor;
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p3, "prefix"  # Ljava/lang/String;
    .param p4, "label"  # Ljava/lang/String;
    .param p5, "complete"  # Z
    .param p6, "brief"  # Z
    .param p7, "client"  # Z
    .param p8, "dumpPackage"  # Ljava/lang/String;
    .param p9, "needNL"  # Z
    .param p10, "header"  # Ljava/lang/String;
    .param p11, "lastTask"  # Lcom/android/server/wm/TaskRecord;
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

    .line 2343
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityRecord;>;"
    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p8

    const/4 v0, 0x0

    .line 2344
    .local v0, "innerPrefix":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2345
    .local v4, "args":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 2346
    .local v5, "printed":Z
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move/from16 v10, p9

    move-object v8, v0

    move-object v9, v4

    move-object/from16 v0, p10

    move-object/from16 v4, p11

    .end local p9  # "needNL":Z
    .end local p10  # "header":Ljava/lang/String;
    .end local p11  # "lastTask":Lcom/android/server/wm/TaskRecord;
    .local v0, "header":Ljava/lang/String;
    .local v4, "lastTask":Lcom/android/server/wm/TaskRecord;
    .local v6, "i":I
    .local v8, "innerPrefix":Ljava/lang/String;
    .local v9, "args":[Ljava/lang/String;
    .local v10, "needNL":Z
    :goto_17
    if-ltz v6, :cond_17d

    .line 2347
    move-object/from16 v11, p2

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/ActivityRecord;

    .line 2348
    .local v12, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_31

    iget-object v13, v12, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_31

    .line 2349
    move-object/from16 v7, p0

    move-object/from16 v15, p4

    goto/16 :goto_174

    .line 2351
    :cond_31
    const/4 v13, 0x0

    if-nez v8, :cond_47

    .line 2352
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "      "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2353
    new-array v9, v13, [Ljava/lang/String;

    .line 2355
    :cond_47
    const/4 v5, 0x1

    .line 2356
    if-nez p6, :cond_53

    if-nez p5, :cond_52

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->isInHistory()Z

    move-result v14

    if-nez v14, :cond_53

    :cond_52
    move v13, v7

    .line 2357
    .local v13, "full":Z
    :cond_53
    if-eqz v10, :cond_5b

    .line 2358
    const-string v14, ""

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2359
    const/4 v10, 0x0

    .line 2361
    :cond_5b
    if-eqz v0, :cond_63

    .line 2362
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2363
    const/4 v0, 0x0

    move-object v14, v0

    goto :goto_64

    .line 2361
    :cond_63
    move-object v14, v0

    .line 2365
    .end local v0  # "header":Ljava/lang/String;
    .local v14, "header":Ljava/lang/String;
    :goto_64
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    if-eq v4, v0, :cond_a9

    .line 2366
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    .line 2367
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2368
    const-string v0, "  "

    if-eqz v13, :cond_78

    const-string v15, "* "

    goto :goto_79

    :cond_78
    move-object v15, v0

    :goto_79
    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2369
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2370
    if-eqz v13, :cond_94

    .line 2371
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lcom/android/server/wm/TaskRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_a9

    .line 2372
    :cond_94
    if-eqz p5, :cond_a9

    .line 2374
    iget-object v15, v4, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v15, :cond_a9

    .line 2375
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2376
    iget-object v0, v4, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->toInsecureStringWithClip()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2380
    :cond_a9
    :goto_a9
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v13, :cond_b1

    const-string v0, "  * "

    goto :goto_b3

    :cond_b1
    const-string v0, "    "

    :goto_b3
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v15, p4

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2381
    const-string v0, " #"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2382
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2383
    if-eqz v13, :cond_d1

    .line 2384
    invoke-virtual {v12, v1, v8}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_eb

    .line 2385
    :cond_d1
    if-eqz p5, :cond_eb

    .line 2387
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v12, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2388
    iget-object v0, v12, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_eb

    .line 2389
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v12, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2392
    :cond_eb
    :goto_eb
    if-eqz p7, :cond_16d

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_16d

    .line 2395
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->flush()V

    .line 2397
    :try_start_f6
    new-instance v0, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v0}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_fb
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_fb} :catch_14a
    .catch Landroid/os/RemoteException; {:try_start_f6 .. :try_end_fb} :catch_130

    move-object/from16 p9, v0

    .line 2399
    .local p9, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_fd
    iget-object v0, v12, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    .line 2400
    invoke-virtual/range {p9 .. p9}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    iget-object v2, v12, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 2399
    invoke-interface {v0, v7, v2, v8, v9}, Landroid/app/IApplicationThread;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_10c
    .catchall {:try_start_fd .. :try_end_10c} :catchall_11f

    .line 2402
    const-wide/16 v2, 0x7d0

    move-object/from16 v7, p0

    move-object/from16 v16, v4

    move-object/from16 v4, p9

    move-object/from16 p9, v16

    .local v4, "tp":Lcom/android/internal/os/TransferPipe;
    .local p9, "lastTask":Lcom/android/server/wm/TaskRecord;
    :try_start_116
    invoke-virtual {v4, v7, v2, v3}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_119
    .catchall {:try_start_116 .. :try_end_119} :catchall_11d

    .line 2404
    :try_start_119
    invoke-virtual {v4}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 2405
    goto :goto_166

    .line 2404
    :catchall_11d
    move-exception v0

    goto :goto_128

    .local v4, "lastTask":Lcom/android/server/wm/TaskRecord;
    .local p9, "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_11f
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 v16, v4

    move-object/from16 v4, p9

    move-object/from16 p9, v16

    .local v4, "tp":Lcom/android/internal/os/TransferPipe;
    .local p9, "lastTask":Lcom/android/server/wm/TaskRecord;
    :goto_128
    invoke-virtual {v4}, Lcom/android/internal/os/TransferPipe;->kill()V

    .end local v5  # "printed":Z
    .end local v6  # "i":I
    .end local v8  # "innerPrefix":Ljava/lang/String;
    .end local v9  # "args":[Ljava/lang/String;
    .end local v10  # "needNL":Z
    .end local v12  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v13  # "full":Z
    .end local v14  # "header":Ljava/lang/String;
    .end local p0  # "fd":Ljava/io/FileDescriptor;
    .end local p1  # "pw":Ljava/io/PrintWriter;
    .end local p2  # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityRecord;>;"
    .end local p3  # "prefix":Ljava/lang/String;
    .end local p4  # "label":Ljava/lang/String;
    .end local p5  # "complete":Z
    .end local p6  # "brief":Z
    .end local p7  # "client":Z
    .end local p8  # "dumpPackage":Ljava/lang/String;
    .end local p9  # "lastTask":Lcom/android/server/wm/TaskRecord;
    throw v0
    :try_end_12c
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_12c} :catch_12e
    .catch Landroid/os/RemoteException; {:try_start_119 .. :try_end_12c} :catch_12c

    .line 2408
    .end local v4  # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local v5  # "printed":Z
    .restart local v6  # "i":I
    .restart local v8  # "innerPrefix":Ljava/lang/String;
    .restart local v9  # "args":[Ljava/lang/String;
    .restart local v10  # "needNL":Z
    .restart local v12  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v13  # "full":Z
    .restart local v14  # "header":Ljava/lang/String;
    .restart local p0  # "fd":Ljava/io/FileDescriptor;
    .restart local p1  # "pw":Ljava/io/PrintWriter;
    .restart local p2  # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local p3  # "prefix":Ljava/lang/String;
    .restart local p4  # "label":Ljava/lang/String;
    .restart local p5  # "complete":Z
    .restart local p6  # "brief":Z
    .restart local p7  # "client":Z
    .restart local p8  # "dumpPackage":Ljava/lang/String;
    .restart local p9  # "lastTask":Lcom/android/server/wm/TaskRecord;
    :catch_12c
    move-exception v0

    goto :goto_135

    .line 2406
    :catch_12e
    move-exception v0

    goto :goto_14f

    .line 2408
    .end local p9  # "lastTask":Lcom/android/server/wm/TaskRecord;
    .local v4, "lastTask":Lcom/android/server/wm/TaskRecord;
    :catch_130
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 p9, v4

    .line 2409
    .end local v4  # "lastTask":Lcom/android/server/wm/TaskRecord;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local p9  # "lastTask":Lcom/android/server/wm/TaskRecord;
    :goto_135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Got a RemoteException while dumping the activity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_167

    .line 2406
    .end local v0  # "e":Landroid/os/RemoteException;
    .end local p9  # "lastTask":Lcom/android/server/wm/TaskRecord;
    .restart local v4  # "lastTask":Lcom/android/server/wm/TaskRecord;
    :catch_14a
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 p9, v4

    .line 2407
    .end local v4  # "lastTask":Lcom/android/server/wm/TaskRecord;
    .local v0, "e":Ljava/io/IOException;
    .restart local p9  # "lastTask":Lcom/android/server/wm/TaskRecord;
    :goto_14f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Failure while dumping the activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2410
    .end local v0  # "e":Ljava/io/IOException;
    :goto_166
    nop

    .line 2411
    :goto_167
    const/4 v0, 0x1

    move-object/from16 v4, p9

    move v10, v0

    move-object v0, v14

    .end local v10  # "needNL":Z
    .local v0, "needNL":Z
    goto :goto_174

    .line 2392
    .end local v0  # "needNL":Z
    .end local p9  # "lastTask":Lcom/android/server/wm/TaskRecord;
    .restart local v4  # "lastTask":Lcom/android/server/wm/TaskRecord;
    .restart local v10  # "needNL":Z
    :cond_16d
    move-object/from16 v7, p0

    move-object/from16 p9, v4

    .line 2346
    .end local v4  # "lastTask":Lcom/android/server/wm/TaskRecord;
    .end local v12  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v13  # "full":Z
    .restart local p9  # "lastTask":Lcom/android/server/wm/TaskRecord;
    move-object/from16 v4, p9

    move-object v0, v14

    .end local v14  # "header":Ljava/lang/String;
    .end local p9  # "lastTask":Lcom/android/server/wm/TaskRecord;
    .local v0, "header":Ljava/lang/String;
    .restart local v4  # "lastTask":Lcom/android/server/wm/TaskRecord;
    :goto_174
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v2, p3

    move-object/from16 v3, p8

    const/4 v7, 0x1

    goto/16 :goto_17

    :cond_17d
    move-object/from16 v7, p0

    move-object/from16 v11, p2

    move-object/from16 v15, p4

    .line 2414
    .end local v6  # "i":I
    return v5
.end method

.method private getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 10
    .param p1, "action"  # Ljava/lang/String;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "callingPid"  # I
    .param p4, "callingUid"  # I

    .line 1260
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1261
    return v0

    .line 1264
    :cond_4
    sget-object v1, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1265
    .local v1, "permission":Ljava/lang/String;
    if-nez v1, :cond_f

    .line 1266
    return v0

    .line 1271
    :cond_f
    :try_start_f
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x1000

    .line 1272
    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_1d} :catch_48

    .line 1276
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 1278
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 1279
    return v0

    .line 1282
    :cond_27
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v1, p3, p4}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_32

    .line 1283
    const/4 v0, 0x1

    return v0

    .line 1286
    :cond_32
    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v3

    .line 1287
    .local v3, "opCode":I
    if-ne v3, v4, :cond_39

    .line 1288
    return v0

    .line 1291
    :cond_39
    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsService()Lcom/android/server/appop/AppOpsService;

    move-result-object v4

    invoke-virtual {v4, v3, p4, p2}, Lcom/android/server/appop/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_47

    .line 1293
    const/4 v0, 0x2

    return v0

    .line 1296
    :cond_47
    return v0

    .line 1273
    .end local v2  # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3  # "opCode":I
    :catch_48
    move-exception v2

    .line 1274
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find package info for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    return v0
.end method

.method private getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)I
    .registers 10
    .param p1, "activityInfo"  # Landroid/content/pm/ActivityInfo;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "callingPid"  # I
    .param p4, "callingUid"  # I
    .param p5, "ignoreTargetSecurity"  # Z

    .line 1233
    const/4 v0, -0x1

    if-nez p5, :cond_15

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v3, p1, Landroid/content/pm/ActivityInfo;->exported:Z

    invoke-static {v1, p3, p4, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    if-ne v1, v0, :cond_15

    .line 1236
    const/4 v0, 0x1

    return v0

    .line 1239
    :cond_15
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_1b

    .line 1240
    return v2

    .line 1243
    :cond_1b
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v1

    .line 1244
    .local v1, "opCode":I
    if-ne v1, v0, :cond_24

    .line 1245
    return v2

    .line 1248
    :cond_24
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsService()Lcom/android/server/appop/AppOpsService;

    move-result-object v0

    invoke-virtual {v0, v1, p4, p2}, Lcom/android/server/appop/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_34

    .line 1250
    if-nez p5, :cond_34

    .line 1251
    const/4 v0, 0x2

    return v0

    .line 1255
    :cond_34
    return v2
.end method

.method private handleForcedResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;I)V
    .registers 7
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "reason"  # I

    .line 2603
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2604
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_21

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-nez v1, :cond_21

    .line 2605
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isNonResizableOrForcedResizable()Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_21

    .line 2608
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    iget v2, p1, Lcom/android/server/wm/TaskRecord;->taskId:I

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, p2, v3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    .line 2610
    return-void

    .line 2606
    :cond_21
    :goto_21
    return-void
.end method

.method private handleLaunchTaskBehindCompleteLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 2212
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 2213
    .local v0, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2215
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    .line 2216
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/TaskRecord;)V

    .line 2217
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 2218
    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 2222
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 2223
    .local v2, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_29

    .line 2224
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->touchActiveTime()V

    .line 2226
    :cond_29
    return-void
.end method

.method private logIfTransactionTooLarge(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "icicle"  # Landroid/os/Bundle;

    .line 995
    const/4 v0, 0x0

    .line 996
    .local v0, "extrasSize":I
    if-eqz p1, :cond_d

    .line 997
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 998
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_d

    .line 999
    invoke-virtual {v1}, Landroid/os/Bundle;->getSize()I

    move-result v0

    .line 1002
    .end local v1  # "extras":Landroid/os/Bundle;
    :cond_d
    if-nez p2, :cond_11

    const/4 v1, 0x0

    goto :goto_15

    :cond_11
    invoke-virtual {p2}, Landroid/os/Bundle;->getSize()I

    move-result v1

    .line 1003
    .local v1, "icicleSize":I
    :goto_15
    add-int v2, v0, v1

    const v3, 0x30d40

    if-le v2, v3, :cond_42

    .line 1004
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transaction too large, intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", extras size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", icicle size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :cond_42
    return-void
.end method

.method private moveHomeStackToFrontIfNeeded(ILcom/android/server/wm/ActivityDisplay;Ljava/lang/String;)V
    .registers 7
    .param p1, "flags"  # I
    .param p2, "display"  # Lcom/android/server/wm/ActivityDisplay;
    .param p3, "reason"  # Ljava/lang/String;

    .line 1536
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1538
    .local v0, "focusedStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityDisplay;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_17

    :cond_f
    if-eqz v0, :cond_1a

    .line 1540
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isActivityTypeRecents()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1543
    :cond_17
    invoke-virtual {p2, p3}, Lcom/android/server/wm/ActivityDisplay;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 1545
    :cond_1a
    return-void
.end method

.method private moveTasksToFullscreenStackInSurfaceTransaction(Lcom/android/server/wm/ActivityStack;IZ)V
    .registers 31
    .param p1, "fromStack"  # Lcom/android/server/wm/ActivityStack;
    .param p2, "toDisplayId"  # I
    .param p3, "onTop"  # Z

    .line 1592
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 1594
    const/4 v2, 0x1

    :try_start_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    .line 1595
    .local v0, "windowingMode":I
    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v0, v3, :cond_12

    move v3, v2

    goto :goto_13

    :cond_12
    move v3, v4

    .line 1596
    .local v3, "inPinnedWindowingMode":Z
    :goto_13
    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_e9

    .line 1597
    move/from16 v13, p2

    :try_start_17
    invoke-virtual {v5, v13}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v5

    move-object v12, v5

    .line 1599
    .local v12, "toDisplay":Lcom/android/server/wm/ActivityDisplay;
    const/4 v5, 0x3

    if-ne v0, v5, :cond_3c

    .line 1601
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityDisplay;->onExitingSplitScreenMode()V

    .line 1605
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    .local v5, "i":I
    :goto_27
    if-ltz v5, :cond_3a

    .line 1606
    invoke-virtual {v12, v5}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 1607
    .local v6, "otherStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v7

    if-nez v7, :cond_34

    .line 1608
    goto :goto_37

    .line 1610
    :cond_34
    invoke-virtual {v6, v4}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    .line 1605
    .end local v6  # "otherStack":Lcom/android/server/wm/ActivityStack;
    :goto_37
    add-int/lit8 v5, v5, -0x1

    goto :goto_27

    .line 1617
    .end local v5  # "i":I
    :cond_3a
    iput-boolean v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 1622
    :cond_3c
    move v11, v3

    .line 1623
    .local v11, "schedulePictureInPictureModeChange":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v5

    move-object v10, v5

    .line 1625
    .local v10, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_ce

    .line 1626
    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mTmpOptions:Landroid/app/ActivityOptions;

    invoke-virtual {v5, v2}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 1627
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v8, v5

    .line 1628
    .local v8, "size":I
    const/4 v5, 0x0

    move v7, v5

    .local v7, "i":I
    :goto_54
    if-ge v7, v8, :cond_c5

    .line 1629
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/TaskRecord;

    .line 1630
    .local v5, "task":Lcom/android/server/wm/TaskRecord;
    const/4 v15, 0x0

    iget-object v6, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mTmpOptions:Landroid/app/ActivityOptions;

    .line 1631
    invoke-virtual {v5}, Lcom/android/server/wm/TaskRecord;->getActivityType()I

    move-result v18

    .line 1630
    move-object v14, v12

    move-object/from16 v16, v6

    move-object/from16 v17, v5

    move/from16 v19, p3

    invoke-virtual/range {v14 .. v19}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;IZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v6

    .line 1633
    .local v6, "toStack":Lcom/android/server/wm/ActivityStack;
    if-eqz p3, :cond_a2

    .line 1634
    add-int/lit8 v9, v8, -0x1

    if-ne v7, v9, :cond_76

    move v9, v2

    goto :goto_77

    :cond_76
    move v9, v4

    .line 1636
    .local v9, "isTopTask":Z
    :goto_77
    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    const-string v17, "moveTasksToFullscreenStack - onTop"

    move-object/from16 v22, v5

    .end local v5  # "task":Lcom/android/server/wm/TaskRecord;
    .local v22, "task":Lcom/android/server/wm/TaskRecord;
    move/from16 v23, v7

    .end local v7  # "i":I
    .local v23, "i":I
    move v7, v14

    move/from16 v24, v8

    .end local v8  # "size":I
    .local v24, "size":I
    move v8, v15

    move-object/from16 v25, v10

    .end local v10  # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    .local v25, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    move/from16 v10, v16

    move-object/from16 v26, v12

    .end local v12  # "toDisplay":Lcom/android/server/wm/ActivityDisplay;
    .local v26, "toDisplay":Lcom/android/server/wm/ActivityDisplay;
    move-object/from16 v12, v17

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZZLjava/lang/String;)Z

    .line 1640
    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v7, v22

    .end local v22  # "task":Lcom/android/server/wm/TaskRecord;
    .local v7, "task":Lcom/android/server/wm/TaskRecord;
    iget v8, v7, Lcom/android/server/wm/TaskRecord;->effectiveUid:I

    iget-object v10, v7, Lcom/android/server/wm/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 1641
    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    .line 1640
    invoke-static {v5, v8, v10}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logPictureInPictureFullScreen(Landroid/content/Context;ILjava/lang/String;)V

    .line 1642
    .end local v9  # "isTopTask":Z
    goto :goto_bc

    .line 1646
    .end local v23  # "i":I
    .end local v24  # "size":I
    .end local v25  # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    .end local v26  # "toDisplay":Lcom/android/server/wm/ActivityDisplay;
    .restart local v5  # "task":Lcom/android/server/wm/TaskRecord;
    .local v7, "i":I
    .restart local v8  # "size":I
    .restart local v10  # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    .restart local v12  # "toDisplay":Lcom/android/server/wm/ActivityDisplay;
    :cond_a2
    move/from16 v23, v7

    move/from16 v24, v8

    move-object/from16 v25, v10

    move-object/from16 v26, v12

    move-object v7, v5

    .end local v5  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v8  # "size":I
    .end local v10  # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    .end local v12  # "toDisplay":Lcom/android/server/wm/ActivityDisplay;
    .local v7, "task":Lcom/android/server/wm/TaskRecord;
    .restart local v23  # "i":I
    .restart local v24  # "size":I
    .restart local v25  # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    .restart local v26  # "toDisplay":Lcom/android/server/wm/ActivityDisplay;
    const/16 v16, 0x1

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x1

    const-string v21, "moveTasksToFullscreenStack - NOT_onTop"

    move-object v14, v7

    move-object v15, v6

    move/from16 v20, v11

    invoke-virtual/range {v14 .. v21}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZZLjava/lang/String;)Z

    .line 1628
    .end local v6  # "toStack":Lcom/android/server/wm/ActivityStack;
    .end local v7  # "task":Lcom/android/server/wm/TaskRecord;
    :goto_bc
    add-int/lit8 v7, v23, 0x1

    move/from16 v8, v24

    move-object/from16 v10, v25

    move-object/from16 v12, v26

    .end local v23  # "i":I
    .local v7, "i":I
    goto :goto_54

    .end local v24  # "size":I
    .end local v25  # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    .end local v26  # "toDisplay":Lcom/android/server/wm/ActivityDisplay;
    .restart local v8  # "size":I
    .restart local v10  # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    .restart local v12  # "toDisplay":Lcom/android/server/wm/ActivityDisplay;
    :cond_c5
    move/from16 v23, v7

    move/from16 v24, v8

    move-object/from16 v25, v10

    move-object/from16 v26, v12

    .end local v7  # "i":I
    .end local v8  # "size":I
    .end local v10  # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    .end local v12  # "toDisplay":Lcom/android/server/wm/ActivityDisplay;
    .restart local v23  # "i":I
    .restart local v24  # "size":I
    .restart local v25  # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    .restart local v26  # "toDisplay":Lcom/android/server/wm/ActivityDisplay;
    goto :goto_d2

    .line 1625
    .end local v23  # "i":I
    .end local v24  # "size":I
    .end local v25  # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    .end local v26  # "toDisplay":Lcom/android/server/wm/ActivityDisplay;
    .restart local v10  # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    .restart local v12  # "toDisplay":Lcom/android/server/wm/ActivityDisplay;
    :cond_ce
    move-object/from16 v25, v10

    move-object/from16 v26, v12

    .line 1654
    .end local v10  # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    .end local v12  # "toDisplay":Lcom/android/server/wm/ActivityDisplay;
    .restart local v25  # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    .restart local v26  # "toDisplay":Lcom/android/server/wm/ActivityDisplay;
    :goto_d2
    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4, v2}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1655
    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z
    :try_end_dd
    .catchall {:try_start_17 .. :try_end_dd} :catchall_e7

    .line 1657
    nop

    .end local v0  # "windowingMode":I
    .end local v3  # "inPinnedWindowingMode":Z
    .end local v11  # "schedulePictureInPictureModeChange":Z
    .end local v25  # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    .end local v26  # "toDisplay":Lcom/android/server/wm/ActivityDisplay;
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 1658
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1659
    nop

    .line 1660
    return-void

    .line 1657
    :catchall_e7
    move-exception v0

    goto :goto_ec

    :catchall_e9
    move-exception v0

    move/from16 v13, p2

    :goto_ec
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 1658
    iget-object v2, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0
.end method

.method static nextTaskIdForUser(II)I
    .registers 5
    .param p0, "taskId"  # I
    .param p1, "userId"  # I

    .line 555
    add-int/lit8 v0, p0, 0x1

    .line 556
    .local v0, "nextTaskId":I
    add-int/lit8 v1, p1, 0x1

    const v2, 0x186a0

    mul-int/2addr v1, v2

    if-ne v0, v1, :cond_b

    .line 558
    sub-int/2addr v0, v2

    .line 560
    :cond_b
    return v0
.end method

.method static printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z
    .registers 6
    .param p0, "pw"  # Ljava/io/PrintWriter;
    .param p1, "activity"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "dumpPackage"  # Ljava/lang/String;
    .param p3, "needSep"  # Z
    .param p4, "prefix"  # Ljava/lang/String;

    .line 2327
    if-eqz p1, :cond_19

    .line 2328
    if-eqz p2, :cond_c

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2329
    :cond_c
    if-eqz p3, :cond_11

    .line 2330
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 2332
    :cond_11
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2333
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2334
    const/4 v0, 0x1

    return v0

    .line 2337
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method private removeStackInSurfaceTransaction(Lcom/android/server/wm/ActivityStack;)V
    .registers 7
    .param p1, "stack"  # Lcom/android/server/wm/ActivityStack;

    .line 1833
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 1834
    .local v0, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskRecord;>;"
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1c

    .line 1844
    iput-boolean v2, p1, Lcom/android/server/wm/ActivityStack;->mForceHidden:Z

    .line 1845
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Lcom/android/server/wm/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1846
    iput-boolean v3, p1, Lcom/android/server/wm/ActivityStack;->mForceHidden:Z

    .line 1847
    invoke-virtual {p0, v1, v3, v2, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->activityIdleInternalLocked(Landroid/os/IBinder;ZZLandroid/content/res/Configuration;)Lcom/android/server/wm/ActivityRecord;

    .line 1851
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;Z)V

    goto :goto_33

    .line 1853
    :cond_1c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_21
    if-ltz v1, :cond_33

    .line 1854
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskRecord;

    iget v3, v3, Lcom/android/server/wm/TaskRecord;->taskId:I

    const-string v4, "remove-stack"

    invoke-virtual {p0, v3, v2, v2, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    .line 1853
    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    .line 1858
    .end local v1  # "i":I
    :cond_33
    :goto_33
    return-void
.end method

.method private scheduleTopResumedActivityStateIfNeeded()V
    .registers 3

    .line 2461
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_c

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivityWaitingForPrev:Z

    if-nez v1, :cond_c

    .line 2462
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->scheduleTopResumedActivityChanged(Z)Z

    .line 2464
    :cond_c
    return-void
.end method

.method private scheduleTopResumedStateLossTimeout(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 2470
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd9

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2471
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2472
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/wm/ActivityRecord;->topResumedStateLossTime:J

    .line 2473
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2474
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v1, :cond_31

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waiting for top state to be released by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    :cond_31
    return-void
.end method


# virtual methods
.method acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V
    .registers 9
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 2133
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_64

    .line 2134
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    const/16 v3, 0x1081

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 2135
    sput-boolean v2, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfSendTapHint:Z

    .line 2136
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 2138
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    const/16 v1, 0x1601

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Landroid/util/BoostFramework;->perfGetFeedback(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_2f

    .line 2140
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    sput v0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfHandle:I

    goto :goto_3a

    .line 2142
    :cond_2f
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    sput v0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfHandle:I

    .line 2144
    :goto_3a
    sget v0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfHandle:I

    if-lez v0, :cond_40

    .line 2145
    sput-boolean v2, Lcom/android/server/wm/ActivityStackSupervisor;->mIsPerfBoostAcquired:Z

    .line 2147
    :cond_40
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_64

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v0, :cond_64

    .line 2148
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/16 v6, 0x2f

    .line 2149
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2148
    invoke-virtual {v0, v4, v1, v2}, Landroid/util/BoostFramework;->perfIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I

    .line 2152
    :cond_64
    return-void
.end method

.method acquireLaunchWakelock()V
    .registers 5

    .line 1307
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1308
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1310
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1312
    :cond_16
    return-void
.end method

.method final activityIdleInternalLocked(Landroid/os/IBinder;ZZLandroid/content/res/Configuration;)Lcom/android/server/wm/ActivityRecord;
    .registers 27
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "fromTimeout"  # Z
    .param p3, "processPausingActivities"  # Z
    .param p4, "config"  # Landroid/content/res/Configuration;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mService"
        }
    .end annotation

    .line 1337
    move-object/from16 v6, p0

    move-object/from16 v7, p4

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity idle: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :cond_21
    move-object/from16 v8, p1

    .line 1339
    :goto_23
    const/4 v9, 0x0

    .line 1340
    .local v9, "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v10, 0x0

    .line 1341
    .local v10, "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    const/4 v11, 0x0

    .line 1342
    .local v11, "NS":I
    const/4 v12, 0x0

    .line 1343
    .local v12, "NF":I
    const/4 v13, 0x0

    .line 1344
    .local v13, "booting":Z
    const/4 v14, 0x0

    .line 1346
    .local v14, "activityRemoved":Z
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v15

    .line 1347
    .local v15, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v5, 0x0

    const/4 v3, 0x1

    if-eqz v15, :cond_ba

    .line 1348
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    if-eqz v0, :cond_4e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activityIdleInternalLocked: Callers="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    .line 1349
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1348
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    :cond_4e
    iget-object v0, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, v15}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1351
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityRecord;->finishLaunchTickingLocked()V

    .line 1352
    if-eqz p2, :cond_6c

    .line 1353
    const-wide/16 v16, -0x1

    const/16 v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object v2, v15

    move v8, v3

    move-wide/from16 v3, v16

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->reportActivityLaunchedLocked(ZLcom/android/server/wm/ActivityRecord;JI)V

    goto :goto_6d

    .line 1352
    :cond_6c
    move v8, v3

    .line 1362
    :goto_6d
    if-eqz v7, :cond_72

    .line 1363
    invoke-virtual {v15, v7}, Lcom/android/server/wm/ActivityRecord;->setLastReportedGlobalConfiguration(Landroid/content/res/Configuration;)V

    .line 1368
    :cond_72
    iput-boolean v8, v15, Lcom/android/server/wm/ActivityRecord;->idle:Z

    .line 1374
    iget-object v0, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v0

    if-eqz v0, :cond_84

    iget-object v0, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->allResumedActivitiesIdle()Z

    move-result v0

    if-nez v0, :cond_86

    :cond_84
    if-eqz p2, :cond_8a

    .line 1376
    :cond_86
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->checkFinishBootingLocked()Z

    move-result v13

    .line 1381
    :cond_8a
    const/4 v0, 0x0

    iput v0, v15, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    .line 1385
    iget-object v1, v15, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v1, :cond_bc

    .line 1386
    iget-object v1, v15, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v2, v15, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v3, v15, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_a0

    iget-object v3, v15, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    goto :goto_a2

    :cond_a0
    const-string v3, "null"

    :goto_a2
    move-object/from16 v18, v3

    iget-object v3, v15, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v3, v3, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget-object v4, v15, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move/from16 v19, v3

    invoke-static/range {v16 .. v21}, Lcom/android/server/wm/DataMonInjector;->reportActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    goto :goto_bc

    .line 1347
    :cond_ba
    move v8, v3

    move v0, v5

    .line 1391
    :cond_bc
    :goto_bc
    iget-object v1, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->allResumedActivitiesIdle()Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 1392
    if-eqz v15, :cond_cb

    .line 1393
    iget-object v1, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->scheduleAppGcsLocked()V

    .line 1396
    :cond_cb
    iget-object v1, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_df

    .line 1397
    iget-object v1, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0xcc

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 1402
    iget-object v1, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1404
    :cond_df
    iget-object v1, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v0}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1408
    :cond_e5
    move/from16 v1, p3

    invoke-virtual {v6, v15, v8, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->processStoppingActivitiesLocked(Lcom/android/server/wm/ActivityRecord;ZZ)Ljava/util/ArrayList;

    move-result-object v2

    .line 1410
    .local v2, "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    if-eqz v2, :cond_f2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_f3

    :cond_f2
    move v5, v0

    :goto_f3
    move v3, v5

    .line 1411
    .end local v11  # "NS":I
    .local v3, "NS":I
    iget-object v4, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v4

    .end local v12  # "NF":I
    .local v5, "NF":I
    if-lez v4, :cond_10a

    .line 1412
    new-instance v4, Ljava/util/ArrayList;

    iget-object v11, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-direct {v4, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v9, v4

    .line 1413
    iget-object v4, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1416
    :cond_10a
    iget-object v4, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_11f

    .line 1417
    new-instance v4, Ljava/util/ArrayList;

    iget-object v11, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-direct {v4, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v10, v4

    .line 1418
    iget-object v4, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1423
    :cond_11f
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_120
    if-ge v4, v3, :cond_13f

    .line 1424
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v15, v11

    check-cast v15, Lcom/android/server/wm/ActivityRecord;

    .line 1425
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v11

    .line 1426
    .local v11, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v11, :cond_13c

    .line 1427
    iget-boolean v12, v15, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v12, :cond_139

    .line 1428
    const-string v12, "activityIdleInternalLocked"

    invoke-virtual {v11, v15, v0, v0, v12}, Lcom/android/server/wm/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/wm/ActivityRecord;IZLjava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    goto :goto_13c

    .line 1431
    :cond_139
    invoke-virtual {v11, v15}, Lcom/android/server/wm/ActivityStack;->stopActivityLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 1423
    .end local v11  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_13c
    :goto_13c
    add-int/lit8 v4, v4, 0x1

    goto :goto_120

    .line 1438
    .end local v4  # "i":I
    :cond_13f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_140
    if-ge v0, v5, :cond_15a

    .line 1439
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/android/server/wm/ActivityRecord;

    .line 1440
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 1441
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v4, :cond_157

    .line 1442
    const-string v11, "finish-idle"

    invoke-virtual {v4, v15, v8, v11}, Lcom/android/server/wm/ActivityStack;->destroyActivityLocked(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)Z

    move-result v11

    or-int/2addr v11, v14

    move v14, v11

    .line 1438
    .end local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_157
    add-int/lit8 v0, v0, 0x1

    goto :goto_140

    .line 1446
    .end local v0  # "i":I
    :cond_15a
    if-nez v13, :cond_173

    .line 1448
    if-eqz v10, :cond_173

    .line 1449
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_15f
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_173

    .line 1450
    iget-object v4, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/app/ActivityManagerInternal;->finishUserSwitch(Ljava/lang/Object;)V

    .line 1449
    add-int/lit8 v0, v0, 0x1

    goto :goto_15f

    .line 1455
    .end local v0  # "i":I
    :cond_173
    iget-object v0, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v4, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$28Zuzbi6usdgbDcOi8hrJg6nZO0;

    invoke-direct {v4, v6}, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$28Zuzbi6usdgbDcOi8hrJg6nZO0;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;)V

    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 1459
    if-eqz v14, :cond_186

    .line 1460
    iget-object v0, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 1463
    :cond_186
    return-object v15
.end method

.method activityRelaunchedLocked(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"  # Landroid/os/IBinder;

    .line 2613
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->notifyAppRelaunchingFinished(Landroid/os/IBinder;)V

    .line 2614
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2615
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_19

    .line 2616
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2617
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/ActivityRecord;->setSleeping(ZZ)V

    .line 2620
    :cond_19
    return-void
.end method

.method activityRelaunchingLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 2623
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->notifyAppRelaunching(Landroid/os/IBinder;)V

    .line 2624
    return-void
.end method

.method activitySleptLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 2162
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2163
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2164
    .local v0, "s":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_f

    .line 2165
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->checkReadyForSleep()V

    goto :goto_13

    .line 2167
    :cond_f
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 2169
    :goto_13
    return-void
.end method

.method beginDeferResume()V
    .registers 2

    .line 2696
    iget v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDeferResumeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDeferResumeCount:I

    .line 2697
    return-void
.end method

.method canPlaceEntityOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z
    .registers 8
    .param p1, "displayId"  # I
    .param p2, "callingPid"  # I
    .param p3, "callingUid"  # I
    .param p4, "activityInfo"  # Landroid/content/pm/ActivityInfo;

    .line 384
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 386
    return v0

    .line 388
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 390
    return v2

    .line 392
    :cond_c
    invoke-virtual {p0, p2, p3, p1, p4}, Lcom/android/server/wm/ActivityStackSupervisor;->isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 396
    return v2

    .line 398
    :cond_13
    return v0
.end method

.method canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z
    .registers 5
    .param p1, "options"  # Landroid/app/ActivityOptions;

    .line 1550
    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_1f

    .line 1553
    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v1, :cond_17

    .line 1554
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1d

    :cond_17
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v1, :cond_1e

    :cond_1d
    const/4 v0, 0x1

    .line 1553
    :cond_1e
    return v0

    .line 1551
    :cond_1f
    :goto_1f
    return v0
.end method

.method checkReadyForSleepLocked(Z)V
    .registers 4
    .param p1, "allowDelay"  # Z

    .line 2172
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2174
    return-void

    .line 2177
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/RootActivityContainer;->putStacksToSleep(ZZ)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2179
    return-void

    .line 2183
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->sendPowerHintForLaunchEndIfNeeded()V

    .line 2185
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 2187
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2188
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2190
    :cond_28
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-eqz v0, :cond_35

    .line 2191
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2193
    :cond_35
    return-void
.end method

.method checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;ZZLcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStack;)Z
    .registers 36
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "aInfo"  # Landroid/content/pm/ActivityInfo;
    .param p3, "resultWho"  # Ljava/lang/String;
    .param p4, "requestCode"  # I
    .param p5, "callingPid"  # I
    .param p6, "callingUid"  # I
    .param p7, "callingPackage"  # Ljava/lang/String;
    .param p8, "ignoreTargetSecurity"  # Z
    .param p9, "launchingInTask"  # Z
    .param p10, "callerApp"  # Lcom/android/server/wm/WindowProcessController;
    .param p11, "resultRecord"  # Lcom/android/server/wm/ActivityRecord;
    .param p12, "resultStack"  # Lcom/android/server/wm/ActivityStack;

    .line 1086
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p10

    iget-object v0, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    const/4 v12, 0x1

    if-eqz v0, :cond_21

    iget-object v0, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1087
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v0

    if-eqz v0, :cond_21

    move v0, v12

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    move v13, v0

    .line 1088
    .local v13, "isCallerRecents":Z
    iget-object v0, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v0, "android.permission.START_ANY_ACTIVITY"

    invoke-static {v0, v8, v9}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v14

    .line 1090
    .local v14, "startAnyPerm":I
    if-eqz v14, :cond_19b

    if-eqz v13, :cond_33

    if-eqz p9, :cond_33

    goto/16 :goto_19b

    .line 1096
    :cond_33
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p7

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)I

    move-result v0

    .line 1098
    .local v0, "componentRestriction":I
    nop

    .line 1099
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1098
    invoke-direct {v6, v1, v2, v8, v9}, Lcom/android/server/wm/ActivityStackSupervisor;->getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    .line 1100
    .local v1, "actionRestriction":I
    const-string v3, ") requires "

    const-string v4, "ActivityTaskManager"

    const-string v5, ", uid="

    const-string v15, " (pid="

    const-string v11, " from "

    if-eq v0, v12, :cond_dd

    if-ne v1, v12, :cond_5c

    goto/16 :goto_dd

    .line 1128
    :cond_5c
    const-string v12, "Appop Denial: starting "

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a1

    .line 1129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 1133
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1132
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1134
    .local v2, "message":Ljava/lang/String;
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    const/4 v3, 0x0

    return v3

    .line 1136
    .end local v2  # "message":Ljava/lang/String;
    :cond_a1
    if-ne v0, v2, :cond_db

    .line 1137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") requires appop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 1140
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1141
    .restart local v2  # "message":Ljava/lang/String;
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    const/4 v3, 0x0

    return v3

    .line 1145
    .end local v2  # "message":Ljava/lang/String;
    :cond_db
    const/4 v2, 0x1

    return v2

    .line 1102
    :cond_dd
    :goto_dd
    if-eqz p11, :cond_f0

    .line 1103
    const/16 v17, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, p12

    move-object/from16 v18, p11

    move-object/from16 v19, p3

    move/from16 v20, p4

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/wm/ActivityStack;->sendActivityResultLocked(ILcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1108
    :cond_f0
    const-string v2, "Permission Denial: starting "

    const/4 v12, 0x1

    if-eq v1, v12, :cond_159

    .line 1113
    iget-boolean v12, v7, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v12, :cond_12b

    .line 1114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") not exported from uid "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "msg":Ljava/lang/String;
    goto :goto_192

    .line 1119
    .end local v2  # "msg":Ljava/lang/String;
    :cond_12b
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2  # "msg":Ljava/lang/String;
    goto :goto_192

    .line 1109
    .end local v2  # "msg":Ljava/lang/String;
    :cond_159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") with revoked permission "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/wm/ActivityStackSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 1112
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1124
    .restart local v2  # "msg":Ljava/lang/String;
    :goto_192
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1094
    .end local v0  # "componentRestriction":I
    .end local v1  # "actionRestriction":I
    .end local v2  # "msg":Ljava/lang/String;
    :cond_19b
    :goto_19b
    const/4 v0, 0x1

    return v0
.end method

.method cleanUpRemovedTaskLocked(Lcom/android/server/wm/TaskRecord;ZZ)V
    .registers 16
    .param p1, "tr"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "killProcess"  # Z
    .param p3, "removeFromRecents"  # Z

    .line 1906
    if-eqz p3, :cond_7

    .line 1907
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/TaskRecord;)V

    .line 1909
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1910
    .local v0, "component":Landroid/content/ComponentName;
    const-string v1, "ActivityTaskManager"

    if-nez v0, :cond_28

    .line 1911
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No component for base intent of task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    return-void

    .line 1916
    :cond_28
    sget-object v2, Lcom/android/server/wm/-$$Lambda$z5j5fiv3cZuY5AODkt3H3rhKimk;->INSTANCE:Lcom/android/server/wm/-$$Lambda$z5j5fiv3cZuY5AODkt3H3rhKimk;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v4, p1, Lcom/android/server/wm/TaskRecord;->userId:I

    .line 1917
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1916
    invoke-static {v2, v3, v4, v0, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1918
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1920
    if-nez p2, :cond_4b

    .line 1921
    return-void

    .line 1925
    :cond_4b
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1926
    .local v3, "pkg":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1927
    .local v4, "procsToKill":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    .line 1928
    invoke-virtual {v5}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    .line 1929
    .local v5, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5d
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_a4

    .line 1931
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    .line 1932
    .local v7, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_6a
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_a1

    .line 1933
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowProcessController;

    .line 1934
    .local v9, "proc":Lcom/android/server/wm/WindowProcessController;
    iget v10, v9, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    iget v11, p1, Lcom/android/server/wm/TaskRecord;->userId:I

    if-eq v10, v11, :cond_7d

    .line 1936
    goto :goto_9e

    .line 1938
    :cond_7d
    iget-object v10, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne v9, v10, :cond_84

    .line 1940
    goto :goto_9e

    .line 1942
    :cond_84
    iget-object v10, v9, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    invoke-virtual {v10, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8d

    .line 1944
    goto :goto_9e

    .line 1947
    :cond_8d
    invoke-virtual {v9, p1}, Lcom/android/server/wm/WindowProcessController;->shouldKillProcessForRemovedTask(Lcom/android/server/wm/TaskRecord;)Z

    move-result v10

    if-nez v10, :cond_94

    .line 1950
    return-void

    .line 1953
    :cond_94
    invoke-virtual {v9}, Lcom/android/server/wm/WindowProcessController;->hasForegroundServices()Z

    move-result v10

    if-eqz v10, :cond_9b

    .line 1955
    return-void

    .line 1959
    :cond_9b
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1932
    .end local v9  # "proc":Lcom/android/server/wm/WindowProcessController;
    :goto_9e
    add-int/lit8 v8, v8, 0x1

    goto :goto_6a

    .line 1929
    .end local v7  # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    .end local v8  # "j":I
    :cond_a1
    add-int/lit8 v6, v6, 0x1

    goto :goto_5d

    .line 1965
    .end local v6  # "i":I
    :cond_a4
    sget-object v6, Lcom/android/server/wm/-$$Lambda$j9nJq2XXOKyN4f0dfDaTjqmQRvg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$j9nJq2XXOKyN4f0dfDaTjqmQRvg;

    iget-object v7, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {v6, v7, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 1968
    .local v6, "m":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v7, v6}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1970
    if-eqz p3, :cond_d8

    .line 1972
    :try_start_b7
    new-instance v7, Lcom/android/server/wm/ActivityStackSupervisor$PreferredAppsTask;

    invoke-direct {v7, p0}, Lcom/android/server/wm/ActivityStackSupervisor$PreferredAppsTask;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;)V

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v7, v8}, Lcom/android/server/wm/ActivityStackSupervisor$PreferredAppsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_c2} :catch_c3

    .line 1975
    goto :goto_d8

    .line 1973
    :catch_c3
    move-exception v7

    .line 1974
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1978
    .end local v7  # "e":Ljava/lang/Exception;
    :cond_d8
    :goto_d8
    return-void
.end method

.method cleanupActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 594
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 596
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;)V

    .line 597
    return-void
.end method

.method comeOutOfSleepIfNeededLocked()V
    .registers 2

    .line 2155
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 2156
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2157
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2159
    :cond_10
    return-void
.end method

.method createRunningTasks()Lcom/android/server/wm/RunningTasks;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 516
    new-instance v0, Lcom/android/server/wm/RunningTasks;

    invoke-direct {v0}, Lcom/android/server/wm/RunningTasks;-><init>()V

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 2306
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2307
    const-string v0, "ActivityStackSupervisor state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2308
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/RootActivityContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2309
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurTaskIdForUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2311
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

    .line 2312
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_86

    .line 2313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mWaitingForActivityVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2314
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5e
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_86

    .line 2315
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

    .line 2314
    add-int/lit8 v0, v0, 0x1

    goto :goto_5e

    .line 2318
    .end local v0  # "i":I
    :cond_86
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isHomeRecentsComponent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2319
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v1, v1, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentTasks;->isRecentsComponentHomeActivity(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2321
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/KeyguardController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2322
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/LockTaskController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2323
    return-void
.end method

.method endDeferResume()V
    .registers 2

    .line 2703
    iget v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDeferResumeCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDeferResumeCount:I

    .line 2704
    return-void
.end method

.method findTaskToMoveToFront(Lcom/android/server/wm/TaskRecord;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V
    .registers 34
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "flags"  # I
    .param p3, "options"  # Landroid/app/ActivityOptions;
    .param p4, "reason"  # Ljava/lang/String;
    .param p5, "forceNonResizeable"  # Z

    .line 1469
    move-object/from16 v6, p0

    move-object/from16 v14, p1

    move/from16 v15, p2

    move-object/from16 v5, p3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1471
    .local v0, "currentStack":Lcom/android/server/wm/ActivityStack;
    iget-object v1, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v16

    .line 1472
    .local v16, "focusedStack":Lcom/android/server/wm/ActivityStack;
    const/4 v1, 0x0

    if-eqz v16, :cond_1a

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_1b

    :cond_1a
    move-object v2, v1

    :goto_1b
    move-object v4, v2

    .line 1476
    .local v4, "top_activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_29

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v2

    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v2, v3, :cond_29

    .line 1477
    invoke-virtual {v6, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V

    .line 1480
    :cond_29
    const-string v3, "ActivityTaskManager"

    if-nez v0, :cond_47

    .line 1481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findTaskToMoveToFront: can\'t move task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to front. Stack is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    return-void

    .line 1486
    :cond_47
    and-int/lit8 v2, v15, 0x2

    const/4 v7, 0x1

    if-nez v2, :cond_4e

    .line 1487
    iput-boolean v7, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mUserLeaving:Z

    .line 1490
    :cond_4e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, p4

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " findTaskToMoveToFront"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1491
    .end local p4  # "reason":Ljava/lang/String;
    .local v2, "reason":Ljava/lang/String;
    const/16 v17, 0x0

    .line 1492
    .local v17, "reparented":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v8

    if-eqz v8, :cond_bf

    invoke-virtual {v6, v5}, Lcom/android/server/wm/ActivityStackSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z

    move-result v8

    if-eqz v8, :cond_bf

    .line 1493
    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v13

    .line 1494
    .local v13, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v14, v13}, Lcom/android/server/wm/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Z

    .line 1496
    iget-object v8, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 1497
    invoke-virtual {v8, v1, v5, v14, v7}, Lcom/android/server/wm/RootActivityContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v12

    .line 1499
    .local v12, "stack":Lcom/android/server/wm/ActivityStack;
    if-eq v12, v0, :cond_9c

    .line 1500
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v7

    invoke-direct {v6, v15, v7, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->moveHomeStackToFrontIfNeeded(ILcom/android/server/wm/ActivityDisplay;Ljava/lang/String;)V

    .line 1501
    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v18, 0x1

    move-object/from16 v7, p1

    move-object v8, v12

    move-object/from16 v26, v12

    .end local v12  # "stack":Lcom/android/server/wm/ActivityStack;
    .local v26, "stack":Lcom/android/server/wm/ActivityStack;
    move/from16 v12, v18

    move-object/from16 v27, v13

    .end local v13  # "bounds":Landroid/graphics/Rect;
    .local v27, "bounds":Landroid/graphics/Rect;
    move-object v13, v2

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 1503
    move-object/from16 v0, v26

    .line 1504
    const/16 v17, 0x1

    goto :goto_a0

    .line 1499
    .end local v26  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v27  # "bounds":Landroid/graphics/Rect;
    .restart local v12  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v13  # "bounds":Landroid/graphics/Rect;
    :cond_9c
    move-object/from16 v26, v12

    move-object/from16 v27, v13

    .line 1508
    .end local v12  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v13  # "bounds":Landroid/graphics/Rect;
    .restart local v26  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v27  # "bounds":Landroid/graphics/Rect;
    :goto_a0
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/ActivityStack;->resizeStackWithLaunchBounds()Z

    move-result v7

    if-eqz v7, :cond_bc

    .line 1509
    iget-object v7, v6, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v18, v7

    move-object/from16 v19, v26

    move-object/from16 v20, v27

    invoke-virtual/range {v18 .. v25}, Lcom/android/server/wm/RootActivityContainer;->resizeStack(Lcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    goto :goto_bf

    .line 1516
    :cond_bc
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->resizeWindowContainer()V

    .line 1520
    .end local v26  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v27  # "bounds":Landroid/graphics/Rect;
    :cond_bf
    :goto_bf
    move-object v7, v0

    .end local v0  # "currentStack":Lcom/android/server/wm/ActivityStack;
    .local v7, "currentStack":Lcom/android/server/wm/ActivityStack;
    if-nez v17, :cond_c9

    .line 1521
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-direct {v6, v15, v0, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->moveHomeStackToFrontIfNeeded(ILcom/android/server/wm/ActivityDisplay;Ljava/lang/String;)V

    .line 1524
    :cond_c9
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    .line 1525
    .local v8, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v9, 0x0

    .line 1526
    if-nez v8, :cond_d2

    move-object v10, v1

    goto :goto_d5

    :cond_d2
    iget-object v0, v8, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    move-object v10, v0

    .line 1525
    :goto_d5
    move-object v0, v7

    move-object/from16 v1, p1

    move-object v11, v2

    .end local v2  # "reason":Ljava/lang/String;
    .local v11, "reason":Ljava/lang/String;
    move v2, v9

    move-object v9, v3

    move-object/from16 v3, p3

    move-object v12, v4

    .end local v4  # "top_activity":Lcom/android/server/wm/ActivityRecord;
    .local v12, "top_activity":Lcom/android/server/wm/ActivityRecord;
    move-object v4, v10

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/wm/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 1528
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_fb

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findTaskToMoveToFront: moved to front of stack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    :cond_fb
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v4, v7

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;IILcom/android/server/wm/ActivityStack;Z)V

    .line 1533
    return-void
.end method

.method public getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;
    .registers 2

    .line 502
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    return-object v0
.end method

.method public getKeyguardController()Lcom/android/server/wm/KeyguardController;
    .registers 2

    .line 506
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    return-object v0
.end method

.method getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;
    .registers 2

    .line 1559
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    return-object v0
.end method

.method getNextTaskIdForUserLocked(I)I
    .registers 6
    .param p1, "userId"  # I

    .line 564
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    const v1, 0x186a0

    mul-int/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 568
    .local v0, "currentTaskId":I
    invoke-static {v0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->nextTaskIdForUser(II)I

    move-result v1

    .line 569
    .local v1, "candidateTaskId":I
    :goto_e
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/wm/RecentTasks;->containsTaskId(II)Z

    move-result v2

    if-nez v2, :cond_26

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v3, 0x1

    .line 570
    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    if-eqz v2, :cond_20

    goto :goto_26

    .line 581
    :cond_20
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 582
    return v1

    .line 572
    :cond_26
    :goto_26
    invoke-static {v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->nextTaskIdForUser(II)I

    move-result v1

    .line 573
    if-eq v1, v0, :cond_2d

    goto :goto_e

    .line 576
    :cond_2d
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot get an available task id. Reached limit of 100000 running tasks per user."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getReparentTargetStack(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityStack;Z)Lcom/android/server/wm/ActivityStack;
    .registers 10
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "stack"  # Lcom/android/server/wm/ActivityStack;
    .param p3, "toTop"  # Z

    .line 2037
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2038
    .local v0, "prevStack":Lcom/android/server/wm/ActivityStack;
    iget v1, p2, Lcom/android/server/wm/ActivityStack;->mStackId:I

    .line 2039
    .local v1, "stackId":I
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->inMultiWindowMode()Z

    move-result v2

    .line 2042
    .local v2, "inMultiWindowMode":Z
    const-string v3, "ActivityTaskManager"

    if-eqz v0, :cond_2f

    iget v4, v0, Lcom/android/server/wm/ActivityStack;->mStackId:I

    if-ne v4, v1, :cond_2f

    .line 2043
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not reparent to same stack, task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " already in stackId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    return-object v0

    .line 2050
    :cond_2f
    if-eqz v2, :cond_57

    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    if-eqz v4, :cond_38

    goto :goto_57

    .line 2051
    :cond_38
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device doesn\'t support multi-window, can not reparent task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2057
    :cond_57
    :goto_57
    iget v4, p2, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    if-eqz v4, :cond_81

    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    if-eqz v4, :cond_62

    goto :goto_81

    .line 2058
    :cond_62
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device doesn\'t support multi-display, can not reparent task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to stackId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2063
    :cond_81
    :goto_81
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_a6

    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v4, :cond_8f

    goto :goto_a6

    .line 2065
    :cond_8f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device doesn\'t support freeform, can not reparent task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2071
    :cond_a6
    :goto_a6
    if-eqz v2, :cond_df

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->isResizeable()Z

    move-result v4

    if-nez v4, :cond_df

    .line 2072
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not move unresizeable task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to multi-window stack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " Moving to a fullscreen stack instead."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    if-eqz v0, :cond_d2

    .line 2075
    return-object v0

    .line 2077
    :cond_d2
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    const/4 v4, 0x1

    .line 2078
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v5

    .line 2077
    invoke-virtual {v3, v4, v5, p3}, Lcom/android/server/wm/ActivityDisplay;->createStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object p2

    .line 2080
    :cond_df
    return-object p2
.end method

.method getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 5
    .param p1, "userId"  # I

    .line 1223
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1225
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 1227
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1225
    return-object v2

    .line 1227
    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method goingToSleepLocked()V
    .registers 3

    .line 2084
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleSleepTimeout()V

    .line 2085
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_24

    .line 2086
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2087
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2091
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2092
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 2096
    :cond_24
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootActivityContainer;->applySleepTokens(Z)V

    .line 2098
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 2099
    return-void
.end method

.method handleNonResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;IILcom/android/server/wm/ActivityStack;)V
    .registers 11
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "preferredWindowingMode"  # I
    .param p3, "preferredDisplayId"  # I
    .param p4, "actualStack"  # Lcom/android/server/wm/ActivityStack;

    .line 2528
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;IILcom/android/server/wm/ActivityStack;Z)V

    .line 2530
    return-void
.end method

.method handleNonResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;IILcom/android/server/wm/ActivityStack;Z)V
    .registers 13
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "preferredWindowingMode"  # I
    .param p3, "preferredDisplayId"  # I
    .param p4, "actualStack"  # Lcom/android/server/wm/ActivityStack;
    .param p5, "forceNonResizable"  # Z

    .line 2534
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_9

    const/4 v2, -0x1

    if-eq p3, v2, :cond_9

    move v2, v1

    goto :goto_a

    :cond_9
    move v2, v0

    .line 2536
    .local v2, "isSecondaryDisplayPreferred":Z
    :goto_a
    if-eqz p4, :cond_18

    .line 2537
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->hasSplitScreenPrimaryStack()Z

    move-result v3

    if-eqz v3, :cond_18

    move v3, v1

    goto :goto_19

    :cond_18
    move v3, v0

    .line 2538
    .local v3, "inSplitScreenMode":Z
    :goto_19
    if-nez v3, :cond_20

    const/4 v4, 0x3

    if-eq p2, v4, :cond_20

    if-eqz v2, :cond_26

    .line 2539
    :cond_20
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v4

    if-nez v4, :cond_27

    .line 2540
    :cond_26
    return-void

    .line 2544
    :cond_27
    if-eqz v2, :cond_93

    .line 2545
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    .line 2546
    .local v4, "actualDisplayId":I
    invoke-virtual {p1, v4}, Lcom/android/server/wm/TaskRecord;->canBeLaunchedOnDisplay(I)Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 2550
    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 2551
    invoke-virtual {v5, p3}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v5

    .line 2553
    .local v5, "preferredDisplay":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v5, :cond_45

    .line 2554
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityDisplay;->isSingleTaskInstance()Z

    move-result v6

    if-eqz v6, :cond_45

    move v0, v1

    goto :goto_46

    :cond_45
    nop

    .line 2556
    .local v0, "singleTaskInstance":Z
    :goto_46
    if-eq p3, v4, :cond_84

    .line 2560
    if-eqz v0, :cond_58

    .line 2561
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    .line 2562
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    invoke-virtual {v1, v6, p3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/TaskInfo;I)V

    .line 2564
    return-void

    .line 2567
    :cond_58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to put "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " on display "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "ActivityTaskManager"

    invoke-static {v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    .line 2570
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    invoke-virtual {v1, v6, p3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityLaunchOnSecondaryDisplayFailed(Landroid/app/TaskInfo;I)V

    goto :goto_8a

    .line 2572
    :cond_84
    if-nez p5, :cond_8a

    .line 2573
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->handleForcedResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;I)V

    .line 2578
    :cond_8a
    :goto_8a
    return-void

    .line 2547
    .end local v0  # "singleTaskInstance":Z
    .end local v5  # "preferredDisplay":Lcom/android/server/wm/ActivityDisplay;
    :cond_8b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Task resolved to incompatible display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2582
    .end local v4  # "actualDisplayId":I
    :cond_93
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_9b

    if-eqz p5, :cond_c0

    :cond_9b
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->isMzWindowMode()Z

    move-result v4

    if-nez v4, :cond_c0

    .line 2586
    nop

    .line 2587
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 2588
    .local v4, "dockedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v4, :cond_bf

    .line 2591
    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v5

    .line 2592
    invoke-virtual {v5}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityDismissingDockedStack()V

    .line 2593
    if-ne p4, v4, :cond_bc

    move v0, v1

    :cond_bc
    invoke-virtual {p0, v4, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;Z)V

    .line 2595
    :cond_bf
    return-void

    .line 2598
    .end local v4  # "dockedStack":Lcom/android/server/wm/ActivityStack;
    :cond_c0
    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->handleForcedResizableTaskIfNeeded(Lcom/android/server/wm/TaskRecord;I)V

    .line 2599
    return-void
.end method

.method handleTopResumedStateReleased(Z)V
    .registers 4
    .param p1, "timeout"  # Z

    .line 2482
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_21

    .line 2483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Top resumed state released "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2484
    if-eqz p1, :cond_13

    const-string v1, " (due to timeout)"

    goto :goto_15

    :cond_13
    const-string v1, " (transition complete)"

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2483
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2486
    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd9

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 2487
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivityWaitingForPrev:Z

    if-nez v0, :cond_2d

    .line 2489
    return-void

    .line 2491
    :cond_2d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivityWaitingForPrev:Z

    .line 2492
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleTopResumedActivityStateIfNeeded()V

    .line 2493
    return-void
.end method

.method initPowerManagement()V
    .registers 4

    .line 524
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    .line 525
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    .line 526
    const/4 v1, 0x1

    const-string v2, "ActivityManager-Sleep"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 527
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "*launch*"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 528
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 529
    return-void
.end method

.method public initialize()V
    .registers 4

    .line 472
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mInitialized:Z

    if-eqz v0, :cond_5

    .line 473
    return-void

    .line 476
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mInitialized:Z

    .line 477
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->createRunningTasks()Lcom/android/server/wm/RunningTasks;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRunningTasks:Lcom/android/server/wm/RunningTasks;

    .line 479
    new-instance v0, Lcom/android/server/wm/ActivityMetricsLogger;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    .line 480
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/wm/ActivityMetricsLogger;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 481
    new-instance v0, Lcom/android/server/wm/KeyguardController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/KeyguardController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 483
    new-instance v0, Lcom/android/server/wm/PersisterQueue;

    invoke-direct {v0}, Lcom/android/server/wm/PersisterQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 484
    new-instance v0, Lcom/android/server/wm/LaunchParamsPersister;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/LaunchParamsPersister;-><init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityStackSupervisor;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    .line 485
    new-instance v0, Lcom/android/server/wm/LaunchParamsController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/LaunchParamsController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/LaunchParamsPersister;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    .line 486
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/LaunchParamsController;->registerDefaultModifiers(Lcom/android/server/wm/ActivityStackSupervisor;)V

    .line 487
    return-void
.end method

.method isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z
    .registers 15
    .param p1, "callingPid"  # I
    .param p2, "callingUid"  # I
    .param p3, "launchDisplayId"  # I
    .param p4, "aInfo"  # Landroid/content/pm/ActivityInfo;

    .line 1151
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launch on display check: displayId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callingPid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callingUid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    :cond_2a
    const/4 v0, -0x1

    const/4 v2, 0x1

    if-ne p1, v0, :cond_3a

    if-ne p2, v0, :cond_3a

    .line 1155
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_39

    const-string v0, "Launch on display check: no caller info, skip check"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :cond_39
    return v2

    .line 1159
    :cond_3a
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 1160
    invoke-virtual {v3, p3}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplayOrCreate(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    .line 1161
    .local v3, "activityDisplay":Lcom/android/server/wm/ActivityDisplay;
    const/4 v4, 0x0

    if-eqz v3, :cond_d1

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->isRemoved()Z

    move-result v5

    if-eqz v5, :cond_4b

    goto/16 :goto_d1

    .line 1168
    :cond_4b
    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v5, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-static {v5, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    .line 1170
    .local v5, "startAnyPerm":I
    if-nez v5, :cond_5f

    .line 1171
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_5e

    const-string v0, "Launch on display check: allow launch any on display"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    :cond_5e
    return v2

    .line 1177
    :cond_5f
    invoke-virtual {v3, p2}, Lcom/android/server/wm/ActivityDisplay;->isUidPresent(I)Z

    move-result v6

    .line 1179
    .local v6, "uidPresentOnDisplay":Z
    iget-object v7, v3, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getOwnerUid()I

    move-result v7

    .line 1180
    .local v7, "displayOwnerUid":I
    iget-object v8, v3, Lcom/android/server/wm/ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getType()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_a3

    const/16 v8, 0x3e8

    if-eq v7, v8, :cond_a3

    iget-object v8, p4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v7, v8, :cond_a3

    .line 1184
    iget v8, p4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v9, -0x80000000

    and-int/2addr v8, v9

    if-nez v8, :cond_8d

    .line 1185
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_8c

    const-string v0, "Launch on display check: disallow launch on virtual display for not-embedded activity."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    :cond_8c
    return v4

    .line 1190
    :cond_8d
    iget-object v8, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v8, "android.permission.ACTIVITY_EMBEDDING"

    invoke-static {v8, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v8

    if-ne v8, v0, :cond_a3

    if-nez v6, :cond_a3

    .line 1192
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_a2

    const-string v0, "Launch on display check: disallow activity embedding without permission."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :cond_a2
    return v4

    .line 1198
    :cond_a3
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_b3

    .line 1200
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_b2

    const-string v0, "Launch on display check: allow launch on public display"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    :cond_b2
    return v2

    .line 1206
    :cond_b3
    if-ne v7, p2, :cond_bf

    .line 1207
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_be

    const-string v0, "Launch on display check: allow launch for owner of the display"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    :cond_be
    return v2

    .line 1212
    :cond_bf
    if-eqz v6, :cond_cb

    .line 1213
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v0, :cond_ca

    const-string v0, "Launch on display check: allow launch for caller present on the display"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    :cond_ca
    return v2

    .line 1218
    :cond_cb
    const-string v0, "Launch on display check: denied"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    return v4

    .line 1162
    .end local v5  # "startAnyPerm":I
    .end local v6  # "uidPresentOnDisplay":Z
    .end local v7  # "displayOwnerUid":I
    :cond_d1
    :goto_d1
    const-string v0, "Launch on display check: display not found"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    return v4
.end method

.method isCurrentProfileLocked(I)Z
    .registers 3
    .param p1, "userId"  # I

    .line 2234
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v0, v0, Lcom/android/server/wm/RootActivityContainer;->mCurrentUser:I

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    return v0

    .line 2235
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->isCurrentProfile(I)Z

    move-result v0

    return v0
.end method

.method isStoppingNoHistoryActivity()Z
    .registers 4

    .line 2246
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

    .line 2247
    .local v1, "record":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isNoHistory()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2248
    const/4 v0, 0x1

    return v0

    .line 2250
    .end local v1  # "record":Lcom/android/server/wm/ActivityRecord;
    :cond_1a
    goto :goto_6

    .line 2252
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$activityIdleInternalLocked$0$ActivityStackSupervisor()V
    .registers 2

    .line 1455
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->trimApplications()V

    return-void
.end method

.method public synthetic lambda$moveTasksToFullscreenStackLocked$1$ActivityStackSupervisor(Lcom/android/server/wm/ActivityStack;IZ)V
    .registers 4
    .param p1, "fromStack"  # Lcom/android/server/wm/ActivityStack;
    .param p2, "toDisplayId"  # I
    .param p3, "onTop"  # Z

    .line 1668
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityStackSupervisor;->moveTasksToFullscreenStackInSurfaceTransaction(Lcom/android/server/wm/ActivityStack;IZ)V

    return-void
.end method

.method public synthetic lambda$removeStack$2$ActivityStackSupervisor(Lcom/android/server/wm/ActivityStack;)V
    .registers 2
    .param p1, "stack"  # Lcom/android/server/wm/ActivityStack;

    .line 1866
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeStackInSurfaceTransaction(Lcom/android/server/wm/ActivityStack;)V

    return-void
.end method

.method logStackState()V
    .registers 2

    .line 2627
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityMetricsLogger;->logWindowState()V

    .line 2628
    return-void
.end method

.method moveRecentsStackToFront(Ljava/lang/String;)V
    .registers 5
    .param p1, "reason"  # Ljava/lang/String;

    .line 540
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityDisplay;->getStack(II)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 542
    .local v0, "recentsStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_11

    .line 543
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 545
    :cond_11
    return-void
.end method

.method moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;IZ)V
    .registers 6
    .param p1, "fromStack"  # Lcom/android/server/wm/ActivityStack;
    .param p2, "toDisplayId"  # I
    .param p3, "onTop"  # Z

    .line 1667
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$PHIj4FpzoLIwUTmMRMOYA9us0rc;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$PHIj4FpzoLIwUTmMRMOYA9us0rc;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStack;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 1669
    return-void
.end method

.method moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;Z)V
    .registers 4
    .param p1, "fromStack"  # Lcom/android/server/wm/ActivityStack;
    .param p2, "onTop"  # Z

    .line 1663
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;IZ)V

    .line 1664
    return-void
.end method

.method notifyAppTransitionDone()V
    .registers 5

    .line 1573
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->continueUpdateRecentsHomeStackBounds()V

    .line 1574
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_28

    .line 1575
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1576
    .local v1, "taskId":I
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 1577
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    .line 1578
    .local v2, "task":Lcom/android/server/wm/TaskRecord;
    if-eqz v2, :cond_25

    .line 1579
    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskRecord;->setTaskDockedResizing(Z)V

    .line 1574
    .end local v1  # "taskId":I
    .end local v2  # "task":Lcom/android/server/wm/TaskRecord;
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 1582
    .end local v0  # "i":I
    :cond_28
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1583
    return-void
.end method

.method public onRecentTaskAdded(Lcom/android/server/wm/TaskRecord;)V
    .registers 2
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;

    .line 2017
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->touchActiveTime()V

    .line 2018
    return-void
.end method

.method public onRecentTaskRemoved(Lcom/android/server/wm/TaskRecord;ZZ)V
    .registers 10
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "wasTrimmed"  # Z
    .param p3, "killProcess"  # Z

    .line 2022
    if-eqz p2, :cond_d

    .line 2025
    iget v1, p1, Lcom/android/server/wm/TaskRecord;->taskId:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "recent-task-trimmed"

    move-object v0, p0

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTaskByIdLocked(IZZZLjava/lang/String;)Z

    .line 2028
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->removedFromRecents()V

    .line 2029
    return-void
.end method

.method onSystemReady()V
    .registers 2

    .line 490
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v0}, Lcom/android/server/wm/LaunchParamsPersister;->onSystemReady()V

    .line 491
    return-void
.end method

.method onUserUnlocked(I)V
    .registers 3
    .param p1, "userId"  # I

    .line 497
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-virtual {v0}, Lcom/android/server/wm/PersisterQueue;->startPersisting()V

    .line 498
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->onUnlockUser(I)V

    .line 499
    return-void
.end method

.method final processStoppingActivitiesLocked(Lcom/android/server/wm/ActivityRecord;ZZ)Ljava/util/ArrayList;
    .registers 14
    .param p1, "idleActivity"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "remove"  # Z
    .param p3, "processPausingActivities"  # Z
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

    .line 2257
    const/4 v0, 0x0

    .line 2259
    .local v0, "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->allResumedActivitiesVisible()Z

    move-result v1

    .line 2260
    .local v1, "nowVisible":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "activityNdx":I
    :goto_f
    if-ltz v2, :cond_ca

    .line 2261
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 2263
    .local v3, "s":Lcom/android/server/wm/ActivityRecord;
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v4

    .line 2265
    .local v4, "animating":Z
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    const-string v6, "ActivityTaskManager"

    if-eqz v5, :cond_53

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Stopping "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": nowVisible="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " animating="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " finishing="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    :cond_53
    if-eqz v1, :cond_75

    iget-boolean v5, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_75

    .line 2274
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v5, :cond_71

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Before stopping, can hide: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    :cond_71
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 2277
    :cond_75
    if-eqz p2, :cond_c6

    .line 2278
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 2279
    .local v5, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v5, :cond_82

    .line 2280
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->shouldSleepOrShutDownActivities()Z

    move-result v7

    goto :goto_88

    .line 2281
    :cond_82
    iget-object v7, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v7

    :goto_88
    nop

    .line 2282
    .local v7, "shouldSleepOrShutDown":Z
    if-eqz v4, :cond_8d

    if-eqz v7, :cond_c6

    .line 2283
    :cond_8d
    if-nez p3, :cond_9e

    sget-object v8, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v3, v8}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v8

    if-eqz v8, :cond_9e

    .line 2286
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 2287
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 2288
    goto :goto_c6

    .line 2291
    :cond_9e
    sget-boolean v8, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v8, :cond_b6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ready to stop: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2292
    :cond_b6
    if-nez v0, :cond_be

    .line 2293
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v6

    .line 2295
    :cond_be
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2297
    iget-object v6, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2260
    .end local v3  # "s":Lcom/android/server/wm/ActivityRecord;
    .end local v4  # "animating":Z
    .end local v5  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v7  # "shouldSleepOrShutDown":Z
    :cond_c6
    :goto_c6
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_f

    .line 2302
    .end local v2  # "activityNdx":I
    :cond_ca
    return-object v0
.end method

.method readyToResume()Z
    .registers 2

    .line 2708
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
    .registers 44
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "proc"  # Lcom/android/server/wm/WindowProcessController;
    .param p3, "andResume"  # Z
    .param p4, "checkConfig"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 755
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->allPausedActivitiesComplete()Z

    move-result v0

    const-string v4, "ActivityTaskManager"

    const/4 v5, 0x0

    if-nez v0, :cond_37

    .line 759
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_1d

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PAUSE:Z

    if-nez v0, :cond_1d

    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_36

    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "realStartActivityLocked: Skipping start of r="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " some activities pausing..."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_36
    return v5

    .line 765
    :cond_37
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    .line 766
    .local v6, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v6}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v13

    .line 768
    .local v13, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->beginDeferResume()V

    .line 771
    :try_start_42
    invoke-virtual {v2, v3, v5}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/wm/WindowProcessController;I)V

    .line 774
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->startLaunchTickingLocked()V

    .line 776
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/wm/ActivityRecord;->setProcess(Lcom/android/server/wm/WindowProcessController;)V
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_40b

    .line 779
    if-eqz p3, :cond_5e

    :try_start_4d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->canResumeByCompat()Z

    move-result v0
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_56

    if-nez v0, :cond_5e

    .line 780
    const/4 v0, 0x0

    move v14, v0

    .end local p3  # "andResume":Z
    .local v0, "andResume":Z
    goto :goto_60

    .line 942
    .end local v0  # "andResume":Z
    .restart local p3  # "andResume":Z
    :catchall_56
    move-exception v0

    move/from16 v14, p3

    move-object/from16 v36, v6

    move-object v4, v13

    goto/16 :goto_411

    .line 783
    :cond_5e
    move/from16 v14, p3

    .end local p3  # "andResume":Z
    .local v14, "andResume":Z
    :goto_60
    :try_start_60
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result v0
    :try_end_68
    .catchall {:try_start_60 .. :try_end_68} :catchall_406

    if-eqz v0, :cond_74

    .line 784
    :try_start_6a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->notifyUnknownVisibilityLaunched()V

    goto :goto_74

    .line 942
    :catchall_6e
    move-exception v0

    move-object/from16 v36, v6

    move-object v4, v13

    goto/16 :goto_411

    .line 791
    :cond_74
    :goto_74
    const/4 v7, 0x1

    if-eqz p4, :cond_80

    .line 795
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v8

    invoke-virtual {v0, v2, v8, v5, v7}, Lcom/android/server/wm/RootActivityContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z
    :try_end_80
    .catchall {:try_start_6a .. :try_end_80} :catchall_6e

    .line 799
    :cond_80
    :try_start_80
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0, v2, v7, v7}, Lcom/android/server/wm/ActivityStack;->checkKeyguardVisibility(Lcom/android/server/wm/ActivityRecord;ZZ)Z

    move-result v0
    :try_end_88
    .catchall {:try_start_80 .. :try_end_88} :catchall_406

    if-eqz v0, :cond_8d

    .line 806
    :try_start_8a
    invoke-virtual {v2, v7}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_6e

    .line 810
    :cond_8d
    :try_start_8d
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_91
    .catchall {:try_start_8d .. :try_end_91} :catchall_406

    if-eqz v0, :cond_9a

    :try_start_93
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_99
    .catchall {:try_start_93 .. :try_end_99} :catchall_6e

    goto :goto_9b

    :cond_9a
    const/4 v0, -0x1

    :goto_9b
    move v15, v0

    .line 811
    .local v15, "applicationInfoUid":I
    :try_start_9c
    iget v0, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v8, v3, Lcom/android/server/wm/WindowProcessController;->mUserId:I
    :try_end_a0
    .catchall {:try_start_9c .. :try_end_a0} :catchall_406

    if-ne v0, v8, :cond_a8

    :try_start_a2
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_a6
    .catchall {:try_start_a2 .. :try_end_a6} :catchall_6e

    if-eq v0, v15, :cond_e2

    .line 812
    :cond_a8
    :try_start_a8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "User ID for activity changing for "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " appInfo.uid="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " info.ai.uid="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " old="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " new="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_e2
    iget v0, v2, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    add-int/2addr v0, v7

    iput v0, v2, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    .line 820
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    .line 822
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL:Z
    :try_end_ef
    .catchall {:try_start_a8 .. :try_end_ef} :catchall_406

    const-string v8, "Launching: "

    if-eqz v0, :cond_105

    :try_start_f3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_105
    .catchall {:try_start_f3 .. :try_end_105} :catchall_6e

    .line 824
    :cond_105
    :try_start_105
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowProcessController;->addActivityIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 826
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    move-object v12, v0

    .line 827
    .local v12, "lockTaskController":Lcom/android/server/wm/LockTaskController;
    iget v0, v6, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I
    :try_end_111
    .catchall {:try_start_105 .. :try_end_111} :catchall_406

    const/4 v9, 0x3

    const/4 v10, 0x4

    const/4 v11, 0x2

    if-eq v0, v11, :cond_124

    :try_start_116
    iget v0, v6, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    if-eq v0, v10, :cond_124

    iget v0, v6, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    if-ne v0, v9, :cond_127

    .line 830
    invoke-virtual {v12}, Lcom/android/server/wm/LockTaskController;->getLockTaskModeState()I

    move-result v0
    :try_end_122
    .catchall {:try_start_116 .. :try_end_122} :catchall_6e

    if-ne v0, v7, :cond_127

    .line 832
    :cond_124
    :try_start_124
    invoke-virtual {v12, v6, v5, v5}, Lcom/android/server/wm/LockTaskController;->startLockTaskMode(Lcom/android/server/wm/TaskRecord;ZI)V
    :try_end_127
    .catchall {:try_start_124 .. :try_end_127} :catchall_406

    .line 836
    :cond_127
    :try_start_127
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v0
    :try_end_12b
    .catch Landroid/os/RemoteException; {:try_start_127 .. :try_end_12b} :catch_3b4
    .catchall {:try_start_127 .. :try_end_12b} :catchall_406

    if-eqz v0, :cond_3a4

    .line 839
    const/4 v0, 0x0

    .line 840
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/16 v16, 0x0

    .line 841
    .local v16, "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    if-eqz v14, :cond_145

    .line 844
    :try_start_132
    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    move-object v0, v9

    .line 845
    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;
    :try_end_137
    .catch Landroid/os/RemoteException; {:try_start_132 .. :try_end_137} :catch_13a
    .catchall {:try_start_132 .. :try_end_137} :catchall_6e

    move-object/from16 v16, v9

    goto :goto_147

    .line 924
    .end local v0  # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v16  # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :catch_13a
    move-exception v0

    move-object/from16 v36, v6

    move-object/from16 v34, v12

    move/from16 v35, v15

    move-object v6, v4

    move-object v4, v13

    goto/16 :goto_3bd

    .line 841
    .restart local v0  # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v16  # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :cond_145
    move-object/from16 v9, v16

    .line 847
    .end local v16  # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .local v9, "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :goto_147
    :try_start_147
    sget-boolean v16, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z
    :try_end_149
    .catch Landroid/os/RemoteException; {:try_start_147 .. :try_end_149} :catch_3b4
    .catchall {:try_start_147 .. :try_end_149} :catchall_406

    if-eqz v16, :cond_17f

    :try_start_14b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " icicle="

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->icicle:Landroid/os/Bundle;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " with results="

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " newIntents="

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " andResume="

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17f
    .catch Landroid/os/RemoteException; {:try_start_14b .. :try_end_17f} :catch_13a
    .catchall {:try_start_14b .. :try_end_17f} :catchall_6e

    .line 850
    :cond_17f
    const/16 v8, 0x7536

    :try_start_181
    new-array v10, v10, [Ljava/lang/Object;

    iget v11, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    .line 851
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    iget v11, v6, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v16, 0x2

    aput-object v11, v10, v16

    iget-object v11, v2, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const/16 v17, 0x3

    aput-object v11, v10, v17

    .line 850
    invoke-static {v8, v10}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 855
    invoke-static {}, Lcom/flyme/server/pm/FlymeFrontMonitor;->getInstance()Lcom/flyme/server/pm/FlymeFrontMonitor;

    move-result-object v8

    iget-object v10, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v11, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v5

    invoke-virtual {v8, v10, v11, v7, v5}, Lcom/flyme/server/pm/FlymeFrontMonitor;->setFront(Ljava/lang/String;Ljava/lang/String;II)V

    .line 858
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v5
    :try_end_1c1
    .catch Landroid/os/RemoteException; {:try_start_181 .. :try_end_1c1} :catch_3b4
    .catchall {:try_start_181 .. :try_end_1c1} :catchall_406

    if-eqz v5, :cond_1d1

    .line 860
    :try_start_1c3
    iget-object v5, v6, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActivityStackSupervisor;->updateHomeProcess(Lcom/android/server/wm/WindowProcessController;)V
    :try_end_1d1
    .catch Landroid/os/RemoteException; {:try_start_1c3 .. :try_end_1d1} :catch_13a
    .catchall {:try_start_1c3 .. :try_end_1d1} :catchall_6e

    .line 862
    :cond_1d1
    :try_start_1d1
    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v5

    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 863
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 862
    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManagerInternal;->notifyPackageUse(Ljava/lang/String;I)V

    .line 864
    iput-boolean v8, v2, Lcom/android/server/wm/ActivityRecord;->sleeping:Z

    .line 865
    iput-boolean v8, v2, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    .line 866
    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppWarningsLocked()Lcom/android/server/wm/AppWarnings;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/server/wm/AppWarnings;->onStartActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 867
    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v5

    iput-object v5, v2, Lcom/android/server/wm/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    .line 873
    new-instance v5, Landroid/util/MergedConfiguration;

    .line 874
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 875
    .local v5, "mergedConfiguration":Landroid/util/MergedConfiguration;
    invoke-virtual {v2, v5}, Lcom/android/server/wm/ActivityRecord;->setLastReportedConfiguration(Landroid/util/MergedConfiguration;)V

    .line 877
    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->icicle:Landroid/os/Bundle;

    invoke-direct {v1, v7, v8}, Lcom/android/server/wm/ActivityStackSupervisor;->logIfTransactionTooLarge(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 881
    nop

    .line 882
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v7

    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 881
    invoke-static {v7, v8}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v7

    .line 884
    .local v7, "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 885
    .local v8, "dc":Lcom/android/server/wm/DisplayContent;
    new-instance v10, Landroid/content/Intent;

    iget-object v11, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 886
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v18

    iget-object v11, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 889
    invoke-virtual {v5}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    .line 890
    invoke-virtual {v5}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v21

    move-object/from16 v33, v5

    .end local v5  # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .local v33, "mergedConfiguration":Landroid/util/MergedConfiguration;
    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;
    :try_end_23f
    .catch Landroid/os/RemoteException; {:try_start_1d1 .. :try_end_23f} :catch_3b4
    .catchall {:try_start_1d1 .. :try_end_23f} :catchall_406

    move-object/from16 v34, v12

    .end local v12  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .local v34, "lockTaskController":Lcom/android/server/wm/LockTaskController;
    :try_start_241
    iget-object v12, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;
    :try_end_243
    .catch Landroid/os/RemoteException; {:try_start_241 .. :try_end_243} :catch_39c
    .catchall {:try_start_241 .. :try_end_243} :catchall_406

    move/from16 v35, v15

    .end local v15  # "applicationInfoUid":I
    .local v35, "applicationInfoUid":I
    :try_start_245
    iget-object v15, v6, Lcom/android/server/wm/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 891
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->getReportedProcState()I

    move-result v25
    :try_end_24b
    .catch Landroid/os/RemoteException; {:try_start_245 .. :try_end_24b} :catch_396
    .catchall {:try_start_245 .. :try_end_24b} :catchall_406

    move-object/from16 v36, v6

    .end local v6  # "task":Lcom/android/server/wm/TaskRecord;
    .local v36, "task":Lcom/android/server/wm/TaskRecord;
    :try_start_24d
    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->icicle:Landroid/os/Bundle;
    :try_end_24f
    .catch Landroid/os/RemoteException; {:try_start_24d .. :try_end_24f} :catch_392
    .catchall {:try_start_24d .. :try_end_24f} :catchall_38e

    move-object/from16 v37, v13

    .end local v13  # "stack":Lcom/android/server/wm/ActivityStack;
    .local v37, "stack":Lcom/android/server/wm/ActivityStack;
    :try_start_251
    iget-object v13, v2, Lcom/android/server/wm/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    .line 893
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    move-result v30

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->createProfilerInfoIfNeeded()Landroid/app/ProfilerInfo;

    move-result-object v31
    :try_end_25b
    .catch Landroid/os/RemoteException; {:try_start_251 .. :try_end_25b} :catch_389
    .catchall {:try_start_251 .. :try_end_25b} :catchall_384

    move-object/from16 v38, v4

    :try_start_25d
    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->assistToken:Landroid/os/Binder;

    .line 885
    move-object/from16 v17, v10

    move-object/from16 v19, v11

    move-object/from16 v22, v5

    move-object/from16 v23, v12

    move-object/from16 v24, v15

    move-object/from16 v26, v6

    move-object/from16 v27, v13

    move-object/from16 v28, v0

    move-object/from16 v29, v9

    move-object/from16 v32, v4

    invoke-static/range {v17 .. v32}, Landroid/app/servertransaction/LaunchActivityItem;->obtain(Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZLandroid/app/ProfilerInfo;Landroid/os/IBinder;)Landroid/app/servertransaction/LaunchActivityItem;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_27a
    .catch Landroid/os/RemoteException; {:try_start_25d .. :try_end_27a} :catch_37e
    .catchall {:try_start_25d .. :try_end_27a} :catchall_384

    .line 898
    if-eqz v14, :cond_291

    .line 899
    :try_start_27c
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    move-result v4

    invoke-static {v4}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(Z)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v4
    :try_end_284
    .catch Landroid/os/RemoteException; {:try_start_27c .. :try_end_284} :catch_28a
    .catchall {:try_start_27c .. :try_end_284} :catchall_285

    .local v4, "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    goto :goto_295

    .line 942
    .end local v0  # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v4  # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    .end local v7  # "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v8  # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v9  # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v33  # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .end local v34  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .end local v35  # "applicationInfoUid":I
    :catchall_285
    move-exception v0

    move-object/from16 v4, v37

    goto/16 :goto_411

    .line 924
    .restart local v34  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v35  # "applicationInfoUid":I
    :catch_28a
    move-exception v0

    move-object/from16 v4, v37

    move-object/from16 v6, v38

    goto/16 :goto_3bd

    .line 901
    .restart local v0  # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v7  # "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    .restart local v8  # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v9  # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .restart local v33  # "mergedConfiguration":Landroid/util/MergedConfiguration;
    :cond_291
    :try_start_291
    invoke-static {}, Landroid/app/servertransaction/PauseActivityItem;->obtain()Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v4

    .line 903
    .restart local v4  # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    :goto_295
    invoke-virtual {v7, v4}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 906
    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 908
    iget-object v5, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_2a5
    .catch Landroid/os/RemoteException; {:try_start_291 .. :try_end_2a5} :catch_37e
    .catchall {:try_start_291 .. :try_end_2a5} :catchall_384

    const/4 v6, 0x2

    and-int/2addr v5, v6

    if-eqz v5, :cond_2fe

    :try_start_2a9
    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mHasHeavyWeightFeature:Z

    if-eqz v5, :cond_2fe

    .line 913
    iget-object v5, v3, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f4

    .line 914
    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v5, :cond_2ea

    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eq v5, v3, :cond_2ea

    .line 916
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting new heavy weight process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " when already running "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_2e4
    .catch Landroid/os/RemoteException; {:try_start_2a9 .. :try_end_2e4} :catch_2f7
    .catchall {:try_start_2a9 .. :try_end_2e4} :catchall_285

    move-object/from16 v6, v38

    :try_start_2e6
    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2ec

    .line 914
    :cond_2ea
    move-object/from16 v6, v38

    .line 920
    :goto_2ec
    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->setHeavyWeightProcess(Lcom/android/server/wm/ActivityRecord;)V
    :try_end_2f1
    .catch Landroid/os/RemoteException; {:try_start_2e6 .. :try_end_2f1} :catch_2f2
    .catchall {:try_start_2e6 .. :try_end_2f1} :catchall_285

    goto :goto_300

    .line 924
    .end local v0  # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v4  # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    .end local v7  # "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v8  # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v9  # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v33  # "mergedConfiguration":Landroid/util/MergedConfiguration;
    :catch_2f2
    move-exception v0

    goto :goto_2fa

    .line 913
    .restart local v0  # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v4  # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    .restart local v7  # "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    .restart local v8  # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v9  # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .restart local v33  # "mergedConfiguration":Landroid/util/MergedConfiguration;
    :cond_2f4
    move-object/from16 v6, v38

    goto :goto_300

    .line 924
    .end local v0  # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v4  # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    .end local v7  # "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v8  # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v9  # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v33  # "mergedConfiguration":Landroid/util/MergedConfiguration;
    :catch_2f7
    move-exception v0

    move-object/from16 v6, v38

    :goto_2fa
    move-object/from16 v4, v37

    goto/16 :goto_3bd

    .line 908
    .restart local v0  # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v4  # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    .restart local v7  # "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    .restart local v8  # "dc":Lcom/android/server/wm/DisplayContent;
    .restart local v9  # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .restart local v33  # "mergedConfiguration":Landroid/util/MergedConfiguration;
    :cond_2fe
    move-object/from16 v6, v38

    .line 940
    .end local v0  # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v4  # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    .end local v7  # "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v8  # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v9  # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v33  # "mergedConfiguration":Landroid/util/MergedConfiguration;
    :goto_300
    nop

    .line 942
    .end local v34  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .end local v35  # "applicationInfoUid":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->endDeferResume()V

    .line 943
    nop

    .line 945
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    .line 946
    move-object/from16 v4, v37

    .end local v37  # "stack":Lcom/android/server/wm/ActivityStack;
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v4, v2}, Lcom/android/server/wm/ActivityStack;->updateLRUListLocked(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_329

    .line 947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " being launched, but already in LRU list"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_329
    if-eqz v14, :cond_335

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->readyToResume()Z

    move-result v0

    if-eqz v0, :cond_335

    .line 955
    invoke-virtual {v4, v2}, Lcom/android/server/wm/ActivityStack;->minimalResumeActivityLocked(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_359

    .line 960
    :cond_335
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STATES:Z

    if-eqz v0, :cond_352

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Moving to PAUSED: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " (starting in paused state)"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :cond_352
    sget-object v0, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/wm/ActivityStack$ActivityState;

    const-string v5, "realStartActivityLocked"

    invoke-virtual {v2, v0, v5}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityStack$ActivityState;Ljava/lang/String;)V

    .line 966
    :goto_359
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v0, v5}, Lcom/android/server/wm/WindowProcessController;->onStartActivity(ILandroid/content/pm/ActivityInfo;)V

    .line 972
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/RootActivityContainer;->isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v0

    if-eqz v0, :cond_373

    .line 973
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStartController;->startSetupActivity()V

    .line 978
    :cond_373
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_37c

    .line 979
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->updateServiceConnectionActivities()V

    .line 982
    :cond_37c
    const/4 v5, 0x1

    return v5

    .line 924
    .end local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v34  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v35  # "applicationInfoUid":I
    .restart local v37  # "stack":Lcom/android/server/wm/ActivityStack;
    :catch_37e
    move-exception v0

    move-object/from16 v4, v37

    move-object/from16 v6, v38

    goto :goto_38d

    .line 942
    .end local v34  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .end local v35  # "applicationInfoUid":I
    :catchall_384
    move-exception v0

    move-object/from16 v4, v37

    .end local v37  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    goto/16 :goto_411

    .line 924
    .end local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v34  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v35  # "applicationInfoUid":I
    .restart local v37  # "stack":Lcom/android/server/wm/ActivityStack;
    :catch_389
    move-exception v0

    move-object v6, v4

    move-object/from16 v4, v37

    .end local v37  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_38d
    goto :goto_3bd

    .line 942
    .end local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v34  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .end local v35  # "applicationInfoUid":I
    .restart local v13  # "stack":Lcom/android/server/wm/ActivityStack;
    :catchall_38e
    move-exception v0

    move-object v4, v13

    .end local v13  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    goto/16 :goto_411

    .line 924
    .end local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v13  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v34  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v35  # "applicationInfoUid":I
    :catch_392
    move-exception v0

    move-object v6, v4

    move-object v4, v13

    .end local v13  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    goto :goto_3bd

    .end local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v36  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v6  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v13  # "stack":Lcom/android/server/wm/ActivityStack;
    :catch_396
    move-exception v0

    move-object/from16 v36, v6

    move-object v6, v4

    move-object v4, v13

    .end local v6  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v13  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v36  # "task":Lcom/android/server/wm/TaskRecord;
    goto :goto_3bd

    .end local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v35  # "applicationInfoUid":I
    .end local v36  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v6  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v13  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v15  # "applicationInfoUid":I
    :catch_39c
    move-exception v0

    move-object/from16 v36, v6

    move/from16 v35, v15

    move-object v6, v4

    move-object v4, v13

    .end local v6  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v13  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v15  # "applicationInfoUid":I
    .restart local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v35  # "applicationInfoUid":I
    .restart local v36  # "task":Lcom/android/server/wm/TaskRecord;
    goto :goto_3bd

    .line 837
    .end local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v34  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .end local v35  # "applicationInfoUid":I
    .end local v36  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v6  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v12  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v13  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v15  # "applicationInfoUid":I
    :cond_3a4
    move-object/from16 v36, v6

    move-object/from16 v34, v12

    move/from16 v35, v15

    move-object v6, v4

    move-object v4, v13

    .end local v6  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v12  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .end local v13  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v15  # "applicationInfoUid":I
    .restart local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v34  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v35  # "applicationInfoUid":I
    .restart local v36  # "task":Lcom/android/server/wm/TaskRecord;
    :try_start_3ac
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    .end local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v14  # "andResume":Z
    .end local v36  # "task":Lcom/android/server/wm/TaskRecord;
    .end local p0  # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .end local p1  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local p2  # "proc":Lcom/android/server/wm/WindowProcessController;
    .end local p4  # "checkConfig":Z
    throw v0
    :try_end_3b2
    .catch Landroid/os/RemoteException; {:try_start_3ac .. :try_end_3b2} :catch_3b2
    .catchall {:try_start_3ac .. :try_end_3b2} :catchall_404

    .line 924
    .restart local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v14  # "andResume":Z
    .restart local v36  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local p0  # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .restart local p1  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local p2  # "proc":Lcom/android/server/wm/WindowProcessController;
    .restart local p4  # "checkConfig":Z
    :catch_3b2
    move-exception v0

    goto :goto_3bd

    .end local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v34  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .end local v35  # "applicationInfoUid":I
    .end local v36  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v6  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v12  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v13  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v15  # "applicationInfoUid":I
    :catch_3b4
    move-exception v0

    move-object/from16 v36, v6

    move-object/from16 v34, v12

    move/from16 v35, v15

    move-object v6, v4

    move-object v4, v13

    .line 925
    .end local v6  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v12  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .end local v13  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v15  # "applicationInfoUid":I
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v34  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v35  # "applicationInfoUid":I
    .restart local v36  # "task":Lcom/android/server/wm/TaskRecord;
    :goto_3bd
    :try_start_3bd
    iget-boolean v5, v2, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    if-eqz v5, :cond_3fa

    .line 927
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Second failure launching "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 928
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", giving up"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 927
    invoke-static {v6, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 929
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->appDied()V

    .line 930
    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "2nd-crash"

    const/4 v12, 0x0

    move-object v7, v4

    move-object/from16 v5, v34

    .end local v34  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .local v5, "lockTaskController":Lcom/android/server/wm/LockTaskController;
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wm/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    :try_end_3f4
    .catchall {:try_start_3bd .. :try_end_3f4} :catchall_404

    .line 932
    nop

    .line 942
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->endDeferResume()V

    .line 932
    const/4 v6, 0x0

    return v6

    .line 937
    .end local v5  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v34  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    :cond_3fa
    move-object/from16 v5, v34

    .end local v34  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v5  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    const/4 v6, 0x1

    :try_start_3fd
    iput-boolean v6, v2, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    .line 938
    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowProcessController;->removeActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 939
    nop

    .end local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v14  # "andResume":Z
    .end local v36  # "task":Lcom/android/server/wm/TaskRecord;
    .end local p0  # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .end local p1  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local p2  # "proc":Lcom/android/server/wm/WindowProcessController;
    .end local p4  # "checkConfig":Z
    throw v0
    :try_end_404
    .catchall {:try_start_3fd .. :try_end_404} :catchall_404

    .line 942
    .end local v0  # "e":Landroid/os/RemoteException;
    .end local v5  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .end local v35  # "applicationInfoUid":I
    .restart local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v14  # "andResume":Z
    .restart local v36  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local p0  # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .restart local p1  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local p2  # "proc":Lcom/android/server/wm/WindowProcessController;
    .restart local p4  # "checkConfig":Z
    :catchall_404
    move-exception v0

    goto :goto_411

    .end local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v36  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v6  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v13  # "stack":Lcom/android/server/wm/ActivityStack;
    :catchall_406
    move-exception v0

    move-object/from16 v36, v6

    move-object v4, v13

    .end local v6  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v13  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v36  # "task":Lcom/android/server/wm/TaskRecord;
    goto :goto_411

    .end local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v14  # "andResume":Z
    .end local v36  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v6  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v13  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local p3  # "andResume":Z
    :catchall_40b
    move-exception v0

    move-object/from16 v36, v6

    move-object v4, v13

    move/from16 v14, p3

    .end local v6  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v13  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local p3  # "andResume":Z
    .restart local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v14  # "andResume":Z
    .restart local v36  # "task":Lcom/android/server/wm/TaskRecord;
    :goto_411
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->endDeferResume()V

    throw v0
.end method

.method removeRestartTimeouts(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 2517
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd5

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2518
    return-void
.end method

.method removeSleepTimeouts()V
    .registers 3

    .line 2508
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 2509
    return-void
.end method

.method removeStack(Lcom/android/server/wm/ActivityStack;)V
    .registers 4
    .param p1, "stack"  # Lcom/android/server/wm/ActivityStack;

    .line 1866
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$0u1RcpeZ6m0BHDGGv8EXroS3KyE;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$ActivityStackSupervisor$0u1RcpeZ6m0BHDGGv8EXroS3KyE;-><init>(Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStack;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 1867
    return-void
.end method

.method removeTaskByIdLocked(IZZLjava/lang/String;)Z
    .registers 11
    .param p1, "taskId"  # I
    .param p2, "killProcess"  # Z
    .param p3, "removeFromRecents"  # Z
    .param p4, "reason"  # Ljava/lang/String;

    .line 1874
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTaskByIdLocked(IZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method removeTaskByIdLocked(IZZZLjava/lang/String;)Z
    .registers 10
    .param p1, "taskId"  # I
    .param p2, "killProcess"  # Z
    .param p3, "removeFromRecents"  # Z
    .param p4, "pauseImmediately"  # Z
    .param p5, "reason"  # Ljava/lang/String;

    .line 1890
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 1891
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 1892
    .local v0, "tr":Lcom/android/server/wm/TaskRecord;
    if-eqz v0, :cond_23

    .line 1893
    invoke-virtual {v0, p4, p5}, Lcom/android/server/wm/TaskRecord;->removeTaskActivitiesLocked(ZLjava/lang/String;)V

    .line 1894
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/wm/ActivityStackSupervisor;->cleanUpRemovedTaskLocked(Lcom/android/server/wm/TaskRecord;ZZ)V

    .line 1895
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/TaskRecord;)V

    .line 1896
    iget-boolean v2, v0, Lcom/android/server/wm/TaskRecord;->isPersistable:Z

    if-eqz v2, :cond_22

    .line 1897
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 1899
    :cond_22
    return v1

    .line 1901
    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request to remove task ignored for non-existent task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    const/4 v1, 0x0

    return v1
.end method

.method removeTimeoutsForActivityLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 2496
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeTimeoutsForActivity: Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    .line 2497
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2496
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2499
    return-void
.end method

.method reportActivityLaunchedLocked(ZLcom/android/server/wm/ActivityRecord;JI)V
    .registers 12
    .param p1, "timeout"  # Z
    .param p2, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "totalTime"  # J
    .param p5, "launchState"  # I

    .line 649
    const/4 v0, 0x0

    .line 650
    .local v0, "changed":Z
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    const/4 v2, 0x1

    if-lez v1, :cond_1f

    .line 651
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v1, :cond_1f

    .line 652
    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v1, :cond_1f

    .line 653
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    const/16 v3, 0x1042

    iget-object v4, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 657
    :cond_1f
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_26
    if-ltz v1, :cond_4f

    .line 658
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/WaitResult;

    .line 659
    .local v2, "w":Landroid/app/WaitResult;
    iget-object v3, v2, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-nez v3, :cond_4c

    .line 660
    const/4 v0, 0x1

    .line 661
    iput-boolean p1, v2, Landroid/app/WaitResult;->timeout:Z

    .line 662
    if-eqz p2, :cond_48

    .line 663
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 665
    :cond_48
    iput-wide p3, v2, Landroid/app/WaitResult;->totalTime:J

    .line 666
    iput p5, v2, Landroid/app/WaitResult;->launchState:I

    .line 657
    .end local v2  # "w":Landroid/app/WaitResult;
    :cond_4c
    add-int/lit8 v1, v1, -0x1

    goto :goto_26

    .line 670
    .end local v1  # "i":I
    :cond_4f
    if-eqz v0, :cond_58

    .line 671
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 673
    :cond_58
    return-void
.end method

.method reportResumedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 6
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 2197
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2199
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2200
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityDisplay;->allResumedActivitiesComplete()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    .line 2201
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v2}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 2204
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->executeAppTransitionForAllDisplay()V

    .line 2205
    const/4 v1, 0x1

    return v1

    .line 2207
    :cond_21
    return v2
.end method

.method reportWaitingActivityLaunchedIfNeeded(Lcom/android/server/wm/ActivityRecord;I)V
    .registers 8
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "result"  # I

    .line 618
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 619
    return-void

    .line 622
    :cond_9
    const/4 v0, 0x3

    if-eq p2, v0, :cond_10

    const/4 v1, 0x2

    if-eq p2, v1, :cond_10

    .line 623
    return-void

    .line 626
    :cond_10
    const/4 v1, 0x0

    .line 628
    .local v1, "changed":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_19
    if-ltz v2, :cond_33

    .line 629
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WaitResult;

    .line 630
    .local v3, "w":Landroid/app/WaitResult;
    iget-object v4, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    if-nez v4, :cond_30

    .line 631
    const/4 v1, 0x1

    .line 632
    iput p2, v3, Landroid/app/WaitResult;->result:I

    .line 636
    if-ne p2, v0, :cond_30

    .line 637
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v4, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 628
    .end local v3  # "w":Landroid/app/WaitResult;
    :cond_30
    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    .line 642
    .end local v2  # "i":I
    :cond_33
    if-eqz v1, :cond_3c

    .line 643
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 645
    :cond_3c
    return-void
.end method

.method resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 15
    .param p1, "dockedBounds"  # Landroid/graphics/Rect;
    .param p2, "tempDockedTaskBounds"  # Landroid/graphics/Rect;
    .param p3, "tempDockedTaskInsetBounds"  # Landroid/graphics/Rect;
    .param p4, "tempOtherTaskBounds"  # Landroid/graphics/Rect;
    .param p5, "tempOtherTaskInsetBounds"  # Landroid/graphics/Rect;
    .param p6, "preserveWindows"  # Z

    .line 1696
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 1699
    return-void
.end method

.method resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .registers 29
    .param p1, "dockedBounds"  # Landroid/graphics/Rect;
    .param p2, "tempDockedTaskBounds"  # Landroid/graphics/Rect;
    .param p3, "tempDockedTaskInsetBounds"  # Landroid/graphics/Rect;
    .param p4, "tempOtherTaskBounds"  # Landroid/graphics/Rect;
    .param p5, "tempOtherTaskInsetBounds"  # Landroid/graphics/Rect;
    .param p6, "preserveWindows"  # Z
    .param p7, "deferResume"  # Z

    .line 1705
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-boolean v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    if-nez v0, :cond_9

    .line 1707
    return-void

    .line 1710
    :cond_9
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 1711
    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1712
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v3, :cond_1d

    .line 1713
    const-string v0, "ActivityTaskManager"

    const-string v4, "resizeDockedStackLocked: docked stack not found"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    return-void

    .line 1717
    :cond_1d
    iget-boolean v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mDockedStackResizing:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_42

    .line 1718
    iput-boolean v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mHasPendingDockedBounds:Z

    .line 1719
    invoke-static/range {p1 .. p1}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingDockedBounds:Landroid/graphics/Rect;

    .line 1720
    invoke-static/range {p2 .. p2}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempDockedTaskBounds:Landroid/graphics/Rect;

    .line 1721
    invoke-static/range {p3 .. p3}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempDockedTaskInsetBounds:Landroid/graphics/Rect;

    .line 1722
    invoke-static/range {p4 .. p4}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempOtherTaskBounds:Landroid/graphics/Rect;

    .line 1723
    invoke-static/range {p5 .. p5}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempOtherTaskInsetBounds:Landroid/graphics/Rect;

    .line 1726
    :cond_42
    const-wide/16 v5, 0x40

    const-string v0, "am.resizeDockedStack"

    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1727
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 1730
    const/4 v0, 0x0

    :try_start_4f
    iput-boolean v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 1731
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0
    :try_end_55
    .catchall {:try_start_4f .. :try_end_55} :catchall_ee

    .line 1732
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v7, p2

    move-object/from16 v8, p3

    :try_start_59
    invoke-virtual {v3, v2, v7, v8}, Lcom/android/server/wm/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1736
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v9

    if-eq v9, v4, :cond_d0

    if-nez v2, :cond_6c

    .line 1737
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v9

    if-nez v9, :cond_6c

    goto/16 :goto_d0

    .line 1750
    :cond_6c
    iget-object v9, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v9}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v9

    .line 1751
    .local v9, "display":Lcom/android/server/wm/ActivityDisplay;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 1752
    .local v10, "otherTaskRect":Landroid/graphics/Rect;
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v11

    sub-int/2addr v11, v4

    .local v11, "i":I
    :goto_7c
    if-ltz v11, :cond_d4

    .line 1753
    invoke-virtual {v9, v11}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v12

    .line 1754
    .local v12, "current":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityStack;->inSplitScreenSecondaryWindowingMode()Z

    move-result v13

    if-nez v13, :cond_89

    .line 1755
    goto :goto_cd

    .line 1757
    :cond_89
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityStack;->affectedBySplitScreenResize()Z

    move-result v13

    if-nez v13, :cond_90

    .line 1758
    goto :goto_cd

    .line 1760
    :cond_90
    iget-boolean v13, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mDockedStackResizing:Z

    if-eqz v13, :cond_9b

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityStack;->isTopActivityVisible()Z

    move-result v13

    if-nez v13, :cond_9b

    .line 1763
    goto :goto_cd

    .line 1765
    :cond_9b
    iget-object v13, v1, Lcom/android/server/wm/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    move-object/from16 v15, p4

    invoke-virtual {v12, v2, v15, v13, v10}, Lcom/android/server/wm/ActivityStack;->getStackDockedModeBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1770
    iget-object v13, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 1771
    iget-object v14, v1, Lcom/android/server/wm/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_af

    iget-object v14, v1, Lcom/android/server/wm/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    goto :goto_b0

    :cond_af
    const/4 v14, 0x0

    :goto_b0
    move-object/from16 v16, v14

    .line 1772
    invoke-virtual {v10}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_bb

    move-object/from16 v17, v10

    goto :goto_bd

    :cond_bb
    move-object/from16 v17, v15

    :goto_bd
    const/16 v19, 0x1

    .line 1770
    move-object v14, v12

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, p5

    move/from16 v18, p6

    move/from16 v20, p7

    invoke-virtual/range {v13 .. v20}, Lcom/android/server/wm/RootActivityContainer;->resizeStack(Lcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    .line 1752
    .end local v12  # "current":Lcom/android/server/wm/ActivityStack;
    :goto_cd
    add-int/lit8 v11, v11, -0x1

    goto :goto_7c

    .line 1741
    .end local v9  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v10  # "otherTaskRect":Landroid/graphics/Rect;
    .end local v11  # "i":I
    :cond_d0
    :goto_d0
    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;Z)V
    :try_end_d3
    .catchall {:try_start_59 .. :try_end_d3} :catchall_ec

    .line 1744
    const/4 v0, 0x0

    .line 1777
    :cond_d4
    if-nez p7, :cond_de

    .line 1778
    move/from16 v9, p6

    :try_start_d8
    invoke-virtual {v3, v0, v9}, Lcom/android/server/wm/ActivityStack;->ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/wm/ActivityRecord;Z)V
    :try_end_db
    .catchall {:try_start_d8 .. :try_end_db} :catchall_dc

    goto :goto_e0

    .line 1781
    .end local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_dc
    move-exception v0

    goto :goto_f5

    .line 1777
    .restart local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_de
    move/from16 v9, p6

    .line 1781
    .end local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    :goto_e0
    iput-boolean v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 1782
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1783
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 1784
    nop

    .line 1785
    return-void

    .line 1781
    :catchall_ec
    move-exception v0

    goto :goto_f3

    :catchall_ee
    move-exception v0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    :goto_f3
    move/from16 v9, p6

    :goto_f5
    iput-boolean v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mAllowDockedStackResize:Z

    .line 1782
    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1783
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method resizePinnedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 11
    .param p1, "pinnedBounds"  # Landroid/graphics/Rect;
    .param p2, "tempPinnedTaskBounds"  # Landroid/graphics/Rect;

    .line 1789
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 1790
    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getPinnedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1791
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_14

    .line 1792
    const-string v1, "ActivityTaskManager"

    const-string v2, "resizePinnedStackLocked: pinned stack not found"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    return-void

    .line 1800
    :cond_14
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 1801
    .local v1, "stackController":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->pinnedStackResizeDisallowed()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1802
    return-void

    .line 1805
    :cond_1f
    const-wide/16 v2, 0x40

    const-string v4, "am.resizePinnedStack"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1806
    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 1808
    :try_start_2b
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 1809
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v5, 0x0

    .line 1810
    .local v5, "insetBounds":Landroid/graphics/Rect;
    const/4 v6, 0x0

    if-eqz p2, :cond_4c

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isAnimatingBoundsToFullscreen()Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 1812
    iget-object v7, p0, Lcom/android/server/wm/ActivityStackSupervisor;->tempRect:Landroid/graphics/Rect;

    move-object v5, v7

    .line 1813
    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 1814
    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 1815
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    iput v7, v5, Landroid/graphics/Rect;->right:I

    .line 1816
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v7

    iput v7, v5, Landroid/graphics/Rect;->bottom:I

    .line 1818
    :cond_4c
    if-eqz p1, :cond_53

    if-nez p2, :cond_53

    .line 1822
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->onPipAnimationEndResize()V

    .line 1824
    :cond_53
    invoke-virtual {v0, p1, p2, v5}, Lcom/android/server/wm/ActivityStack;->resize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1825
    invoke-virtual {v0, v4, v6}, Lcom/android/server/wm/ActivityStack;->ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/wm/ActivityRecord;Z)V
    :try_end_59
    .catchall {:try_start_2b .. :try_end_59} :catchall_63

    .line 1827
    .end local v4  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v5  # "insetBounds":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1828
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1829
    nop

    .line 1830
    return-void

    .line 1827
    :catchall_63
    move-exception v4

    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1828
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v4
.end method

.method resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;
    .registers 13
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "rInfo"  # Landroid/content/pm/ResolveInfo;
    .param p3, "startFlags"  # I
    .param p4, "profilerInfo"  # Landroid/app/ProfilerInfo;

    .line 677
    if-eqz p2, :cond_5

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    .line 678
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_6
    if-eqz v0, :cond_69

    .line 683
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 687
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v2, "system"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d

    .line 688
    and-int/lit8 v1, p3, 0xe

    if-nez v1, :cond_26

    if-eqz p4, :cond_5d

    .line 695
    :cond_26
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v7

    :try_start_2b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 697
    sget-object v1, Lcom/android/server/wm/-$$Lambda$8ew6SY_v_7ex9pwFGDswbkGWuXc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$8ew6SY_v_7ex9pwFGDswbkGWuXc;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 699
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 697
    move-object v3, v0

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 701
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_49
    .catchall {:try_start_2b .. :try_end_49} :catchall_57

    .line 703
    :try_start_49
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_50
    .catch Ljava/lang/InterruptedException; {:try_start_49 .. :try_end_50} :catch_51
    .catchall {:try_start_49 .. :try_end_50} :catchall_57

    .line 706
    goto :goto_52

    .line 704
    :catch_51
    move-exception v2

    .line 707
    .end local v1  # "msg":Landroid/os/Message;
    :goto_52
    :try_start_52
    monitor-exit v7
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_57

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_5d

    :catchall_57
    move-exception v1

    :try_start_58
    monitor-exit v7
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 710
    :cond_5d
    :goto_5d
    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchToken()Ljava/lang/String;

    move-result-object v1

    .line 711
    .local v1, "intentLaunchToken":Ljava/lang/String;
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    if-nez v2, :cond_69

    if-eqz v1, :cond_69

    .line 712
    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    .line 715
    .end local v1  # "intentLaunchToken":Ljava/lang/String;
    :cond_69
    return-object v0
.end method

.method public resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;
    .registers 13
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "resolvedType"  # Ljava/lang/String;
    .param p3, "startFlags"  # I
    .param p4, "profilerInfo"  # Landroid/app/ProfilerInfo;
    .param p5, "userId"  # I
    .param p6, "filterCallingUid"  # I

    .line 748
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 749
    .local v0, "rInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    return-object v1
.end method

.method resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;
    .registers 20
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "resolvedType"  # Ljava/lang/String;
    .param p3, "userId"  # I
    .param p4, "flags"  # I
    .param p5, "filterCallingUid"  # I

    .line 721
    const-wide/16 v1, 0x40

    :try_start_2
    const-string v0, "resolveIntent"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 722
    const/high16 v0, 0x10000

    or-int v0, p4, v0

    or-int/lit16 v0, v0, 0x400

    .line 724
    .local v0, "modifiedFlags":I
    invoke-virtual {p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 725
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_1c

    goto :goto_1e

    :cond_1c
    move v10, v0

    goto :goto_22

    .line 726
    :cond_1e
    :goto_1e
    const/high16 v3, 0x800000

    or-int/2addr v0, v3

    move v10, v0

    .line 734
    .end local v0  # "modifiedFlags":I
    .local v10, "modifiedFlags":I
    :goto_22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_26
    .catchall {:try_start_2 .. :try_end_26} :catchall_49

    move-wide v11, v3

    .line 736
    .local v11, "token":J
    move-object v13, p0

    :try_start_28
    iget-object v0, v13, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    const/4 v8, 0x1

    move-object v4, p1

    move-object/from16 v5, p2

    move v6, v10

    move/from16 v7, p3

    move/from16 v9, p5

    invoke-virtual/range {v3 .. v9}, Landroid/content/pm/PackageManagerInternal;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIZI)Landroid/content/pm/ResolveInfo;

    move-result-object v0
    :try_end_3b
    .catchall {:try_start_28 .. :try_end_3b} :catchall_42

    .line 739
    :try_start_3b
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_47

    .line 742
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 736
    return-object v0

    .line 739
    :catchall_42
    move-exception v0

    :try_start_43
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .end local p1  # "intent":Landroid/content/Intent;
    .end local p2  # "resolvedType":Ljava/lang/String;
    .end local p3  # "userId":I
    .end local p4  # "flags":I
    .end local p5  # "filterCallingUid":I
    throw v0
    :try_end_47
    .catchall {:try_start_43 .. :try_end_47} :catchall_47

    .line 742
    .end local v10  # "modifiedFlags":I
    .end local v11  # "token":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .restart local p1  # "intent":Landroid/content/Intent;
    .restart local p2  # "resolvedType":Ljava/lang/String;
    .restart local p3  # "userId":I
    .restart local p4  # "flags":I
    .restart local p5  # "filterCallingUid":I
    :catchall_47
    move-exception v0

    goto :goto_4b

    :catchall_49
    move-exception v0

    move-object v13, p0

    :goto_4b
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method restoreRecentTaskLocked(Lcom/android/server/wm/TaskRecord;Landroid/app/ActivityOptions;Z)Z
    .registers 10
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "aOptions"  # Landroid/app/ActivityOptions;
    .param p3, "onTop"  # Z

    .line 1989
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 1990
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p1, p3}, Lcom/android/server/wm/RootActivityContainer;->getLaunchStack(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskRecord;Z)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1991
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1992
    .local v1, "currentStack":Lcom/android/server/wm/ActivityStack;
    const/4 v2, 0x1

    if-eqz v1, :cond_16

    .line 1994
    if-ne v1, v0, :cond_11

    .line 1996
    return v2

    .line 2000
    :cond_11
    const-string v3, "restoreRecentTaskLocked"

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/server/wm/ActivityStack;->removeTask(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;I)V

    .line 2003
    :cond_16
    const-string v3, "restoreRecentTask"

    invoke-virtual {v0, p1, p3, v3}, Lcom/android/server/wm/ActivityStack;->addTask(Lcom/android/server/wm/TaskRecord;ZLjava/lang/String;)V

    .line 2005
    invoke-virtual {p1, p3, v2}, Lcom/android/server/wm/TaskRecord;->createTask(ZZ)V

    .line 2006
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v3, :cond_40

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Added restored task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    :cond_40
    iget-object v3, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 2009
    .local v3, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "activityNdx":I
    :goto_47
    if-ltz v4, :cond_55

    .line 2010
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->createAppWindowToken()V

    .line 2009
    add-int/lit8 v4, v4, -0x1

    goto :goto_47

    .line 2012
    .end local v4  # "activityNdx":I
    :cond_55
    return v2
.end method

.method final scheduleIdleLocked()V
    .registers 3

    .line 2425
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 2426
    return-void
.end method

.method scheduleIdleTimeoutLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "next"  # Lcom/android/server/wm/ActivityRecord;

    .line 2418
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduleIdleTimeoutLocked: Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    .line 2419
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2418
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2421
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2422
    return-void
.end method

.method scheduleLaunchTaskBehindComplete(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"  # Landroid/os/IBinder;

    .line 2229
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd4

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2230
    return-void
.end method

.method final scheduleRestartTimeout(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 2521
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeRestartTimeouts(Lcom/android/server/wm/ActivityRecord;)V

    .line 2522
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd5

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2524
    return-void
.end method

.method final scheduleResumeTopActivities()V
    .registers 3

    .line 2502
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2503
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 2505
    :cond_f
    return-void
.end method

.method final scheduleSleepTimeout()V
    .registers 5

    .line 2512
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 2513
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xcb

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2514
    return-void
.end method

.method scheduleUpdateMultiWindowMode(Lcom/android/server/wm/TaskRecord;)V
    .registers 5
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;

    .line 2633
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->deferScheduleMultiWindowModeChanged()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2634
    return-void

    .line 2637
    :cond_b
    iget-object v0, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_13
    if-ltz v0, :cond_2b

    .line 2638
    iget-object v1, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 2639
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 2640
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2637
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 2644
    .end local v0  # "i":I
    :cond_2b
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd6

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 2645
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 2647
    :cond_3a
    return-void
.end method

.method scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/TaskRecord;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "targetStackBounds"  # Landroid/graphics/Rect;

    .line 2660
    iget-object v0, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_25

    .line 2661
    iget-object v1, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 2662
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2663
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2667
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2660
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2670
    .end local v0  # "i":I
    :cond_25
    iput-object p2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPipModeChangedTargetStackBounds:Landroid/graphics/Rect;

    .line 2672
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd7

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_36

    .line 2673
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 2675
    :cond_36
    return-void
.end method

.method scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/TaskRecord;Lcom/android/server/wm/ActivityStack;)V
    .registers 5
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "prevStack"  # Lcom/android/server/wm/ActivityStack;

    .line 2650
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2651
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz p2, :cond_1d

    if-eq p2, v0, :cond_1d

    .line 2652
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_1d

    .line 2656
    :cond_15
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/TaskRecord;Landroid/graphics/Rect;)V

    .line 2657
    return-void

    .line 2653
    :cond_1d
    :goto_1d
    return-void
.end method

.method setLaunchSource(I)V
    .registers 4
    .param p1, "uid"  # I

    .line 1300
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1301
    return-void
.end method

.method setNextTaskIdForUserLocked(II)V
    .registers 5
    .param p1, "taskId"  # I
    .param p2, "userId"  # I

    .line 548
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 549
    .local v0, "currentTaskId":I
    if-le p1, v0, :cond_e

    .line 550
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 552
    :cond_e
    return-void
.end method

.method setRecentTasks(Lcom/android/server/wm/RecentTasks;)V
    .registers 3
    .param p1, "recentTasks"  # Lcom/android/server/wm/RecentTasks;

    .line 510
    iput-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 511
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/RecentTasks;->registerCallback(Lcom/android/server/wm/RecentTasks$Callbacks;)V

    .line 512
    return-void
.end method

.method setResizingDuringAnimation(Lcom/android/server/wm/TaskRecord;)V
    .registers 4
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;

    .line 2835
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mResizingTasksDuringAnimation:Landroid/util/ArraySet;

    iget v1, p1, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2836
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskRecord;->setTaskDockedResizing(Z)V

    .line 2837
    return-void
.end method

.method setSplitScreenResizing(Z)V
    .registers 10
    .param p1, "resizing"  # Z

    .line 1672
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDockedStackResizing:Z

    if-ne p1, v0, :cond_5

    .line 1673
    return-void

    .line 1676
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mDockedStackResizing:Z

    .line 1677
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->setDockedStackResizing(Z)V

    .line 1679
    if-nez p1, :cond_2f

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHasPendingDockedBounds:Z

    if-eqz v0, :cond_2f

    .line 1680
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingDockedBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempDockedTaskBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempDockedTaskInsetBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempOtherTaskBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempOtherTaskInsetBounds:Landroid/graphics/Rect;

    const/4 v7, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 1684
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHasPendingDockedBounds:Z

    .line 1685
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingDockedBounds:Landroid/graphics/Rect;

    .line 1686
    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempDockedTaskBounds:Landroid/graphics/Rect;

    .line 1687
    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempDockedTaskInsetBounds:Landroid/graphics/Rect;

    .line 1688
    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempOtherTaskBounds:Landroid/graphics/Rect;

    .line 1689
    iput-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPendingTempOtherTaskInsetBounds:Landroid/graphics/Rect;

    .line 1691
    :cond_2f
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4
    .param p1, "wm"  # Lcom/android/server/wm/WindowManagerService;

    .line 532
    iput-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 533
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/KeyguardController;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 535
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FlymeWindowManagerInternal;->onLaunchParamsControllerInit(Lcom/android/server/wm/LaunchParamsController;)V

    .line 537
    return-void
.end method

.method shutdownLocked(I)Z
    .registers 9
    .param p1, "timeout"  # I

    .line 2102
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->goingToSleepLocked()V

    .line 2104
    const/4 v0, 0x0

    .line 2105
    .local v0, "timedout":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    int-to-long v3, p1

    add-long/2addr v1, v3

    .line 2107
    .local v1, "endTime":J
    :goto_a
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v4}, Lcom/android/server/wm/RootActivityContainer;->putStacksToSleep(ZZ)Z

    move-result v3

    if-nez v3, :cond_32

    .line 2109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v1, v3

    .line 2110
    .local v3, "timeRemaining":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_2a

    .line 2112
    :try_start_1f
    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v5, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_26} :catch_27

    goto :goto_28

    .line 2113
    :catch_27
    move-exception v5

    .line 2114
    :goto_28
    nop

    .line 2120
    .end local v3  # "timeRemaining":J
    goto :goto_a

    .line 2116
    .restart local v3  # "timeRemaining":J
    :cond_2a
    const-string v5, "ActivityTaskManager"

    const-string v6, "Activity manager shutdown timed out"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    const/4 v0, 0x1

    .line 2126
    .end local v3  # "timeRemaining":J
    :cond_32
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 2128
    return v0
.end method

.method startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;)I
    .registers 36
    .param p1, "callingPid"  # I
    .param p2, "callingUid"  # I
    .param p3, "taskId"  # I
    .param p4, "options"  # Lcom/android/server/wm/SafeActivityOptions;

    .line 2841
    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object/from16 v14, p4

    const/4 v3, 0x0

    .line 2845
    .local v3, "task":Lcom/android/server/wm/TaskRecord;
    const/4 v0, 0x0

    .line 2846
    .local v0, "activityType":I
    const/4 v4, 0x0

    .line 2847
    .local v4, "windowingMode":I
    const/4 v5, 0x0

    if-eqz v14, :cond_11

    .line 2848
    invoke-virtual {v14, v1}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v6

    goto :goto_12

    .line 2849
    :cond_11
    move-object v6, v5

    :goto_12
    move-object v13, v6

    .line 2850
    .local v13, "activityOptions":Landroid/app/ActivityOptions;
    if-eqz v13, :cond_38

    .line 2851
    invoke-virtual {v13}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v0

    .line 2852
    invoke-virtual {v13}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v4

    .line 2853
    invoke-virtual {v13}, Landroid/app/ActivityOptions;->freezeRecentTasksReordering()Z

    move-result v6

    if-eqz v6, :cond_33

    iget-object v6, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 2854
    move/from16 v12, p2

    invoke-virtual {v6, v12}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 2855
    iget-object v6, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v6}, Lcom/android/server/wm/RecentTasks;->setFreezeTaskListReordering()V

    goto :goto_35

    .line 2853
    :cond_33
    move/from16 v12, p2

    .line 2858
    :cond_35
    :goto_35
    move v11, v0

    move v10, v4

    goto :goto_3c

    .line 2850
    :cond_38
    move/from16 v12, p2

    move v11, v0

    move v10, v4

    .line 2858
    .end local v0  # "activityType":I
    .end local v4  # "windowingMode":I
    .local v10, "windowingMode":I
    .local v11, "activityType":I
    :goto_3c
    const-string v0, "startActivityFromRecents: Task "

    const/4 v15, 0x2

    if-eq v11, v15, :cond_2a2

    const/4 v9, 0x3

    if-eq v11, v9, :cond_2a2

    .line 2863
    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 2865
    const-string v8, "startActivityFromRecents: homeVisibleInSplitScreen"

    const/4 v6, 0x0

    if-ne v10, v9, :cond_6f

    .line 2866
    :try_start_4e
    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 2867
    invoke-virtual {v13}, Landroid/app/ActivityOptions;->getSplitScreenCreateMode()I

    move-result v7

    .line 2866
    invoke-virtual {v4, v7, v5}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateState(ILandroid/graphics/Rect;)V

    .line 2872
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->deferUpdateRecentsHomeStackBounds()V

    .line 2874
    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v5, 0x13

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V
    :try_end_61
    .catchall {:try_start_4e .. :try_end_61} :catchall_62

    goto :goto_6f

    .line 2930
    :catchall_62
    move-exception v0

    move v5, v9

    move v4, v10

    move/from16 v22, v11

    move-object/from16 v21, v13

    move v11, v6

    move-object v10, v8

    const/4 v8, 0x4

    move-object v6, v3

    goto/16 :goto_26e

    .line 2877
    :cond_6f
    :goto_6f
    :try_start_6f
    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v15, v13, v5}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/TaskRecord;

    move-result-object v4
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_263

    move-object v7, v4

    .line 2879
    .end local v3  # "task":Lcom/android/server/wm/TaskRecord;
    .local v7, "task":Lcom/android/server/wm/TaskRecord;
    if-eqz v7, :cond_235

    .line 2886
    if-eq v10, v9, :cond_94

    .line 2891
    :try_start_7b
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    const-string v3, "startActivityFromRecents"

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityDisplay;->moveHomeStackToFront(Ljava/lang/String;)V
    :try_end_86
    .catchall {:try_start_7b .. :try_end_86} :catchall_87

    goto :goto_94

    .line 2930
    :catchall_87
    move-exception v0

    move v5, v9

    move v4, v10

    move/from16 v22, v11

    move-object/from16 v21, v13

    move v11, v6

    move-object v6, v7

    move-object v10, v8

    const/4 v8, 0x4

    goto/16 :goto_26e

    .line 2897
    :cond_94
    :goto_94
    :try_start_94
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v3, v7, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v0, v3}, Landroid/app/ActivityManagerInternal;->shouldConfirmCredentials(I)Z

    move-result v0
    :try_end_9e
    .catchall {:try_start_94 .. :try_end_9e} :catchall_229

    if-nez v0, :cond_184

    .line 2898
    :try_start_a0
    invoke-virtual {v7}, Lcom/android/server/wm/TaskRecord;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_167

    .line 2899
    invoke-virtual {v7}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    move-object v4, v0

    .line 2901
    .local v4, "targetActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0, v5, v4}, Lcom/android/server/wm/RootActivityContainer;->sendPowerHintForLaunchStartIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 2903
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    iget-object v3, v7, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;)V
    :try_end_b7
    .catchall {:try_start_a0 .. :try_end_b7} :catchall_171

    .line 2905
    :try_start_b7
    iget-object v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;
    :try_end_b9
    .catchall {:try_start_b7 .. :try_end_b9} :catchall_14b

    const/4 v0, 0x0

    const/4 v5, 0x0

    :try_start_bb
    iget v6, v7, Lcom/android/server/wm/TaskRecord;->taskId:I
    :try_end_bd
    .catchall {:try_start_bb .. :try_end_bd} :catchall_140

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v20, v4

    .end local v4  # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .local v20, "targetActivity":Lcom/android/server/wm/ActivityRecord;
    move-object v4, v0

    move-object/from16 v21, v13

    const/4 v13, 0x0

    .end local v13  # "activityOptions":Landroid/app/ActivityOptions;
    .local v21, "activityOptions":Landroid/app/ActivityOptions;
    move-object/from16 v22, v7

    const/4 v12, 0x4

    .end local v7  # "task":Lcom/android/server/wm/TaskRecord;
    .local v22, "task":Lcom/android/server/wm/TaskRecord;
    move/from16 v7, v18

    move/from16 v16, v11

    move-object v11, v8

    .end local v11  # "activityType":I
    .local v16, "activityType":I
    move-object/from16 v8, p4

    move v13, v9

    move/from16 v9, v19

    :try_start_d4
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/ActivityTaskManagerService;->moveTaskToFrontLocked(Landroid/app/IApplicationThread;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;Z)V

    .line 2909
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/ActivityRecord;->applyOptionsLocked()V
    :try_end_da
    .catchall {:try_start_d4 .. :try_end_da} :catchall_139

    .line 2911
    :try_start_da
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    move-object/from16 v3, v20

    .end local v20  # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .local v3, "targetActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v0, v15, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/wm/ActivityRecord;)V

    .line 2913
    nop

    .line 2915
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    .line 2916
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 2917
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 2915
    invoke-virtual {v0, v4, v15, v5}, Lcom/android/server/wm/ActivityStartController;->postStartActivityProcessingForLastStarter(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityStack;)V
    :try_end_f3
    .catchall {:try_start_da .. :try_end_f3} :catchall_12c

    .line 2918
    nop

    .line 2930
    if-ne v10, v13, :cond_124

    .line 2934
    move-object/from16 v9, v22

    .end local v22  # "task":Lcom/android/server/wm/TaskRecord;
    .local v9, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v1, v9}, Lcom/android/server/wm/ActivityStackSupervisor;->setResizingDuringAnimation(Lcom/android/server/wm/TaskRecord;)V

    .line 2936
    invoke-virtual {v9}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    .line 2937
    .local v0, "display":Lcom/android/server/wm/ActivityDisplay;
    nop

    .line 2938
    invoke-virtual {v0, v12}, Lcom/android/server/wm/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 2940
    .local v4, "topSecondaryStack":Lcom/android/server/wm/ActivityStack;
    invoke-static {}, Lmeizu/os/DeviceStateManager;->isCtsRunningStatic()Z

    move-result v5

    .line 2941
    .local v5, "isCtsRunning":Z
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v6

    if-nez v6, :cond_11a

    if-nez v5, :cond_126

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->isActivityTypeRecents()Z

    move-result v6

    if-eqz v6, :cond_126

    .line 2948
    :cond_11a
    invoke-virtual {v0, v11}, Lcom/android/server/wm/ActivityDisplay;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 2954
    iget-object v6, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/android/server/wm/WindowManagerService;->checkSplitScreenMinimizedChanged(Z)V

    goto :goto_126

    .line 2930
    .end local v0  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v4  # "topSecondaryStack":Lcom/android/server/wm/ActivityStack;
    .end local v5  # "isCtsRunning":Z
    .end local v9  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v22  # "task":Lcom/android/server/wm/TaskRecord;
    :cond_124
    move-object/from16 v9, v22

    .line 2957
    .end local v22  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v9  # "task":Lcom/android/server/wm/TaskRecord;
    :cond_126
    :goto_126
    iget-object v0, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 2918
    return v15

    .line 2930
    .end local v3  # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v9  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v22  # "task":Lcom/android/server/wm/TaskRecord;
    :catchall_12c
    move-exception v0

    move-object/from16 v9, v22

    move-object v6, v9

    move v4, v10

    move-object v10, v11

    move v8, v12

    move v5, v13

    move/from16 v22, v16

    const/4 v11, 0x0

    .end local v22  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v9  # "task":Lcom/android/server/wm/TaskRecord;
    goto/16 :goto_26e

    .line 2911
    .end local v9  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v20  # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v22  # "task":Lcom/android/server/wm/TaskRecord;
    :catchall_139
    move-exception v0

    move-object/from16 v3, v20

    move-object/from16 v9, v22

    const/4 v8, 0x0

    .end local v20  # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v22  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v3  # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v9  # "task":Lcom/android/server/wm/TaskRecord;
    goto :goto_156

    .end local v3  # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v9  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v16  # "activityType":I
    .end local v21  # "activityOptions":Landroid/app/ActivityOptions;
    .local v4, "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v7  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v11  # "activityType":I
    .restart local v13  # "activityOptions":Landroid/app/ActivityOptions;
    :catchall_140
    move-exception v0

    move-object v3, v4

    move/from16 v16, v11

    move-object/from16 v21, v13

    const/4 v12, 0x4

    move-object v11, v8

    move v13, v9

    const/4 v8, 0x0

    goto :goto_155

    :catchall_14b
    move-exception v0

    move-object v3, v4

    move/from16 v16, v11

    move-object/from16 v21, v13

    const/4 v12, 0x4

    move-object v11, v8

    move v13, v9

    move v8, v6

    :goto_155
    move-object v9, v7

    .end local v4  # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v7  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v11  # "activityType":I
    .end local v13  # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v3  # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v9  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v16  # "activityType":I
    .restart local v21  # "activityOptions":Landroid/app/ActivityOptions;
    :goto_156
    :try_start_156
    iget-object v4, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    invoke-virtual {v4, v15, v3}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/wm/ActivityRecord;)V

    .end local v9  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v10  # "windowingMode":I
    .end local v16  # "activityType":I
    .end local v21  # "activityOptions":Landroid/app/ActivityOptions;
    .end local p0  # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .end local p1  # "callingPid":I
    .end local p2  # "callingUid":I
    .end local p3  # "taskId":I
    .end local p4  # "options":Lcom/android/server/wm/SafeActivityOptions;
    throw v0
    :try_end_15c
    .catchall {:try_start_156 .. :try_end_15c} :catchall_15c

    .line 2930
    .end local v3  # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v9  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v10  # "windowingMode":I
    .restart local v16  # "activityType":I
    .restart local v21  # "activityOptions":Landroid/app/ActivityOptions;
    .restart local p0  # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .restart local p1  # "callingPid":I
    .restart local p2  # "callingUid":I
    .restart local p3  # "taskId":I
    .restart local p4  # "options":Lcom/android/server/wm/SafeActivityOptions;
    :catchall_15c
    move-exception v0

    move-object v6, v9

    move v4, v10

    move-object v10, v11

    move v5, v13

    move/from16 v22, v16

    move v11, v8

    move v8, v12

    goto/16 :goto_26e

    .line 2898
    .end local v9  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v16  # "activityType":I
    .end local v21  # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v7  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v11  # "activityType":I
    .restart local v13  # "activityOptions":Landroid/app/ActivityOptions;
    :cond_167
    move/from16 v16, v11

    move-object/from16 v21, v13

    const/4 v12, 0x4

    move-object v11, v8

    move v13, v9

    move v8, v6

    move-object v9, v7

    .end local v7  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v11  # "activityType":I
    .end local v13  # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v9  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v16  # "activityType":I
    .restart local v21  # "activityOptions":Landroid/app/ActivityOptions;
    goto :goto_18d

    .line 2930
    .end local v9  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v16  # "activityType":I
    .end local v21  # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v7  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v11  # "activityType":I
    .restart local v13  # "activityOptions":Landroid/app/ActivityOptions;
    :catchall_171
    move-exception v0

    move/from16 v16, v11

    move-object/from16 v21, v13

    const/4 v12, 0x4

    move-object v11, v8

    move v13, v9

    move-object v9, v7

    move v4, v10

    move-object v10, v11

    move v8, v12

    move v5, v13

    move/from16 v22, v16

    move v11, v6

    move-object v6, v9

    .end local v7  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v11  # "activityType":I
    .end local v13  # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v9  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v16  # "activityType":I
    .restart local v21  # "activityOptions":Landroid/app/ActivityOptions;
    goto/16 :goto_26e

    .line 2897
    .end local v9  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v16  # "activityType":I
    .end local v21  # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v7  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v11  # "activityType":I
    .restart local v13  # "activityOptions":Landroid/app/ActivityOptions;
    :cond_184
    move/from16 v16, v11

    move-object/from16 v21, v13

    const/4 v12, 0x4

    move-object v11, v8

    move v13, v9

    move v8, v6

    move-object v9, v7

    .line 2920
    .end local v7  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v11  # "activityType":I
    .end local v13  # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v9  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v16  # "activityType":I
    .restart local v21  # "activityOptions":Landroid/app/ActivityOptions;
    :goto_18d
    :try_start_18d
    iget-object v7, v9, Lcom/android/server/wm/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 2921
    .local v7, "callingPackage":Ljava/lang/String;
    iget-object v0, v9, Lcom/android/server/wm/TaskRecord;->intent:Landroid/content/Intent;

    .line 2922
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x100000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2923
    iget v15, v9, Lcom/android/server/wm/TaskRecord;->userId:I

    .line 2924
    .local v15, "userId":I
    iget-object v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v3

    iget v4, v9, Lcom/android/server/wm/TaskRecord;->mCallingUid:I

    const/16 v17, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v26, "startActivityFromRecents"
    :try_end_1ac
    .catchall {:try_start_18d .. :try_end_1ac} :catchall_21f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v27, v8

    move-object v8, v0

    move-object/from16 v28, v9

    .end local v9  # "task":Lcom/android/server/wm/TaskRecord;
    .local v28, "task":Lcom/android/server/wm/TaskRecord;
    move-object/from16 v9, v17

    move/from16 v29, v10

    .end local v10  # "windowingMode":I
    .local v29, "windowingMode":I
    move-object/from16 v10, v22

    move-object/from16 v30, v11

    move/from16 v22, v16

    .end local v16  # "activityType":I
    .local v22, "activityType":I
    move-object/from16 v11, v23

    move/from16 v12, v24

    move/from16 v13, v25

    move-object/from16 v14, p4

    move-object/from16 v16, v28

    move-object/from16 v17, v26

    :try_start_1d1
    invoke-virtual/range {v3 .. v20}, Lcom/android/server/wm/ActivityStartController;->startActivityInPackage(IIILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v3
    :try_end_1d5
    .catchall {:try_start_1d1 .. :try_end_1d5} :catchall_213

    .line 2930
    move/from16 v4, v29

    const/4 v5, 0x3

    .end local v29  # "windowingMode":I
    .local v4, "windowingMode":I
    if-ne v4, v5, :cond_20b

    .line 2934
    move-object/from16 v6, v28

    .end local v28  # "task":Lcom/android/server/wm/TaskRecord;
    .local v6, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v1, v6}, Lcom/android/server/wm/ActivityStackSupervisor;->setResizingDuringAnimation(Lcom/android/server/wm/TaskRecord;)V

    .line 2936
    invoke-virtual {v6}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v5

    .line 2937
    .local v5, "display":Lcom/android/server/wm/ActivityDisplay;
    nop

    .line 2938
    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Lcom/android/server/wm/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v8

    .line 2940
    .local v8, "topSecondaryStack":Lcom/android/server/wm/ActivityStack;
    invoke-static {}, Lmeizu/os/DeviceStateManager;->isCtsRunningStatic()Z

    move-result v9

    .line 2941
    .local v9, "isCtsRunning":Z
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v10

    if-nez v10, :cond_1ff

    if-nez v9, :cond_20d

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityStack;->isActivityTypeRecents()Z

    move-result v10

    if-eqz v10, :cond_20d

    .line 2948
    :cond_1ff
    move-object/from16 v10, v30

    invoke-virtual {v5, v10}, Lcom/android/server/wm/ActivityDisplay;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 2954
    iget-object v10, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/wm/WindowManagerService;->checkSplitScreenMinimizedChanged(Z)V

    goto :goto_20d

    .line 2930
    .end local v5  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v6  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v8  # "topSecondaryStack":Lcom/android/server/wm/ActivityStack;
    .end local v9  # "isCtsRunning":Z
    .restart local v28  # "task":Lcom/android/server/wm/TaskRecord;
    :cond_20b
    move-object/from16 v6, v28

    .line 2957
    .end local v28  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v6  # "task":Lcom/android/server/wm/TaskRecord;
    :cond_20d
    :goto_20d
    iget-object v5, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 2924
    return v3

    .line 2930
    .end local v0  # "intent":Landroid/content/Intent;
    .end local v4  # "windowingMode":I
    .end local v6  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v7  # "callingPackage":Ljava/lang/String;
    .end local v15  # "userId":I
    .restart local v28  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v29  # "windowingMode":I
    :catchall_213
    move-exception v0

    move-object/from16 v6, v28

    move/from16 v4, v29

    move-object/from16 v10, v30

    const/4 v5, 0x3

    const/4 v8, 0x4

    const/4 v11, 0x0

    .end local v28  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v29  # "windowingMode":I
    .restart local v4  # "windowingMode":I
    .restart local v6  # "task":Lcom/android/server/wm/TaskRecord;
    goto/16 :goto_26e

    .end local v4  # "windowingMode":I
    .end local v6  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v22  # "activityType":I
    .local v9, "task":Lcom/android/server/wm/TaskRecord;
    .restart local v10  # "windowingMode":I
    .restart local v16  # "activityType":I
    :catchall_21f
    move-exception v0

    move-object v6, v9

    move v4, v10

    move-object v10, v11

    move v5, v13

    move/from16 v22, v16

    move v11, v8

    move v8, v12

    .end local v9  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v10  # "windowingMode":I
    .end local v16  # "activityType":I
    .restart local v4  # "windowingMode":I
    .restart local v6  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v22  # "activityType":I
    goto :goto_26e

    .end local v4  # "windowingMode":I
    .end local v6  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v21  # "activityOptions":Landroid/app/ActivityOptions;
    .end local v22  # "activityType":I
    .local v7, "task":Lcom/android/server/wm/TaskRecord;
    .restart local v10  # "windowingMode":I
    .restart local v11  # "activityType":I
    .restart local v13  # "activityOptions":Landroid/app/ActivityOptions;
    :catchall_229
    move-exception v0

    move v5, v9

    move v4, v10

    move/from16 v22, v11

    move-object/from16 v21, v13

    move v11, v6

    move-object v6, v7

    move-object v10, v8

    const/4 v8, 0x4

    .end local v7  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v10  # "windowingMode":I
    .end local v11  # "activityType":I
    .end local v13  # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v4  # "windowingMode":I
    .restart local v6  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v21  # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v22  # "activityType":I
    goto :goto_26e

    .line 2880
    .end local v4  # "windowingMode":I
    .end local v6  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v21  # "activityOptions":Landroid/app/ActivityOptions;
    .end local v22  # "activityType":I
    .restart local v7  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v10  # "windowingMode":I
    .restart local v11  # "activityType":I
    .restart local v13  # "activityOptions":Landroid/app/ActivityOptions;
    :cond_235
    move v5, v9

    move v4, v10

    move/from16 v22, v11

    move-object/from16 v21, v13

    move v11, v6

    move-object v6, v7

    move-object v10, v8

    const/4 v8, 0x4

    .end local v7  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v10  # "windowingMode":I
    .end local v11  # "activityType":I
    .end local v13  # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v4  # "windowingMode":I
    .restart local v6  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v21  # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v22  # "activityType":I
    :try_start_23f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityStackSupervisor;->continueUpdateRecentsHomeStackBounds()V

    .line 2881
    iget-object v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 2882
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " not found."

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v4  # "windowingMode":I
    .end local v6  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v21  # "activityOptions":Landroid/app/ActivityOptions;
    .end local v22  # "activityType":I
    .end local p0  # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .end local p1  # "callingPid":I
    .end local p2  # "callingUid":I
    .end local p3  # "taskId":I
    .end local p4  # "options":Lcom/android/server/wm/SafeActivityOptions;
    throw v3
    :try_end_261
    .catchall {:try_start_23f .. :try_end_261} :catchall_261

    .line 2930
    .restart local v4  # "windowingMode":I
    .restart local v6  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v21  # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v22  # "activityType":I
    .restart local p0  # "this":Lcom/android/server/wm/ActivityStackSupervisor;
    .restart local p1  # "callingPid":I
    .restart local p2  # "callingUid":I
    .restart local p3  # "taskId":I
    .restart local p4  # "options":Lcom/android/server/wm/SafeActivityOptions;
    :catchall_261
    move-exception v0

    goto :goto_26e

    .end local v4  # "windowingMode":I
    .end local v6  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v21  # "activityOptions":Landroid/app/ActivityOptions;
    .end local v22  # "activityType":I
    .local v3, "task":Lcom/android/server/wm/TaskRecord;
    .restart local v10  # "windowingMode":I
    .restart local v11  # "activityType":I
    .restart local v13  # "activityOptions":Landroid/app/ActivityOptions;
    :catchall_263
    move-exception v0

    move v5, v9

    move v4, v10

    move/from16 v22, v11

    move-object/from16 v21, v13

    move v11, v6

    move-object v10, v8

    const/4 v8, 0x4

    move-object v6, v3

    .end local v3  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v10  # "windowingMode":I
    .end local v11  # "activityType":I
    .end local v13  # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v4  # "windowingMode":I
    .restart local v6  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v21  # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v22  # "activityType":I
    :goto_26e
    if-ne v4, v5, :cond_29c

    if-eqz v6, :cond_29c

    .line 2934
    invoke-virtual {v1, v6}, Lcom/android/server/wm/ActivityStackSupervisor;->setResizingDuringAnimation(Lcom/android/server/wm/TaskRecord;)V

    .line 2936
    invoke-virtual {v6}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    .line 2937
    .local v3, "display":Lcom/android/server/wm/ActivityDisplay;
    nop

    .line 2938
    invoke-virtual {v3, v8}, Lcom/android/server/wm/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 2940
    .local v5, "topSecondaryStack":Lcom/android/server/wm/ActivityStack;
    invoke-static {}, Lmeizu/os/DeviceStateManager;->isCtsRunningStatic()Z

    move-result v7

    .line 2941
    .local v7, "isCtsRunning":Z
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v8

    if-nez v8, :cond_294

    if-nez v7, :cond_29c

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->isActivityTypeRecents()Z

    move-result v8

    if-eqz v8, :cond_29c

    .line 2948
    :cond_294
    invoke-virtual {v3, v10}, Lcom/android/server/wm/ActivityDisplay;->moveHomeStackToFront(Ljava/lang/String;)V

    .line 2954
    iget-object v8, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8, v11}, Lcom/android/server/wm/WindowManagerService;->checkSplitScreenMinimizedChanged(Z)V

    .line 2957
    .end local v3  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v5  # "topSecondaryStack":Lcom/android/server/wm/ActivityStack;
    .end local v7  # "isCtsRunning":Z
    :cond_29c
    iget-object v3, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0

    .line 2858
    .end local v4  # "windowingMode":I
    .end local v6  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v21  # "activityOptions":Landroid/app/ActivityOptions;
    .end local v22  # "activityType":I
    .local v3, "task":Lcom/android/server/wm/TaskRecord;
    .restart local v10  # "windowingMode":I
    .restart local v11  # "activityType":I
    .restart local v13  # "activityOptions":Landroid/app/ActivityOptions;
    :cond_2a2
    move v4, v10

    move/from16 v22, v11

    move-object/from16 v21, v13

    .line 2859
    .end local v10  # "windowingMode":I
    .end local v11  # "activityType":I
    .end local v13  # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v4  # "windowingMode":I
    .restart local v21  # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v22  # "activityType":I
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " can\'t be launch in the home/recents stack."

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method startSpecificActivityLocked(Lcom/android/server/wm/ActivityRecord;ZZ)V
    .registers 16
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "andResume"  # Z
    .param p3, "checkConfig"  # Z

    .line 1011
    const-string v0, "ActivityTaskManager"

    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1012
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    .line 1014
    .local v1, "wpc":Lcom/android/server/wm/WindowProcessController;
    const/4 v2, 0x0

    .line 1015
    .local v2, "knownToBeDead":Z
    if-eqz v1, :cond_ab

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 1019
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->hook_activityFreezePreProcess(Lcom/android/server/wm/WindowProcessController;)V

    .line 1023
    :try_start_1e
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v3, :cond_53

    .line 1024
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The Process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Already Exists in BG. So sending its PID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    const/16 v4, 0x1081

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v6

    const/16 v7, 0x66

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 1029
    :cond_53
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/16 v4, 0x1e

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->setAppStart(Lcom/android/server/wm/ActivityRecord;I)V

    .line 1033
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/am/AmsInjector;->isHeavyApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 1034
    invoke-static {}, Landroid/scene/SceneClient;->getInstance()Landroid/scene/SceneClient;

    move-result-object v3

    new-instance v4, Landroid/scene/Scene;

    const v5, 0x1000001

    const-string v6, "AppColdStart"

    invoke-direct {v4, v5, v6}, Landroid/scene/Scene;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/scene/SceneClient;->notifyScene(Landroid/scene/Scene;)V

    goto :goto_87

    .line 1037
    :cond_76
    invoke-static {}, Landroid/scene/SceneClient;->getInstance()Landroid/scene/SceneClient;

    move-result-object v3

    new-instance v4, Landroid/scene/Scene;

    const v5, 0x1000008

    const-string v6, "AppSwitch"

    invoke-direct {v4, v5, v6}, Landroid/scene/Scene;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/scene/SceneClient;->notifyScene(Landroid/scene/Scene;)V

    .line 1041
    :goto_87
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/wm/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;ZZ)Z
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_8a} :catch_8b

    .line 1042
    return-void

    .line 1043
    :catch_8b
    move-exception v3

    .line 1044
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception when starting activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1045
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1044
    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1050
    .end local v3  # "e":Landroid/os/RemoteException;
    const/4 v2, 0x1

    .line 1055
    :cond_ab
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/16 v3, 0x1c

    invoke-virtual {v0, p1, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->setAppStart(Lcom/android/server/wm/ActivityRecord;I)V

    .line 1061
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 1062
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->notifyUnknownVisibilityLaunched()V

    .line 1066
    :cond_bf
    const-wide/16 v3, 0x40

    :try_start_c1
    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 1067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchingStartProcess:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1072
    :cond_dd
    sget-object v5, Lcom/android/server/wm/-$$Lambda$3W4Y_XVQUddVKzLjibuHW7h0R1g;->INSTANCE:Lcom/android/server/wm/-$$Lambda$3W4Y_XVQUddVKzLjibuHW7h0R1g;

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v7, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1074
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v10, "activity"

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    .line 1072
    invoke-static/range {v5 .. v11}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1075
    .local v0, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_100
    .catchall {:try_start_c1 .. :try_end_100} :catchall_106

    .line 1077
    nop

    .end local v0  # "msg":Landroid/os/Message;
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1078
    nop

    .line 1079
    return-void

    .line 1077
    :catchall_106
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;)V
    .registers 10
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 600
    const/4 v0, 0x0

    .line 601
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_3c

    .line 602
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;

    .line 603
    .local v2, "w":Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->matches(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 604
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->getResult()Landroid/app/WaitResult;

    move-result-object v3

    .line 605
    .local v3, "result":Landroid/app/WaitResult;
    const/4 v0, 0x1

    .line 606
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/app/WaitResult;->timeout:Z

    .line 607
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 608
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;->getStartTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iput-wide v4, v3, Landroid/app/WaitResult;->totalTime:J

    .line 609
    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 601
    .end local v2  # "w":Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;
    .end local v3  # "result":Landroid/app/WaitResult;
    :cond_39
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 612
    .end local v1  # "i":I
    :cond_3c
    if-eqz v0, :cond_45

    .line 613
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 615
    :cond_45
    return-void
.end method

.method updateHomeProcess(Lcom/android/server/wm/WindowProcessController;)V
    .registers 4
    .param p1, "app"  # Lcom/android/server/wm/WindowProcessController;

    .line 986
    if-eqz p1, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-eq v0, p1, :cond_1b

    .line 987
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd8

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 988
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 990
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    .line 992
    :cond_1b
    return-void
.end method

.method updatePictureInPictureMode(Lcom/android/server/wm/TaskRecord;Landroid/graphics/Rect;Z)V
    .registers 7
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "targetStackBounds"  # Landroid/graphics/Rect;
    .param p3, "forceUpdate"  # Z

    .line 2678
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd7

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 2679
    iget-object v0, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_f
    if-ltz v0, :cond_25

    .line 2680
    iget-object v1, p1, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 2681
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2682
    invoke-virtual {v1, p2, p3}, Lcom/android/server/wm/ActivityRecord;->updatePictureInPictureMode(Landroid/graphics/Rect;Z)V

    .line 2679
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 2685
    .end local v0  # "i":I
    :cond_25
    return-void
.end method

.method updateTopResumedActivityIfNeeded()V
    .registers 6

    .line 2436
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2437
    .local v0, "prevTopActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2438
    .local v1, "topStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_2f

    iget-object v2, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v2, v0, :cond_f

    goto :goto_2f

    .line 2443
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

    .line 2448
    .local v4, "prevActivityReceivedTopState":Z
    :goto_1a
    if-eqz v4, :cond_27

    .line 2449
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->scheduleTopResumedActivityChanged(Z)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 2450
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleTopResumedStateLossTimeout(Lcom/android/server/wm/ActivityRecord;)V

    .line 2451
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivityWaitingForPrev:Z

    .line 2455
    :cond_27
    iget-object v2, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iput-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2456
    invoke-direct {p0}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleTopResumedActivityStateIfNeeded()V

    .line 2457
    return-void

    .line 2439
    .end local v4  # "prevActivityReceivedTopState":Z
    :cond_2f
    :goto_2f
    return-void
.end method

.method waitActivityVisible(Landroid/content/ComponentName;Landroid/app/WaitResult;J)V
    .registers 7
    .param p1, "name"  # Landroid/content/ComponentName;
    .param p2, "result"  # Landroid/app/WaitResult;
    .param p3, "startTimeMs"  # J

    .line 586
    new-instance v0, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;-><init>(Landroid/content/ComponentName;Landroid/app/WaitResult;J)V

    .line 587
    .local v0, "waitInfo":Lcom/android/server/wm/ActivityStackSupervisor$WaitInfo;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mWaitingForActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    return-void
.end method

.method wakeUp(Ljava/lang/String;)V
    .registers 7
    .param p1, "reason"  # Ljava/lang/String;

    .line 2688
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.server.am:TURN_ON:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 2690
    return-void
.end method
