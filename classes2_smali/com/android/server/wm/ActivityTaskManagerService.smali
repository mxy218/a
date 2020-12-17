.class public Lcom/android/server/wm/ActivityTaskManagerService;
.super Landroid/app/IActivityTaskManager$Stub;
.source "ActivityTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityTaskManagerService$LocalService;,
        Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;,
        Lcom/android/server/wm/ActivityTaskManagerService$H;,
        Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;,
        Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;,
        Lcom/android/server/wm/ActivityTaskManagerService$HotPath;,
        Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;,
        Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;
    }
.end annotation


# static fields
.field static final ACTIVITY_BG_START_GRACE_PERIOD_MS:J = 0x2710L

.field static final ANIMATE:Z = true

.field private static final APP_SWITCH_DELAY_TIME:J = 0x1388L

.field static DEBUG_INTERCEPT:Z = false

.field public static final DUMP_ACTIVITIES_CMD:Ljava/lang/String; = "activities"

.field public static final DUMP_ACTIVITIES_SHORT_CMD:Ljava/lang/String; = "a"

.field public static final DUMP_CONTAINERS_CMD:Ljava/lang/String; = "containers"

.field public static final DUMP_LASTANR_CMD:Ljava/lang/String; = "lastanr"

.field public static final DUMP_LASTANR_TRACES_CMD:Ljava/lang/String; = "lastanr-traces"

.field public static final DUMP_RECENTS_CMD:Ljava/lang/String; = "recents"

.field public static final DUMP_RECENTS_SHORT_CMD:Ljava/lang/String; = "r"

.field public static final DUMP_STARTER_CMD:Ljava/lang/String; = "starter"

.field static final INSTRUMENTATION_KEY_DISPATCHING_TIMEOUT_MS:I = 0xea60

.field public static final KEY_DISPATCHING_TIMEOUT_MS:I = 0x1388

.field private static final PENDING_ASSIST_EXTRAS_LONG_TIMEOUT:I = 0x7d0

.field private static final PENDING_ASSIST_EXTRAS_TIMEOUT:I = 0x1f4

.field private static final PENDING_AUTOFILL_ASSIST_STRUCTURE_TIMEOUT:I = 0x7d0

.field public static final RELAUNCH_REASON_FREE_RESIZE:I = 0x2

.field public static final RELAUNCH_REASON_NONE:I = 0x0

.field public static final RELAUNCH_REASON_WINDOWING_MODE_RESIZE:I = 0x1

.field private static final SERVICE_LAUNCH_IDLE_WHITELIST_DURATION_MS:I = 0x1388

.field private static final START_AS_CALLER_TOKEN_EXPIRED_TIMEOUT:J = 0x1b7f10L

.field private static final START_AS_CALLER_TOKEN_TIMEOUT:J = 0x927c0L

.field private static final START_AS_CALLER_TOKEN_TIMEOUT_IMPL:J = 0x92f90L

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_FOCUS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_IMMERSIVE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_LOCKTASK:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_POSTFIX_INTERCEPT:Ljava/lang/String; = "Interception"

.field private static final TAG_STACK:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_VISIBILITY:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field final GL_ES_VERSION:I

.field mAccessControlService:Lcom/meizu/server/AccessControlService;

.field private final mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

.field mActiveVoiceInteractionServiceComponent:Landroid/content/ComponentName;

.field private mActivityStartController:Lcom/android/server/wm/ActivityStartController;

.field public mActivityStats:Lcom/android/server/hips/intercept/InterceptionStats;

.field final mAllowAppSwitchUids:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mAmInternal:Landroid/app/ActivityManagerInternal;

.field private mAppOpsService:Lcom/android/server/appop/AppOpsService;

.field private mAppSwitchesAllowedTime:J

.field private mAppWarnings:Lcom/android/server/wm/AppWarnings;

.field private mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field public mBroadcastStats:Lcom/android/server/hips/intercept/InterceptionStats;

.field private final mCompanionAppUidsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

.field private mConfigurationSeq:I

.field mContext:Landroid/content/Context;

.field mController:Landroid/app/IActivityController;

.field mControllerIsAMonkey:Z

.field mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

.field mDenyCheckingAccessControl:Z

.field private mDeviceOwnerUid:I

.field private mDidAppSwitch:Z

.field final mExpiredStartAsCallerTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final mFactoryTest:I

.field mFlymePackageManagerService:Lcom/android/server/pm/FlymePackageManagerService;

.field private mFontScaleSettingObserver:Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;

.field mForceResizableActivities:Z

.field private mFullscreenThumbnailScale:F

.field final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field final mGlobalLockWithoutBoost:Ljava/lang/Object;

.field mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

.field mHasHeavyWeightFeature:Z

.field mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

.field mHomeProcess:Lcom/android/server/wm/WindowProcessController;

.field mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

.field final mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mKeyguardController:Lcom/android/server/wm/KeyguardController;

.field private mKeyguardShown:Z

.field mLastANRState:Ljava/lang/String;

.field mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field private mLastStopAppSwitchesTime:J

.field private final mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

.field private mLockTaskController:Lcom/android/server/wm/LockTaskController;

.field private final mPendingAssistExtras:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;",
            ">;"
        }
    .end annotation
.end field

.field mPendingIntentController:Lcom/android/server/am/PendingIntentController;

.field private final mPendingTempWhitelist:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

.field private mPmInternal:Landroid/content/pm/PackageManagerInternal;

.field mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

.field mPreviousProcessVisibleTime:J

.field final mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

.field final mProcessNames:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/server/wm/WindowProcessController;",
            ">;"
        }
    .end annotation
.end field

.field mProfileApp:Ljava/lang/String;

.field mProfileProc:Lcom/android/server/wm/WindowProcessController;

.field mProfilerInfo:Landroid/app/ProfilerInfo;

.field public mProviderStats:Lcom/android/server/hips/intercept/InterceptionStats;

.field private mRecentTasks:Lcom/android/server/wm/RecentTasks;

.field mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

.field mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

.field final mScreenObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;",
            ">;"
        }
    .end annotation
.end field

.field public mServiceStats:Lcom/android/server/hips/intercept/InterceptionStats;

.field private mShowDialogs:Z

.field mShuttingDown:Z

.field private mSleeping:Z

.field public mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

.field final mStartActivitySources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field final mStringBuilder:Ljava/lang/StringBuilder;

.field private mSupportedSystemLocales:[Ljava/lang/String;

.field mSupportsFreeformWindowManagement:Z

.field mSupportsMultiDisplay:Z

.field mSupportsMultiWindow:Z

.field mSupportsPictureInPicture:Z

.field mSupportsSplitScreenMultiWindow:Z

.field mSuppressResizeConfigChanges:Z

.field final mSystemThread:Landroid/app/ActivityThread;

.field private mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

.field private mTempConfig:Landroid/content/res/Configuration;

.field private mThumbnailHeight:I

.field private mThumbnailWidth:I

.field private final mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

.field mTopAction:Ljava/lang/String;

.field mTopComponent:Landroid/content/ComponentName;

.field mTopData:Ljava/lang/String;

.field mTopProcessState:I

.field private mTracedResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field final mUiContext:Landroid/content/Context;

.field mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

.field private final mUpdateLock:Landroid/os/UpdateLock;

.field private mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field private mUserManager:Lcom/android/server/pm/UserManagerService;

.field private mViSessionId:I

.field mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

.field mVr2dDisplayId:I

.field mVrController:Lcom/android/server/wm/VrController;

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7629
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/ActivityTaskManagerService;->DEBUG_INTERCEPT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 710
    invoke-direct {p0}, Landroid/app/IActivityTaskManager$Stub;-><init>()V

    .line 382
    new-instance v0, Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-direct {v0}, Lcom/android/server/wm/WindowManagerGlobalLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 390
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    .line 397
    new-instance v0, Lcom/android/server/wm/MirrorActiveUids;

    invoke-direct {v0}, Lcom/android/server/wm/MirrorActiveUids;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    .line 398
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingTempWhitelist:Landroid/util/SparseArray;

    .line 400
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    .line 402
    new-instance v0, Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-direct {v0}, Lcom/android/server/wm/WindowProcessControllerMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 406
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 419
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardShown:Z

    .line 426
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mViSessionId:I

    .line 461
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStartActivitySources:Ljava/util/HashMap;

    .line 464
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExpiredStartAsCallerTokens:Ljava/util/ArrayList;

    .line 466
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    .line 473
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompanionAppUidsMap:Ljava/util/Map;

    .line 485
    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    invoke-direct {v2}, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    .line 503
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportedSystemLocales:[Ljava/lang/String;

    .line 510
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    .line 513
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 536
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 537
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mControllerIsAMonkey:Z

    .line 543
    const-string v2, "android.intent.action.MAIN"

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopAction:Ljava/lang/String;

    .line 547
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileApp:Ljava/lang/String;

    .line 548
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileProc:Lcom/android/server/wm/WindowProcessController;

    .line 549
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 561
    new-instance v0, Landroid/os/UpdateLock;

    const-string v2, "immersive"

    invoke-direct {v0, v2}, Landroid/os/UpdateLock;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    .line 567
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAllowAppSwitchUids:Landroid/util/SparseArray;

    .line 595
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    .line 598
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVr2dDisplayId:I

    .line 613
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 619
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    .line 623
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShowDialogs:Z

    .line 626
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    .line 667
    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDeviceOwnerUid:I

    .line 711
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 712
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    .line 713
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSystemThread:Landroid/app/ActivityThread;

    .line 714
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSystemThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    .line 715
    new-instance v0, Lcom/android/server/wm/ClientLifecycleManager;

    invoke-direct {v0}, Lcom/android/server/wm/ClientLifecycleManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    .line 716
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 717
    const-string v0, "ro.opengles.version"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->GL_ES_VERSION:I

    .line 721
    new-instance v0, Lcom/android/server/hips/intercept/InterceptionStats;

    invoke-direct {v0, v3}, Lcom/android/server/hips/intercept/InterceptionStats;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStats:Lcom/android/server/hips/intercept/InterceptionStats;

    .line 722
    new-instance v0, Lcom/android/server/hips/intercept/InterceptionStats;

    invoke-direct {v0, v2}, Lcom/android/server/hips/intercept/InterceptionStats;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mServiceStats:Lcom/android/server/hips/intercept/InterceptionStats;

    .line 723
    new-instance v0, Lcom/android/server/hips/intercept/InterceptionStats;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/server/hips/intercept/InterceptionStats;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mBroadcastStats:Lcom/android/server/hips/intercept/InterceptionStats;

    .line 724
    new-instance v0, Lcom/android/server/hips/intercept/InterceptionStats;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/server/hips/intercept/InterceptionStats;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProviderStats:Lcom/android/server/hips/intercept/InterceptionStats;

    .line 725
    invoke-static {}, Lcom/android/server/hips/intercept/InterceptionManager;->getInstance()Lcom/android/server/hips/intercept/InterceptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStats:Lcom/android/server/hips/intercept/InterceptionStats;

    invoke-virtual {v0, v1}, Lcom/android/server/hips/intercept/InterceptionManager;->registerCollectionListener(Lcom/android/server/hips/intercept/InterceptionStats;)V

    .line 726
    invoke-static {}, Lcom/android/server/hips/intercept/InterceptionManager;->getInstance()Lcom/android/server/hips/intercept/InterceptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mServiceStats:Lcom/android/server/hips/intercept/InterceptionStats;

    invoke-virtual {v0, v1}, Lcom/android/server/hips/intercept/InterceptionManager;->registerCollectionListener(Lcom/android/server/hips/intercept/InterceptionStats;)V

    .line 727
    invoke-static {}, Lcom/android/server/hips/intercept/InterceptionManager;->getInstance()Lcom/android/server/hips/intercept/InterceptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mBroadcastStats:Lcom/android/server/hips/intercept/InterceptionStats;

    invoke-virtual {v0, v1}, Lcom/android/server/hips/intercept/InterceptionManager;->registerCollectionListener(Lcom/android/server/hips/intercept/InterceptionStats;)V

    .line 728
    invoke-static {}, Lcom/android/server/hips/intercept/InterceptionManager;->getInstance()Lcom/android/server/hips/intercept/InterceptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProviderStats:Lcom/android/server/hips/intercept/InterceptionStats;

    invoke-virtual {v0, v1}, Lcom/android/server/hips/intercept/InterceptionManager;->registerCollectionListener(Lcom/android/server/hips/intercept/InterceptionStats;)V

    .line 730
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/ActivityTaskManagerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "x1"  # I

    .line 319
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateFontScaleIfNeeded(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/res/Configuration;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "x1"  # Landroid/content/res/Configuration;

    .line 319
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateShouldShowDialogsLocked(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 319
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/util/proto/ProtoOutputStream;IZ)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "x1"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "x2"  # I
    .param p3, "x3"  # Z

    .line 319
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->writeSleepStateToProto(Landroid/util/proto/ProtoOutputStream;IZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/MirrorActiveUids;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 319
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wm/ActivityTaskManagerService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 319
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingTempWhitelist:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/RecentTasks;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 319
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZ)Z
    .registers 8
    .param p0, "x0"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "x1"  # Landroid/content/res/Configuration;
    .param p2, "x2"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "x3"  # Z
    .param p4, "x4"  # Z
    .param p5, "x5"  # I
    .param p6, "x6"  # Z

    .line 319
    invoke-direct/range {p0 .. p6}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/wm/ActivityTaskManagerService;IZZ)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 5
    .param p0, "x0"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Z
    .param p3, "x3"  # Z

    .line 319
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskSnapshot(IZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/wm/ActivityTaskManagerService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 319
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompanionAppUidsMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 319
    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->start()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "x1"  # Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    .line 319
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->pendingAssistExtrasTimedOut(Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "x1"  # Landroid/os/IBinder;
    .param p2, "x2"  # Landroid/service/voice/IVoiceInteractionSession;
    .param p3, "x3"  # Lcom/android/internal/app/IVoiceInteractor;

    .line 319
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->onLocalVoiceInteractionStartedLocked(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Ljava/lang/String;

    .line 319
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/ActivityTaskManagerService;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "x1"  # Z

    .line 319
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateEventDispatchingLocked(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wm/ActivityTaskManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 319
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShowDialogs:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/ActivityTaskManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 319
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/AppWarnings;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 319
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    return-object v0
.end method

.method private applyUpdateVrModeLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 4873
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_3e

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_3e

    .line 4874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Moving "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to main display for VR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4876
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 4877
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getStackId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 4876
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/RootActivityContainer;->moveStackToDisplay(IIZ)V

    .line 4879
    :cond_3e
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$7Ia1bmRpPHHSNlbH8cuLw8dKG04;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$7Ia1bmRpPHHSNlbH8cuLw8dKG04;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 4893
    return-void
.end method

.method private buildAssistBundleLocked(Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "pae"  # Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;
    .param p2, "result"  # Landroid/os/Bundle;

    .line 3730
    if-eqz p2, :cond_9

    .line 3731
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    const-string v1, "android.intent.extra.ASSIST_CONTEXT"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3733
    :cond_9
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->hint:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 3734
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->hint:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3736
    :cond_15
    return-void
.end method

.method private cancelHeavyWeightProcessNotification(I)V
    .registers 6
    .param p1, "userId"  # I

    .line 5784
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 5785
    .local v0, "inm":Landroid/app/INotificationManager;
    if-nez v0, :cond_7

    .line 5786
    return-void

    .line 5789
    :cond_7
    :try_start_7
    const-string v1, "android"

    const/4 v2, 0x0

    const/16 v3, 0xb

    invoke-interface {v0, v1, v2, v3, p1}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_f} :catch_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_10

    goto :goto_1a

    .line 5793
    :catch_10
    move-exception v1

    goto :goto_1b

    .line 5791
    :catch_12
    move-exception v1

    .line 5792
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "ActivityTaskManager"

    const-string v3, "Error canceling notification for service"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5794
    .end local v1  # "e":Ljava/lang/RuntimeException;
    :goto_1a
    nop

    .line 5796
    :goto_1b
    return-void
.end method

.method private checkAllowAppSwitchUid(I)Z
    .registers 6
    .param p1, "uid"  # I

    .line 2541
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAllowAppSwitchUids:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 2542
    .local v0, "types":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_26

    .line 2543
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_14
    if-ltz v1, :cond_26

    .line 2544
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_23

    .line 2545
    return v2

    .line 2543
    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 2549
    .end local v1  # "i":I
    :cond_26
    const/4 v1, 0x0

    return v1
.end method

.method private static checkCallingPermission(Ljava/lang/String;)I
    .registers 3
    .param p0, "permission"  # Ljava/lang/String;

    .line 3602
    nop

    .line 3603
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 3602
    invoke-static {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static checkComponentPermission(Ljava/lang/String;IIIZ)I
    .registers 6
    .param p0, "permission"  # Ljava/lang/String;
    .param p1, "pid"  # I
    .param p2, "uid"  # I
    .param p3, "owningUid"  # I
    .param p4, "exported"  # Z

    .line 3627
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    return v0
.end method

.method static checkPermission(Ljava/lang/String;II)I
    .registers 5
    .param p0, "permission"  # Ljava/lang/String;
    .param p1, "pid"  # I
    .param p2, "uid"  # I

    .line 3619
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 3620
    return v0

    .line 3622
    :cond_4
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    return v0
.end method

.method private constructResumedTraceName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;

    .line 5896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "focused app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private dumpActivity(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;[Ljava/lang/String;Z)V
    .registers 12
    .param p1, "prefix"  # Ljava/lang/String;
    .param p2, "fd"  # Ljava/io/FileDescriptor;
    .param p3, "pw"  # Ljava/io/PrintWriter;
    .param p4, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p5, "args"  # [Ljava/lang/String;
    .param p6, "dumpAll"  # Z

    .line 5130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5131
    .local v0, "innerPrefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5132
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "ACTIVITY "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p4, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5133
    const-string v2, " "

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5134
    const-string v2, " pid="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5135
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v2

    if-eqz v2, :cond_49

    iget-object v2, p4, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_4e

    .line 5136
    :cond_49
    const-string v2, "(not running)"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5137
    :goto_4e
    if-eqz p6, :cond_53

    .line 5138
    invoke-virtual {p4, p3, v0}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5140
    :cond_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_14 .. :try_end_54} :catchall_af

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5141
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1

    if-eqz v1, :cond_ae

    .line 5144
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 5146
    :try_start_60
    new-instance v1, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v1}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_65} :catch_96
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_65} :catch_80

    .line 5148
    .local v1, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_65
    iget-object v2, p4, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iget-object v4, p4, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v2, v3, v4, v0, p5}, Landroid/app/IApplicationThread;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5150
    invoke-virtual {v1, p2}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_77
    .catchall {:try_start_65 .. :try_end_77} :catchall_7b

    .line 5152
    :try_start_77
    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 5153
    goto :goto_ae

    .line 5152
    :catchall_7b
    move-exception v2

    invoke-virtual {v1}, Lcom/android/internal/os/TransferPipe;->kill()V

    .end local v0  # "innerPrefix":Ljava/lang/String;
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "prefix":Ljava/lang/String;
    .end local p2  # "fd":Ljava/io/FileDescriptor;
    .end local p3  # "pw":Ljava/io/PrintWriter;
    .end local p4  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local p5  # "args":[Ljava/lang/String;
    .end local p6  # "dumpAll":Z
    throw v2
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_80} :catch_96
    .catch Landroid/os/RemoteException; {:try_start_77 .. :try_end_80} :catch_80

    .line 5156
    .end local v1  # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local v0  # "innerPrefix":Ljava/lang/String;
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "prefix":Ljava/lang/String;
    .restart local p2  # "fd":Ljava/io/FileDescriptor;
    .restart local p3  # "pw":Ljava/io/PrintWriter;
    .restart local p4  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local p5  # "args":[Ljava/lang/String;
    .restart local p6  # "dumpAll":Z
    :catch_80
    move-exception v1

    .line 5157
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Got a RemoteException while dumping the activity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ae

    .line 5154
    .end local v1  # "e":Landroid/os/RemoteException;
    :catch_96
    move-exception v1

    .line 5155
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Failure while dumping the activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5160
    .end local v1  # "e":Ljava/io/IOException;
    :cond_ae
    :goto_ae
    return-void

    .line 5140
    :catchall_af
    move-exception v2

    :try_start_b0
    monitor-exit v1
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_af

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "permission"  # Ljava/lang/String;
    .param p2, "func"  # Ljava/lang/String;

    .line 3608
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 3609
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3611
    :cond_13
    return-void
.end method

.method private enforceNotIsolatedCaller(Ljava/lang/String;)V
    .registers 5
    .param p1, "caller"  # Ljava/lang/String;

    .line 5184
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 5187
    return-void

    .line 5185
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Isolated process not allowed to call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enqueueAssistContext(ILandroid/content/Intent;Ljava/lang/String;Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZILandroid/os/Bundle;JI)Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;
    .registers 37
    .param p1, "requestType"  # I
    .param p2, "intent"  # Landroid/content/Intent;
    .param p3, "hint"  # Ljava/lang/String;
    .param p4, "receiver"  # Landroid/app/IAssistDataReceiver;
    .param p5, "receiverExtras"  # Landroid/os/Bundle;
    .param p6, "activityToken"  # Landroid/os/IBinder;
    .param p7, "focused"  # Z
    .param p8, "newSessionId"  # Z
    .param p9, "userHandle"  # I
    .param p10, "args"  # Landroid/os/Bundle;
    .param p11, "timeout"  # J
    .param p13, "flags"  # I

    .line 3665
    move-object/from16 v10, p0

    move-object/from16 v11, p6

    move-object/from16 v12, p10

    iget-object v0, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.GET_TOP_ACTIVITY_INFO"

    const-string v2, "enqueueAssistContext()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3668
    iget-object v13, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v13

    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3669
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3670
    .local v0, "activity":Lcom/android/server/wm/ActivityRecord;
    const/4 v14, 0x0

    if-nez v0, :cond_2c

    .line 3671
    const-string v1, "ActivityTaskManager"

    const-string v2, "getAssistContextExtras failed: no top activity"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3672
    monitor-exit v13
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_14e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v14

    .line 3674
    :cond_2c
    :try_start_2c
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1

    if-nez v1, :cond_4d

    .line 3675
    const-string v1, "ActivityTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAssistContextExtras failed: no process for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3676
    monitor-exit v13
    :try_end_49
    .catchall {:try_start_2c .. :try_end_49} :catchall_14e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v14

    .line 3678
    :cond_4d
    if-eqz p7, :cond_7c

    .line 3679
    if-eqz v11, :cond_7a

    .line 3680
    :try_start_51
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3681
    .local v1, "caller":Lcom/android/server/wm/ActivityRecord;
    if-eq v0, v1, :cond_7a

    .line 3682
    const-string v2, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enqueueAssistContext failed: caller "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is not current top "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3684
    monitor-exit v13
    :try_end_76
    .catchall {:try_start_51 .. :try_end_76} :catchall_14e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v14

    .line 3701
    .end local v1  # "caller":Lcom/android/server/wm/ActivityRecord;
    :cond_7a
    move-object v15, v0

    goto :goto_c5

    .line 3688
    :cond_7c
    :try_start_7c
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    move-object v0, v1

    .line 3689
    if-nez v0, :cond_a3

    .line 3690
    const-string v1, "ActivityTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enqueueAssistContext failed: activity for token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " couldn\'t be found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3692
    monitor-exit v13
    :try_end_9f
    .catchall {:try_start_7c .. :try_end_9f} :catchall_14e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v14

    .line 3694
    :cond_a3
    :try_start_a3
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1

    if-nez v1, :cond_c4

    .line 3695
    const-string v1, "ActivityTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enqueueAssistContext failed: no process for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3696
    monitor-exit v13
    :try_end_c0
    .catchall {:try_start_a3 .. :try_end_c0} :catchall_14e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v14

    .line 3694
    :cond_c4
    move-object v15, v0

    .line 3701
    .end local v0  # "activity":Lcom/android/server/wm/ActivityRecord;
    .local v15, "activity":Lcom/android/server/wm/ActivityRecord;
    :goto_c5
    :try_start_c5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v9, v0

    .line 3702
    .local v9, "extras":Landroid/os/Bundle;
    if-eqz v12, :cond_d0

    .line 3703
    invoke-virtual {v9, v12}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3705
    :cond_d0
    const-string v0, "android.intent.extra.ASSIST_PACKAGE"

    iget-object v1, v15, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3706
    const-string v0, "android.intent.extra.ASSIST_UID"

    iget-object v1, v15, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v1, v1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3708
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v15

    move-object v4, v9

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v16, v9

    .end local v9  # "extras":Landroid/os/Bundle;
    .local v16, "extras":Landroid/os/Bundle;
    move/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;I)V

    move-object v1, v0

    .line 3710
    .local v1, "pae":Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->isHome:Z

    .line 3713
    if-eqz p8, :cond_105

    .line 3714
    iget v0, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mViSessionId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mViSessionId:I
    :try_end_105
    .catchall {:try_start_c5 .. :try_end_105} :catchall_14e

    .line 3717
    :cond_105
    :try_start_105
    iget-object v0, v15, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v17

    iget-object v0, v15, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget v2, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mViSessionId:I

    move-object/from16 v18, v0

    move-object/from16 v19, v1

    move/from16 v20, p1

    move/from16 v21, v2

    move/from16 v22, p13

    invoke-interface/range {v17 .. v22}, Landroid/app/IApplicationThread;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;III)V

    .line 3719
    iget-object v0, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3720
    iget-object v0, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;
    :try_end_123
    .catch Landroid/os/RemoteException; {:try_start_105 .. :try_end_123} :catch_130
    .catchall {:try_start_105 .. :try_end_123} :catchall_14e

    move-wide/from16 v2, p11

    :try_start_125
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_128
    .catch Landroid/os/RemoteException; {:try_start_125 .. :try_end_128} :catch_12e
    .catchall {:try_start_125 .. :try_end_128} :catchall_156

    .line 3724
    nop

    .line 3725
    :try_start_129
    monitor-exit v13
    :try_end_12a
    .catchall {:try_start_129 .. :try_end_12a} :catchall_156

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 3721
    :catch_12e
    move-exception v0

    goto :goto_133

    :catch_130
    move-exception v0

    move-wide/from16 v2, p11

    .line 3722
    .local v0, "e":Landroid/os/RemoteException;
    :goto_133
    :try_start_133
    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAssistContextExtras failed: crash calling "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3723
    monitor-exit v13
    :try_end_14a
    .catchall {:try_start_133 .. :try_end_14a} :catchall_156

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v14

    .line 3726
    .end local v0  # "e":Landroid/os/RemoteException;
    .end local v1  # "pae":Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;
    .end local v15  # "activity":Lcom/android/server/wm/ActivityRecord;
    .end local v16  # "extras":Landroid/os/Bundle;
    :catchall_14e
    move-exception v0

    move-wide/from16 v2, p11

    :goto_151
    :try_start_151
    monitor-exit v13
    :try_end_152
    .catchall {:try_start_151 .. :try_end_152} :catchall_156

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_156
    move-exception v0

    goto :goto_151
.end method

.method private ensureConfigAndVisibilityAfterUpdate(Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 7
    .param p1, "starting"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "changes"  # I

    .line 5901
    const/4 v0, 0x1

    .line 5902
    .local v0, "kept":Z
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 5904
    .local v1, "mainStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_1d

    .line 5905
    if-eqz p2, :cond_11

    if-nez p1, :cond_11

    .line 5909
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 5912
    :cond_11
    if-eqz p1, :cond_1d

    .line 5913
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    move-result v0

    .line 5917
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p1, p2, v2}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 5922
    :cond_1d
    return v0
.end method

.method private ensureValidPictureInPictureActivityParamsLocked(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Lcom/android/server/wm/ActivityRecord;
    .registers 12
    .param p1, "caller"  # Ljava/lang/String;
    .param p2, "token"  # Landroid/os/IBinder;
    .param p3, "params"  # Landroid/app/PictureInPictureParams;

    .line 4309
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v0, :cond_a8

    .line 4314
    invoke-static {p2}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 4315
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_8e

    .line 4320
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 4325
    invoke-virtual {p3}, Landroid/app/PictureInPictureParams;->hasSetAspectRatio()Z

    move-result v1

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 4327
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    invoke-virtual {p3}, Landroid/app/PictureInPictureParams;->getAspectRatio()F

    move-result v3

    .line 4326
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->isValidPictureInPictureAspectRatio(IF)Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_6f

    .line 4328
    :cond_29
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    .line 4330
    .local v1, "minAspectRatio":F
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    .line 4332
    .local v2, "maxAspectRatio":F
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": Aspect ratio is too extreme (must be between %f and %f)."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 4334
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    .line 4332
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4338
    .end local v1  # "minAspectRatio":F
    .end local v2  # "maxAspectRatio":F
    :cond_6f
    :goto_6f
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getMaxNumPictureInPictureActions(Landroid/os/IBinder;)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/app/PictureInPictureParams;->truncateActions(I)V

    .line 4340
    return-object v0

    .line 4321
    :cond_77
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Current activity does not support picture-in-picture."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4316
    :cond_8e
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Can\'t find activity for token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4310
    .end local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_a8
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Device doesn\'t support picture-in-picture mode."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private expireStartAsCallerTokenMsg(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "permissionToken"  # Landroid/os/IBinder;

    .line 5483
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStartActivitySources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5484
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExpiredStartAsCallerTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5485
    return-void
.end method

.method private forgetStartAsCallerTokenMsg(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "permissionToken"  # Landroid/os/IBinder;

    .line 5488
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExpiredStartAsCallerTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5489
    return-void
.end method

.method private getCallingRecordLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .registers 4
    .param p1, "token"  # Landroid/os/IBinder;

    .line 2364
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2365
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_8

    .line 2366
    const/4 v1, 0x0

    return-object v1

    .line 2368
    :cond_8
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    return-object v1
.end method

.method static getInputDispatchingTimeoutLocked(Lcom/android/server/wm/ActivityRecord;)J
    .registers 3
    .param p0, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 5510
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_10

    .line 5513
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getInputDispatchingTimeoutLocked(Lcom/android/server/wm/WindowProcessController;)J

    move-result-wide v0

    return-wide v0

    .line 5511
    :cond_10
    :goto_10
    const-wide/16 v0, 0x1388

    return-wide v0
.end method

.method private static getInputDispatchingTimeoutLocked(Lcom/android/server/wm/WindowProcessController;)J
    .registers 3
    .param p0, "r"  # Lcom/android/server/wm/WindowProcessController;

    .line 5517
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getInputDispatchingTimeout()J

    move-result-wide v0

    goto :goto_9

    :cond_7
    const-wide/16 v0, 0x1388

    :goto_9
    return-wide v0
.end method

.method private getTaskSnapshot(IZZ)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 9
    .param p1, "taskId"  # I
    .param p2, "reducedResolution"  # Z
    .param p3, "restoreFromDisk"  # Z

    .line 4618
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4619
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    .line 4621
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    if-nez v1, :cond_30

    .line 4622
    const-string v2, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTaskSnapshot: taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4623
    const/4 v2, 0x0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 4625
    :cond_30
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4627
    invoke-virtual {v1, p2, p3}, Lcom/android/server/wm/TaskRecord;->getSnapshot(ZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v0

    return-object v0

    .line 4625
    .end local v1  # "task":Lcom/android/server/wm/TaskRecord;
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private isInPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 4182
    if-eqz p1, :cond_28

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 4183
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStack;->isInStackLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_28

    .line 4189
    :cond_19
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 4190
    .local v0, "taskStack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isAnimatingBoundsToFullscreen()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 4184
    .end local v0  # "taskStack":Lcom/android/server/wm/TaskStack;
    :cond_28
    :goto_28
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$3DTHgCAeEd5OOF7ACeXoCk8mmrQ(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->expireStartAsCallerTokenMsg(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic lambda$7ieG0s-7Zp4H2bLiWdOgB6MqhcI(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->forgetStartAsCallerTokenMsg(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic lambda$U6g1UdnOPnEF9wX1OTm9nKVXY5k(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/util/Locale;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->sendLocaleToMountDaemonMsg(Ljava/util/Locale;)V

    return-void
.end method

.method public static synthetic lambda$w70cT1_hTWQQAYctmXaA0BeZuBc(Lcom/android/server/wm/ActivityTaskManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->cancelHeavyWeightProcessNotification(I)V

    return-void
.end method

.method public static synthetic lambda$x3j1aVkumtfulORwKd6dHysJyE0(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;Landroid/content/Intent;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->postHeavyWeightProcessNotification(Lcom/android/server/wm/WindowProcessController;Landroid/content/Intent;I)V

    return-void
.end method

.method public static synthetic lambda$yP9TbBmrgQ4lrgcxb-8oL1pBAs4(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/res/Configuration;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->sendPutConfigurationForUserMsg(ILandroid/content/res/Configuration;)V

    return-void
.end method

.method private logPictureInPictureArgs(Landroid/app/PictureInPictureParams;)V
    .registers 5
    .param p1, "params"  # Landroid/app/PictureInPictureParams;

    .line 4290
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->hasSetActions()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4291
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 4292
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 4291
    const-string v2, "tron_varz_picture_in_picture_actions_count"

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4294
    :cond_15
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->hasSetAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 4295
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x338

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 4296
    .local v0, "lm":Landroid/metrics/LogMaker;
    const/16 v1, 0x339

    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getAspectRatio()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 4297
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 4299
    .end local v0  # "lm":Landroid/metrics/LogMaker;
    :cond_32
    return-void
.end method

.method private onLocalVoiceInteractionStartedLocked(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 8
    .param p1, "activity"  # Landroid/os/IBinder;
    .param p2, "voiceSession"  # Landroid/service/voice/IVoiceInteractionSession;
    .param p3, "voiceInteractor"  # Lcom/android/internal/app/IVoiceInteractor;

    .line 3849
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3850
    .local v0, "activityToCallback":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_7

    return-void

    .line 3851
    :cond_7
    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityRecord;->setVoiceSessionLocked(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 3855
    :try_start_a
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Landroid/app/IApplicationThread;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 3857
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_28

    .line 3859
    .local v1, "token":J
    :try_start_17
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, p2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->startRunningVoiceLocked(Landroid/service/voice/IVoiceInteractionSession;I)V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_23

    .line 3861
    :try_start_1e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3862
    nop

    .line 3868
    .end local v1  # "token":J
    goto :goto_2c

    .line 3861
    .restart local v1  # "token":J
    :catchall_23
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0  # "activityToCallback":Lcom/android/server/wm/ActivityRecord;
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "activity":Landroid/os/IBinder;
    .end local p2  # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .end local p3  # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    throw v3
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_28} :catch_28

    .line 3865
    .end local v1  # "token":J
    .restart local v0  # "activityToCallback":Lcom/android/server/wm/ActivityRecord;
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "activity":Landroid/os/IBinder;
    .restart local p2  # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .restart local p3  # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    :catch_28
    move-exception v1

    .line 3866
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->clearVoiceSessionLocked()V

    .line 3869
    .end local v1  # "re":Landroid/os/RemoteException;
    :goto_2c
    return-void
.end method

.method private pendingAssistExtrasTimedOut(Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;)V
    .registers 6
    .param p1, "pae"  # Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    .line 3740
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3741
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3742
    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiver:Landroid/app/IAssistDataReceiver;

    .line 3743
    .local v1, "receiver":Landroid/app/IAssistDataReceiver;
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3744
    if-eqz v1, :cond_26

    .line 3746
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3748
    .local v0, "sendBundle":Landroid/os/Bundle;
    iget-object v2, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiverExtras:Landroid/os/Bundle;

    const-string v3, "receiverExtras"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3750
    :try_start_1f
    iget-object v2, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiver:Landroid/app/IAssistDataReceiver;

    invoke-interface {v2, v0}, Landroid/app/IAssistDataReceiver;->onHandleAssistData(Landroid/os/Bundle;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    .line 3752
    goto :goto_26

    .line 3751
    :catch_25
    move-exception v2

    .line 3754
    .end local v0  # "sendBundle":Landroid/os/Bundle;
    :cond_26
    :goto_26
    return-void

    .line 3743
    .end local v1  # "receiver":Landroid/app/IAssistDataReceiver;
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private performDisplayOverrideConfigUpdate(Landroid/content/res/Configuration;ZI)I
    .registers 10
    .param p1, "values"  # Landroid/content/res/Configuration;
    .param p2, "deferResume"  # Z
    .param p3, "displayId"  # I

    .line 5440
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1, p3}, Lcom/android/server/wm/RootActivityContainer;->getDisplayOverrideConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 5441
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 5442
    .local v0, "changes":I
    if-eqz v0, :cond_6e

    .line 5443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Override config changes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5445
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2, p3}, Lcom/android/server/wm/RootActivityContainer;->setDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)V

    .line 5447
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_4c

    const/4 v1, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v1, 0x0

    .line 5448
    .local v1, "isDensityChange":Z
    :goto_4d
    if-eqz v1, :cond_6e

    if-nez p3, :cond_6e

    .line 5449
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWarnings;->onDensityChanged()V

    .line 5453
    sget-object v2, Lcom/android/server/wm/-$$Lambda$ibmQVLjaQW2x74Wk8TcE0Og2MJM;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ibmQVLjaQW2x74Wk8TcE0Og2MJM;

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const/16 v4, 0x18

    .line 5455
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 5453
    invoke-static {v2, v3, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 5456
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5459
    .end local v1  # "isDensityChange":Z
    .end local v2  # "msg":Landroid/os/Message;
    :cond_6e
    return v0
.end method

.method private postHeavyWeightProcessNotification(Lcom/android/server/wm/WindowProcessController;Landroid/content/Intent;I)V
    .registers 15
    .param p1, "proc"  # Lcom/android/server/wm/WindowProcessController;
    .param p2, "intent"  # Landroid/content/Intent;
    .param p3, "userId"  # I

    .line 5800
    const-string v0, "ActivityTaskManager"

    if-nez p1, :cond_5

    .line 5801
    return-void

    .line 5804
    :cond_5
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v8

    .line 5805
    .local v8, "inm":Landroid/app/INotificationManager;
    if-nez v8, :cond_c

    .line 5806
    return-void

    .line 5810
    :cond_c
    :try_start_c
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    move-object v9, v1

    .line 5811
    .local v9, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const v2, 0x10402d8

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 5812
    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v3

    .line 5811
    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    .line 5813
    .local v10, "text":Ljava/lang/String;
    new-instance v1, Landroid/app/Notification$Builder;

    sget-object v2, Lcom/android/internal/notification/SystemNotificationChannels;->HEAVY_WEIGHT_APP:Ljava/lang/String;

    invoke-direct {v1, v9, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x10807ef

    .line 5816
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 5817
    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 5818
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 5819
    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const v3, 0x106001c

    .line 5820
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 5822
    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const v3, 0x10402d9

    .line 5824
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 5823
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x10000000

    const/4 v6, 0x0

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 5825
    move-object v4, p2

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 5828
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6
    :try_end_85
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_85} :catch_9c

    .line 5830
    .local v6, "notification":Landroid/app/Notification;
    :try_start_85
    const-string v2, "android"

    const-string v3, "android"

    const/4 v4, 0x0

    const/16 v5, 0xb

    move-object v1, v8

    move v7, p3

    invoke-interface/range {v1 .. v7}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_91
    .catch Ljava/lang/RuntimeException; {:try_start_85 .. :try_end_91} :catch_94
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_91} :catch_92
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_85 .. :try_end_91} :catch_9c

    .line 5835
    goto :goto_9b

    .line 5834
    :catch_92
    move-exception v0

    goto :goto_9b

    .line 5832
    :catch_94
    move-exception v1

    .line 5833
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_95
    const-string v2, "Error showing notification for heavy-weight app"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_95 .. :try_end_9a} :catch_9c

    .line 5835
    nop

    .line 5838
    .end local v1  # "e":Ljava/lang/RuntimeException;
    .end local v6  # "notification":Landroid/app/Notification;
    .end local v9  # "context":Landroid/content/Context;
    .end local v10  # "text":Ljava/lang/String;
    :goto_9b
    goto :goto_a2

    .line 5836
    :catch_9c
    move-exception v1

    .line 5837
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Unable to create context for heavy notification"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5840
    .end local v1  # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_a2
    return-void
.end method

.method public static relaunchReasonToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "relaunchReason"  # I

    .line 4930
    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    .line 4936
    const/4 v0, 0x0

    return-object v0

    .line 4934
    :cond_8
    const-string v0, "free_resize"

    return-object v0

    .line 4932
    :cond_b
    const-string v0, "window_resize"

    return-object v0
.end method

.method private sendLocaleToMountDaemonMsg(Ljava/util/Locale;)V
    .registers 7
    .param p1, "l"  # Ljava/util/Locale;

    .line 5473
    const-string v0, "ActivityTaskManager"

    :try_start_2
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 5474
    .local v1, "service":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v2

    .line 5475
    .local v2, "storageManager":Landroid/os/storage/IStorageManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Storing locale "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for decryption UI"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5476
    const-string v3, "SystemLocale"

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/os/storage/IStorageManager;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_32} :catch_33

    .line 5479
    .end local v1  # "service":Landroid/os/IBinder;
    .end local v2  # "storageManager":Landroid/os/storage/IStorageManager;
    goto :goto_39

    .line 5477
    :catch_33
    move-exception v1

    .line 5478
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Error storing locale for decryption UI"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5480
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_39
    return-void
.end method

.method private sendPutConfigurationForUserMsg(ILandroid/content/res/Configuration;)V
    .registers 4
    .param p1, "userId"  # I
    .param p2, "config"  # Landroid/content/res/Configuration;

    .line 5467
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5468
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z

    .line 5469
    return-void
.end method

.method private start()V
    .registers 3

    .line 1012
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1013
    return-void
.end method

.method private startLockTaskModeLocked(Lcom/android/server/wm/TaskRecord;Z)V
    .registers 11
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "isSystemCaller"  # Z

    .line 2943
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_LOCKTASK:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startLockTaskModeLocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    :cond_1a
    if-eqz p1, :cond_5c

    iget v0, p1, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    if-nez v0, :cond_21

    goto :goto_5c

    .line 2948
    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2949
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_54

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    if-ne p1, v1, :cond_54

    .line 2959
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2960
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2963
    .local v2, "ident":J
    :try_start_37
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/4 v7, 0x2

    aput v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/android/server/wm/RootActivityContainer;->removeStacksInWindowingModes([I)V

    .line 2965
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v4

    invoke-virtual {v4, p1, p2, v1}, Lcom/android/server/wm/LockTaskController;->startLockTaskMode(Lcom/android/server/wm/TaskRecord;ZI)V
    :try_end_4a
    .catchall {:try_start_37 .. :try_end_4a} :catchall_4f

    .line 2967
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2968
    nop

    .line 2969
    return-void

    .line 2967
    :catchall_4f
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2950
    .end local v1  # "callingUid":I
    .end local v2  # "ident":J
    :cond_54
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid task, not in foreground"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2945
    .end local v0  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_5c
    :goto_5c
    return-void
.end method

.method private startRunningVoiceLocked(Landroid/service/voice/IVoiceInteractionSession;I)V
    .registers 5
    .param p1, "session"  # Landroid/service/voice/IVoiceInteractionSession;
    .param p2, "targetUid"  # I

    .line 3872
    const-string v0, "ActivityTaskManager"

    const-string v1, "<<<  startRunningVoiceLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3873
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p2}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 3874
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 3875
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    .line 3876
    .local v0, "wasRunningVoice":Z
    :goto_26
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    .line 3877
    if-nez v0, :cond_32

    .line 3878
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3879
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 3882
    .end local v0  # "wasRunningVoice":Z
    :cond_32
    return-void
.end method

.method private startTimeTrackingFocusedActivityLocked()V
    .registers 4

    .line 5877
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 5878
    .local v0, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v1, :cond_15

    if-eqz v0, :cond_15

    .line 5879
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/am/AppTimeTracker;->start(Ljava/lang/String;)V

    .line 5881
    :cond_15
    return-void
.end method

.method private startVoiceInteractionServiceAsUser(Landroid/content/Intent;ILjava/lang/String;)V
    .registers 15
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "userHandle"  # I
    .param p3, "reason"  # Ljava/lang/String;

    .line 3193
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 3194
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 3195
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_45

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v2, :cond_14

    goto :goto_45

    .line 3199
    :cond_14
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3202
    const-class v2, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/server/DeviceIdleController$LocalService;

    .line 3203
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x1388

    const/4 v9, 0x0

    move v8, p2

    move-object v10, p3

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/DeviceIdleController$LocalService;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 3208
    :try_start_34
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_3d
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_3d} :catch_3e

    .line 3211
    goto :goto_44

    .line 3209
    :catch_3e
    move-exception v2

    .line 3210
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "VoiceInteractionService failed to start."

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3212
    .end local v2  # "e":Ljava/lang/RuntimeException;
    :goto_44
    return-void

    .line 3196
    :cond_45
    :goto_45
    const-string v2, "VoiceInteractionService intent does not resolve. Not starting."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3197
    return-void
.end method

.method private stopLockTaskModeInternal(Lcom/android/server/wm/TaskRecord;Z)V
    .registers 8
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "isSystemCaller"  # Z

    .line 2972
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2973
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2975
    .local v1, "ident":J
    :try_start_8
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_34

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2976
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v4

    invoke-virtual {v4, p1, p2, v0}, Lcom/android/server/wm/LockTaskController;->stopLockTaskMode(Lcom/android/server/wm/TaskRecord;ZI)V

    .line 2977
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_2e

    :try_start_16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2980
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-string v4, "telecom"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/TelecomManager;

    .line 2981
    .local v3, "tm":Landroid/telecom/TelecomManager;
    if-eqz v3, :cond_29

    .line 2982
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V
    :try_end_29
    .catchall {:try_start_16 .. :try_end_29} :catchall_34

    .line 2985
    .end local v3  # "tm":Landroid/telecom/TelecomManager;
    :cond_29
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2986
    nop

    .line 2987
    return-void

    .line 2977
    :catchall_2e
    move-exception v4

    :try_start_2f
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "callingUid":I
    .end local v1  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "task":Lcom/android/server/wm/TaskRecord;
    .end local p2  # "isSystemCaller":Z
    throw v4
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_34

    .line 2985
    .restart local v0  # "callingUid":I
    .restart local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local p2  # "isSystemCaller":Z
    :catchall_34
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private updateConfigurationExt(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "values"  # Landroid/content/res/Configuration;

    .line 7593
    if-eqz p1, :cond_30

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    if-eqz v0, :cond_30

    .line 7594
    iget-object v0, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    if-eqz v0, :cond_30

    .line 7595
    iget-object v0, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget v0, v0, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    if-nez v0, :cond_20

    .line 7596
    iget-object v0, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget v1, v1, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    iput v1, v0, Landroid/content/res/flymetheme/ConfigurationExt;->themeChanged:I

    .line 7598
    :cond_20
    iget-object v0, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget v0, v0, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    if-nez v0, :cond_30

    .line 7599
    iget-object v0, p1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->configurationExt:Landroid/content/res/flymetheme/ConfigurationExt;

    iget v1, v1, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    iput v1, v0, Landroid/content/res/flymetheme/ConfigurationExt;->fontChanged:I

    .line 7603
    :cond_30
    return-void
.end method

.method private updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZ)Z
    .registers 15
    .param p1, "values"  # Landroid/content/res/Configuration;
    .param p2, "starting"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "initLocale"  # Z
    .param p4, "persistent"  # Z
    .param p5, "userId"  # I
    .param p6, "deferResume"  # Z

    .line 5232
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z

    move-result v0

    return v0
.end method

.method private updateEventDispatchingLocked(Z)V
    .registers 4
    .param p1, "booted"  # Z

    .line 5463
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz p1, :cond_a

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-nez v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setEventDispatching(Z)V

    .line 5464
    return-void
.end method

.method private updateFontScaleIfNeeded(I)V
    .registers 5
    .param p1, "userId"  # I

    .line 5544
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_scale"

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 5547
    .local v0, "scaleFactor":F
    monitor-enter p0

    .line 5548
    :try_start_f
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_1b

    .line 5549
    monitor-exit p0

    return-void

    .line 5552
    :cond_1b
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    .line 5553
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v1

    .line 5554
    .local v1, "configuration":Landroid/content/res/Configuration;
    iput v0, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 5555
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updatePersistentConfiguration(Landroid/content/res/Configuration;I)V

    .line 5556
    .end local v1  # "configuration":Landroid/content/res/Configuration;
    monitor-exit p0

    .line 5557
    return-void

    .line 5556
    :catchall_29
    move-exception v1

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private updateGlobalConfigurationLocked(Landroid/content/res/Configuration;ZZIZ)I
    .registers 31
    .param p1, "values"  # Landroid/content/res/Configuration;
    .param p2, "initLocale"  # Z
    .param p3, "persistent"  # Z
    .param p4, "userId"  # I
    .param p5, "deferResume"  # Z

    .line 5281
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 5282
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v3

    .line 5283
    .local v3, "changes":I
    const/4 v4, 0x0

    if-nez v3, :cond_1c

    .line 5288
    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->performDisplayOverrideConfigUpdate(Landroid/content/res/Configuration;ZI)I

    .line 5289
    return v4

    .line 5292
    :cond_1c
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    const-string v6, "ActivityTaskManager"

    if-nez v5, :cond_26

    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v5, :cond_3a

    :cond_26
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updating global configuration to: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5295
    :cond_3a
    const/16 v5, 0xa9f

    invoke-static {v5, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 5296
    const/16 v7, 0x42

    iget v8, v1, Landroid/content/res/Configuration;->colorMode:I

    iget v9, v1, Landroid/content/res/Configuration;->densityDpi:I

    iget v10, v1, Landroid/content/res/Configuration;->fontScale:F

    iget v11, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v12, v1, Landroid/content/res/Configuration;->keyboard:I

    iget v13, v1, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v14, v1, Landroid/content/res/Configuration;->mcc:I

    iget v15, v1, Landroid/content/res/Configuration;->mnc:I

    iget v5, v1, Landroid/content/res/Configuration;->navigation:I

    move/from16 v16, v5

    iget v5, v1, Landroid/content/res/Configuration;->navigationHidden:I

    move/from16 v17, v5

    iget v5, v1, Landroid/content/res/Configuration;->orientation:I

    move/from16 v18, v5

    iget v5, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    move/from16 v19, v5

    iget v5, v1, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v20, v5

    iget v5, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    move/from16 v21, v5

    iget v5, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v22, v5

    iget v5, v1, Landroid/content/res/Configuration;->touchscreen:I

    move/from16 v23, v5

    iget v5, v1, Landroid/content/res/Configuration;->uiMode:I

    move/from16 v24, v5

    invoke-static/range {v7 .. v24}, Landroid/util/StatsLog;->write(IIIFIIIIIIIIIIIIII)I

    .line 5316
    const/4 v5, 0x1

    if-nez p2, :cond_d0

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_d0

    iget-boolean v7, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v7, :cond_d0

    .line 5317
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v7

    .line 5318
    .local v7, "locales":Landroid/os/LocaleList;
    const/4 v8, 0x0

    .line 5319
    .local v8, "bestLocaleIndex":I
    invoke-virtual {v7}, Landroid/os/LocaleList;->size()I

    move-result v9

    if-le v9, v5, :cond_b0

    .line 5320
    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportedSystemLocales:[Ljava/lang/String;

    if-nez v9, :cond_a6

    .line 5321
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportedSystemLocales:[Ljava/lang/String;

    .line 5323
    :cond_a6
    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportedSystemLocales:[Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/os/LocaleList;->getFirstMatchIndex([Ljava/lang/String;)I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 5325
    :cond_b0
    nop

    .line 5326
    invoke-virtual {v7, v8}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v9

    .line 5325
    const-string v10, "persist.sys.locale"

    invoke-static {v10, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5327
    invoke-static {v7, v8}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;I)V

    .line 5329
    sget-object v9, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$U6g1UdnOPnEF9wX1OTm9nKVXY5k;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$U6g1UdnOPnEF9wX1OTm9nKVXY5k;

    .line 5331
    invoke-virtual {v7, v8}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v10

    .line 5329
    invoke-static {v9, v0, v10}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 5332
    .local v9, "m":Landroid/os/Message;
    iget-object v10, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v10, v9}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5335
    .end local v7  # "locales":Landroid/os/LocaleList;
    .end local v8  # "bestLocaleIndex":I
    .end local v9  # "m":Landroid/os/Message;
    :cond_d0
    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->increaseConfigurationSeqLocked()I

    move-result v8

    iput v8, v7, Landroid/content/res/Configuration;->seq:I

    .line 5338
    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v7, v8}, Lcom/android/server/wm/RootActivityContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5340
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Config changes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5342
    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v9}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/app/usage/UsageStatsManagerInternal;->reportConfigurationChange(Landroid/content/res/Configuration;I)V

    .line 5345
    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-direct {v0, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->updateShouldShowDialogsLocked(Landroid/content/res/Configuration;)V

    .line 5347
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v7

    .line 5348
    .local v7, "ac":Lcom/android/server/AttributeCache;
    if-eqz v7, :cond_11e

    .line 5349
    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v7, v8}, Lcom/android/server/AttributeCache;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 5356
    :cond_11e
    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSystemThread:Landroid/app/ActivityThread;

    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v8, v9}, Landroid/app/ActivityThread;->applyConfigurationToResources(Landroid/content/res/Configuration;)V

    .line 5360
    new-instance v8, Landroid/content/res/Configuration;

    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-direct {v8, v9}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 5361
    .local v8, "configCopy":Landroid/content/res/Configuration;
    if-eqz p3, :cond_143

    invoke-static {v3}, Landroid/provider/Settings$System;->hasInterestingConfigurationChanges(I)Z

    move-result v9

    if-eqz v9, :cond_143

    .line 5362
    sget-object v9, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$yP9TbBmrgQ4lrgcxb-8oL1pBAs4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$yP9TbBmrgQ4lrgcxb-8oL1pBAs4;

    .line 5364
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 5362
    invoke-static {v9, v0, v10, v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 5365
    .local v9, "msg":Landroid/os/Message;
    iget-object v10, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v10, v9}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5368
    .end local v9  # "msg":Landroid/os/Message;
    :cond_143
    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowProcessControllerMap;->getPidMap()Landroid/util/SparseArray;

    move-result-object v9

    .line 5369
    .local v9, "pidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v10

    sub-int/2addr v10, v5

    .local v10, "i":I
    :goto_14e
    if-ltz v10, :cond_182

    .line 5370
    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 5371
    .local v5, "pid":I
    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowProcessController;

    .line 5372
    .local v11, "app":Lcom/android/server/wm/WindowProcessController;
    sget-boolean v12, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v12, :cond_17c

    .line 5373
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Update process config of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v11, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " to new config "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5376
    :cond_17c
    invoke-virtual {v11, v8}, Lcom/android/server/wm/WindowProcessController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5369
    .end local v5  # "pid":I
    .end local v11  # "app":Lcom/android/server/wm/WindowProcessController;
    add-int/lit8 v10, v10, -0x1

    goto :goto_14e

    .line 5379
    .end local v10  # "i":I
    :cond_182
    sget-object v5, Lcom/android/server/wm/-$$Lambda$swA_sUfSJdP8eC8AA9Iby3-SuOY;->INSTANCE:Lcom/android/server/wm/-$$Lambda$swA_sUfSJdP8eC8AA9Iby3-SuOY;

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 5381
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 5379
    invoke-static {v5, v6, v10, v11}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 5382
    .local v5, "msg":Landroid/os/Message;
    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5386
    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v6}, Lcom/android/server/wm/RootActivityContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {v0, v6, v2, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->performDisplayOverrideConfigUpdate(Landroid/content/res/Configuration;ZI)I

    .line 5389
    return v3
.end method

.method private updateResumedAppTrace(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "resumed"  # Lcom/android/server/wm/ActivityRecord;

    .line 5884
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTracedResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    const-wide/16 v2, 0x40

    if-eqz v0, :cond_10

    .line 5885
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 5886
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->constructResumedTraceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5885
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 5888
    :cond_10
    if-eqz p1, :cond_1b

    .line 5889
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 5890
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->constructResumedTraceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5889
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 5892
    :cond_1b
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTracedResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 5893
    return-void
.end method

.method private updateShouldShowDialogsLocked(Landroid/content/res/Configuration;)V
    .registers 9
    .param p1, "config"  # Landroid/content/res/Configuration;

    .line 5530
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-ne v0, v2, :cond_11

    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v0, v2, :cond_f

    goto :goto_11

    :cond_f
    move v0, v1

    goto :goto_12

    :cond_11
    :goto_11
    move v0, v2

    .line 5533
    .local v0, "inputMethodExists":Z
    :goto_12
    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0xf

    .line 5534
    .local v3, "modeType":I
    const/4 v4, 0x3

    if-eq v3, v4, :cond_28

    const/4 v4, 0x6

    if-ne v3, v4, :cond_20

    sget-boolean v4, Landroid/os/Build;->IS_USER:Z

    if-nez v4, :cond_28

    :cond_20
    const/4 v4, 0x4

    if-eq v3, v4, :cond_28

    const/4 v4, 0x7

    if-eq v3, v4, :cond_28

    move v4, v2

    goto :goto_29

    :cond_28
    move v4, v1

    .line 5538
    .local v4, "uiModeSupportsDialogs":Z
    :goto_29
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hide_error_dialogs"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_39

    move v5, v2

    goto :goto_3a

    :cond_39
    move v5, v1

    .line 5540
    .local v5, "hideDialogsSet":Z
    :goto_3a
    if-eqz v0, :cond_41

    if-eqz v4, :cond_41

    if-nez v5, :cond_41

    move v1, v2

    :cond_41
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShowDialogs:Z

    .line 5541
    return-void
.end method

.method private writeSleepStateToProto(Landroid/util/proto/ProtoOutputStream;IZ)V
    .registers 11
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "wakeFullness"  # I
    .param p3, "testPssMode"  # Z

    .line 5164
    const-wide v0, 0x10b0000001bL

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 5165
    .local v0, "sleepToken":J
    nop

    .line 5166
    invoke-static {p2}, Landroid/os/PowerManagerInternal;->wakefulnessToProtoEnum(I)I

    move-result v2

    .line 5165
    const-wide v3, 0x10e00000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5167
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootActivityContainer;->mSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 5168
    .local v3, "st":Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;
    const-wide v4, 0x20900000002L

    .line 5169
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5168
    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 5170
    .end local v3  # "st":Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;
    goto :goto_1e

    .line 5171
    :cond_37
    const-wide v2, 0x10800000003L

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5172
    const-wide v2, 0x10800000004L

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5174
    const-wide v2, 0x10800000005L

    invoke-virtual {p1, v2, v3, p3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5176
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5177
    return-void
.end method


# virtual methods
.method acquireSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;
    .registers 5
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "displayId"  # I

    .line 5639
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5640
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 5641
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/RootActivityContainer;->createSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object v1

    .line 5642
    .local v1, "token":Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 5643
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 5644
    .end local v1  # "token":Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public final activityDestroyed(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "token"  # Landroid/os/IBinder;

    .line 1823
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTIVITY DESTROYED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_1d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1825
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->getStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1826
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_2b

    .line 1827
    const-string v2, "activityDestroyed"

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/ActivityStack;->activityDestroyedLocked(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 1829
    .end local v1  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_1d .. :try_end_2c} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1830
    return-void

    .line 1829
    :catchall_30
    move-exception v1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public final activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V
    .registers 11
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "config"  # Landroid/content/res/Configuration;
    .param p3, "stopProfiling"  # Z

    .line 1725
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1727
    .local v0, "origId":J
    const/4 v2, 0x0

    .line 1728
    .local v2, "proc":Lcom/android/server/wm/WindowProcessController;
    :try_start_5
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_3b

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1729
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->getStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 1730
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v4, :cond_19

    .line 1731
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_35

    .line 1743
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1731
    return-void

    .line 1733
    :cond_19
    :try_start_19
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6, v6, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->activityIdleInternalLocked(Landroid/os/IBinder;ZZLandroid/content/res/Configuration;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 1735
    .local v5, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_25

    .line 1736
    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    move-object v2, v6

    .line 1738
    :cond_25
    if-eqz p3, :cond_2c

    if-eqz v2, :cond_2c

    .line 1739
    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->clearProfilerIfNeeded()V

    .line 1741
    .end local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v5  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_2c
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_19 .. :try_end_2d} :catchall_35

    :try_start_2d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_3b

    .line 1743
    .end local v2  # "proc":Lcom/android/server/wm/WindowProcessController;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1744
    nop

    .line 1745
    return-void

    .line 1741
    .restart local v2  # "proc":Lcom/android/server/wm/WindowProcessController;
    :catchall_35
    move-exception v4

    :try_start_36
    monitor-exit v3
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    :try_start_37
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "origId":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "token":Landroid/os/IBinder;
    .end local p2  # "config":Landroid/content/res/Configuration;
    .end local p3  # "stopProfiling":Z
    throw v4
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_3b

    .line 1743
    .end local v2  # "proc":Lcom/android/server/wm/WindowProcessController;
    .restart local v0  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "token":Landroid/os/IBinder;
    .restart local p2  # "config":Landroid/content/res/Configuration;
    .restart local p3  # "stopProfiling":Z
    :catchall_3b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public final activityPaused(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "token"  # Landroid/os/IBinder;

    .line 1768
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1769
    .local v0, "origId":J
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1770
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->getStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1771
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_14

    .line 1772
    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/ActivityStack;->activityPausedLocked(Landroid/os/IBinder;Z)V

    .line 1774
    .end local v3  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_14
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1775
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1776
    return-void

    .line 1774
    :catchall_1c
    move-exception v3

    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public final activityRelaunched(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"  # Landroid/os/IBinder;

    .line 1834
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1835
    .local v0, "origId":J
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1836
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->activityRelaunchedLocked(Landroid/os/IBinder;)V

    .line 1837
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1838
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1839
    return-void

    .line 1837
    :catchall_17
    move-exception v3

    :try_start_18
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public final activityResumed(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"  # Landroid/os/IBinder;

    .line 1749
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1750
    .local v0, "origId":J
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1751
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->activityResumedLocked(Landroid/os/IBinder;)V

    .line 1752
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowManagerService;->notifyAppResumedFinished(Landroid/os/IBinder;)V

    .line 1753
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1754
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1755
    return-void

    .line 1753
    :catchall_1a
    move-exception v3

    :try_start_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public final activitySlept(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "token"  # Landroid/os/IBinder;

    .line 1842
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity slept: token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    :cond_1a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1846
    .local v0, "origId":J
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1847
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1848
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_2f

    .line 1849
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->activitySleptLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 1851
    .end local v3  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1853
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1854
    return-void

    .line 1851
    :catchall_37
    move-exception v3

    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public final activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    .registers 12
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "icicle"  # Landroid/os/Bundle;
    .param p3, "persistentState"  # Landroid/os/PersistableBundle;
    .param p4, "description"  # Ljava/lang/CharSequence;

    .line 1781
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity stopped: token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    :cond_1a
    if-eqz p2, :cond_2b

    invoke-virtual {p2}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_23

    goto :goto_2b

    .line 1785
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File descriptors passed in Bundle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1788
    :cond_2b
    :goto_2b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1790
    .local v0, "origId":J
    const/4 v2, 0x0

    .line 1791
    .local v2, "restartingName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1793
    .local v3, "restartingUid":I
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_34
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1794
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 1795
    .local v5, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_58

    .line 1796
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v6

    if-eqz v6, :cond_55

    sget-object v6, Lcom/android/server/wm/ActivityStack$ActivityState;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 1797
    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 1800
    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v6, v6, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    move-object v2, v6

    .line 1801
    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v6, v6, Lcom/android/server/wm/WindowProcessController;->mUid:I

    move v3, v6

    .line 1803
    :cond_55
    invoke-virtual {v5, p2, p3, p4}, Lcom/android/server/wm/ActivityRecord;->activityStoppedLocked(Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    .line 1805
    :cond_58
    monitor-exit v4
    :try_end_59
    .catchall {:try_start_34 .. :try_end_59} :catchall_73

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1807
    if-eqz v2, :cond_6a

    .line 1813
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityStackSupervisor;->removeRestartTimeouts(Lcom/android/server/wm/ActivityRecord;)V

    .line 1814
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v6, "restartActivityProcess"

    invoke-virtual {v4, v2, v3, v6}, Landroid/app/ActivityManagerInternal;->killProcess(Ljava/lang/String;ILjava/lang/String;)V

    .line 1816
    :cond_6a
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v4}, Landroid/app/ActivityManagerInternal;->trimApplications()V

    .line 1818
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1819
    return-void

    .line 1805
    .end local v5  # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_73
    move-exception v5

    :try_start_74
    monitor-exit v4
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v5
.end method

.method public final activityTopResumedStateLost()V
    .registers 6

    .line 1759
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1760
    .local v0, "origId":J
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1761
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->handleTopResumedStateReleased(Z)V

    .line 1762
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1763
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1764
    return-void

    .line 1762
    :catchall_18
    move-exception v3

    :try_start_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I
    .registers 23
    .param p1, "activityToken"  # Landroid/os/IBinder;
    .param p2, "intent"  # Landroid/content/Intent;
    .param p3, "description"  # Landroid/app/ActivityManager$TaskDescription;
    .param p4, "thumbnail"  # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3217
    move-object/from16 v1, p0

    move-object/from16 v9, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 3218
    .local v10, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 3221
    .local v11, "callingIdent":J
    :try_start_c
    iget-object v13, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v13
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_170

    :try_start_f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3222
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_162

    .line 3223
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_143

    .line 3227
    :try_start_18
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    move-object v14, v2

    .line 3228
    .local v14, "comp":Landroid/content/ComponentName;
    if-eqz v14, :cond_11d

    .line 3232
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailWidth:I

    if-ne v2, v3, :cond_de

    .line 3233
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailHeight:I

    if-ne v2, v3, :cond_d9

    .line 3238
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v2
    :try_end_33
    .catchall {:try_start_18 .. :try_end_33} :catchall_13d

    const/4 v3, 0x0

    if-eqz v2, :cond_39

    .line 3239
    :try_start_36
    invoke-virtual {v9, v3}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_162

    .line 3241
    :cond_39
    :try_start_39
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v2
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_13d

    if-eqz v2, :cond_42

    .line 3242
    :try_start_3f
    invoke-virtual {v9, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_162

    .line 3244
    :cond_42
    :try_start_42
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v2
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_13d

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-eqz v2, :cond_57

    .line 3245
    :try_start_4b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/16 v3, 0x2000

    and-int/2addr v2, v3

    if-nez v2, :cond_57

    .line 3248
    invoke-virtual {v9, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_57
    .catchall {:try_start_4b .. :try_end_57} :catchall_162

    .line 3251
    :cond_57
    :try_start_57
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/16 v3, 0x400

    .line 3252
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 3251
    invoke-interface {v2, v14, v3, v4}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    move-object v15, v2

    .line 3253
    .local v15, "ainfo":Landroid/content/pm/ActivityInfo;
    iget-object v2, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v10, :cond_b2

    .line 3259
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    move-object v8, v2

    .line 3260
    .local v8, "stack":Lcom/android/server/wm/ActivityStack;
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v3, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 3261
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    .line 3260
    move-object v2, v8

    move-object v4, v15

    move-object/from16 v5, p2

    move-object/from16 v17, v0

    move-object v0, v8

    .end local v8  # "stack":Lcom/android/server/wm/ActivityStack;
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    .local v17, "r":Lcom/android/server/wm/ActivityRecord;
    move/from16 v8, v16

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    .line 3263
    .local v2, "task":Lcom/android/server/wm/TaskRecord;
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/RecentTasks;->addToBottom(Lcom/android/server/wm/TaskRecord;)Z

    move-result v3
    :try_end_90
    .catchall {:try_start_57 .. :try_end_90} :catchall_13d

    if-nez v3, :cond_a1

    .line 3265
    :try_start_92
    const-string v3, "addAppTask"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/ActivityStack;->removeTask(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;I)V

    .line 3266
    const/4 v3, -0x1

    monitor-exit v13
    :try_end_9a
    .catchall {:try_start_92 .. :try_end_9a} :catchall_162

    .line 3275
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3266
    return v3

    .line 3268
    :cond_a1
    :try_start_a1
    iget-object v3, v2, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;
    :try_end_a3
    .catchall {:try_start_a1 .. :try_end_a3} :catchall_13d

    move-object/from16 v4, p3

    :try_start_a5
    invoke-virtual {v3, v4}, Landroid/app/ActivityManager$TaskDescription;->copyFrom(Landroid/app/ActivityManager$TaskDescription;)V

    .line 3272
    iget v3, v2, Lcom/android/server/wm/TaskRecord;->taskId:I

    monitor-exit v13
    :try_end_ab
    .catchall {:try_start_a5 .. :try_end_ab} :catchall_160

    .line 3275
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3272
    return v3

    .line 3254
    .end local v2  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v17  # "r":Lcom/android/server/wm/ActivityRecord;
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    :cond_b2
    move-object/from16 v4, p3

    move-object/from16 v17, v0

    .end local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v17  # "r":Lcom/android/server/wm/ActivityRecord;
    :try_start_b6
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t add task for another application: target uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", calling uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v10  # "callingUid":I
    .end local v11  # "callingIdent":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "activityToken":Landroid/os/IBinder;
    .end local p2  # "intent":Landroid/content/Intent;
    .end local p3  # "description":Landroid/app/ActivityManager$TaskDescription;
    .end local p4  # "thumbnail":Landroid/graphics/Bitmap;
    throw v0

    .line 3233
    .end local v15  # "ainfo":Landroid/content/pm/ActivityInfo;
    .end local v17  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v10  # "callingUid":I
    .restart local v11  # "callingIdent":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "activityToken":Landroid/os/IBinder;
    .restart local p2  # "intent":Landroid/content/Intent;
    .restart local p3  # "description":Landroid/app/ActivityManager$TaskDescription;
    .restart local p4  # "thumbnail":Landroid/graphics/Bitmap;
    :cond_d9
    move-object/from16 v4, p3

    move-object/from16 v17, v0

    .end local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v17  # "r":Lcom/android/server/wm/ActivityRecord;
    goto :goto_e2

    .line 3232
    .end local v17  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_de
    move-object/from16 v4, p3

    move-object/from16 v17, v0

    .line 3234
    .end local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v17  # "r":Lcom/android/server/wm/ActivityRecord;
    :goto_e2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad thumbnail size: got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3235
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", require "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v10  # "callingUid":I
    .end local v11  # "callingIdent":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "activityToken":Landroid/os/IBinder;
    .end local p2  # "intent":Landroid/content/Intent;
    .end local p3  # "description":Landroid/app/ActivityManager$TaskDescription;
    .end local p4  # "thumbnail":Landroid/graphics/Bitmap;
    throw v0

    .line 3229
    .end local v17  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v10  # "callingUid":I
    .restart local v11  # "callingIdent":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "activityToken":Landroid/os/IBinder;
    .restart local p2  # "intent":Landroid/content/Intent;
    .restart local p3  # "description":Landroid/app/ActivityManager$TaskDescription;
    .restart local p4  # "thumbnail":Landroid/graphics/Bitmap;
    :cond_11d
    move-object/from16 v4, p3

    move-object/from16 v17, v0

    .end local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v17  # "r":Lcom/android/server/wm/ActivityRecord;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " must specify explicit component"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v10  # "callingUid":I
    .end local v11  # "callingIdent":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "activityToken":Landroid/os/IBinder;
    .end local p2  # "intent":Landroid/content/Intent;
    .end local p3  # "description":Landroid/app/ActivityManager$TaskDescription;
    .end local p4  # "thumbnail":Landroid/graphics/Bitmap;
    throw v0

    .line 3273
    .end local v14  # "comp":Landroid/content/ComponentName;
    .end local v17  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v10  # "callingUid":I
    .restart local v11  # "callingIdent":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "activityToken":Landroid/os/IBinder;
    .restart local p2  # "intent":Landroid/content/Intent;
    .restart local p3  # "description":Landroid/app/ActivityManager$TaskDescription;
    .restart local p4  # "thumbnail":Landroid/graphics/Bitmap;
    :catchall_13d
    move-exception v0

    move-object/from16 v4, p3

    :goto_140
    move-object/from16 v3, p1

    goto :goto_167

    .line 3224
    .restart local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_143
    move-object/from16 v4, p3

    move-object/from16 v17, v0

    .end local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v17  # "r":Lcom/android/server/wm/ActivityRecord;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity does not exist; token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_153
    .catchall {:try_start_b6 .. :try_end_153} :catchall_160

    move-object/from16 v3, p1

    :try_start_155
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v10  # "callingUid":I
    .end local v11  # "callingIdent":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "activityToken":Landroid/os/IBinder;
    .end local p2  # "intent":Landroid/content/Intent;
    .end local p3  # "description":Landroid/app/ActivityManager$TaskDescription;
    .end local p4  # "thumbnail":Landroid/graphics/Bitmap;
    throw v0

    .line 3273
    .end local v17  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v10  # "callingUid":I
    .restart local v11  # "callingIdent":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "activityToken":Landroid/os/IBinder;
    .restart local p2  # "intent":Landroid/content/Intent;
    .restart local p3  # "description":Landroid/app/ActivityManager$TaskDescription;
    .restart local p4  # "thumbnail":Landroid/graphics/Bitmap;
    :catchall_160
    move-exception v0

    goto :goto_140

    :catchall_162
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    :goto_167
    monitor-exit v13
    :try_end_168
    .catchall {:try_start_155 .. :try_end_168} :catchall_16e

    :try_start_168
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v10  # "callingUid":I
    .end local v11  # "callingIdent":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "activityToken":Landroid/os/IBinder;
    .end local p2  # "intent":Landroid/content/Intent;
    .end local p3  # "description":Landroid/app/ActivityManager$TaskDescription;
    .end local p4  # "thumbnail":Landroid/graphics/Bitmap;
    throw v0
    :try_end_16c
    .catchall {:try_start_168 .. :try_end_16c} :catchall_16c

    .line 3275
    .restart local v10  # "callingUid":I
    .restart local v11  # "callingIdent":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "activityToken":Landroid/os/IBinder;
    .restart local p2  # "intent":Landroid/content/Intent;
    .restart local p3  # "description":Landroid/app/ActivityManager$TaskDescription;
    .restart local p4  # "thumbnail":Landroid/graphics/Bitmap;
    :catchall_16c
    move-exception v0

    goto :goto_175

    .line 3273
    :catchall_16e
    move-exception v0

    goto :goto_167

    .line 3275
    :catchall_170
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    :goto_175
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "activity"  # Landroid/content/ComponentName;

    .line 4784
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4785
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1d

    .line 4787
    .local v1, "origId":J
    :try_start_a
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/AppWarnings;->alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_18

    .line 4789
    :try_start_f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4790
    nop

    .line 4791
    .end local v1  # "origId":J
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4792
    return-void

    .line 4789
    .restart local v1  # "origId":J
    :catchall_18
    move-exception v3

    :try_start_19
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "activity":Landroid/content/ComponentName;
    throw v3

    .line 4791
    .end local v1  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "activity":Landroid/content/ComponentName;
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method applyUpdateLockStateLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 1905
    if-eqz p1, :cond_8

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 1906
    .local v0, "nextState":Z
    :goto_9
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$p4I6RZJqLXjaEjdISFyNzjAe4HE;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$p4I6RZJqLXjaEjdISFyNzjAe4HE;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ZLcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 1917
    return-void
.end method

.method public cancelRecentsAnimation(Z)V
    .registers 11
    .param p1, "restoreHomeStackPosition"  # Z

    .line 2873
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "cancelRecentsAnimation()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2874
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v0, v0

    .line 2875
    .local v0, "callingUid":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2877
    .local v2, "origId":J
    :try_start_10
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_40

    :try_start_13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2879
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz p1, :cond_1c

    .line 2880
    const/4 v6, 0x2

    goto :goto_1d

    .line 2881
    :cond_1c
    const/4 v6, 0x0

    :goto_1d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cancelRecentsAnimation/uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2879
    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->cancelRecentsAnimationSynchronously(ILjava/lang/String;)V

    .line 2882
    monitor-exit v4
    :try_end_32
    .catchall {:try_start_13 .. :try_end_32} :catchall_3a

    :try_start_32
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_40

    .line 2884
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2885
    nop

    .line 2886
    return-void

    .line 2882
    :catchall_3a
    move-exception v5

    :try_start_3b
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    :try_start_3c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "callingUid":J
    .end local v2  # "origId":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "restoreHomeStackPosition":Z
    throw v5
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_40

    .line 2884
    .restart local v0  # "callingUid":J
    .restart local v2  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "restoreHomeStackPosition":Z
    :catchall_40
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public cancelTaskWindowTransition(I)V
    .registers 9
    .param p1, "taskId"  # I

    .line 4586
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "cancelTaskWindowTransition()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4588
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4590
    .local v0, "ident":J
    :try_start_b
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_4f

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4591
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    .line 4593
    .local v3, "task":Lcom/android/server/wm/TaskRecord;
    if-nez v3, :cond_3d

    .line 4594
    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cancelTaskWindowTransition: taskId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4595
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_e .. :try_end_36} :catchall_49

    .line 4600
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4595
    return-void

    .line 4597
    :cond_3d
    :try_start_3d
    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->cancelWindowTransition()V

    .line 4598
    .end local v3  # "task":Lcom/android/server/wm/TaskRecord;
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_49

    :try_start_41
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_4f

    .line 4600
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4601
    nop

    .line 4602
    return-void

    .line 4598
    :catchall_49
    move-exception v3

    :try_start_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    :try_start_4b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskId":I
    throw v3
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_4f

    .line 4600
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskId":I
    :catchall_4f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method checkAccessControl(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p1, "stack"  # Lcom/android/server/wm/ActivityStack;
    .param p2, "next"  # Lcom/android/server/wm/ActivityRecord;

    .line 7704
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->checkAccessControl(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v0

    return v0
.end method

.method checkAccessControl(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;Z)Z
    .registers 25
    .param p1, "stack"  # Lcom/android/server/wm/ActivityStack;
    .param p2, "next"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "showDialog"  # Z

    .line 7708
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mDenyCheckingAccessControl:Z

    if-nez v2, :cond_5c

    .line 7709
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v2

    if-nez v2, :cond_5c

    .line 7710
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->isAccessApplication()Z

    move-result v2

    if-nez v2, :cond_5c

    .line 7711
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAccessControlService:Lcom/meizu/server/AccessControlService;

    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3, v4}, Lcom/meizu/server/AccessControlService;->isPopupUnlockingActivity(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 7713
    if-eqz p3, :cond_5a

    .line 7714
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lmeizu/security/AccessControlManager;->getAccessControlIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .local v2, "intent":Landroid/content/Intent;
    move-object v8, v2

    .line 7715
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAtmInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    iget-object v10, v1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 7716
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v15

    iget v15, v15, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v16

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    .line 7715
    const-string v17, "AccessApplication"

    invoke-virtual/range {v3 .. v20}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityInPackage(IIILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/TaskRecord;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I

    .line 7718
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    .line 7720
    .end local v2  # "intent":Landroid/content/Intent;
    :cond_5a
    const/4 v2, 0x1

    return v2

    .line 7723
    :cond_5c
    const/4 v2, 0x0

    return v2
.end method

.method checkAppSwitchAllowedLocked(IIIILjava/lang/String;)Z
    .registers 11
    .param p1, "sourcePid"  # I
    .param p2, "sourceUid"  # I
    .param p3, "callingPid"  # I
    .param p4, "callingUid"  # I
    .param p5, "name"  # Ljava/lang/String;

    .line 2508
    iget-wide v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesAllowedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-gez v0, :cond_c

    .line 2509
    return v1

    .line 2512
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2513
    return v1

    .line 2516
    :cond_17
    const-string v0, "android.permission.STOP_APP_SWITCHES"

    const/4 v2, -0x1

    invoke-static {v0, p1, p2, v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v3

    .line 2517
    .local v3, "perm":I
    if-nez v3, :cond_21

    .line 2518
    return v1

    .line 2520
    :cond_21
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkAllowAppSwitchUid(I)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 2521
    return v1

    .line 2526
    :cond_28
    if-eq p4, v2, :cond_3a

    if-eq p4, p2, :cond_3a

    .line 2527
    invoke-static {v0, p3, p4, v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v3

    .line 2528
    if-nez v3, :cond_33

    .line 2529
    return v1

    .line 2531
    :cond_33
    invoke-direct {p0, p4}, Lcom/android/server/wm/ActivityTaskManagerService;->checkAllowAppSwitchUid(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 2532
    return v1

    .line 2536
    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " request from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " stopped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    const/4 v0, 0x0

    return v0
.end method

.method checkGetTasksPermission(Ljava/lang/String;II)I
    .registers 5
    .param p1, "permission"  # Ljava/lang/String;
    .param p2, "pid"  # I
    .param p3, "uid"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3615
    invoke-static {p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V
    .registers 4
    .param p1, "proc"  # Lcom/android/server/wm/WindowProcessController;

    .line 5772
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_1c

    if-eq v0, p1, :cond_7

    goto :goto_1c

    .line 5776
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 5777
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$w70cT1_hTWQQAYctmXaA0BeZuBc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$w70cT1_hTWQQAYctmXaA0BeZuBc;

    iget v1, p1, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    .line 5779
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 5777
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5780
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5781
    return-void

    .line 5773
    .end local v0  # "m":Landroid/os/Message;
    :cond_1c
    :goto_1c
    return-void
.end method

.method public clearLaunchParamsForPackages(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4959
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "clearLaunchParamsForPackages"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4961
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4962
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 4963
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/LaunchParamsPersister;->removeRecordForPackage(Ljava/lang/String;)V

    .line 4962
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 4965
    .end local v1  # "i":I
    :cond_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4966
    return-void

    .line 4965
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;
    .registers 3
    .param p1, "ai"  # Landroid/content/pm/ApplicationInfo;

    .line 5930
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    return-object v0
.end method

.method public convertFromTranslucent(Landroid/os/IBinder;)Z
    .registers 11
    .param p1, "token"  # Landroid/os/IBinder;

    .line 2014
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2016
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_39

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2017
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 2018
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v4, 0x0

    if-nez v3, :cond_19

    .line 2019
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_33

    .line 2029
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2019
    return v4

    .line 2021
    :cond_19
    const/4 v5, 0x1

    :try_start_1a
    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityRecord;->changeWindowTranslucency(Z)Z

    move-result v6

    .line 2022
    .local v6, "translucentChanged":Z
    if-eqz v6, :cond_26

    .line 2023
    iget-object v7, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v4, v4}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 2025
    :cond_26
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, p1, v5}, Lcom/android/server/wm/WindowManagerService;->setAppFullscreen(Landroid/os/IBinder;Z)V

    .line 2026
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_33

    .line 2029
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2026
    return v6

    .line 2027
    .end local v3  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v6  # "translucentChanged":Z
    :catchall_33
    move-exception v3

    :try_start_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    :try_start_35
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "origId":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "token":Landroid/os/IBinder;
    throw v3
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_39

    .line 2029
    .restart local v0  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "token":Landroid/os/IBinder;
    :catchall_39
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public convertToTranslucent(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    .registers 14
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "options"  # Landroid/os/Bundle;

    .line 2035
    invoke-static {p2}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v0

    .line 2036
    .local v0, "safeOptions":Lcom/android/server/wm/SafeActivityOptions;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2038
    .local v1, "origId":J
    :try_start_8
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_63

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2039
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 2040
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v5, 0x0

    if-nez v4, :cond_1d

    .line 2041
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_5d

    .line 2058
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2041
    return v5

    .line 2043
    :cond_1d
    :try_start_1d
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    .line 2044
    .local v6, "task":Lcom/android/server/wm/TaskRecord;
    iget-object v7, v6, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v7

    .line 2045
    .local v7, "index":I
    const/4 v8, 0x0

    if-lez v7, :cond_3e

    .line 2046
    iget-object v9, v6, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    add-int/lit8 v10, v7, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/ActivityRecord;

    .line 2047
    .local v9, "under":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_3b

    invoke-virtual {v0, v4}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityRecord;)Landroid/app/ActivityOptions;

    move-result-object v10

    goto :goto_3c

    :cond_3b
    move-object v10, v8

    :goto_3c
    iput-object v10, v9, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    .line 2049
    .end local v9  # "under":Lcom/android/server/wm/ActivityRecord;
    :cond_3e
    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityRecord;->changeWindowTranslucency(Z)Z

    move-result v9

    .line 2050
    .local v9, "translucentChanged":Z
    if-eqz v9, :cond_4b

    .line 2051
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/android/server/wm/ActivityStack;->convertActivityToTranslucent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2053
    :cond_4b
    iget-object v10, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v10, v8, v5, v5}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 2054
    iget-object v8, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8, p1, v5}, Lcom/android/server/wm/WindowManagerService;->setAppFullscreen(Landroid/os/IBinder;Z)V

    .line 2055
    monitor-exit v3
    :try_end_56
    .catchall {:try_start_1d .. :try_end_56} :catchall_5d

    .line 2058
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2055
    return v9

    .line 2056
    .end local v4  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v6  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v7  # "index":I
    .end local v9  # "translucentChanged":Z
    :catchall_5d
    move-exception v4

    :try_start_5e
    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    :try_start_5f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "safeOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v1  # "origId":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "token":Landroid/os/IBinder;
    .end local p2  # "options":Landroid/os/Bundle;
    throw v4
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_63

    .line 2058
    .restart local v0  # "safeOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v1  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "token":Landroid/os/IBinder;
    .restart local p2  # "options":Landroid/os/Bundle;
    :catchall_63
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method protected createRecentTasks()Lcom/android/server/wm/RecentTasks;
    .registers 3

    .line 941
    new-instance v0, Lcom/android/server/wm/RecentTasks;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/RecentTasks;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;)V

    return-object v0
.end method

.method protected createStackSupervisor()Lcom/android/server/wm/ActivityStackSupervisor;
    .registers 3

    .line 887
    new-instance v0, Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V

    .line 888
    .local v0, "supervisor":Lcom/android/server/wm/ActivityStackSupervisor;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->initialize()V

    .line 889
    return-object v0
.end method

.method public dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .registers 8
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "callback"  # Lcom/android/internal/policy/IKeyguardDismissCallback;
    .param p3, "message"  # Ljava/lang/CharSequence;

    .line 4570
    if-eqz p3, :cond_b

    .line 4571
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SHOW_KEYGUARD_MESSAGE"

    const-string v2, "dismissKeyguard()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4574
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4576
    .local v0, "callingId":J
    :try_start_f
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_29

    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4577
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/wm/KeyguardController;->dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 4578
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_23

    :try_start_1b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_29

    .line 4580
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4581
    nop

    .line 4582
    return-void

    .line 4578
    :catchall_23
    move-exception v3

    :try_start_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    :try_start_25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "callingId":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "token":Landroid/os/IBinder;
    .end local p2  # "callback":Lcom/android/internal/policy/IKeyguardDismissCallback;
    .end local p3  # "message":Ljava/lang/CharSequence;
    throw v3
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_29

    .line 4580
    .restart local v0  # "callingId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "token":Landroid/os/IBinder;
    .restart local p2  # "callback":Lcom/android/internal/policy/IKeyguardDismissCallback;
    .restart local p3  # "message":Ljava/lang/CharSequence;
    :catchall_29
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public dismissPip(ZI)V
    .registers 10
    .param p1, "animate"  # Z
    .param p2, "animationDuration"  # I

    .line 4061
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "dismissPip()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4062
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4064
    .local v0, "ident":J
    :try_start_b
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_6c

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4065
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 4066
    invoke-virtual {v3}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getPinnedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 4067
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v3, :cond_2c

    .line 4068
    const-string v4, "ActivityTaskManager"

    const-string v5, "dismissPip: pinned stack not found."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4069
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_66

    .line 4083
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4069
    return-void

    .line 4071
    :cond_2c
    :try_start_2c
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4a

    .line 4075
    if-eqz p1, :cond_3b

    .line 4076
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5, p2, v4}, Lcom/android/server/wm/ActivityStack;->animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    goto :goto_41

    .line 4079
    :cond_3b
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;Z)V

    .line 4081
    .end local v3  # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_41
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_2c .. :try_end_42} :catchall_66

    :try_start_42
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_6c

    .line 4083
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4084
    nop

    .line 4085
    return-void

    .line 4072
    .restart local v3  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_4a
    :try_start_4a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stack: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " doesn\'t support animated resize."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "animate":Z
    .end local p2  # "animationDuration":I
    throw v4

    .line 4081
    .end local v3  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "animate":Z
    .restart local p2  # "animationDuration":I
    :catchall_66
    move-exception v3

    monitor-exit v2
    :try_end_68
    .catchall {:try_start_4a .. :try_end_68} :catchall_66

    :try_start_68
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "animate":Z
    .end local p2  # "animationDuration":I
    throw v3
    :try_end_6c
    .catchall {:try_start_68 .. :try_end_6c} :catchall_6c

    .line 4083
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "animate":Z
    .restart local p2  # "animationDuration":I
    :catchall_6c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public dismissSplitScreenMode(Z)V
    .registers 8
    .param p1, "toTop"  # Z

    .line 4019
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "dismissSplitScreenMode()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4021
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4023
    .local v0, "ident":J
    :try_start_b
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_5f

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4024
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 4025
    invoke-virtual {v3}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 4026
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v3, :cond_2c

    .line 4027
    const-string v4, "ActivityTaskManager"

    const-string v5, "dismissSplitScreenMode: primary split-screen stack not found."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4028
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_59

    .line 4049
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4028
    return-void

    .line 4031
    :cond_2c
    if-eqz p1, :cond_34

    .line 4034
    :try_start_2e
    const-string v4, "dismissSplitScreenMode"

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    goto :goto_4c

    .line 4035
    :cond_34
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/RootActivityContainer;->isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 4039
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 4041
    .local v4, "otherStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v4, :cond_4c

    .line 4042
    const-string v5, "dismissSplitScreenMode_other"

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 4046
    .end local v4  # "otherStack":Lcom/android/server/wm/ActivityStack;
    :cond_4c
    :goto_4c
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    .line 4047
    .end local v3  # "stack":Lcom/android/server/wm/ActivityStack;
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_2e .. :try_end_51} :catchall_59

    :try_start_51
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_5f

    .line 4049
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4050
    nop

    .line 4051
    return-void

    .line 4047
    :catchall_59
    move-exception v3

    :try_start_5a
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    :try_start_5b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "toTop":Z
    throw v3
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_5f

    .line 4049
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "toTop":Z
    :catchall_5f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)V
    .registers 17
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;
    .param p4, "opti"  # I
    .param p5, "dumpAll"  # Z
    .param p6, "dumpClient"  # Z
    .param p7, "dumpPackage"  # Ljava/lang/String;

    .line 5029
    const-string v8, "ACTIVITY MANAGER ACTIVITIES (dumpsys activity activities)"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/ActivityTaskManagerService;->dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V

    .line 5031
    return-void
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;
    .param p4, "opti"  # I
    .param p5, "dumpAll"  # Z
    .param p6, "dumpClient"  # Z
    .param p7, "dumpPackage"  # Ljava/lang/String;
    .param p8, "header"  # Ljava/lang/String;

    .line 5035
    invoke-virtual {p2, p8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5037
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RootActivityContainer;->dumpActivities(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;)Z

    move-result v0

    .line 5039
    .local v0, "printedAnything":Z
    move v1, v0

    .line 5041
    .local v1, "needSep":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 5042
    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 5041
    const-string v3, "  ResumedActivity: "

    invoke-static {p2, v2, p7, v1, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v2

    .line 5044
    .local v2, "printed":Z
    if-eqz v2, :cond_1f

    .line 5045
    const/4 v0, 0x1

    .line 5046
    const/4 v1, 0x0

    .line 5049
    :cond_1f
    if-nez p7, :cond_2e

    .line 5050
    if-eqz v1, :cond_26

    .line 5051
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 5053
    :cond_26
    const/4 v0, 0x1

    .line 5054
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const-string v4, "  "

    invoke-virtual {v3, p2, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5057
    :cond_2e
    if-nez v0, :cond_35

    .line 5058
    const-string v3, "  (nothing)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5060
    :cond_35
    return-void
.end method

.method protected dumpActivity(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZZZ)Z
    .registers 32
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "name"  # Ljava/lang/String;
    .param p4, "args"  # [Ljava/lang/String;
    .param p5, "opti"  # I
    .param p6, "dumpAll"  # Z
    .param p7, "dumpVisibleStacksOnly"  # Z
    .param p8, "dumpFocusedStackOnly"  # Z

    .line 5087
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move/from16 v11, p5

    iget-object v1, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5088
    iget-object v0, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_c9

    move-object/from16 v12, p3

    move/from16 v13, p7

    move/from16 v14, p8

    :try_start_16
    invoke-virtual {v0, v12, v13, v14}, Lcom/android/server/wm/RootActivityContainer;->getDumpActivities(Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v0

    move-object v15, v0

    .line 5090
    .local v15, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_d5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5092
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_27

    .line 5093
    return v1

    .line 5096
    :cond_27
    array-length v0, v10

    sub-int/2addr v0, v11

    new-array v7, v0, [Ljava/lang/String;

    .line 5097
    .local v7, "newArgs":[Ljava/lang/String;
    array-length v0, v10

    sub-int/2addr v0, v11

    invoke-static {v10, v11, v7, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5099
    const/4 v0, 0x0

    .line 5100
    .local v0, "lastTask":Lcom/android/server/wm/TaskRecord;
    const/4 v1, 0x0

    .line 5101
    .local v1, "needSep":Z
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v16, 0x1

    add-int/lit8 v2, v2, -0x1

    move v6, v2

    move/from16 v22, v1

    move-object v1, v0

    move/from16 v0, v22

    .local v0, "needSep":Z
    .local v1, "lastTask":Lcom/android/server/wm/TaskRecord;
    .local v6, "i":I
    :goto_40
    if-ltz v6, :cond_c8

    .line 5102
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/android/server/wm/ActivityRecord;

    .line 5103
    .local v17, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_4f

    .line 5104
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5106
    :cond_4f
    const/16 v18, 0x1

    .line 5107
    .end local v0  # "needSep":Z
    .local v18, "needSep":Z
    iget-object v2, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_54
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5108
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_bc

    .line 5109
    .local v0, "task":Lcom/android/server/wm/TaskRecord;
    if-eq v1, v0, :cond_8c

    .line 5110
    move-object v1, v0

    .line 5111
    :try_start_5e
    const-string v3, "TASK "

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5112
    const-string v3, " id="

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 5113
    const-string v3, " userId="

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 5114
    if-eqz p6, :cond_83

    .line 5115
    const-string v3, "  "

    invoke-virtual {v1, v9, v3}, Lcom/android/server/wm/TaskRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_83
    .catchall {:try_start_5e .. :try_end_83} :catchall_86

    .line 5118
    .end local v0  # "task":Lcom/android/server/wm/TaskRecord;
    :cond_83
    move-object/from16 v19, v1

    goto :goto_8e

    :catchall_86
    move-exception v0

    move/from16 v20, v6

    move-object/from16 v21, v7

    goto :goto_c1

    .line 5109
    .restart local v0  # "task":Lcom/android/server/wm/TaskRecord;
    :cond_8c
    move-object/from16 v19, v1

    .line 5118
    .end local v0  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v1  # "lastTask":Lcom/android/server/wm/TaskRecord;
    .local v19, "lastTask":Lcom/android/server/wm/TaskRecord;
    :goto_8e
    :try_start_8e
    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_b4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5119
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    const-string v2, "  "

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v20, v6

    .end local v6  # "i":I
    .local v20, "i":I
    move-object v6, v7

    move-object/from16 v21, v7

    .end local v7  # "newArgs":[Ljava/lang/String;
    .local v21, "newArgs":[Ljava/lang/String;
    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/ActivityTaskManagerService;->dumpActivity(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;[Ljava/lang/String;Z)V

    .line 5101
    .end local v17  # "r":Lcom/android/server/wm/ActivityRecord;
    add-int/lit8 v6, v20, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v7, v21

    .end local v20  # "i":I
    .restart local v6  # "i":I
    goto :goto_40

    .line 5118
    .end local v21  # "newArgs":[Ljava/lang/String;
    .restart local v7  # "newArgs":[Ljava/lang/String;
    .restart local v17  # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_b4
    move-exception v0

    move/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v1, v19

    .end local v6  # "i":I
    .end local v7  # "newArgs":[Ljava/lang/String;
    .restart local v20  # "i":I
    .restart local v21  # "newArgs":[Ljava/lang/String;
    goto :goto_c1

    .end local v19  # "lastTask":Lcom/android/server/wm/TaskRecord;
    .end local v20  # "i":I
    .end local v21  # "newArgs":[Ljava/lang/String;
    .restart local v1  # "lastTask":Lcom/android/server/wm/TaskRecord;
    .restart local v6  # "i":I
    .restart local v7  # "newArgs":[Ljava/lang/String;
    :catchall_bc
    move-exception v0

    move/from16 v20, v6

    move-object/from16 v21, v7

    .end local v6  # "i":I
    .end local v7  # "newArgs":[Ljava/lang/String;
    .restart local v20  # "i":I
    .restart local v21  # "newArgs":[Ljava/lang/String;
    :goto_c1
    :try_start_c1
    monitor-exit v2
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_c6
    move-exception v0

    goto :goto_c1

    .line 5121
    .end local v17  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v18  # "needSep":Z
    .end local v20  # "i":I
    .end local v21  # "newArgs":[Ljava/lang/String;
    .local v0, "needSep":Z
    .restart local v7  # "newArgs":[Ljava/lang/String;
    :cond_c8
    return v16

    .line 5090
    .end local v0  # "needSep":Z
    .end local v1  # "lastTask":Lcom/android/server/wm/TaskRecord;
    .end local v7  # "newArgs":[Ljava/lang/String;
    .end local v15  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    :catchall_c9
    move-exception v0

    move-object/from16 v12, p3

    move/from16 v13, p7

    move/from16 v14, p8

    :goto_d0
    :try_start_d0
    monitor-exit v1
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_d5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_d5
    move-exception v0

    goto :goto_d0
.end method

.method dumpActivityContainersLocked(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 5063
    const-string v0, "ACTIVITY MANAGER STARTER (dumpsys activity containers)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5064
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const-string v1, " "

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/RootActivityContainer;->dumpChildrenNames(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5065
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5066
    return-void
.end method

.method dumpActivityStarterLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "dumpPackage"  # Ljava/lang/String;

    .line 5069
    const-string v0, "ACTIVITY MANAGER STARTER (dumpsys activity starter)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5070
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/ActivityStartController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 5071
    return-void
.end method

.method dumpLastANRLocked(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 4989
    const-string v0, "ACTIVITY MANAGER LAST ANR (dumpsys activity lastanr)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4990
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastANRState:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 4991
    const-string v0, "  <no ANR has occurred since boot>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12

    .line 4993
    :cond_f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4995
    :goto_12
    return-void
.end method

.method dumpLastANRTracesLocked(Ljava/io/PrintWriter;)V
    .registers 11
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 4998
    const-string v0, "ACTIVITY MANAGER LAST ANR TRACES (dumpsys activity lastanr-traces)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5000
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/anr"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 5001
    .local v0, "files":[Ljava/io/File;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 5002
    const-string v1, "  <no ANR has occurred since boot>"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5003
    return-void

    .line 5006
    :cond_1c
    const/4 v1, 0x0

    .line 5007
    .local v1, "latest":Ljava/io/File;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v2, :cond_35

    aget-object v4, v0, v3

    .line 5008
    .local v4, "f":Ljava/io/File;
    if-eqz v1, :cond_31

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_32

    .line 5009
    :cond_31
    move-object v1, v4

    .line 5007
    .end local v4  # "f":Ljava/io/File;
    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 5012
    :cond_35
    const-string v2, "File: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5013
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5014
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5015
    :try_start_44
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4e} :catch_69

    .line 5017
    .local v2, "in":Ljava/io/BufferedReader;
    :goto_4e
    :try_start_4e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_59

    .line 5018
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_4e .. :try_end_58} :catchall_5d

    goto :goto_4e

    .line 5020
    .end local v4  # "line":Ljava/lang/String;
    :cond_59
    :try_start_59
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_69

    .line 5024
    .end local v2  # "in":Ljava/io/BufferedReader;
    goto :goto_75

    .line 5015
    .restart local v2  # "in":Ljava/io/BufferedReader;
    :catchall_5d
    move-exception v3

    .end local v0  # "files":[Ljava/io/File;
    .end local v1  # "latest":Ljava/io/File;
    .end local v2  # "in":Ljava/io/BufferedReader;
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "pw":Ljava/io/PrintWriter;
    :try_start_5e
    throw v3
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5f

    .line 5020
    .restart local v0  # "files":[Ljava/io/File;
    .restart local v1  # "latest":Ljava/io/File;
    .restart local v2  # "in":Ljava/io/BufferedReader;
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "pw":Ljava/io/PrintWriter;
    :catchall_5f
    move-exception v4

    :try_start_60
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_64

    goto :goto_68

    :catchall_64
    move-exception v5

    :try_start_65
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0  # "files":[Ljava/io/File;
    .end local v1  # "latest":Ljava/io/File;
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "pw":Ljava/io/PrintWriter;
    :goto_68
    throw v4
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_69} :catch_69

    .end local v2  # "in":Ljava/io/BufferedReader;
    .restart local v0  # "files":[Ljava/io/File;
    .restart local v1  # "latest":Ljava/io/File;
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "pw":Ljava/io/PrintWriter;
    :catch_69
    move-exception v2

    .line 5021
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Unable to read: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5022
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 5023
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 5025
    .end local v2  # "e":Ljava/io/IOException;
    :goto_75
    return-void
.end method

.method enableScreenAfterBoot(Z)V
    .registers 5
    .param p1, "booted"  # Z

    .line 5500
    nop

    .line 5501
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 5500
    const/16 v2, 0xbea

    invoke-static {v2, v0, v1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 5502
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->enableScreenAfterBoot()V

    .line 5504
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5505
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateEventDispatchingLocked(Z)V

    .line 5506
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5507
    return-void

    .line 5506
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public enforceSystemHasVrFeature()V
    .registers 3

    .line 4391
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.vr.high_performance"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4395
    return-void

    .line 4393
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "VR mode not supported on this device!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z
    .registers 11
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "params"  # Landroid/app/PictureInPictureParams;

    .line 4195
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4197
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_56

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4198
    const-string v3, "enterPictureInPictureMode"

    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->ensureValidPictureInPictureActivityParamsLocked(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 4202
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-direct {p0, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->isInPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1f

    .line 4203
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_50

    .line 4250
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4203
    return v5

    .line 4208
    :cond_1f
    :try_start_1f
    const-string v4, "enterPictureInPictureMode"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_30

    .line 4210
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_50

    .line 4250
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4210
    return v6

    .line 4213
    :cond_30
    :try_start_30
    new-instance v4, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$js0zprxhKzo_Mx9ozR8logP_1-c;

    invoke-direct {v4, p0, v3, p2}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$js0zprxhKzo_Mx9ozR8logP_1-c;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;)V

    .line 4233
    .local v4, "enterPipRunnable":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isKeyguardLocked()Z

    move-result v6

    if-eqz v6, :cond_45

    .line 4237
    new-instance v6, Lcom/android/server/wm/ActivityTaskManagerService$1;

    invoke-direct {v6, p0, v4}, Lcom/android/server/wm/ActivityTaskManagerService$1;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/Runnable;)V

    const/4 v7, 0x0

    invoke-virtual {p0, p1, v6, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto :goto_48

    .line 4245
    :cond_45
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 4247
    :goto_48
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_30 .. :try_end_49} :catchall_50

    .line 4250
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4247
    return v5

    .line 4248
    .end local v3  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v4  # "enterPipRunnable":Ljava/lang/Runnable;
    :catchall_50
    move-exception v3

    :try_start_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    :try_start_52
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "origId":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "token":Landroid/os/IBinder;
    .end local p2  # "params":Landroid/app/PictureInPictureParams;
    throw v3
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_56

    .line 4250
    .restart local v0  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "token":Landroid/os/IBinder;
    .restart local p2  # "params":Landroid/app/PictureInPictureParams;
    :catchall_56
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public final finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z
    .registers 21
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "resultCode"  # I
    .param p3, "resultData"  # Landroid/content/Intent;
    .param p4, "finishTask"  # I

    .line 1606
    move-object/from16 v1, p0

    move/from16 v2, p4

    if-eqz p3, :cond_15

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_15

    .line 1607
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "File descriptors passed in Intent"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1610
    :cond_15
    :goto_15
    iget-object v9, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v9

    :try_start_18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1611
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    move-object v10, v0

    .line 1612
    .local v10, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v3, 0x1

    if-nez v10, :cond_28

    .line 1613
    monitor-exit v9
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_107

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 1616
    :cond_28
    :try_start_28
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    move-object v11, v0

    .line 1617
    .local v11, "tr":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v11}, Lcom/android/server/wm/TaskRecord;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    move-object v12, v0

    .line 1618
    .local v12, "rootR":Lcom/android/server/wm/ActivityRecord;
    if-nez v12, :cond_3b

    .line 1619
    const-string v0, "ActivityTaskManager"

    const-string v4, "Finishing task with all activities already finished"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/server/wm/LockTaskController;->activityBlockedFromFinish(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_4b

    .line 1624
    monitor-exit v9
    :try_end_47
    .catchall {:try_start_28 .. :try_end_47} :catchall_107

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 1629
    :cond_4b
    :try_start_4b
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_80

    .line 1631
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0
    :try_end_53
    .catchall {:try_start_4b .. :try_end_53} :catchall_107

    move-object/from16 v13, p1

    :try_start_55
    invoke-virtual {v0, v13, v4}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_10f

    move-object v5, v0

    .line 1632
    .local v5, "next":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_82

    .line 1634
    const/4 v6, 0x1

    .line 1636
    .local v6, "resumeOK":Z
    :try_start_5d
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object v7, v5, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v0, v7}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v0
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_65} :catch_67
    .catchall {:try_start_5d .. :try_end_65} :catchall_10f

    move v6, v0

    .line 1640
    goto :goto_72

    .line 1637
    :catch_67
    move-exception v0

    .line 1638
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v7, 0x0

    :try_start_69
    iput-object v7, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 1639
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 1642
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_72
    if-nez v6, :cond_82

    .line 1643
    const-string v0, "ActivityTaskManager"

    const-string v3, "Not finishing activity because controller resumed"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    monitor-exit v9
    :try_end_7c
    .catchall {:try_start_69 .. :try_end_7c} :catchall_10f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 1629
    .end local v5  # "next":Lcom/android/server/wm/ActivityRecord;
    .end local v6  # "resumeOK":Z
    :cond_80
    move-object/from16 v13, p1

    .line 1651
    :cond_82
    :try_start_82
    iget-object v0, v10, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_8f

    .line 1652
    iget-object v0, v10, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/android/server/wm/WindowProcessController;->setLastActivityFinishTimeIfNeeded(J)V

    .line 1655
    :cond_8f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_93
    .catchall {:try_start_82 .. :try_end_93} :catchall_10f

    move-wide v14, v5

    .line 1658
    .local v14, "origId":J
    if-ne v2, v3, :cond_97

    goto :goto_98

    :cond_97
    move v3, v4

    :goto_98
    move v0, v3

    .line 1661
    .local v0, "finishWithRootActivity":Z
    :try_start_99
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->isAccessApplication()Z

    move-result v3

    if-eqz v3, :cond_ba

    invoke-virtual {v11}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->topRunningTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    if-ne v11, v3, :cond_ba

    .line 1662
    invoke-virtual {v11}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    if-ne v3, v5, :cond_ba

    if-nez p2, :cond_ba

    .line 1666
    invoke-virtual {v11, v10}, Lcom/android/server/wm/TaskRecord;->performClearTaskUntilUnlocked(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    .local v3, "res":Z
    goto :goto_f9

    .line 1669
    .end local v3  # "res":Z
    :cond_ba
    const/4 v3, 0x2

    if-eq v2, v3, :cond_e4

    if-eqz v0, :cond_c2

    if-ne v10, v12, :cond_c2

    goto :goto_e4

    .line 1684
    :cond_c2
    invoke-virtual {v11}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    const-string v7, "app-request"

    const/4 v8, 0x1

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v3

    .line 1687
    .restart local v3  # "res":Z
    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-virtual {v4, v2, v10}, Lcom/android/server/wm/FlymeWindowManagerInternal;->onFinishActivityWithKeyguard(ILcom/android/server/wm/ActivityRecord;)V

    .line 1689
    if-nez v3, :cond_f9

    .line 1690
    const-string v4, "ActivityTaskManager"

    const-string v5, "Failed to finish by app-request"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f9

    .line 1676
    .end local v3  # "res":Z
    :cond_e4
    :goto_e4
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v5, v11, Lcom/android/server/wm/TaskRecord;->taskId:I

    const-string v6, "finish-activity"

    invoke-virtual {v3, v5, v4, v0, v6}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    move-result v3

    .line 1678
    .restart local v3  # "res":Z
    if-nez v3, :cond_f7

    .line 1679
    const-string v5, "ActivityTaskManager"

    const-string v6, "Removing task failed to finish activity"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    :cond_f7
    iput v4, v10, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I
    :try_end_f9
    .catchall {:try_start_99 .. :try_end_f9} :catchall_102

    .line 1693
    :cond_f9
    :goto_f9
    nop

    .line 1695
    :try_start_fa
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v9
    :try_end_fe
    .catchall {:try_start_fa .. :try_end_fe} :catchall_10f

    .line 1693
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 1695
    .end local v0  # "finishWithRootActivity":Z
    .end local v3  # "res":Z
    :catchall_102
    move-exception v0

    :try_start_103
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "token":Landroid/os/IBinder;
    .end local p2  # "resultCode":I
    .end local p3  # "resultData":Landroid/content/Intent;
    .end local p4  # "finishTask":I
    throw v0

    .line 1697
    .end local v10  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v11  # "tr":Lcom/android/server/wm/TaskRecord;
    .end local v12  # "rootR":Lcom/android/server/wm/ActivityRecord;
    .end local v14  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "token":Landroid/os/IBinder;
    .restart local p2  # "resultCode":I
    .restart local p3  # "resultData":Landroid/content/Intent;
    .restart local p4  # "finishTask":I
    :catchall_107
    move-exception v0

    move-object/from16 v13, p1

    :goto_10a
    monitor-exit v9
    :try_end_10b
    .catchall {:try_start_103 .. :try_end_10b} :catchall_10f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_10f
    move-exception v0

    goto :goto_10a
.end method

.method public finishActivityAffinity(Landroid/os/IBinder;)Z
    .registers 9
    .param p1, "token"  # Landroid/os/IBinder;

    .line 1702
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1703
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_46

    .line 1705
    .local v1, "origId":J
    :try_start_a
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_41

    .line 1706
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v4, 0x0

    if-nez v3, :cond_1a

    .line 1707
    nop

    .line 1718
    :try_start_12
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_46

    .line 1707
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 1712
    :cond_1a
    :try_start_1a
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v5

    .line 1713
    .local v5, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/server/wm/LockTaskController;->activityBlockedFromFinish(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v6
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_41

    if-eqz v6, :cond_31

    .line 1714
    nop

    .line 1718
    :try_start_29
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_46

    .line 1714
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 1716
    :cond_31
    :try_start_31
    invoke-virtual {v5}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/wm/ActivityStack;->finishActivityAffinityLocked(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_41

    .line 1718
    :try_start_39
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_46

    .line 1716
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 1718
    .end local v3  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v5  # "task":Lcom/android/server/wm/TaskRecord;
    :catchall_41
    move-exception v3

    :try_start_42
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "token":Landroid/os/IBinder;
    throw v3

    .line 1720
    .end local v1  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "token":Landroid/os/IBinder;
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_46

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method finishRunningVoiceLocked()V
    .registers 2

    .line 3885
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_f

    .line 3886
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    .line 3887
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3888
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 3890
    :cond_f
    return-void
.end method

.method public final finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 9
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "resultWho"  # Ljava/lang/String;
    .param p3, "requestCode"  # I

    .line 2607
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2608
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2609
    .local v1, "origId":J
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 2610
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_17

    .line 2611
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    invoke-virtual {v4, v3, p2, p3}, Lcom/android/server/wm/ActivityStack;->finishSubActivityLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V

    .line 2613
    :cond_17
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2614
    .end local v1  # "origId":J
    .end local v3  # "r":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2615
    return-void

    .line 2614
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .registers 6
    .param p1, "session"  # Landroid/service/voice/IVoiceInteractionSession;

    .line 3061
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3062
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1d

    .line 3066
    .local v1, "origId":J
    :try_start_a
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootActivityContainer;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_18

    .line 3068
    :try_start_f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3069
    nop

    .line 3070
    .end local v1  # "origId":J
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3072
    return-void

    .line 3068
    .restart local v1  # "origId":J
    :catchall_18
    move-exception v3

    :try_start_19
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "session":Landroid/service/voice/IVoiceInteractionSession;
    throw v3

    .line 3070
    .end local v1  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "session":Landroid/service/voice/IVoiceInteractionSession;
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method forceUnfreezeProcessPkgInnerLocked(I[I)V
    .registers 5
    .param p1, "uid"  # I
    .param p2, "pids"  # [I

    .line 7618
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_FREEZE:Z

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Freeze: forceUnfreezeProcessPkgInnerLocked "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7619
    :cond_26
    invoke-static {}, Lcom/meizu/pps/observer/PPSServer;->getInstance()Lcom/meizu/pps/observer/PPSServer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/meizu/pps/observer/PPSServer;->scheduleForceUnFreeze(I[I)V

    .line 7620
    return-void
.end method

.method public getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .registers 5
    .param p1, "token"  # Landroid/os/IBinder;

    .line 3907
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3908
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3909
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_12

    .line 3910
    const/4 v2, 0x0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 3912
    :cond_12
    :try_start_12
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 3913
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getActivityDisplayId(Landroid/os/IBinder;)I
    .registers 6
    .param p1, "activityToken"  # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2086
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2087
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->getStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2088
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_18

    iget v2, v1, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_18

    .line 2089
    iget v2, v1, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 2091
    :cond_18
    const/4 v2, 0x0

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 2092
    .end local v1  # "stack":Lcom/android/server/wm/ActivityStack;
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getActivityOptions(Landroid/os/IBinder;)Landroid/os/Bundle;
    .registers 8
    .param p1, "token"  # Landroid/os/IBinder;

    .line 3030
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3032
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_33

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3033
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 3034
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v4, 0x0

    if-eqz v3, :cond_25

    .line 3035
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityRecord;->takeOptionsLocked(Z)Landroid/app/ActivityOptions;

    move-result-object v5

    .line 3037
    .local v5, "activityOptions":Landroid/app/ActivityOptions;
    if-nez v5, :cond_19

    goto :goto_1d

    :cond_19
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    :goto_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_2d

    .line 3042
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3037
    return-object v4

    .line 3039
    .end local v5  # "activityOptions":Landroid/app/ActivityOptions;
    :cond_25
    :try_start_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_2d

    .line 3042
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3039
    return-object v4

    .line 3040
    .end local v3  # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_2d
    move-exception v3

    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    :try_start_2f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "origId":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "token":Landroid/os/IBinder;
    throw v3
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_33

    .line 3042
    .restart local v0  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "token":Landroid/os/IBinder;
    :catchall_33
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method getActivityStartController()Lcom/android/server/wm/ActivityStartController;
    .registers 2

    .line 953
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    return-object v0
.end method

.method public getAllStackInfos()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$StackInfo;",
            ">;"
        }
    .end annotation

    .line 2847
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "getAllStackInfos()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2848
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2850
    .local v0, "ident":J
    :try_start_b
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_25

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2851
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootActivityContainer;->getAllStackInfos()Ljava/util/ArrayList;

    move-result-object v3

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1f

    .line 2854
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2851
    return-object v3

    .line 2852
    :catchall_1f
    move-exception v3

    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    :try_start_21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    throw v3
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_25

    .line 2854
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    :catchall_25
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;
    .registers 4
    .param p1, "info"  # Landroid/content/pm/ApplicationInfo;
    .param p2, "userId"  # I

    .line 6007
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 6008
    :cond_4
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 6009
    .local v0, "newInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p2}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 6010
    return-object v0
.end method

.method getAppOpsService()Lcom/android/server/appop/AppOpsService;
    .registers 3

    .line 916
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    if-nez v0, :cond_12

    .line 917
    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 918
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    check-cast v1, Lcom/android/server/appop/AppOpsService;

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 920
    .end local v0  # "b":Landroid/os/IBinder;
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    return-object v0
.end method

.method public getAppTaskThumbnailSize()Landroid/graphics/Point;
    .registers 5

    .line 3281
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3282
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailWidth:I

    iget v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailHeight:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 3283
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getAppTasks(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "callingPackage"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 3048
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3049
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3051
    .local v1, "ident":J
    :try_start_8
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_22

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3052
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v4, v0, p1}, Lcom/android/server/wm/RecentTasks;->getAppTasksList(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-exit v3
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_1c

    .line 3055
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3052
    return-object v4

    .line 3053
    :catchall_1c
    move-exception v4

    :try_start_1d
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "callingUid":I
    .end local v1  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "callingPackage":Ljava/lang/String;
    throw v4
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_22

    .line 3055
    .restart local v0  # "callingUid":I
    .restart local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "callingPackage":Ljava/lang/String;
    :catchall_22
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method getAppWarningsLocked()Lcom/android/server/wm/AppWarnings;
    .registers 2

    .line 5966
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    return-object v0
.end method

.method public getAssistContextExtras(I)Landroid/os/Bundle;
    .registers 16
    .param p1, "requestType"  # I

    .line 3575
    nop

    .line 3577
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 3575
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v10, 0x0

    const-wide/16 v11, 0x1f4

    const/4 v13, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v13}, Lcom/android/server/wm/ActivityTaskManagerService;->enqueueAssistContext(ILandroid/content/Intent;Ljava/lang/String;Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZILandroid/os/Bundle;JI)Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    move-result-object v0

    .line 3578
    .local v0, "pae":Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;
    if-nez v0, :cond_1a

    .line 3579
    const/4 v1, 0x0

    return-object v1

    .line 3581
    :cond_1a
    monitor-enter v0

    .line 3582
    :goto_1b
    :try_start_1b
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->haveResult:Z
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_48

    if-nez v1, :cond_25

    .line 3584
    :try_start_1f
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_22} :catch_23
    .catchall {:try_start_1f .. :try_end_22} :catchall_48

    .line 3586
    :goto_22
    goto :goto_1b

    .line 3585
    :catch_23
    move-exception v1

    goto :goto_22

    .line 3588
    :cond_25
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_48

    .line 3589
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_29
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3590
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->result:Landroid/os/Bundle;

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->buildAssistBundleLocked(Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;Landroid/os/Bundle;)V

    .line 3591
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3592
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3593
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_29 .. :try_end_3c} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3594
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    return-object v1

    .line 3593
    :catchall_42
    move-exception v2

    :try_start_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 3588
    :catchall_48
    move-exception v1

    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public getAtmInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 844
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-object v0
.end method

.method public getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .registers 5
    .param p1, "token"  # Landroid/os/IBinder;

    .line 2357
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2358
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getCallingRecordLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2359
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_13

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 2360
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .registers 5
    .param p1, "token"  # Landroid/os/IBinder;

    .line 2349
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2350
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getCallingRecordLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2351
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_11

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 2352
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 4

    .line 5191
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5192
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfigurationForCallingPid()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 5193
    .local v1, "ci":Landroid/content/res/Configuration;
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 5194
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5195
    return-object v1

    .line 5194
    .end local v1  # "ci":Landroid/content/res/Configuration;
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getCurrentUserId()I
    .registers 2

    .line 5180
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    return v0
.end method

.method public getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;
    .registers 7

    .line 992
    new-instance v0, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v0}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 993
    .local v0, "config":Landroid/content/pm/ConfigurationInfo;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 994
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfigurationForCallingPid()Landroid/content/res/Configuration;

    move-result-object v2

    .line 995
    .local v2, "globalConfig":Landroid/content/res/Configuration;
    iget v3, v2, Landroid/content/res/Configuration;->touchscreen:I

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    .line 996
    iget v3, v2, Landroid/content/res/Configuration;->keyboard:I

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    .line 997
    iget v3, v2, Landroid/content/res/Configuration;->navigation:I

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    .line 998
    iget v3, v2, Landroid/content/res/Configuration;->navigation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_25

    iget v3, v2, Landroid/content/res/Configuration;->navigation:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2a

    .line 1000
    :cond_25
    iget v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v3, v4

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 1002
    :cond_2a
    iget v3, v2, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v3, :cond_38

    iget v3, v2, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_38

    .line 1004
    iget v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v3, v4

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 1006
    :cond_38
    iget v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->GL_ES_VERSION:I

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 1007
    .end local v2  # "globalConfig":Landroid/content/res/Configuration;
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1008
    return-object v0

    .line 1007
    :catchall_41
    move-exception v2

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public getFilteredTasks(III)Ljava/util/List;
    .registers 14
    .param p1, "maxNum"  # I
    .param p2, "ignoreActivityType"  # I
        .annotation build Landroid/app/WindowConfiguration$ActivityType;
        .end annotation
    .end param
    .param p3, "ignoreWindowingMode"  # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 2590
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2591
    .local v7, "callingUid":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 2593
    .local v8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-object v9, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v9

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2594
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ALL:Z

    if-eqz v0, :cond_2a

    const-string v0, "ActivityTaskManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTasks: max="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    :cond_2a
    const-string v0, "getTasks"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {p0, v0, v1, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->isGetTasksAllowed(Ljava/lang/String;II)Z

    move-result v6

    .line 2598
    .local v6, "allowed":Z
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    move v1, p1

    move-object v2, v8

    move v3, p2

    move v4, p3

    move v5, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/RootActivityContainer;->getRunningTasks(ILjava/util/List;IIIZ)V

    .line 2600
    .end local v6  # "allowed":Z
    monitor-exit v9
    :try_end_3f
    .catchall {:try_start_d .. :try_end_3f} :catchall_43

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2602
    return-object v8

    .line 2600
    :catchall_43
    move-exception v0

    :try_start_44
    monitor-exit v9
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method getFlymePackageManagerService()Lcom/android/server/pm/FlymePackageManagerService;
    .registers 2

    .line 5951
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFlymePackageManagerService:Lcom/android/server/pm/FlymePackageManagerService;

    if-nez v0, :cond_e

    .line 5952
    const-string v0, "flyme_packagemanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/FlymePackageManagerService;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFlymePackageManagerService:Lcom/android/server/pm/FlymePackageManagerService;

    .line 5954
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFlymePackageManagerService:Lcom/android/server/pm/FlymePackageManagerService;

    return-object v0
.end method

.method public getFocusedStackInfo()Landroid/app/ActivityManager$StackInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2097
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "getStackInfo()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2098
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2100
    .local v0, "ident":J
    :try_start_b
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_36

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2101
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2102
    .local v3, "focusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_27

    .line 2103
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v5, v3, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/RootActivityContainer;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v4

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_30

    .line 2108
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2103
    return-object v4

    .line 2105
    :cond_27
    const/4 v4, 0x0

    :try_start_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_30

    .line 2108
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2105
    return-object v4

    .line 2106
    .end local v3  # "focusedStack":Lcom/android/server/wm/ActivityStack;
    :catchall_30
    move-exception v3

    :try_start_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    :try_start_32
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    throw v3
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_36

    .line 2108
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    :catchall_36
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getFrontActivityScreenCompatMode()I
    .registers 5

    .line 1962
    const-string v0, "getFrontActivityScreenCompatMode"

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1963
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1964
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1965
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_1b

    .line 1966
    const/4 v2, -0x3

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1968
    :cond_1b
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    move-result v2

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1969
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getGlobalConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 5203
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method getGlobalConfigurationForCallingPid()Landroid/content/res/Configuration;
    .registers 3

    .line 969
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 970
    .local v0, "pid":I
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfigurationForPid(I)Landroid/content/res/Configuration;

    move-result-object v1

    return-object v1
.end method

.method getGlobalConfigurationForPid(I)Landroid/content/res/Configuration;
    .registers 5
    .param p1, "pid"  # I

    .line 977
    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq p1, v0, :cond_29

    if-gez p1, :cond_7

    goto :goto_29

    .line 980
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 981
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    .line 982
    .local v1, "app":Lcom/android/server/wm/WindowProcessController;
    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    goto :goto_1e

    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 983
    .end local v1  # "app":Lcom/android/server/wm/WindowProcessController;
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 978
    :cond_29
    :goto_29
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;
    .registers 2

    .line 838
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-object v0
.end method

.method getHomeIntent()Landroid/content/Intent;
    .registers 4

    .line 5970
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopAction:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopData:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5971
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5972
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5973
    iget v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_25

    .line 5974
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5976
    :cond_25
    return-object v0
.end method

.method getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;
    .registers 28
    .param p1, "type"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "callingUid"  # I
    .param p4, "userId"  # I
    .param p5, "token"  # Landroid/os/IBinder;
    .param p6, "resultWho"  # Ljava/lang/String;
    .param p7, "requestCode"  # I
    .param p8, "intents"  # [Landroid/content/Intent;
    .param p9, "resolvedTypes"  # [Ljava/lang/String;
    .param p10, "flags"  # I
    .param p11, "bOptions"  # Landroid/os/Bundle;

    .line 5846
    move/from16 v12, p1

    const/4 v0, 0x0

    .line 5847
    .local v0, "activity":Lcom/android/server/wm/ActivityRecord;
    const/4 v13, 0x3

    if-ne v12, v13, :cond_4b

    .line 5848
    invoke-static/range {p5 .. p5}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 5849
    const/4 v1, 0x0

    const-string v2, "Failed createPendingResult: activity "

    const-string v3, "ActivityTaskManager"

    if-nez v0, :cond_2b

    .line 5850
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p5

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not in any stack"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5851
    return-object v1

    .line 5853
    :cond_2b
    move-object/from16 v14, p5

    iget-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_49

    .line 5854
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is finishing"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5855
    return-object v1

    .line 5853
    :cond_49
    move-object v15, v0

    goto :goto_4e

    .line 5847
    :cond_4b
    move-object/from16 v14, p5

    move-object v15, v0

    .line 5859
    .end local v0  # "activity":Lcom/android/server/wm/ActivityRecord;
    .local v15, "activity":Lcom/android/server/wm/ActivityRecord;
    :goto_4e
    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/am/PendingIntentController;->getIntentSender(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/server/am/PendingIntentRecord;

    move-result-object v0

    .line 5862
    .local v0, "rec":Lcom/android/server/am/PendingIntentRecord;
    const/high16 v1, 0x20000000

    and-int v1, p10, v1

    if-eqz v1, :cond_74

    const/4 v1, 0x1

    goto :goto_75

    :cond_74
    const/4 v1, 0x0

    .line 5863
    .local v1, "noCreate":Z
    :goto_75
    if-eqz v1, :cond_78

    .line 5864
    return-object v0

    .line 5866
    :cond_78
    if-ne v12, v13, :cond_8c

    .line 5867
    iget-object v2, v15, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-nez v2, :cond_85

    .line 5868
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v15, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 5870
    :cond_85
    iget-object v2, v15, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    iget-object v3, v0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5872
    :cond_8c
    return-object v0
.end method

.method public getLastResumedActivityUserId()I
    .registers 4

    .line 4652
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v2, "getLastResumedActivityUserId()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4654
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4655
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_1c

    .line 4656
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 4658
    :cond_1c
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 4659
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getLastStopAppSwitchesTime()J
    .registers 3

    .line 4849
    iget-wide v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastStopAppSwitchesTime:J

    return-wide v0
.end method

.method public getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .registers 4
    .param p1, "activityToken"  # Landroid/os/IBinder;

    .line 2003
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2004
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2005
    .local v1, "srec":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2006
    if-nez v1, :cond_12

    .line 2007
    const/4 v0, 0x0

    return-object v0

    .line 2009
    :cond_12
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    return-object v0

    .line 2005
    .end local v1  # "srec":Lcom/android/server/wm/ActivityRecord;
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getLaunchedFromUid(Landroid/os/IBinder;)I
    .registers 4
    .param p1, "activityToken"  # Landroid/os/IBinder;

    .line 1991
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1992
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1993
    .local v1, "srec":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1994
    if-nez v1, :cond_12

    .line 1995
    const/4 v0, -0x1

    return v0

    .line 1997
    :cond_12
    iget v0, v1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    return v0

    .line 1993
    .end local v1  # "srec":Lcom/android/server/wm/ActivityRecord;
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;
    .registers 2

    .line 949
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    return-object v0
.end method

.method getLockTaskController()Lcom/android/server/wm/LockTaskController;
    .registers 2

    .line 961
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    return-object v0
.end method

.method public getLockTaskModeState()I
    .registers 3

    .line 3010
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3011
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/LockTaskController;->getLockTaskModeState()I

    move-result v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 3012
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getMaxNumPictureInPictureActions(Landroid/os/IBinder;)I
    .registers 3
    .param p1, "token"  # Landroid/os/IBinder;

    .line 4286
    const/4 v0, 0x3

    return v0
.end method

.method public getPackageAskScreenCompat(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;

    .line 4914
    const-string v0, "getPackageAskScreenCompat"

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 4915
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4916
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageAskCompatModeLocked(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 4917
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;
    .registers 5
    .param p1, "token"  # Landroid/os/IBinder;

    .line 3918
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3919
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3920
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_12

    .line 3921
    const/4 v2, 0x0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 3923
    :cond_12
    :try_start_12
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 3924
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getPackageManager()Landroid/content/pm/IPackageManager;
    .registers 2

    .line 5939
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;
    .registers 2

    .line 5943
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_e

    .line 5944
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 5946
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method public getPackageScreenCompatMode(Ljava/lang/String;)I
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;

    .line 4897
    const-string v0, "getPackageScreenCompatMode"

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 4898
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4899
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageScreenCompatModeLocked(Ljava/lang/String;)I

    move-result v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 4900
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getPendingTempWhitelistTagForUidLocked(I)Ljava/lang/String;
    .registers 3
    .param p1, "uid"  # I

    .line 6085
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingTempWhitelist:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method getPermissionPolicyInternal()Lcom/android/server/policy/PermissionPolicyInternal;
    .registers 2

    .line 5959
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    if-nez v0, :cond_e

    .line 5960
    const-class v0, Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PermissionPolicyInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    .line 5962
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    return-object v0
.end method

.method getProcessController(II)Lcom/android/server/wm/WindowProcessController;
    .registers 6
    .param p1, "pid"  # I
    .param p2, "uid"  # I

    .line 6055
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 6056
    .local v0, "proc":Lcom/android/server/wm/WindowProcessController;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 6057
    :cond_a
    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v2

    if-eqz v2, :cond_15

    iget v2, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    if-ne v2, p2, :cond_15

    .line 6058
    return-object v0

    .line 6060
    :cond_15
    return-object v1
.end method

.method getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;
    .registers 10
    .param p1, "thread"  # Landroid/app/IApplicationThread;

    .line 6035
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 6036
    return-object v0

    .line 6039
    :cond_4
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 6040
    .local v1, "threadBinder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    .line 6041
    .local v2, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_14
    if-ltz v3, :cond_41

    .line 6042
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 6043
    .local v4, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "j":I
    :goto_22
    if-ltz v5, :cond_3e

    .line 6044
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowProcessController;

    .line 6045
    .local v6, "proc":Lcom/android/server/wm/WindowProcessController;
    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v7

    invoke-interface {v7}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    if-ne v7, v1, :cond_3b

    .line 6046
    return-object v6

    .line 6043
    .end local v6  # "proc":Lcom/android/server/wm/WindowProcessController;
    :cond_3b
    add-int/lit8 v5, v5, -0x1

    goto :goto_22

    .line 6041
    .end local v4  # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    .end local v5  # "j":I
    :cond_3e
    add-int/lit8 v3, v3, -0x1

    goto :goto_14

    .line 6051
    .end local v3  # "i":I
    :cond_41
    return-object v0
.end method

.method getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;
    .registers 8
    .param p1, "processName"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 6014
    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_36

    .line 6017
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    .line 6018
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 6019
    .local v0, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    if-nez v0, :cond_14

    const/4 v1, 0x0

    return-object v1

    .line 6020
    :cond_14
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 6021
    .local v1, "procCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, v1, :cond_36

    .line 6022
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 6023
    .local v3, "procUid":I
    invoke-static {v3}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-nez v4, :cond_33

    invoke-static {v3, p2}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 6025
    goto :goto_33

    .line 6027
    :cond_2c
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowProcessController;

    return-object v4

    .line 6021
    .end local v3  # "procUid":I
    :cond_33
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 6031
    .end local v0  # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    .end local v1  # "procCount":I
    .end local v2  # "i":I
    :cond_36
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowProcessController;

    return-object v0
.end method

.method public getRecentTasks(III)Landroid/content/pm/ParceledListSlice;
    .registers 15
    .param p1, "maxNum"  # I
    .param p2, "flags"  # I
    .param p3, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 2825
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2827
    .local v7, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->isFlymeLauncherCalling()Z

    move-result v8

    .line 2828
    .local v8, "isFlymeLauncherCalling":Z
    if-nez v8, :cond_14

    .line 2829
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string v1, "getRecentTasks"

    invoke-virtual {p0, v0, v7, p3, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p3

    .line 2832
    :cond_14
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string v1, "getRecentTasks"

    invoke-virtual {p0, v1, v0, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->isGetTasksAllowed(Ljava/lang/String;II)Z

    move-result v9

    .line 2834
    .local v9, "allowed":Z
    nop

    .line 2835
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2836
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 2834
    const-string v2, "android.permission.GET_DETAILED_TASKS"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkGetTasksPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_31

    const/4 v0, 0x1

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    move v4, v0

    .line 2839
    .local v4, "detailed":Z
    iget-object v10, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v10

    :try_start_36
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2840
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    move v1, p1

    move v2, p2

    move v3, v9

    move v5, p3

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/RecentTasks;->getRecentTasks(IIZZII)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    monitor-exit v10
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 2842
    :catchall_49
    move-exception v0

    :try_start_4a
    monitor-exit v10
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method getRecentTasks()Lcom/android/server/wm/RecentTasks;
    .registers 2

    .line 945
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    return-object v0
.end method

.method public getRequestedOrientation(Landroid/os/IBinder;)I
    .registers 5
    .param p1, "token"  # Landroid/os/IBinder;

    .line 1874
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1875
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1876
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_12

    .line 1877
    const/4 v2, -0x1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1879
    :cond_12
    :try_start_12
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getOrientation()I

    move-result v2

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1880
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getSecondaryHomeIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .param p1, "preferredPackage"  # Ljava/lang/String;

    .line 5988
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopAction:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopData:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5989
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11100ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 5991
    .local v1, "useSystemProvidedLauncher":Z
    if-eqz p1, :cond_27

    if-eqz v1, :cond_23

    goto :goto_27

    .line 5997
    :cond_23
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3c

    .line 5993
    :cond_27
    :goto_27
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104019a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5995
    .local v2, "secondaryHomeComponent":Ljava/lang/String;
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5996
    .end local v2  # "secondaryHomeComponent":Ljava/lang/String;
    nop

    .line 5999
    :goto_3c
    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 6000
    iget v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4b

    .line 6001
    const-string v2, "android.intent.category.SECONDARY_HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 6003
    :cond_4b
    return-object v0
.end method

.method public getStackInfo(II)Landroid/app/ActivityManager$StackInfo;
    .registers 7
    .param p1, "windowingMode"  # I
    .param p2, "activityType"  # I

    .line 2860
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "getStackInfo()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2861
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2863
    .local v0, "ident":J
    :try_start_b
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_25

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2864
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/RootActivityContainer;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v3

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1f

    .line 2867
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2864
    return-object v3

    .line 2865
    :catchall_1f
    move-exception v3

    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    :try_start_21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "windowingMode":I
    .end local p2  # "activityType":I
    throw v3
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_25

    .line 2867
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "windowingMode":I
    .restart local p2  # "activityType":I
    :catchall_25
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getTaskBounds(I)Landroid/graphics/Rect;
    .registers 10
    .param p1, "taskId"  # I

    .line 2264
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "getTaskBounds()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2265
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2266
    .local v0, "ident":J
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2268
    .local v2, "rect":Landroid/graphics/Rect;
    :try_start_12
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_74

    :try_start_15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2269
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    .line 2271
    .local v4, "task":Lcom/android/server/wm/TaskRecord;
    if-nez v4, :cond_44

    .line 2272
    const-string v5, "ActivityTaskManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTaskBounds: taskId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_15 .. :try_end_3d} :catchall_6e

    .line 2290
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2273
    return-object v2

    .line 2275
    :cond_44
    :try_start_44
    invoke-virtual {v4}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    if-eqz v5, :cond_4e

    .line 2278
    invoke-virtual {v4, v2}, Lcom/android/server/wm/TaskRecord;->getWindowContainerBounds(Landroid/graphics/Rect;)V

    goto :goto_65

    .line 2282
    :cond_4e
    invoke-virtual {v4}, Lcom/android/server/wm/TaskRecord;->matchParentBounds()Z

    move-result v5

    if-nez v5, :cond_5c

    .line 2283
    invoke-virtual {v4}, Lcom/android/server/wm/TaskRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_65

    .line 2284
    :cond_5c
    iget-object v5, v4, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v5, :cond_65

    .line 2285
    iget-object v5, v4, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2288
    .end local v4  # "task":Lcom/android/server/wm/TaskRecord;
    :cond_65
    :goto_65
    monitor-exit v3
    :try_end_66
    .catchall {:try_start_44 .. :try_end_66} :catchall_6e

    :try_start_66
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_74

    .line 2290
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2291
    nop

    .line 2292
    return-object v2

    .line 2288
    :catchall_6e
    move-exception v4

    :try_start_6f
    monitor-exit v3
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    :try_start_70
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "ident":J
    .end local v2  # "rect":Landroid/graphics/Rect;
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskId":I
    throw v4
    :try_end_74
    .catchall {:try_start_70 .. :try_end_74} :catchall_74

    .line 2290
    .restart local v0  # "ident":J
    .restart local v2  # "rect":Landroid/graphics/Rect;
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskId":I
    :catchall_74
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;
    .registers 2

    .line 957
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    return-object v0
.end method

.method public getTaskDescription(I)Landroid/app/ActivityManager$TaskDescription;
    .registers 5
    .param p1, "id"  # I

    .line 2297
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2298
    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "getTaskDescription()"

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2300
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    .line 2302
    .local v1, "tr":Lcom/android/server/wm/TaskRecord;
    if-eqz v1, :cond_1d

    .line 2303
    iget-object v2, v1, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 2305
    .end local v1  # "tr":Lcom/android/server/wm/TaskRecord;
    :cond_1d
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2306
    const/4 v0, 0x0

    return-object v0

    .line 2305
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "filePath"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 3418
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v2, "getTaskDescriptionIcon"

    invoke-virtual {p0, v0, v1, p2, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p2

    .line 3421
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3422
    .local v0, "passedIconFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-static {p2}, Lcom/android/server/wm/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v2

    .line 3423
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3424
    .local v1, "legitIconFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 3425
    const-string v2, "_activity_icon_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 3429
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RecentTasks;->getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 3426
    :cond_39
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad file path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " passed for userId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getTaskForActivity(Landroid/os/IBinder;Z)I
    .registers 5
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "onlyRoot"  # Z

    .line 2576
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2577
    invoke-static {p1, p2}, Lcom/android/server/wm/ActivityRecord;->getTaskForActivityLocked(Landroid/os/IBinder;Z)I

    move-result v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 2578
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getTaskSnapshot(IZ)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 6
    .param p1, "taskId"  # I
    .param p2, "reducedResolution"  # Z

    .line 4606
    const-string v0, "android.permission.READ_FRAME_BUFFER"

    const-string v1, "getTaskSnapshot()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4607
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4609
    .local v0, "ident":J
    const/4 v2, 0x1

    :try_start_c
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskSnapshot(IZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_14

    .line 4611
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4609
    return-object v2

    .line 4611
    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getTasks(I)Ljava/util/List;
    .registers 3
    .param p1, "maxNum"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 2583
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getFilteredTasks(III)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;
    .registers 2

    .line 4941
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method public getTopPackageName()Ljava/lang/String;
    .registers 7

    .line 7637
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7638
    const-string v1, "focus_app"

    .line 7639
    .local v1, "focusedApp":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 7640
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v2, :cond_21

    .line 7641
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    .line 7642
    .local v3, "task":Lcom/android/server/wm/TaskRecord;
    if-eqz v3, :cond_21

    .line 7643
    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 7644
    .local v4, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_21

    .line 7645
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v5

    .line 7649
    .end local v3  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v4  # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_21
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 7650
    .end local v1  # "focusedApp":Ljava/lang/String;
    .end local v2  # "stack":Lcom/android/server/wm/ActivityStack;
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getUidState(I)I
    .registers 3
    .param p1, "uid"  # I

    .line 6064
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MirrorActiveUids;->getUidState(I)I

    move-result v0

    return v0
.end method

.method public getUriPermissionOwnerForActivity(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 7
    .param p1, "activityToken"  # Landroid/os/IBinder;

    .line 4345
    const-string v0, "getUriPermissionOwnerForActivity"

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 4346
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4347
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4348
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_1e

    .line 4352
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/uri/UriPermissionOwner;->getExternalToken()Landroid/os/Binder;

    move-result-object v2

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 4349
    :cond_1e
    :try_start_1e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity does not exist; token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "activityToken":Landroid/os/IBinder;
    throw v2

    .line 4353
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "activityToken":Landroid/os/IBinder;
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_1e .. :try_end_37} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getUserManager()Lcom/android/server/pm/UserManagerService;
    .registers 3

    .line 908
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    if-nez v0, :cond_12

    .line 909
    const-string v0, "user"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 910
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService;

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 912
    .end local v0  # "b":Landroid/os/IBinder;
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-object v0
.end method

.method handleIncomingUser(IIILjava/lang/String;)I
    .registers 13
    .param p1, "callingPid"  # I
    .param p2, "callingUid"  # I
    .param p3, "userId"  # I
    .param p4, "name"  # Ljava/lang/String;

    .line 1458
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public hasSystemAlertWindowPermission(IILjava/lang/String;)Z
    .registers 8
    .param p1, "callingUid"  # I
    .param p2, "callingPid"  # I
    .param p3, "callingPackage"  # Ljava/lang/String;

    .line 931
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsService()Lcom/android/server/appop/AppOpsService;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p1, p3}, Lcom/android/server/appop/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v0

    .line 933
    .local v0, "mode":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1a

    .line 934
    const-string v3, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-static {v3, p2, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_18

    goto :goto_19

    :cond_18
    move v1, v2

    :goto_19
    return v1

    .line 937
    :cond_1a
    if-nez v0, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    return v1
.end method

.method hasUserRestriction(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "restriction"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 924
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public hook_Activity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Z)Z
    .registers 26
    .param p1, "callerPkg"  # Ljava/lang/String;
    .param p2, "calleePkg"  # Ljava/lang/String;
    .param p3, "callingPkg"  # Ljava/lang/String;
    .param p4, "intent"  # Landroid/content/Intent;
    .param p5, "isInterceptV2"  # Z

    .line 7674
    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    if-eqz v13, :cond_a5

    .line 7675
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopPackageName()Ljava/lang/String;

    move-result-object v11

    .line 7677
    .local v11, "focusedApp":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/android/server/hips/utils/HipsUtils;->isSystemReference(Ljava/lang/String;)Z

    move-result v10

    .line 7678
    .local v10, "isCallerSystemApp":Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/hips/utils/HipsUtils;->isSystemReference(Ljava/lang/String;)Z

    move-result v9

    .line 7679
    .local v9, "isCalleeSystemApp":Z
    if-eqz v12, :cond_1b

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    move v8, v0

    .line 7681
    .local v8, "isFgAction":Z
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStats:Lcom/android/server/hips/intercept/InterceptionStats;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    xor-int/lit8 v17, v14, 0x1

    move v1, v8

    move v2, v10

    move v3, v9

    move/from16 v4, p5

    move-object/from16 v7, v16

    move v15, v8

    .end local v8  # "isFgAction":Z
    .local v15, "isFgAction":Z
    move-object/from16 v8, p3

    move/from16 v18, v9

    .end local v9  # "isCalleeSystemApp":Z
    .local v18, "isCalleeSystemApp":Z
    move-object/from16 v9, p2

    move/from16 v19, v10

    .end local v10  # "isCallerSystemApp":Z
    .local v19, "isCallerSystemApp":Z
    move/from16 v10, v17

    move-object v14, v11

    .end local v11  # "focusedApp":Ljava/lang/String;
    .local v14, "focusedApp":Ljava/lang/String;
    move-object/from16 v11, p4

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/hips/intercept/InterceptionStats;->updateStats(ZZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Parcelable;)V

    .line 7684
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerService;->DEBUG_INTERCEPT:Z

    if-eqz v0, :cond_9b

    .line 7685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Freeze: try to start activity isFgAction:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", focusedApp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isCallerSystemApp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v19

    .end local v19  # "isCallerSystemApp":Z
    .local v1, "isCallerSystemApp":Z
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isCalleeSystemApp:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v18

    .end local v18  # "isCalleeSystemApp":Z
    .local v2, "isCalleeSystemApp":Z
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", callerPkg:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", calleePkg:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", isInterceptV2:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p5

    move-object v5, v14

    .end local v14  # "focusedApp":Ljava/lang/String;
    .local v5, "focusedApp":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "Interception"

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8

    .line 7684
    .end local v1  # "isCallerSystemApp":Z
    .end local v2  # "isCalleeSystemApp":Z
    .end local v5  # "focusedApp":Ljava/lang/String;
    .restart local v14  # "focusedApp":Ljava/lang/String;
    .restart local v18  # "isCalleeSystemApp":Z
    .restart local v19  # "isCallerSystemApp":Z
    :cond_9b
    move-object/from16 v3, p2

    move/from16 v4, p5

    move-object v5, v14

    move/from16 v2, v18

    move/from16 v1, v19

    .end local v14  # "focusedApp":Ljava/lang/String;
    .end local v18  # "isCalleeSystemApp":Z
    .end local v19  # "isCallerSystemApp":Z
    .restart local v1  # "isCallerSystemApp":Z
    .restart local v2  # "isCalleeSystemApp":Z
    .restart local v5  # "focusedApp":Ljava/lang/String;
    goto :goto_a8

    .line 7674
    .end local v1  # "isCallerSystemApp":Z
    .end local v2  # "isCalleeSystemApp":Z
    .end local v5  # "focusedApp":Ljava/lang/String;
    .end local v15  # "isFgAction":Z
    :cond_a5
    move-object/from16 v3, p2

    move v4, v14

    .line 7698
    :goto_a8
    const/4 v0, 0x0

    return v0
.end method

.method hook_activityFreezePreProcess(Lcom/android/server/wm/WindowProcessController;)V
    .registers 6
    .param p1, "wpc"  # Lcom/android/server/wm/WindowProcessController;

    .line 7609
    if-eqz p1, :cond_37

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 7610
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 7611
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_FREEZE:Z

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Freeze: active resume unfreeze "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7612
    :cond_28
    iget v0, p1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v3

    aput v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->forceUnfreezeProcessPkgInnerLocked(I[I)V

    .line 7615
    :cond_37
    return-void
.end method

.method increaseConfigurationSeqLocked()I
    .registers 3

    .line 882
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    .line 883
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    return v0
.end method

.method public initialize(Lcom/android/server/firewall/IntentFirewall;Lcom/android/server/am/PendingIntentController;Landroid/os/Looper;)V
    .registers 12
    .param p1, "intentFirewall"  # Lcom/android/server/firewall/IntentFirewall;
    .param p2, "intentController"  # Lcom/android/server/am/PendingIntentController;
    .param p3, "looper"  # Landroid/os/Looper;

    .line 849
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {v0, p0, p3}, Lcom/android/server/wm/ActivityTaskManagerService$H;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 850
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    .line 851
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    .line 852
    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v0

    .line 853
    .local v0, "systemDir":Ljava/io/File;
    new-instance v7, Lcom/android/server/wm/AppWarnings;

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    move-object v1, v7

    move-object v2, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppWarnings;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/io/File;)V

    iput-object v7, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    .line 854
    new-instance v1, Lcom/android/server/wm/CompatModePackages;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/wm/CompatModePackages;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/io/File;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    .line 855
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    .line 857
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 858
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 859
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    const/4 v2, 0x1

    iput v2, v1, Landroid/content/res/Configuration;->seq:I

    iput v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    .line 860
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->createStackSupervisor()Lcom/android/server/wm/ActivityStackSupervisor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 861
    new-instance v1, Lcom/android/server/wm/RootActivityContainer;

    invoke-direct {v1, p0}, Lcom/android/server/wm/RootActivityContainer;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 862
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootActivityContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 864
    new-instance v1, Lcom/android/server/wm/TaskChangeNotificationController;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/wm/TaskChangeNotificationController;-><init>(Ljava/lang/Object;Lcom/android/server/wm/ActivityStackSupervisor;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 866
    new-instance v1, Lcom/android/server/wm/LockTaskController;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/wm/LockTaskController;-><init>(Landroid/content/Context;Lcom/android/server/wm/ActivityStackSupervisor;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 867
    new-instance v1, Lcom/android/server/wm/ActivityStartController;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivityStartController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 868
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->createRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 869
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->setRecentTasks(Lcom/android/server/wm/RecentTasks;)V

    .line 870
    new-instance v1, Lcom/android/server/wm/VrController;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-direct {v1, v2}, Lcom/android/server/wm/VrController;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    .line 871
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 872
    return-void
.end method

.method public installSystemProviders()V
    .registers 2

    .line 758
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFontScaleSettingObserver:Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;

    .line 759
    return-void
.end method

.method public final isActivityStartAllowedOnDisplay(ILandroid/content/Intent;Ljava/lang/String;I)Z
    .registers 16
    .param p1, "displayId"  # I
    .param p2, "intent"  # Landroid/content/Intent;
    .param p3, "resolvedType"  # Ljava/lang/String;
    .param p4, "userId"  # I

    .line 1571
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1572
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1573
    .local v1, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1577
    .local v2, "origId":J
    :try_start_c
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v5, -0x2710

    .line 1579
    invoke-static {v0, v0, v5}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v10

    .line 1577
    move-object v5, p2

    move-object v6, p3

    move v9, p4

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 1581
    .local v4, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v5, v4, p4}, Landroid/app/ActivityManagerInternal;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    move-object v4, v5

    .line 1583
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_3e

    :try_start_27
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1584
    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v6, p1, v1, v0, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->canPlaceEntityOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v6

    monitor-exit v5
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_38

    .line 1588
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1584
    return v6

    .line 1586
    :catchall_38
    move-exception v6

    :try_start_39
    monitor-exit v5
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    :try_start_3a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "callingUid":I
    .end local v1  # "callingPid":I
    .end local v2  # "origId":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "displayId":I
    .end local p2  # "intent":Landroid/content/Intent;
    .end local p3  # "resolvedType":Ljava/lang/String;
    .end local p4  # "userId":I
    throw v6
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_3e

    .line 1588
    .end local v4  # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v0  # "callingUid":I
    .restart local v1  # "callingPid":I
    .restart local v2  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "displayId":I
    .restart local p2  # "intent":Landroid/content/Intent;
    .restart local p3  # "resolvedType":Ljava/lang/String;
    .restart local p4  # "userId":I
    :catchall_3e
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method isActivityStartsLoggingEnabled()Z
    .registers 2

    .line 5492
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isActivityStartsLoggingEnabled()Z

    move-result v0

    return v0
.end method

.method public isAssistDataAllowedOnCurrentActivity()Z
    .registers 5

    .line 3796
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3797
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 3798
    .local v1, "focusedStack":Lcom/android/server/wm/ActivityStack;
    const/4 v2, 0x0

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeAssistant()Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_31

    .line 3802
    :cond_14
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 3803
    .local v3, "activity":Lcom/android/server/wm/ActivityRecord;
    if-nez v3, :cond_1f

    .line 3804
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 3806
    :cond_1f
    :try_start_1f
    iget v2, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    move v1, v2

    .line 3807
    .end local v3  # "activity":Lcom/android/server/wm/ActivityRecord;
    .local v1, "userId":I
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3808
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyCache;->getScreenCaptureDisabled(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 3799
    .local v1, "focusedStack":Lcom/android/server/wm/ActivityStack;
    :cond_31
    :goto_31
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 3807
    .end local v1  # "focusedStack":Lcom/android/server/wm/ActivityStack;
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method isAssociatedCompanionApp(II)Z
    .registers 5
    .param p1, "userId"  # I
    .param p2, "uid"  # I

    .line 6148
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompanionAppUidsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 6149
    .local v0, "allUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v0, :cond_10

    .line 6150
    const/4 v1, 0x0

    return v1

    .line 6152
    :cond_10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method isBackgroundActivityStartsEnabled()Z
    .registers 2

    .line 5496
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isBackgroundActivityStartsEnabled()Z

    move-result v0

    return v0
.end method

.method isBooted()Z
    .registers 2

    .line 5749
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isBooted()Z

    move-result v0

    return v0
.end method

.method isBooting()Z
    .registers 2

    .line 5741
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isBooting()Z

    move-result v0

    return v0
.end method

.method public isControllerAMonkey()Z
    .registers 3

    .line 2569
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2570
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mControllerIsAMonkey:Z

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 2571
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method isDeviceOwner(I)Z
    .registers 3
    .param p1, "uid"  # I

    .line 6073
    if-ltz p1, :cond_8

    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDeviceOwnerUid:I

    if-ne v0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isGetTasksAllowed(Ljava/lang/String;II)Z
    .registers 9
    .param p1, "caller"  # Ljava/lang/String;
    .param p2, "callingPid"  # I
    .param p3, "callingUid"  # I

    .line 3632
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 3634
    return v1

    .line 3637
    :cond_c
    const-string v0, "android.permission.REAL_GET_TASKS"

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->checkGetTasksPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    move v0, v1

    .line 3639
    .local v0, "allowed":Z
    if-nez v0, :cond_6e

    .line 3640
    const-string v1, "android.permission.GET_TASKS"

    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->checkGetTasksPermission(Ljava/lang/String;II)I

    move-result v1

    const-string v2, ": caller "

    const-string v3, "ActivityTaskManager"

    if-nez v1, :cond_50

    .line 3647
    :try_start_25
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/content/pm/IPackageManager;->isUidPrivileged(I)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 3648
    const/4 v0, 0x1

    .line 3649
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v1, :cond_4e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is using old GET_TASKS but privileged; allowing"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_4e} :catch_4f

    .line 3653
    :cond_4e
    goto :goto_50

    .line 3652
    :catch_4f
    move-exception v1

    .line 3655
    :cond_50
    :goto_50
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TASKS:Z

    if-eqz v1, :cond_6e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not hold REAL_GET_TASKS; limiting output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3658
    :cond_6e
    return v0
.end method

.method public isImmersive(Landroid/os/IBinder;)Z
    .registers 5
    .param p1, "token"  # Landroid/os/IBinder;

    .line 1921
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1922
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1923
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_13

    .line 1926
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1924
    :cond_13
    :try_start_13
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "token":Landroid/os/IBinder;
    throw v2

    .line 1927
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "token":Landroid/os/IBinder;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isInLockTaskMode()Z
    .registers 2

    .line 3005
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskModeState()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isInMultiWindowMode(Landroid/os/IBinder;)Z
    .registers 8
    .param p1, "token"  # Landroid/os/IBinder;

    .line 4152
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4154
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_34

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4155
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 4156
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v4, 0x0

    if-nez v3, :cond_19

    .line 4157
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_2e

    .line 4165
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4157
    return v4

    .line 4161
    :cond_19
    :try_start_19
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->inMultiWindowMode()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isMzWindowMode()Z

    move-result v5

    if-nez v5, :cond_26

    const/4 v4, 0x1

    :cond_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_2e

    .line 4165
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4161
    return v4

    .line 4163
    .end local v3  # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_2e
    move-exception v3

    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "origId":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "token":Landroid/os/IBinder;
    throw v3
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_34

    .line 4165
    .restart local v0  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "token":Landroid/os/IBinder;
    :catchall_34
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isInPictureInPictureMode(Landroid/os/IBinder;)Z
    .registers 6
    .param p1, "token"  # Landroid/os/IBinder;

    .line 4171
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4173
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_20

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4174
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->isInPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_1a

    .line 4177
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4174
    return v3

    .line 4175
    :catchall_1a
    move-exception v3

    :try_start_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    :try_start_1c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "origId":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "token":Landroid/os/IBinder;
    throw v3
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_20

    .line 4177
    .restart local v0  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "token":Landroid/os/IBinder;
    :catchall_20
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method isKeyguardLocked()Z
    .registers 2

    .line 4950
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method public isRootVoiceInteraction(Landroid/os/IBinder;)Z
    .registers 5
    .param p1, "token"  # Landroid/os/IBinder;

    .line 3838
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3839
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3840
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_12

    .line 3841
    const/4 v2, 0x0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 3843
    :cond_12
    :try_start_12
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->rootVoiceInteraction:Z

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 3844
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method isSameApp(ILjava/lang/String;)Z
    .registers 6
    .param p1, "callingUid"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 2491
    if-eqz p1, :cond_1f

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_1f

    .line 2492
    if-nez p2, :cond_a

    .line 2493
    const/4 v0, 0x0

    return v0

    .line 2495
    :cond_a
    :try_start_a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 2497
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2495
    invoke-interface {v0, p2, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 2498
    .local v0, "uid":I
    invoke-static {p1, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1c} :catch_1d

    return v1

    .line 2500
    .end local v0  # "uid":I
    :catch_1d
    move-exception v0

    goto :goto_20

    .line 2502
    :cond_1f
    nop

    .line 2503
    :goto_20
    const/4 v0, 0x1

    return v0
.end method

.method isSleepingLocked()Z
    .registers 2

    .line 5566
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    return v0
.end method

.method isSleepingOrShuttingDownLocked()Z
    .registers 2

    .line 5562
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingLocked()Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public isTopActivityImmersive()Z
    .registers 4

    .line 1932
    const-string v0, "isTopActivityImmersive"

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1933
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1934
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1935
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_18

    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1936
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isTopOfTask(Landroid/os/IBinder;)Z
    .registers 5
    .param p1, "token"  # Landroid/os/IBinder;

    .line 3076
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3077
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3078
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-ne v2, v1, :cond_18

    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 3079
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isTopPackageRequest(ILjava/lang/String;)Z
    .registers 5
    .param p1, "pid"  # I
    .param p2, "caller"  # Ljava/lang/String;

    .line 7656
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->isVisible(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 7657
    return v1

    .line 7659
    :cond_8
    if-eqz p2, :cond_20

    const-string v0, "android"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_20

    .line 7662
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 7663
    return v1

    .line 7666
    :cond_1e
    const/4 v0, 0x0

    return v0

    .line 7660
    :cond_20
    :goto_20
    return v1
.end method

.method isUidForeground(I)Z
    .registers 3
    .param p1, "uid"  # I

    .line 6069
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->isAnyNonToastWindowVisibleForUid(I)Z

    move-result v0

    return v0
.end method

.method public isVisible(ILjava/lang/String;)Z
    .registers 4
    .param p1, "pid"  # I
    .param p2, "caller"  # Ljava/lang/String;

    .line 7670
    invoke-static {}, Lcom/meizu/pps/observer/PPSProcessManager;->getInstance()Lcom/meizu/pps/observer/PPSProcessManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/meizu/pps/observer/PPSProcessManager;->isVisible(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public keyguardGoingAway(I)V
    .registers 6
    .param p1, "flags"  # I

    .line 3940
    const-string v0, "keyguardGoingAway"

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 3941
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3943
    .local v0, "token":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_23

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3944
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/KeyguardController;->keyguardGoingAway(I)V

    .line 3945
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_1d

    :try_start_15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_23

    .line 3947
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3948
    nop

    .line 3949
    return-void

    .line 3945
    :catchall_1d
    move-exception v3

    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "token":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "flags":I
    throw v3
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_23

    .line 3947
    .restart local v0  # "token":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "flags":I
    :catchall_23
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public synthetic lambda$applyUpdateLockStateLocked$0$ActivityTaskManagerService(ZLcom/android/server/wm/ActivityRecord;)V
    .registers 5
    .param p1, "nextState"  # Z
    .param p2, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 1907
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v0

    if-eq v0, p1, :cond_37

    .line 1908
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IMMERSIVE:Z

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Applying new update lock state \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\' for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    :cond_2a
    if-eqz p1, :cond_32

    .line 1911
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->acquire()V

    goto :goto_37

    .line 1913
    :cond_32
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->release()V

    .line 1916
    :cond_37
    :goto_37
    return-void
.end method

.method public synthetic lambda$applyUpdateVrModeLocked$5$ActivityTaskManagerService(Lcom/android/server/wm/ActivityRecord;)V
    .registers 8
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 4880
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/VrController;->onVrModeChanged(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 4881
    return-void

    .line 4883
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4884
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v1}, Lcom/android/server/wm/VrController;->shouldDisableNonVrUiLocked()Z

    move-result v1

    .line 4885
    .local v1, "disableNonVrUi":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->disableNonVrUi(Z)V

    .line 4886
    if-eqz v1, :cond_28

    .line 4889
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x2

    aput v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/server/wm/RootActivityContainer;->removeStacksInWindowingModes([I)V

    .line 4891
    .end local v1  # "disableNonVrUi":Z
    :cond_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4892
    return-void

    .line 4891
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$enterPictureInPictureMode$4$ActivityTaskManagerService(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;)V
    .registers 12
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "params"  # Landroid/app/PictureInPictureParams;

    .line 4214
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4216
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v1, p2}, Landroid/app/PictureInPictureParams;->copyOnlySet(Landroid/app/PictureInPictureParams;)V

    .line 4217
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v1}, Landroid/app/PictureInPictureParams;->getAspectRatio()F

    move-result v1

    .line 4218
    .local v1, "aspectRatio":F
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v2}, Landroid/app/PictureInPictureParams;->getActions()Ljava/util/List;

    move-result-object v2

    .line 4220
    .local v2, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 4221
    invoke-virtual {v4}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 4222
    .local v3, "sourceBounds":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const-string v5, "enterPictureInPictureMode"

    invoke-virtual {v4, p1, v3, v1, v5}, Lcom/android/server/wm/RootActivityContainer;->moveActivityToPinnedStack(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;FLjava/lang/String;)V

    .line 4224
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 4225
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v4, v1}, Lcom/android/server/wm/ActivityStack;->setPictureInPictureAspectRatio(F)V

    .line 4226
    invoke-virtual {v4, v2}, Lcom/android/server/wm/ActivityStack;->setPictureInPictureActions(Ljava/util/List;)V

    .line 4227
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    iget-boolean v8, p1, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    invoke-static {v5, v6, v7, v8}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logPictureInPictureEnter(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 4229
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->logPictureInPictureArgs(Landroid/app/PictureInPictureParams;)V

    .line 4230
    .end local v1  # "aspectRatio":F
    .end local v2  # "actions":Ljava/util/List;, "Ljava/util/List<Landroid/app/RemoteAction;>;"
    .end local v3  # "sourceBounds":Landroid/graphics/Rect;
    .end local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4231
    return-void

    .line 4230
    :catchall_48
    move-exception v1

    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$notifyEnterAnimationComplete$1$ActivityTaskManagerService(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"  # Landroid/os/IBinder;

    .line 3090
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3091
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3092
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v2
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_24

    if-eqz v2, :cond_1f

    .line 3094
    :try_start_12
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v2, v3}, Landroid/app/IApplicationThread;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1d} :catch_1e
    .catchall {:try_start_12 .. :try_end_1d} :catchall_24

    .line 3096
    goto :goto_1f

    .line 3095
    :catch_1e
    move-exception v2

    .line 3098
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1f
    :goto_1f
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3100
    return-void

    .line 3098
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$onScreenAwakeChanged$3$ActivityTaskManagerService(Z)V
    .registers 4
    .param p1, "isAwake"  # Z

    .line 3410
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 3411
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

    invoke-interface {v1, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;->onAwakeStateChanged(Z)V

    .line 3410
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3413
    .end local v0  # "i":I
    :cond_18
    return-void
.end method

.method public synthetic lambda$postFinishBooting$7$ActivityTaskManagerService(ZZ)V
    .registers 5
    .param p1, "finishBooting"  # Z
    .param p2, "enableScreen"  # Z

    .line 5754
    if-eqz p1, :cond_7

    .line 5755
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->finishBooting()V

    .line 5757
    :cond_7
    if-eqz p2, :cond_12

    .line 5758
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->enableScreenAfterBoot(Z)V

    .line 5760
    :cond_12
    return-void
.end method

.method public synthetic lambda$scheduleAppGcsLocked$8$ActivityTaskManagerService()V
    .registers 2

    .line 5926
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->scheduleAppGcs()V

    return-void
.end method

.method public synthetic lambda$setLockScreenShown$2$ActivityTaskManagerService(Z)V
    .registers 4
    .param p1, "keyguardShowing"  # Z

    .line 3402
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 3403
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

    invoke-interface {v1, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;->onKeyguardStateChanged(Z)V

    .line 3402
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3405
    .end local v0  # "i":I
    :cond_18
    return-void
.end method

.method public synthetic lambda$updateSleepIfNeededLocked$6$ActivityTaskManagerService()V
    .registers 2

    .line 5687
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAccessControlService:Lcom/meizu/server/AccessControlService;

    invoke-virtual {v0}, Lcom/meizu/server/AccessControlService;->resetStatus()Z

    return-void
.end method

.method public launchAssistIntent(Landroid/content/Intent;ILjava/lang/String;ILandroid/os/Bundle;)Z
    .registers 20
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "requestType"  # I
    .param p3, "hint"  # Ljava/lang/String;
    .param p4, "userHandle"  # I
    .param p5, "args"  # Landroid/os/Bundle;

    .line 3568
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const-wide/16 v11, 0x1f4

    const/4 v13, 0x0

    move-object v0, p0

    move/from16 v1, p2

    move-object v2, p1

    move-object/from16 v3, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v13}, Lcom/android/server/wm/ActivityTaskManagerService;->enqueueAssistContext(ILandroid/content/Intent;Ljava/lang/String;Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZILandroid/os/Bundle;JI)Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method logAppTooSlow(Lcom/android/server/wm/WindowProcessController;JLjava/lang/String;)V
    .registers 5
    .param p1, "app"  # Lcom/android/server/wm/WindowProcessController;
    .param p2, "startTime"  # J
    .param p4, "msg"  # Ljava/lang/String;

    .line 6090
    return-void
.end method

.method public moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
    .registers 9
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "nonRoot"  # Z

    .line 2246
    const-string v0, "moveActivityTaskToBack"

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 2247
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2248
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_3f

    .line 2250
    .local v1, "origId":J
    const/4 v3, 0x0

    if-nez p2, :cond_14

    const/4 v4, 0x1

    goto :goto_15

    :cond_14
    move v4, v3

    :goto_15
    :try_start_15
    invoke-static {p1, v4}, Lcom/android/server/wm/ActivityRecord;->getTaskForActivityLocked(Landroid/os/IBinder;Z)I

    move-result v4

    .line 2251
    .local v4, "taskId":I
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v5

    .line 2252
    .local v5, "task":Lcom/android/server/wm/TaskRecord;
    if-eqz v5, :cond_31

    .line 2253
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->getStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStack;->moveTaskToBackLocked(I)Z

    move-result v3
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_3a

    .line 2256
    :try_start_29
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_3f

    .line 2253
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 2256
    .end local v4  # "taskId":I
    .end local v5  # "task":Lcom/android/server/wm/TaskRecord;
    :cond_31
    :try_start_31
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2257
    nop

    .line 2258
    .end local v1  # "origId":J
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2259
    return v3

    .line 2256
    .restart local v1  # "origId":J
    :catchall_3a
    move-exception v3

    :try_start_3b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "token":Landroid/os/IBinder;
    .end local p2  # "nonRoot":Z
    throw v3

    .line 2258
    .end local v1  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "token":Landroid/os/IBinder;
    .restart local p2  # "nonRoot":Z
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public moveStackToDisplay(II)V
    .registers 9
    .param p1, "stackId"  # I
    .param p2, "displayId"  # I

    .line 3479
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const-string v2, "moveStackToDisplay()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3481
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3482
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_49

    .line 3484
    .local v1, "ident":J
    :try_start_13
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v3, :cond_35

    const-string v3, "ActivityTaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveStackToDisplay: moving stackId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to displayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3486
    :cond_35
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, p2, v4}, Lcom/android/server/wm/RootActivityContainer;->moveStackToDisplay(IIZ)V
    :try_end_3b
    .catchall {:try_start_13 .. :try_end_3b} :catchall_44

    .line 3488
    :try_start_3b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3489
    nop

    .line 3490
    .end local v1  # "ident":J
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3b .. :try_end_40} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3491
    return-void

    .line 3488
    .restart local v1  # "ident":J
    :catchall_44
    move-exception v3

    :try_start_45
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "stackId":I
    .end local p2  # "displayId":I
    throw v3

    .line 3490
    .end local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "stackId":I
    .restart local p2  # "displayId":I
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_45 .. :try_end_4b} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public moveTaskToFront(Landroid/app/IApplicationThread;Ljava/lang/String;IILandroid/os/Bundle;)V
    .registers 14
    .param p1, "appThread"  # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "taskId"  # I
    .param p4, "flags"  # I
    .param p5, "bOptions"  # Landroid/os/Bundle;

    .line 2417
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.REORDER_TASKS"

    const-string v2, "moveTaskToFront()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2419
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveTaskToFront: moving taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2421
    nop

    .line 2422
    invoke-static {p5}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v6

    const/4 v7, 0x0

    .line 2421
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityTaskManagerService;->moveTaskToFrontLocked(Landroid/app/IApplicationThread;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;Z)V

    .line 2423
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2424
    return-void

    .line 2423
    :catchall_3c
    move-exception v1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method moveTaskToFrontLocked(Landroid/app/IApplicationThread;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;Z)V
    .registers 28
    .param p1, "appThread"  # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "taskId"  # I
    .param p4, "flags"  # I
    .param p5, "options"  # Lcom/android/server/wm/SafeActivityOptions;
    .param p6, "fromRecents"  # Z

    .line 2430
    move-object/from16 v7, p0

    move-object/from16 v15, p2

    move/from16 v14, p3

    move-object/from16 v13, p5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v18

    .line 2431
    .local v18, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 2432
    .local v12, "callingUid":I
    invoke-virtual {v7, v12, v15}, Lcom/android/server/wm/ActivityTaskManagerService;->isSameApp(ILjava/lang/String;)Z

    move-result v0

    const-string v11, "ActivityTaskManager"

    if-eqz v0, :cond_e1

    .line 2438
    const/4 v4, -0x1

    const/4 v5, -0x1

    const-string v6, "Task to front"

    move-object/from16 v1, p0

    move/from16 v2, v18

    move v3, v12

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityTaskManagerService;->checkAppSwitchAllowedLocked(IIIILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 2439
    invoke-static/range {p5 .. p5}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 2440
    return-void

    .line 2442
    :cond_2b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2443
    .local v1, "origId":J
    const/4 v0, 0x0

    .line 2444
    .local v0, "callerApp":Lcom/android/server/wm/WindowProcessController;
    if-eqz p1, :cond_38

    .line 2445
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    move-object v3, v0

    goto :goto_39

    .line 2444
    :cond_38
    move-object v3, v0

    .line 2447
    .end local v0  # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v3, "callerApp":Lcom/android/server/wm/WindowProcessController;
    :goto_39
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    const/4 v4, 0x0

    const-string v5, "moveTaskToFront"

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 2449
    .local v5, "starter":Lcom/android/server/wm/ActivityStarter;
    const/4 v0, -0x1

    const/4 v6, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object v8, v5

    move v9, v12

    move/from16 v10, v18

    move-object v4, v11

    move-object/from16 v11, p2

    move/from16 v20, v12

    .end local v12  # "callingUid":I
    .local v20, "callingUid":I
    move v12, v0

    move v13, v6

    move v6, v14

    move-object v14, v3

    move-object/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v19

    invoke-virtual/range {v8 .. v17}, Lcom/android/server/wm/ActivityStarter;->shouldAbortBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 2451
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBackgroundActivityStartsEnabled()Z

    move-result v0

    if-nez v0, :cond_6c

    .line 2452
    return-void

    .line 2456
    :cond_6c
    :try_start_6c
    iget-object v0, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0, v6}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 2457
    .local v0, "task":Lcom/android/server/wm/TaskRecord;
    if-nez v0, :cond_8f

    .line 2458
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find task for id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    invoke-static/range {p5 .. p5}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V
    :try_end_8b
    .catchall {:try_start_6c .. :try_end_8b} :catchall_d8

    .line 2482
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2460
    return-void

    .line 2462
    :cond_8f
    :try_start_8f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/TaskRecord;)Z

    move-result v8

    if-eqz v8, :cond_a5

    .line 2463
    const-string v8, "moveTaskToFront: Attempt to violate Lock Task Mode"

    invoke-static {v4, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2464
    invoke-static/range {p5 .. p5}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V
    :try_end_a1
    .catchall {:try_start_8f .. :try_end_a1} :catchall_d8

    .line 2482
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2465
    return-void

    .line 2467
    :cond_a5
    move-object/from16 v14, p5

    if-eqz v14, :cond_b3

    .line 2468
    :try_start_a9
    iget-object v4, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v14, v4}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v4

    move-object v11, v4

    goto :goto_b4

    .line 2482
    .end local v0  # "task":Lcom/android/server/wm/TaskRecord;
    :catchall_b1
    move-exception v0

    goto :goto_db

    .line 2469
    .restart local v0  # "task":Lcom/android/server/wm/TaskRecord;
    :cond_b3
    const/4 v11, 0x0

    :goto_b4
    nop

    .line 2470
    .local v11, "realOptions":Landroid/app/ActivityOptions;
    iget-object v8, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const-string v12, "moveTaskToFront"

    const/4 v13, 0x0

    move-object v9, v0

    move/from16 v10, p4

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/wm/ActivityStackSupervisor;->findTaskToMoveToFront(Lcom/android/server/wm/TaskRecord;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V

    .line 2473
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4
    :try_end_c4
    .catchall {:try_start_a9 .. :try_end_c4} :catchall_b1

    .line 2474
    .local v4, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_d1

    .line 2478
    const/4 v8, 0x0

    const/4 v9, 0x1

    move/from16 v10, p6

    const/4 v12, 0x0

    :try_start_cb
    invoke-virtual {v4, v12, v8, v9, v10}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZZ)V
    :try_end_ce
    .catchall {:try_start_cb .. :try_end_ce} :catchall_cf

    goto :goto_d3

    .line 2482
    .end local v0  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v4  # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v11  # "realOptions":Landroid/app/ActivityOptions;
    :catchall_cf
    move-exception v0

    goto :goto_dd

    .line 2474
    .restart local v0  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v4  # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v11  # "realOptions":Landroid/app/ActivityOptions;
    :cond_d1
    move/from16 v10, p6

    .line 2482
    .end local v0  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v4  # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v11  # "realOptions":Landroid/app/ActivityOptions;
    :goto_d3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2483
    nop

    .line 2484
    return-void

    .line 2482
    :catchall_d8
    move-exception v0

    move-object/from16 v14, p5

    :goto_db
    move/from16 v10, p6

    :goto_dd
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2433
    .end local v1  # "origId":J
    .end local v3  # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .end local v5  # "starter":Lcom/android/server/wm/ActivityStarter;
    .end local v20  # "callingUid":I
    .restart local v12  # "callingUid":I
    :cond_e1
    move-object v4, v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: moveTaskToFrontLocked() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2434
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " as package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2435
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public moveTaskToStack(IIZ)V
    .registers 16
    .param p1, "taskId"  # I
    .param p2, "stackId"  # I
    .param p3, "toTop"  # Z

    .line 2630
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "moveTaskToStack()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2631
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2632
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_cd

    .line 2634
    .local v1, "ident":J
    :try_start_11
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    .line 2635
    .local v3, "task":Lcom/android/server/wm/TaskRecord;
    if-nez v3, :cond_37

    .line 2636
    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveTaskToStack: No task for id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_c8

    .line 2659
    :try_start_2f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_cd

    .line 2637
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2640
    :cond_37
    :try_start_37
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v4, :cond_61

    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveTaskToStack: moving task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to stackId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " toTop="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2643
    :cond_61
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v4, p2}, Lcom/android/server/wm/RootActivityContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    move-object v11, v4

    .line 2644
    .local v11, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v11, :cond_b1

    .line 2648
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v4

    if-eqz v4, :cond_92

    .line 2652
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 2653
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateState(ILandroid/graphics/Rect;)V

    .line 2656
    :cond_7d
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v10, "moveTaskToStack"

    move-object v4, v3

    move-object v5, v11

    move v6, p3

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z
    :try_end_88
    .catchall {:try_start_37 .. :try_end_88} :catchall_c8

    .line 2659
    nop

    .end local v3  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v11  # "stack":Lcom/android/server/wm/ActivityStack;
    :try_start_89
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2660
    nop

    .line 2661
    .end local v1  # "ident":J
    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_89 .. :try_end_8e} :catchall_cd

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2662
    return-void

    .line 2649
    .restart local v1  # "ident":J
    .restart local v3  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v11  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_92
    :try_start_92
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveTaskToStack: Attempt to move task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to stack "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskId":I
    .end local p2  # "stackId":I
    .end local p3  # "toTop":Z
    throw v4

    .line 2645
    .restart local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskId":I
    .restart local p2  # "stackId":I
    .restart local p3  # "toTop":Z
    :cond_b1
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveTaskToStack: No stack for stackId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskId":I
    .end local p2  # "stackId":I
    .end local p3  # "toTop":Z
    throw v4
    :try_end_c8
    .catchall {:try_start_92 .. :try_end_c8} :catchall_c8

    .line 2659
    .end local v3  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v11  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskId":I
    .restart local p2  # "stackId":I
    .restart local p3  # "toTop":Z
    :catchall_c8
    move-exception v3

    :try_start_c9
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskId":I
    .end local p2  # "stackId":I
    .end local p3  # "toTop":Z
    throw v3

    .line 2661
    .end local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskId":I
    .restart local p2  # "stackId":I
    .restart local p3  # "toTop":Z
    :catchall_cd
    move-exception v1

    monitor-exit v0
    :try_end_cf
    .catchall {:try_start_c9 .. :try_end_cf} :catchall_cd

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public moveTasksToFullscreenStack(IZ)V
    .registers 9
    .param p1, "fromStackId"  # I
    .param p2, "onTop"  # Z

    .line 4103
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "moveTasksToFullscreenStack()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4105
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4106
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_3b

    .line 4108
    .local v1, "origId":J
    :try_start_11
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootActivityContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 4109
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v3, :cond_2d

    .line 4110
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 4114
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v4, v3, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;Z)V

    goto :goto_2d

    .line 4111
    :cond_25
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "You can\'t move tasks from non-standard stacks."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1  # "origId":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "fromStackId":I
    .end local p2  # "onTop":Z
    throw v4
    :try_end_2d
    .catchall {:try_start_11 .. :try_end_2d} :catchall_36

    .line 4117
    .end local v3  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v1  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "fromStackId":I
    .restart local p2  # "onTop":Z
    :cond_2d
    :goto_2d
    :try_start_2d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4118
    nop

    .line 4119
    .end local v1  # "origId":J
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4120
    return-void

    .line 4117
    .restart local v1  # "origId":J
    :catchall_36
    move-exception v3

    :try_start_37
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "fromStackId":I
    .end local p2  # "onTop":Z
    throw v3

    .line 4119
    .end local v1  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "fromStackId":I
    .restart local p2  # "onTop":Z
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public moveTopActivityToPinnedStack(ILandroid/graphics/Rect;)Z
    .registers 7
    .param p1, "stackId"  # I
    .param p2, "bounds"  # Landroid/graphics/Rect;

    .line 4133
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "moveTopActivityToPinnedStack()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4135
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4136
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v1, :cond_28

    .line 4141
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_30

    .line 4143
    .local v1, "ident":J
    :try_start_15
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootActivityContainer;->moveTopStackActivityToPinnedStack(I)Z

    move-result v3
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_23

    .line 4145
    :try_start_1b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_30

    .line 4143
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 4145
    :catchall_23
    move-exception v3

    :try_start_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "stackId":I
    .end local p2  # "bounds":Landroid/graphics/Rect;
    throw v3

    .line 4137
    .end local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "stackId":I
    .restart local p2  # "bounds":Landroid/graphics/Rect;
    :cond_28
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "moveTopActivityToPinnedStack:Device doesn\'t support picture-in-picture mode"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "stackId":I
    .end local p2  # "bounds":Landroid/graphics/Rect;
    throw v1

    .line 4147
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "stackId":I
    .restart local p2  # "bounds":Landroid/graphics/Rect;
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z
    .registers 8
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "destIntent"  # Landroid/content/Intent;
    .param p3, "resultCode"  # I
    .param p4, "resultData"  # Landroid/content/Intent;

    .line 2215
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2216
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2217
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_19

    .line 2218
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v2, v1, p2, p3, p4}, Lcom/android/server/wm/ActivityStack;->navigateUpToLocked(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;ILandroid/content/Intent;)Z

    move-result v2

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 2221
    :cond_19
    const/4 v2, 0x0

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 2222
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyActivityDrawn(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "token"  # Landroid/os/IBinder;

    .line 2064
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyActivityDrawn: token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_1d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2066
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootActivityContainer;->isInAnyStack(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2067
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_2f

    .line 2068
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 2070
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_1d .. :try_end_30} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2071
    return-void

    .line 2070
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public notifyEnterAnimationComplete(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"  # Landroid/os/IBinder;

    .line 3089
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$BXul1K8BX6JEv_ff3NT76qpeZGQ;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$BXul1K8BX6JEv_ff3NT76qpeZGQ;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 3101
    return-void
.end method

.method public notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"  # Landroid/os/IBinder;

    .line 3084
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleLaunchTaskBehindComplete(Landroid/os/IBinder;)V

    .line 3085
    return-void
.end method

.method public notifyPinnedStackAnimationEnded()V
    .registers 2

    .line 4479
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyPinnedStackAnimationEnded()V

    .line 4480
    return-void
.end method

.method public notifyPinnedStackAnimationStarted()V
    .registers 2

    .line 4473
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyPinnedStackAnimationStarted()V

    .line 4474
    return-void
.end method

.method notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V
    .registers 4
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "flush"  # Z

    .line 4946
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 4947
    return-void
.end method

.method public offsetPinnedStackBounds(ILandroid/graphics/Rect;III)V
    .registers 13
    .param p1, "stackId"  # I
    .param p2, "compareBounds"  # Landroid/graphics/Rect;
    .param p3, "xOffset"  # I
    .param p4, "yOffset"  # I
    .param p5, "animationDuration"  # I

    .line 2703
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "offsetPinnedStackBounds()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2705
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2707
    .local v0, "ident":J
    :try_start_b
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_a6

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2708
    if-nez p3, :cond_1d

    if-nez p4, :cond_1d

    .line 2709
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_a0

    .line 2731
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2709
    return-void

    .line 2711
    :cond_1d
    :try_start_1d
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootActivityContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2712
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v3, :cond_48

    .line 2713
    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "offsetPinnedStackBounds: stackId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " not found."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_1d .. :try_end_41} :catchall_a0

    .line 2731
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2714
    return-void

    .line 2716
    :cond_48
    :try_start_48
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_84

    .line 2720
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2721
    .local v4, "destBounds":Landroid/graphics/Rect;
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStack;->getAnimationOrCurrentBounds(Landroid/graphics/Rect;)V

    .line 2722
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_75

    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_64

    goto :goto_75

    .line 2726
    :cond_64
    invoke-virtual {v4, p3, p4}, Landroid/graphics/Rect;->offset(II)V

    .line 2727
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v4, p5, v6}, Lcom/android/server/wm/ActivityStack;->animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    .line 2729
    .end local v3  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v4  # "destBounds":Landroid/graphics/Rect;
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_48 .. :try_end_6d} :catchall_a0

    :try_start_6d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_a6

    .line 2731
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2732
    nop

    .line 2733
    return-void

    .line 2723
    .restart local v3  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v4  # "destBounds":Landroid/graphics/Rect;
    :cond_75
    :goto_75
    :try_start_75
    const-string v5, "ActivityTaskManager"

    const-string v6, "The current stack bounds does not matched! It may be obsolete."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_75 .. :try_end_7d} :catchall_a0

    .line 2731
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2724
    return-void

    .line 2717
    .end local v4  # "destBounds":Landroid/graphics/Rect;
    :cond_84
    :try_start_84
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stack: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " doesn\'t support animated resize."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "stackId":I
    .end local p2  # "compareBounds":Landroid/graphics/Rect;
    .end local p3  # "xOffset":I
    .end local p4  # "yOffset":I
    .end local p5  # "animationDuration":I
    throw v4

    .line 2729
    .end local v3  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "stackId":I
    .restart local p2  # "compareBounds":Landroid/graphics/Rect;
    .restart local p3  # "xOffset":I
    .restart local p4  # "yOffset":I
    .restart local p5  # "animationDuration":I
    :catchall_a0
    move-exception v3

    monitor-exit v2
    :try_end_a2
    .catchall {:try_start_84 .. :try_end_a2} :catchall_a0

    :try_start_a2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "stackId":I
    .end local p2  # "compareBounds":Landroid/graphics/Rect;
    .end local p3  # "xOffset":I
    .end local p4  # "yOffset":I
    .end local p5  # "animationDuration":I
    throw v3
    :try_end_a6
    .catchall {:try_start_a2 .. :try_end_a6} :catchall_a6

    .line 2731
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "stackId":I
    .restart local p2  # "compareBounds":Landroid/graphics/Rect;
    .restart local p3  # "xOffset":I
    .restart local p4  # "yOffset":I
    .restart local p5  # "animationDuration":I
    :catchall_a6
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onActivityManagerInternalAdded()V
    .registers 3

    .line 875
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 876
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 877
    const-class v1, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriGrantsManagerInternal;

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 878
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 879
    return-void

    .line 878
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onBackPressedOnTaskRoot(Landroid/os/IBinder;Landroid/app/IRequestFinishCallback;)V
    .registers 9
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "callback"  # Landroid/app/IRequestFinishCallback;

    .line 2387
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2388
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2389
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_11

    .line 2390
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2392
    :cond_11
    :try_start_11
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 2393
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->isSingleTaskInstance()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 2398
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    .line 2399
    .local v3, "task":Lcom/android/server/wm/TaskRecord;
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 2400
    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyBackPressedOnTaskRoot(Landroid/app/TaskInfo;)V
    :try_end_2a
    .catchall {:try_start_11 .. :try_end_2a} :catchall_3c

    .line 2401
    .end local v3  # "task":Lcom/android/server/wm/TaskRecord;
    goto :goto_37

    .line 2403
    :cond_2b
    :try_start_2b
    invoke-interface {p2}, Landroid/app/IRequestFinishCallback;->requestFinish()V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2e} :catch_2f
    .catchall {:try_start_2b .. :try_end_2e} :catchall_3c

    .line 2406
    goto :goto_37

    .line 2404
    :catch_2f
    move-exception v3

    .line 2405
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_30
    const-string v4, "ActivityTaskManager"

    const-string v5, "Failed to invoke request finish callback"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2408
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v3  # "e":Landroid/os/RemoteException;
    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2409
    return-void

    .line 2408
    :catchall_3c
    move-exception v1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onInitPowerManagement()V
    .registers 5

    .line 748
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 749
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->initPowerManagement()V

    .line 750
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 751
    .local v1, "pm":Landroid/os/PowerManager;
    const-class v2, Landroid/os/PowerManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManagerInternal;

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 752
    const/4 v2, 0x1

    const-string v3, "*voice*"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 753
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 754
    .end local v1  # "pm":Landroid/os/PowerManager;
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 755
    return-void

    .line 754
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onScreenAwakeChanged(Z)V
    .registers 4
    .param p1, "isAwake"  # Z

    .line 3409
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$Uli7s8UWTEj0IpBUtoST5bmgvKk;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$Uli7s8UWTEj0IpBUtoST5bmgvKk;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 3414
    return-void
.end method

.method onStartActivitySetDidAppSwitch()V
    .registers 3

    .line 4853
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDidAppSwitch:Z

    if-eqz v0, :cond_9

    .line 4859
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesAllowedTime:J

    goto :goto_c

    .line 4861
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDidAppSwitch:Z

    .line 4863
    :goto_c
    return-void
.end method

.method public onSystemReady()V
    .registers 4

    .line 733
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 734
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.software.cant_save_state"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHasHeavyWeightFeature:Z

    .line 736
    new-instance v1, Lcom/android/internal/app/AssistUtils;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 737
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v1}, Lcom/android/server/wm/VrController;->onSystemReady()V

    .line 738
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v1}, Lcom/android/server/wm/RecentTasks;->onSystemReadyLocked()V

    .line 739
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->onSystemReady()V

    .line 741
    const-string v1, "access_control"

    .line 742
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/meizu/server/AccessControlService;

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAccessControlService:Lcom/meizu/server/AccessControlService;

    .line 744
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 745
    return-void

    .line 744
    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V
    .registers 11
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "enterAnim"  # I
    .param p4, "exitAnim"  # I

    .line 1942
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1943
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1944
    .local v1, "self":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_11

    .line 1945
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1948
    :cond_11
    :try_start_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1950
    .local v2, "origId":J
    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {v1, v4, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1952
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/4 v5, 0x0

    invoke-virtual {v4, p2, p3, p4, v5}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V

    .line 1956
    :cond_2b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1957
    .end local v1  # "self":Lcom/android/server/wm/ActivityRecord;
    .end local v2  # "origId":J
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1958
    return-void

    .line 1957
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public positionTaskInStack(III)V
    .registers 16
    .param p1, "taskId"  # I
    .param p2, "stackId"  # I
    .param p3, "position"  # I

    .line 3958
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "positionTaskInStack()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3959
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3960
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_c1

    .line 3962
    .local v1, "ident":J
    :try_start_13
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v3, :cond_3d

    const-string v3, "ActivityTaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "positionTaskInStack: positioning task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " in stackId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " at position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3964
    :cond_3d
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    .line 3965
    .local v3, "task":Lcom/android/server/wm/TaskRecord;
    if-eqz v3, :cond_a5

    .line 3970
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v4, p2}, Lcom/android/server/wm/RootActivityContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    move-object v11, v4

    .line 3972
    .local v11, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v11, :cond_8e

    .line 3976
    invoke-virtual {v11}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v4

    if-eqz v4, :cond_72

    .line 3983
    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    if-ne v4, v11, :cond_5e

    .line 3985
    invoke-virtual {v11, v3, p3}, Lcom/android/server/wm/ActivityStack;->positionChildAt(Lcom/android/server/wm/TaskRecord;I)V

    goto :goto_69

    .line 3988
    :cond_5e
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "positionTaskInStack"

    move-object v4, v3

    move-object v5, v11

    move v6, p3

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;IIZZLjava/lang/String;)Z
    :try_end_69
    .catchall {:try_start_13 .. :try_end_69} :catchall_bc

    .line 3992
    .end local v3  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v11  # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_69
    :try_start_69
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3993
    nop

    .line 3994
    .end local v1  # "ident":J
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_69 .. :try_end_6e} :catchall_c1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3995
    return-void

    .line 3977
    .restart local v1  # "ident":J
    .restart local v3  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v11  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_72
    :try_start_72
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "positionTaskInStack: Attempt to change the position of task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " in/to non-standard stack"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskId":I
    .end local p2  # "stackId":I
    .end local p3  # "position":I
    throw v4

    .line 3973
    .restart local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskId":I
    .restart local p2  # "stackId":I
    .restart local p3  # "position":I
    :cond_8e
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "positionTaskInStack: no stack for id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskId":I
    .end local p2  # "stackId":I
    .end local p3  # "position":I
    throw v4

    .line 3966
    .end local v11  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskId":I
    .restart local p2  # "stackId":I
    .restart local p3  # "position":I
    :cond_a5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "positionTaskInStack: no task for id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskId":I
    .end local p2  # "stackId":I
    .end local p3  # "position":I
    throw v4
    :try_end_bc
    .catchall {:try_start_72 .. :try_end_bc} :catchall_bc

    .line 3992
    .end local v3  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskId":I
    .restart local p2  # "stackId":I
    .restart local p3  # "position":I
    :catchall_bc
    move-exception v3

    :try_start_bd
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskId":I
    .end local p2  # "stackId":I
    .end local p3  # "position":I
    throw v3

    .line 3994
    .end local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskId":I
    .restart local p2  # "stackId":I
    .restart local p3  # "position":I
    :catchall_c1
    move-exception v1

    monitor-exit v0
    :try_end_c3
    .catchall {:try_start_bd .. :try_end_c3} :catchall_c1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method postFinishBooting(ZZ)V
    .registers 5
    .param p1, "finishBooting"  # Z
    .param p2, "enableScreen"  # Z

    .line 5753
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$hgT7_BsCohDVg6qQfaw5Xpx0-yQ;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$hgT7_BsCohDVg6qQfaw5Xpx0-yQ;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 5761
    return-void
.end method

.method public registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "adapter"  # Landroid/view/RemoteAnimationAdapter;

    .line 4746
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    const-string v2, "registerRemoteAnimationForNextActivityStart"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4748
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/RemoteAnimationAdapter;->setCallingPidUid(II)V

    .line 4749
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4750
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_33

    .line 4752
    .local v1, "origId":J
    :try_start_1e
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/ActivityStartController;->registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_2e

    .line 4755
    :try_start_25
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4756
    nop

    .line 4757
    .end local v1  # "origId":J
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4758
    return-void

    .line 4755
    .restart local v1  # "origId":J
    :catchall_2e
    move-exception v3

    :try_start_2f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "adapter":Landroid/view/RemoteAnimationAdapter;
    throw v3

    .line 4757
    .end local v1  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "packageName":Ljava/lang/String;
    .restart local p2  # "adapter":Landroid/view/RemoteAnimationAdapter;
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public registerRemoteAnimations(Landroid/os/IBinder;Landroid/view/RemoteAnimationDefinition;)V
    .registers 8
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "definition"  # Landroid/view/RemoteAnimationDefinition;

    .line 4726
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    const-string v2, "registerRemoteAnimations"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4728
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/RemoteAnimationDefinition;->setCallingPidUid(II)V

    .line 4729
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4730
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4731
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_25

    .line 4732
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4734
    :cond_25
    :try_start_25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_3a

    .line 4736
    .local v2, "origId":J
    :try_start_29
    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityRecord;->registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_35

    .line 4738
    :try_start_2c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4739
    nop

    .line 4740
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2  # "origId":J
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4741
    return-void

    .line 4738
    .restart local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v2  # "origId":J
    :catchall_35
    move-exception v4

    :try_start_36
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "token":Landroid/os/IBinder;
    .end local p2  # "definition":Landroid/view/RemoteAnimationDefinition;
    throw v4

    .line 4740
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "token":Landroid/os/IBinder;
    .restart local p2  # "definition":Landroid/view/RemoteAnimationDefinition;
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public registerRemoteAnimationsForDisplay(ILandroid/view/RemoteAnimationDefinition;)V
    .registers 8
    .param p1, "displayId"  # I
    .param p2, "definition"  # Landroid/view/RemoteAnimationDefinition;

    .line 4763
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    const-string v2, "registerRemoteAnimations"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4765
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/RemoteAnimationDefinition;->setCallingPidUid(II)V

    .line 4766
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4767
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    .line 4768
    .local v1, "display":Lcom/android/server/wm/ActivityDisplay;
    if-nez v1, :cond_3d

    .line 4769
    const-string v2, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find display with id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4770
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_17 .. :try_end_39} :catchall_54

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4772
    :cond_3d
    :try_start_3d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_54

    .line 4774
    .local v2, "origId":J
    :try_start_41
    iget-object v4, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4, p2}, Lcom/android/server/wm/DisplayContent;->registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_4f

    .line 4776
    :try_start_46
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4777
    nop

    .line 4778
    .end local v1  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v2  # "origId":J
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_54

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4779
    return-void

    .line 4776
    .restart local v1  # "display":Lcom/android/server/wm/ActivityDisplay;
    .restart local v2  # "origId":J
    :catchall_4f
    move-exception v4

    :try_start_50
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "displayId":I
    .end local p2  # "definition":Landroid/view/RemoteAnimationDefinition;
    throw v4

    .line 4778
    .end local v1  # "display":Lcom/android/server/wm/ActivityDisplay;
    .end local v2  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "displayId":I
    .restart local p2  # "definition":Landroid/view/RemoteAnimationDefinition;
    :catchall_54
    move-exception v1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_54

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    .registers 4
    .param p1, "listener"  # Landroid/app/ITaskStackListener;

    .line 3536
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "registerTaskStackListener()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3538
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 3539
    return-void
.end method

.method public releaseActivityInstance(Landroid/os/IBinder;)Z
    .registers 8
    .param p1, "token"  # Landroid/os/IBinder;

    .line 3350
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3351
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_30

    .line 3353
    .local v1, "origId":J
    :try_start_a
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_2b

    .line 3354
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v3, :cond_19

    .line 3355
    const/4 v4, 0x0

    .line 3359
    :try_start_11
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_30

    .line 3355
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 3357
    :cond_19
    :try_start_19
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    const-string v5, "app-req"

    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/ActivityStack;->safelyDestroyActivityLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v4
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_2b

    .line 3359
    :try_start_23
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_30

    .line 3357
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 3359
    .end local v3  # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_2b
    move-exception v3

    :try_start_2c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "token":Landroid/os/IBinder;
    throw v3

    .line 3361
    .end local v1  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "token":Landroid/os/IBinder;
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public releaseSomeActivities(Landroid/app/IApplicationThread;)V
    .registers 8
    .param p1, "appInt"  # Landroid/app/IApplicationThread;

    .line 3366
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3367
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_23

    .line 3369
    .local v1, "origId":J
    :try_start_a
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    .line 3370
    .local v3, "app":Lcom/android/server/wm/WindowProcessController;
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const-string v5, "low-mem"

    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/RootActivityContainer;->releaseSomeActivitiesLocked(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_1e

    .line 3372
    .end local v3  # "app":Lcom/android/server/wm/WindowProcessController;
    :try_start_15
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3373
    nop

    .line 3374
    .end local v1  # "origId":J
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3375
    return-void

    .line 3372
    .restart local v1  # "origId":J
    :catchall_1e
    move-exception v3

    :try_start_1f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "appInt":Landroid/app/IApplicationThread;
    throw v3

    .line 3374
    .end local v1  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "appInt":Landroid/app/IApplicationThread;
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeAllVisibleRecentTasks()V
    .registers 6

    .line 2189
    const-string v0, "android.permission.REMOVE_TASKS"

    const-string v1, "removeAllVisibleRecentTasks()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2190
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2191
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_2c

    .line 2193
    .local v1, "ident":J
    :try_start_11
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v4}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RecentTasks;->removeAllVisibleTasks(I)V
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_27

    .line 2195
    :try_start_1e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2196
    nop

    .line 2197
    .end local v1  # "ident":J
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2198
    return-void

    .line 2195
    .restart local v1  # "ident":J
    :catchall_27
    move-exception v3

    :try_start_28
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    throw v3

    .line 2197
    .end local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeStack(I)V
    .registers 9
    .param p1, "stackId"  # I

    .line 3457
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "removeStack()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3458
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3459
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_58

    .line 3461
    .local v1, "ident":J
    :try_start_11
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootActivityContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 3462
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v3, :cond_37

    .line 3463
    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeStack: No stack with id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_53

    .line 3472
    :try_start_2f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_58

    .line 3464
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3466
    :cond_37
    :try_start_37
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 3470
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->removeStack(Lcom/android/server/wm/ActivityStack;)V
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_53

    .line 3472
    .end local v3  # "stack":Lcom/android/server/wm/ActivityStack;
    :try_start_42
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3473
    nop

    .line 3474
    .end local v1  # "ident":J
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_58

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3475
    return-void

    .line 3467
    .restart local v1  # "ident":J
    .restart local v3  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_4b
    :try_start_4b
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Removing non-standard stack is not allowed."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "stackId":I
    throw v4
    :try_end_53
    .catchall {:try_start_4b .. :try_end_53} :catchall_53

    .line 3472
    .end local v3  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "stackId":I
    :catchall_53
    move-exception v3

    :try_start_54
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "stackId":I
    throw v3

    .line 3474
    .end local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "stackId":I
    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_54 .. :try_end_5a} :catchall_58

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeStacksInWindowingModes([I)V
    .registers 6
    .param p1, "windowingModes"  # [I

    .line 2794
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "removeStacksInWindowingModes()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2797
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2798
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_24

    .line 2800
    .local v1, "ident":J
    :try_start_11
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootActivityContainer;->removeStacksInWindowingModes([I)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1f

    .line 2802
    :try_start_16
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2803
    nop

    .line 2804
    .end local v1  # "ident":J
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2805
    return-void

    .line 2802
    .restart local v1  # "ident":J
    :catchall_1f
    move-exception v3

    :try_start_20
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "windowingModes":[I
    throw v3

    .line 2804
    .end local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "windowingModes":[I
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeStacksWithActivityTypes([I)V
    .registers 6
    .param p1, "activityTypes"  # [I

    .line 2809
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "removeStacksWithActivityTypes()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2812
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2813
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_24

    .line 2815
    .local v1, "ident":J
    :try_start_11
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootActivityContainer;->removeStacksWithActivityTypes([I)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1f

    .line 2817
    :try_start_16
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2818
    nop

    .line 2819
    .end local v1  # "ident":J
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2820
    return-void

    .line 2817
    .restart local v1  # "ident":J
    :catchall_1f
    move-exception v3

    :try_start_20
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "activityTypes":[I
    throw v3

    .line 2819
    .end local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "activityTypes":[I
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeTask(I)Z
    .registers 8
    .param p1, "taskId"  # I

    .line 2175
    const-string v0, "android.permission.REMOVE_TASKS"

    const-string v1, "removeTask()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2177
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_27

    .line 2179
    .local v1, "ident":J
    :try_start_11
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const-string v4, "remove-task"

    const/4 v5, 0x1

    invoke-virtual {v3, p1, v5, v5, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    move-result v3
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_22

    .line 2182
    :try_start_1a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_27

    .line 2179
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 2182
    :catchall_22
    move-exception v3

    :try_start_23
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskId":I
    throw v3

    .line 2184
    .end local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskId":I
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeTaskNotKillProcess(I)Z
    .registers 9
    .param p1, "taskId"  # I

    .line 7730
    const-string v0, "android.permission.REMOVE_TASKS"

    const-string v1, "removeTaskNotKillProcess()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7731
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7732
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_28

    .line 7734
    .local v1, "ident":J
    :try_start_11
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "removeTaskNotKillProcess"

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    move-result v3
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_23

    .line 7737
    :try_start_1b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_28

    .line 7734
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 7737
    :catchall_23
    move-exception v3

    :try_start_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskId":I
    throw v3

    .line 7739
    .end local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskId":I
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public reportActivityFullyDrawn(Landroid/os/IBinder;Z)V
    .registers 5
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "restoredFromBundle"  # Z

    .line 2075
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2076
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2077
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_11

    .line 2078
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2080
    :cond_11
    :try_start_11
    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityRecord;->reportFullyDrawnLocked(Z)V

    .line 2081
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2082
    return-void

    .line 2081
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V
    .registers 15
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "extras"  # Landroid/os/Bundle;
    .param p3, "structure"  # Landroid/app/assist/AssistStructure;
    .param p4, "content"  # Landroid/app/assist/AssistContent;
    .param p5, "referrer"  # Landroid/net/Uri;

    .line 3107
    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    .line 3108
    .local v0, "pae":Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;
    monitor-enter v0

    .line 3109
    :try_start_4
    iput-object p2, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->result:Landroid/os/Bundle;

    .line 3110
    iput-object p3, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->structure:Landroid/app/assist/AssistStructure;

    .line 3111
    iput-object p4, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->content:Landroid/app/assist/AssistContent;

    .line 3112
    if-eqz p5, :cond_13

    .line 3113
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    const-string v2, "android.intent.extra.REFERRER"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3115
    :cond_13
    if-eqz p3, :cond_2c

    .line 3117
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {p3, v1}, Landroid/app/assist/AssistStructure;->setTaskId(I)V

    .line 3118
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p3, v1}, Landroid/app/assist/AssistStructure;->setActivityComponent(Landroid/content/ComponentName;)V

    .line 3119
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->isHome:Z

    invoke-virtual {p3, v1}, Landroid/app/assist/AssistStructure;->setHomeActivity(Z)V

    .line 3121
    :cond_2c
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->haveResult:Z

    .line 3122
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3123
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    if-nez v1, :cond_3c

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiver:Landroid/app/IAssistDataReceiver;

    if-nez v1, :cond_3c

    .line 3125
    monitor-exit v0

    return-void

    .line 3127
    :cond_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_4 .. :try_end_3d} :catchall_102

    .line 3129
    const/4 v1, 0x0

    .line 3130
    .local v1, "sendReceiver":Landroid/app/IAssistDataReceiver;
    const/4 v2, 0x0

    .line 3131
    .local v2, "sendBundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_42
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3132
    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->buildAssistBundleLocked(Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;Landroid/os/Bundle;)V

    .line 3133
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 3134
    .local v4, "exists":Z
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3135
    if-nez v4, :cond_5a

    .line 3137
    monitor-exit v3
    :try_end_56
    .catchall {:try_start_42 .. :try_end_56} :catchall_fc

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3140
    :cond_5a
    :try_start_5a
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiver:Landroid/app/IAssistDataReceiver;

    move-object v1, v5

    if-eqz v5, :cond_97

    .line 3142
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v2, v5

    .line 3143
    const-string v5, "taskId"

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    .line 3144
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v6

    iget v6, v6, Lcom/android/server/wm/TaskRecord;->taskId:I

    .line 3143
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3145
    const-string v5, "activityId"

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/wm/ActivityRecord;->assistToken:Landroid/os/Binder;

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3147
    const-string v5, "data"

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3148
    const-string v5, "structure"

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->structure:Landroid/app/assist/AssistStructure;

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3149
    const-string v5, "content"

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->content:Landroid/app/assist/AssistContent;

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3150
    const-string v5, "receiverExtras"

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiverExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3152
    .end local v4  # "exists":Z
    :cond_97
    monitor-exit v3
    :try_end_98
    .catchall {:try_start_5a .. :try_end_98} :catchall_fc

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3153
    if-eqz v1, :cond_a3

    .line 3155
    :try_start_9d
    invoke-interface {v1, v2}, Landroid/app/IAssistDataReceiver;->onHandleAssistData(Landroid/os/Bundle;)V
    :try_end_a0
    .catch Landroid/os/RemoteException; {:try_start_9d .. :try_end_a0} :catch_a1

    .line 3157
    goto :goto_a2

    .line 3156
    :catch_a1
    move-exception v3

    .line 3158
    :goto_a2
    return-void

    .line 3161
    :cond_a3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3163
    .local v3, "ident":J
    :try_start_a7
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.service.voice.VoiceInteractionService"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c6

    .line 3165
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3167
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    iget v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->userHandle:I

    const-string v7, "AssistContext"

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->startVoiceInteractionServiceAsUser(Landroid/content/Intent;ILjava/lang/String;)V

    goto :goto_f2

    .line 3169
    :cond_c6
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3170
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    const/high16 v6, 0x34000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3173
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v6, "assist"

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_db
    .catchall {:try_start_a7 .. :try_end_db} :catchall_f7

    .line 3176
    :try_start_db
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    new-instance v7, Landroid/os/UserHandle;

    iget v8, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->userHandle:I

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_e9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_db .. :try_end_e9} :catch_ea
    .catchall {:try_start_db .. :try_end_e9} :catchall_f7

    .line 3179
    goto :goto_f2

    .line 3177
    :catch_ea
    move-exception v5

    .line 3178
    .local v5, "e":Landroid/content/ActivityNotFoundException;
    :try_start_eb
    const-string v6, "ActivityTaskManager"

    const-string v7, "No activity to handle assist action."

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f2
    .catchall {:try_start_eb .. :try_end_f2} :catchall_f7

    .line 3182
    .end local v5  # "e":Landroid/content/ActivityNotFoundException;
    :goto_f2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3183
    nop

    .line 3184
    return-void

    .line 3182
    :catchall_f7
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 3152
    .end local v3  # "ident":J
    :catchall_fc
    move-exception v4

    :try_start_fd
    monitor-exit v3
    :try_end_fe
    .catchall {:try_start_fd .. :try_end_fe} :catchall_fc

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 3127
    .end local v1  # "sendReceiver":Landroid/app/IAssistDataReceiver;
    .end local v2  # "sendBundle":Landroid/os/Bundle;
    :catchall_102
    move-exception v1

    :try_start_103
    monitor-exit v0
    :try_end_104
    .catchall {:try_start_103 .. :try_end_104} :catchall_102

    throw v1
.end method

.method public reportSizeConfigurations(Landroid/os/IBinder;[I[I[I)V
    .registers 10
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "horizontalSizeConfiguration"  # [I
    .param p3, "verticalSizeConfigurations"  # [I
    .param p4, "smallestSizeConfigurations"  # [I

    .line 4000
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Report configuration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4002
    :cond_2a
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_2d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4003
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4004
    .local v1, "record":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_3e

    .line 4008
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/wm/ActivityRecord;->setSizeConfigurations([I[I[I)V

    .line 4010
    .end local v1  # "record":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_55

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4011
    return-void

    .line 4005
    .restart local v1  # "record":Lcom/android/server/wm/ActivityRecord;
    :cond_3e
    :try_start_3e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportSizeConfigurations: ActivityRecord not found for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "token":Landroid/os/IBinder;
    .end local p2  # "horizontalSizeConfiguration":[I
    .end local p3  # "verticalSizeConfigurations":[I
    .end local p4  # "smallestSizeConfigurations":[I
    throw v2

    .line 4010
    .end local v1  # "record":Lcom/android/server/wm/ActivityRecord;
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "token":Landroid/os/IBinder;
    .restart local p2  # "horizontalSizeConfiguration":[I
    .restart local p3  # "verticalSizeConfigurations":[I
    .restart local p4  # "smallestSizeConfigurations":[I
    :catchall_55
    move-exception v1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_3e .. :try_end_57} :catchall_55

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public requestAssistContextExtras(ILandroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z
    .registers 21
    .param p1, "requestType"  # I
    .param p2, "receiver"  # Landroid/app/IAssistDataReceiver;
    .param p3, "receiverExtras"  # Landroid/os/Bundle;
    .param p4, "activityToken"  # Landroid/os/IBinder;
    .param p5, "focused"  # Z
    .param p6, "newSessionId"  # Z

    .line 3552
    nop

    .line 3553
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 3552
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x7d0

    const/4 v13, 0x0

    move-object v0, p0

    move v1, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v13}, Lcom/android/server/wm/ActivityTaskManagerService;->enqueueAssistContext(ILandroid/content/Intent;Ljava/lang/String;Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZILandroid/os/Bundle;JI)Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    move-result-object v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0
.end method

.method public requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z
    .registers 19
    .param p1, "receiver"  # Landroid/app/IAssistDataReceiver;
    .param p2, "receiverExtras"  # Landroid/os/Bundle;
    .param p3, "activityToken"  # Landroid/os/IBinder;
    .param p4, "flags"  # I

    .line 3560
    nop

    .line 3561
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 3560
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v10, 0x0

    const-wide/16 v11, 0x7d0

    move-object v0, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v13, p4

    invoke-direct/range {v0 .. v13}, Lcom/android/server/wm/ActivityTaskManagerService;->enqueueAssistContext(ILandroid/content/Intent;Ljava/lang/String;Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZILandroid/os/Bundle;JI)Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    move-result-object v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0
.end method

.method public requestStartActivityPermissionToken(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 9
    .param p1, "delegatorToken"  # Landroid/os/IBinder;

    .line 1312
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1313
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_43

    .line 1317
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 1318
    .local v1, "permissionToken":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1319
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStartActivitySources:Ljava/util/HashMap;

    invoke-virtual {v3, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1320
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_3d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1322
    sget-object v2, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$3DTHgCAeEd5OOF7ACeXoCk8mmrQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$3DTHgCAeEd5OOF7ACeXoCk8mmrQ;

    invoke-static {v2, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1324
    .local v2, "expireMsg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    const-wide/32 v4, 0x92f90

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1326
    sget-object v3, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$7ieG0s-7Zp4H2bLiWdOgB6MqhcI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$7ieG0s-7Zp4H2bLiWdOgB6MqhcI;

    invoke-static {v3, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1328
    .local v3, "forgetMsg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    const-wide/32 v5, 0x1b7f10

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1330
    return-object v1

    .line 1320
    .end local v2  # "expireMsg":Landroid/os/Message;
    .end local v3  # "forgetMsg":Landroid/os/Message;
    :catchall_3d
    move-exception v3

    :try_start_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    .line 1314
    .end local v1  # "permissionToken":Landroid/os/IBinder;
    :cond_43
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only the system process can request a permission token, received request from uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 16
    .param p1, "dockedBounds"  # Landroid/graphics/Rect;
    .param p2, "tempDockedTaskBounds"  # Landroid/graphics/Rect;
    .param p3, "tempDockedTaskInsetBounds"  # Landroid/graphics/Rect;
    .param p4, "tempOtherTaskBounds"  # Landroid/graphics/Rect;
    .param p5, "tempOtherTaskInsetBounds"  # Landroid/graphics/Rect;

    .line 4360
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "resizeDockedStack()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4361
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4363
    .local v0, "ident":J
    :try_start_b
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_2b

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4364
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v9, 0x1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 4367
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_25

    :try_start_1d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_2b

    .line 4369
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4370
    nop

    .line 4371
    return-void

    .line 4367
    :catchall_25
    move-exception v3

    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    :try_start_27
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "dockedBounds":Landroid/graphics/Rect;
    .end local p2  # "tempDockedTaskBounds":Landroid/graphics/Rect;
    .end local p3  # "tempDockedTaskInsetBounds":Landroid/graphics/Rect;
    .end local p4  # "tempOtherTaskBounds":Landroid/graphics/Rect;
    .end local p5  # "tempOtherTaskInsetBounds":Landroid/graphics/Rect;
    throw v3
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_2b

    .line 4369
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "dockedBounds":Landroid/graphics/Rect;
    .restart local p2  # "tempDockedTaskBounds":Landroid/graphics/Rect;
    .restart local p3  # "tempDockedTaskInsetBounds":Landroid/graphics/Rect;
    .restart local p4  # "tempOtherTaskBounds":Landroid/graphics/Rect;
    .restart local p5  # "tempOtherTaskInsetBounds":Landroid/graphics/Rect;
    :catchall_2b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public resizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "pinnedBounds"  # Landroid/graphics/Rect;
    .param p2, "tempPinnedTaskBounds"  # Landroid/graphics/Rect;

    .line 4484
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "resizePinnedStack()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4485
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4487
    .local v0, "ident":J
    :try_start_b
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_25

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4488
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->resizePinnedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4489
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_1f

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_25

    .line 4491
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4492
    nop

    .line 4493
    return-void

    .line 4489
    :catchall_1f
    move-exception v3

    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    :try_start_21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "pinnedBounds":Landroid/graphics/Rect;
    .end local p2  # "tempPinnedTaskBounds":Landroid/graphics/Rect;
    throw v3
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_25

    .line 4491
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "pinnedBounds":Landroid/graphics/Rect;
    .restart local p2  # "tempPinnedTaskBounds":Landroid/graphics/Rect;
    :catchall_25
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public resizeStack(ILandroid/graphics/Rect;ZZZI)V
    .registers 23
    .param p1, "stackId"  # I
    .param p2, "destBounds"  # Landroid/graphics/Rect;
    .param p3, "allowResizeInDockedMode"  # Z
    .param p4, "preserveWindows"  # Z
    .param p5, "animate"  # Z
    .param p6, "animationDuration"  # I

    .line 2667
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v3, "resizeStack()"

    invoke-direct {v1, v0, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2669
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2671
    .local v3, "ident":J
    :try_start_f
    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_c7

    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_c1

    .line 2672
    if-eqz p5, :cond_79

    .line 2673
    :try_start_17
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootActivityContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v0
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_73

    .line 2674
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_42

    .line 2675
    :try_start_1f
    const-string v6, "ActivityTaskManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resizeStack: stackId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " not found."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2676
    monitor-exit v5
    :try_end_3b
    .catchall {:try_start_1f .. :try_end_3b} :catchall_c1

    .line 2696
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2676
    return-void

    .line 2678
    :cond_42
    :try_start_42
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v6
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_73

    const/4 v7, 0x2

    if-ne v6, v7, :cond_53

    .line 2682
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v15, p2

    move/from16 v14, p6

    :try_start_4f
    invoke-virtual {v0, v6, v15, v14, v7}, Lcom/android/server/wm/ActivityStack;->animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    .line 2684
    .end local v0  # "stack":Lcom/android/server/wm/ActivityStack;
    goto :goto_b8

    .line 2679
    .restart local v0  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_53
    move-object/from16 v15, p2

    move/from16 v14, p6

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Stack: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " doesn\'t support animated resize."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "stackId":I
    .end local p2  # "destBounds":Landroid/graphics/Rect;
    .end local p3  # "allowResizeInDockedMode":Z
    .end local p4  # "preserveWindows":Z
    .end local p5  # "animate":Z
    .end local p6  # "animationDuration":I
    throw v6

    .line 2694
    .end local v0  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v3  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "stackId":I
    .restart local p2  # "destBounds":Landroid/graphics/Rect;
    .restart local p3  # "allowResizeInDockedMode":Z
    .restart local p4  # "preserveWindows":Z
    .restart local p5  # "animate":Z
    .restart local p6  # "animationDuration":I
    :catchall_73
    move-exception v0

    move-object/from16 v15, p2

    move/from16 v14, p6

    goto :goto_c2

    .line 2685
    :cond_79
    move-object/from16 v15, p2

    move/from16 v14, p6

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootActivityContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2686
    .restart local v0  # "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v0, :cond_a8

    .line 2687
    const-string v6, "ActivityTaskManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resizeStack: stackId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " not found."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2688
    monitor-exit v5
    :try_end_a1
    .catchall {:try_start_4f .. :try_end_a1} :catchall_c1

    .line 2696
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2688
    return-void

    .line 2690
    :cond_a8
    :try_start_a8
    iget-object v8, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v6, 0x0

    move-object v9, v0

    move-object/from16 v10, p2

    move/from16 v13, p4

    move/from16 v14, p3

    move v15, v6

    invoke-virtual/range {v8 .. v15}, Lcom/android/server/wm/RootActivityContainer;->resizeStack(Lcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    .line 2694
    .end local v0  # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_b8
    monitor-exit v5
    :try_end_b9
    .catchall {:try_start_a8 .. :try_end_b9} :catchall_c1

    :try_start_b9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_bc
    .catchall {:try_start_b9 .. :try_end_bc} :catchall_c7

    .line 2696
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2697
    nop

    .line 2698
    return-void

    .line 2694
    :catchall_c1
    move-exception v0

    :goto_c2
    :try_start_c2
    monitor-exit v5
    :try_end_c3
    .catchall {:try_start_c2 .. :try_end_c3} :catchall_c1

    :try_start_c3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v3  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "stackId":I
    .end local p2  # "destBounds":Landroid/graphics/Rect;
    .end local p3  # "allowResizeInDockedMode":Z
    .end local p4  # "preserveWindows":Z
    .end local p5  # "animate":Z
    .end local p6  # "animationDuration":I
    throw v0
    :try_end_c7
    .catchall {:try_start_c3 .. :try_end_c7} :catchall_c7

    .line 2696
    .restart local v3  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "stackId":I
    .restart local p2  # "destBounds":Landroid/graphics/Rect;
    .restart local p3  # "allowResizeInDockedMode":Z
    .restart local p4  # "preserveWindows":Z
    .restart local p5  # "animate":Z
    .restart local p6  # "animationDuration":I
    :catchall_c7
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public resizeTask(ILandroid/graphics/Rect;I)V
    .registers 23
    .param p1, "taskId"  # I
    .param p2, "bounds"  # Landroid/graphics/Rect;
    .param p3, "resizeMode"  # I

    .line 3301
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v5, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v6, "resizeTask()"

    invoke-virtual {v0, v5, v6}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3302
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 3304
    .local v5, "ident":J
    :try_start_15
    iget-object v7, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v7
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_d6

    :try_start_18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3305
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v8, 0x0

    invoke-virtual {v0, v2, v8}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 3307
    .local v0, "task":Lcom/android/server/wm/TaskRecord;
    if-nez v0, :cond_47

    .line 3308
    const-string v8, "ActivityTaskManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "resizeTask: taskId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " not found"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3309
    monitor-exit v7
    :try_end_40
    .catchall {:try_start_18 .. :try_end_40} :catchall_d0

    .line 3344
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3309
    return-void

    .line 3318
    :cond_47
    :try_start_47
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v9

    .line 3319
    .local v9, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result v10

    if-eqz v10, :cond_b9

    .line 3322
    const/4 v10, 0x5

    const/4 v11, 0x1

    if-nez v3, :cond_6e

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v12

    if-ne v12, v10, :cond_6e

    .line 3323
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v10

    .line 3324
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v12

    .line 3323
    invoke-virtual {v10, v11, v12, v11}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v10

    move-object v9, v10

    move-object v15, v9

    goto :goto_86

    .line 3325
    :cond_6e
    if-eqz v3, :cond_85

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v12

    if-eq v12, v10, :cond_85

    .line 3326
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v12

    .line 3327
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result v13

    .line 3326
    invoke-virtual {v12, v10, v13, v11}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object v10

    move-object v9, v10

    move-object v15, v9

    goto :goto_86

    .line 3331
    :cond_85
    move-object v15, v9

    .end local v9  # "stack":Lcom/android/server/wm/ActivityStack;
    .local v15, "stack":Lcom/android/server/wm/ActivityStack;
    :goto_86
    and-int/lit8 v9, v4, 0x1

    if-eqz v9, :cond_8b

    goto :goto_8c

    :cond_8b
    move v11, v8

    :goto_8c
    move/from16 v16, v11

    .line 3332
    .local v16, "preserveWindow":Z
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v9

    if-eq v15, v9, :cond_a8

    .line 3334
    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const-string v17, "resizeTask"

    move-object v9, v0

    move-object v10, v15

    move-object/from16 v18, v15

    .end local v15  # "stack":Lcom/android/server/wm/ActivityStack;
    .local v18, "stack":Lcom/android/server/wm/ActivityStack;
    move-object/from16 v15, v17

    invoke-virtual/range {v9 .. v15}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 3336
    const/16 v16, 0x0

    move/from16 v9, v16

    goto :goto_ac

    .line 3332
    .end local v18  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v15  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_a8
    move-object/from16 v18, v15

    .end local v15  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v18  # "stack":Lcom/android/server/wm/ActivityStack;
    move/from16 v9, v16

    .line 3341
    .end local v16  # "preserveWindow":Z
    .local v9, "preserveWindow":Z
    :goto_ac
    invoke-virtual {v0, v3, v4, v9, v8}, Lcom/android/server/wm/TaskRecord;->resize(Landroid/graphics/Rect;IZZ)Z

    .line 3342
    nop

    .end local v0  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v9  # "preserveWindow":Z
    .end local v18  # "stack":Lcom/android/server/wm/ActivityStack;
    monitor-exit v7
    :try_end_b1
    .catchall {:try_start_47 .. :try_end_b1} :catchall_d0

    :try_start_b1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_d6

    .line 3344
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3345
    nop

    .line 3346
    return-void

    .line 3320
    .restart local v0  # "task":Lcom/android/server/wm/TaskRecord;
    .local v9, "stack":Lcom/android/server/wm/ActivityStack;
    :cond_b9
    :try_start_b9
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "resizeTask not allowed on task="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v5  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskId":I
    .end local p2  # "bounds":Landroid/graphics/Rect;
    .end local p3  # "resizeMode":I
    throw v8

    .line 3342
    .end local v0  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v9  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v5  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskId":I
    .restart local p2  # "bounds":Landroid/graphics/Rect;
    .restart local p3  # "resizeMode":I
    :catchall_d0
    move-exception v0

    monitor-exit v7
    :try_end_d2
    .catchall {:try_start_b9 .. :try_end_d2} :catchall_d0

    :try_start_d2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v5  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskId":I
    .end local p2  # "bounds":Landroid/graphics/Rect;
    .end local p3  # "resizeMode":I
    throw v0
    :try_end_d6
    .catchall {:try_start_d2 .. :try_end_d6} :catchall_d6

    .line 3344
    .restart local v5  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskId":I
    .restart local p2  # "bounds":Landroid/graphics/Rect;
    .restart local p3  # "resizeMode":I
    :catchall_d6
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public restartActivityProcessIfVisible(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "activityToken"  # Landroid/os/IBinder;

    .line 2158
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "restartActivityProcess()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2159
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2161
    .local v0, "callingId":J
    :try_start_d
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_33

    :try_start_10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2162
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 2163
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v3, :cond_21

    .line 2164
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_2d

    .line 2169
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2164
    return-void

    .line 2166
    :cond_21
    :try_start_21
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->restartProcessIfVisible()V

    .line 2167
    .end local v3  # "r":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_2d

    :try_start_25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_33

    .line 2169
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2170
    nop

    .line 2171
    return-void

    .line 2167
    :catchall_2d
    move-exception v3

    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    :try_start_2f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "callingId":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "activityToken":Landroid/os/IBinder;
    throw v3
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_33

    .line 2169
    .restart local v0  # "callingId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "activityToken":Landroid/os/IBinder;
    :catchall_33
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public resumeAppSwitches()V
    .registers 4

    .line 4839
    const-string v0, "android.permission.STOP_APP_SWITCHES"

    const-string v1, "resumeAppSwitches"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4840
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4844
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesAllowedTime:J

    .line 4845
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4846
    return-void

    .line 4845
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public retrieveSettings(Landroid/content/ContentResolver;)V
    .registers 19
    .param p1, "resolver"  # Landroid/content/ContentResolver;

    .line 762
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 763
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.software.freeform_window_management"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1f

    .line 764
    const-string v0, "enable_freeform_support"

    invoke-static {v2, v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    move v0, v4

    goto :goto_20

    :cond_1f
    :goto_1f
    move v0, v3

    :goto_20
    move v5, v0

    .line 767
    .local v5, "freeformWindowManagement":Z
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v6

    .line 768
    .local v6, "supportsMultiWindow":Z
    if-eqz v6, :cond_39

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 769
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v7, "android.software.picture_in_picture"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    move v0, v3

    goto :goto_3a

    :cond_39
    move v0, v4

    :goto_3a
    move v7, v0

    .line 770
    .local v7, "supportsPictureInPicture":Z
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 771
    invoke-static {v0}, Landroid/app/ActivityTaskManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;)Z

    move-result v8

    .line 772
    .local v8, "supportsSplitScreenMultiWindow":Z
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 773
    const-string v9, "android.software.activities_on_secondary_displays"

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    .line 774
    .local v9, "supportsMultiDisplay":Z
    const-string v0, "debug.force_rtl"

    invoke-static {v2, v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_57

    move v0, v3

    goto :goto_58

    :cond_57
    move v0, v4

    :goto_58
    move v10, v0

    .line 775
    .local v10, "forceRtl":Z
    const-string v0, "force_resizable_activities"

    invoke-static {v2, v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_63

    move v0, v3

    goto :goto_64

    :cond_63
    move v0, v4

    :goto_64
    move v11, v0

    .line 777
    .local v11, "forceResizable":Z
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v12, "android.hardware.type.pc"

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    .line 780
    .local v12, "isPc":Z
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/sysprop/DisplayProperties;->debug_force_rtl(Ljava/lang/Boolean;)V

    .line 782
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    move-object v13, v0

    .line 783
    .local v13, "configuration":Landroid/content/res/Configuration;
    invoke-static {v2, v13}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    .line 784
    if-eqz v10, :cond_88

    .line 786
    iget-object v0, v13, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v13, v0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 789
    :cond_88
    iget-object v14, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v14

    :try_start_8b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 790
    iput-boolean v11, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    .line 791
    if-nez v5, :cond_9b

    if-nez v8, :cond_9b

    if-nez v7, :cond_9b

    if-eqz v9, :cond_99

    goto :goto_9b

    :cond_99
    move v0, v4

    goto :goto_9c

    :cond_9b
    :goto_9b
    move v0, v3

    .line 795
    .local v0, "multiWindowFormEnabled":Z
    :goto_9c
    if-nez v6, :cond_a0

    if-eqz v11, :cond_ad

    :cond_a0
    if-eqz v0, :cond_ad

    .line 796
    iput-boolean v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    .line 797
    iput-boolean v5, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 798
    iput-boolean v8, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    .line 799
    iput-boolean v7, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    .line 800
    iput-boolean v9, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    goto :goto_b7

    .line 802
    :cond_ad
    iput-boolean v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    .line 803
    iput-boolean v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 804
    iput-boolean v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    .line 805
    iput-boolean v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    .line 806
    iput-boolean v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    .line 808
    :goto_b7
    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v15, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    invoke-virtual {v4, v15}, Lcom/android/server/wm/WindowManagerService;->setForceResizableTasks(Z)V

    .line 809
    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v15, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    invoke-virtual {v4, v15}, Lcom/android/server/wm/WindowManagerService;->setSupportsPictureInPicture(Z)V

    .line 810
    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v15, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    invoke-virtual {v4, v15}, Lcom/android/server/wm/WindowManagerService;->setSupportsFreeformWindowManagement(Z)V

    .line 811
    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v12}, Lcom/android/server/wm/WindowManagerService;->setIsPc(Z)V

    .line 812
    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->onSettingsRetrieved()V

    .line 815
    const/4 v4, 0x0

    invoke-virtual {v1, v13, v4, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z

    .line 816
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 817
    .local v4, "globalConfig":Landroid/content/res/Configuration;
    sget-boolean v15, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v15, :cond_fd

    const-string v15, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v0

    .end local v0  # "multiWindowFormEnabled":Z
    .local v16, "multiWindowFormEnabled":Z
    const-string v0, "Initial config: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ff

    .end local v16  # "multiWindowFormEnabled":Z
    .restart local v0  # "multiWindowFormEnabled":Z
    :cond_fd
    move/from16 v16, v0

    .line 820
    .end local v0  # "multiWindowFormEnabled":Z
    .restart local v16  # "multiWindowFormEnabled":Z
    :goto_ff
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 821
    .local v0, "res":Landroid/content/res/Resources;
    const v3, 0x1050002

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailWidth:I

    .line 823
    const v3, 0x1050001

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailHeight:I

    .line 826
    iget v3, v4, Landroid/content/res/Configuration;->uiMode:I

    const/4 v15, 0x4

    and-int/2addr v3, v15

    if-ne v3, v15, :cond_12c

    .line 827
    const v3, 0x10e011a

    .line 828
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    iget v15, v4, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v15, v15

    div-float/2addr v3, v15

    iput v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mFullscreenThumbnailScale:F

    goto :goto_136

    .line 831
    :cond_12c
    const v3, 0x113000e

    const/4 v15, 0x1

    invoke-virtual {v0, v3, v15, v15}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iput v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mFullscreenThumbnailScale:F

    .line 834
    .end local v0  # "res":Landroid/content/res/Resources;
    .end local v4  # "globalConfig":Landroid/content/res/Configuration;
    .end local v16  # "multiWindowFormEnabled":Z
    :goto_136
    monitor-exit v14
    :try_end_137
    .catchall {:try_start_8b .. :try_end_137} :catchall_13b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 835
    return-void

    .line 834
    :catchall_13b
    move-exception v0

    :try_start_13c
    monitor-exit v14
    :try_end_13d
    .catchall {:try_start_13c .. :try_end_13d} :catchall_13b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method scheduleAppGcsLocked()V
    .registers 3

    .line 5926
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$yEgPBZves-gjR6r_sca6FAEYeiA;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$yEgPBZves-gjR6r_sca6FAEYeiA;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 5927
    return-void
.end method

.method public setActivityController(Landroid/app/IActivityController;Z)V
    .registers 6
    .param p1, "controller"  # Landroid/app/IActivityController;
    .param p2, "imAMonkey"  # Z

    .line 2554
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string v2, "setActivityController()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2556
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2557
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 2558
    iput-boolean p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mControllerIsAMonkey:Z

    .line 2559
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 2560
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2563
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mControllerIsAMonkey:Z

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    .line 2564
    .local v0, "isMonkey":Z
    :goto_29
    invoke-static {v0}, Lcom/android/server/wm/DataMonInjector;->reportMonkeyStatus(Z)V

    .line 2566
    return-void

    .line 2560
    .end local v0  # "isMonkey":Z
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setAppStart(Lcom/android/server/wm/ActivityRecord;I)V
    .registers 6
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "type"  # I

    .line 7579
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurActivityPkgName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->startFlag:I

    if-eq v0, p2, :cond_31

    if-nez p2, :cond_13

    goto :goto_31

    .line 7582
    :cond_13
    iput p2, p1, Lcom/android/server/wm/ActivityRecord;->startFlag:I

    .line 7583
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mCurActivityPkgName:Ljava/lang/String;

    invoke-static {p2, v0, v1, v2}, Lcom/android/server/wm/DataMonInjector;->reportAppStartMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7584
    const/16 v0, 0x1d

    if-ne p2, v0, :cond_30

    .line 7585
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mCurActivityPkgName:Ljava/lang/String;

    .line 7586
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/wm/ActivityRecord;->warmStartTime:J

    .line 7588
    :cond_30
    return-void

    .line 7580
    :cond_31
    :goto_31
    return-void
.end method

.method setBooted(Z)V
    .registers 3
    .param p1, "booted"  # Z

    .line 5745
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->setBooted(Z)V

    .line 5746
    return-void
.end method

.method setBooting(Z)V
    .registers 3
    .param p1, "booting"  # Z

    .line 5737
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->setBooting(Z)V

    .line 5738
    return-void
.end method

.method setDeviceOwnerUid(I)V
    .registers 2
    .param p1, "uid"  # I

    .line 6077
    iput p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDeviceOwnerUid:I

    .line 6078
    return-void
.end method

.method public setDisablePreviewScreenshots(Landroid/os/IBinder;Z)V
    .registers 8
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "disable"  # Z

    .line 4632
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4633
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4634
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_27

    .line 4635
    const-string v2, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDisablePreviewScreenshots: Unable to find activity for token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4637
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4639
    :cond_27
    :try_start_27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_3c

    .line 4641
    .local v2, "origId":J
    :try_start_2b
    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityRecord;->setDisablePreviewScreenshots(Z)V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_37

    .line 4643
    :try_start_2e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4644
    nop

    .line 4645
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2  # "origId":J
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4646
    return-void

    .line 4643
    .restart local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v2  # "origId":J
    :catchall_37
    move-exception v4

    :try_start_38
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "token":Landroid/os/IBinder;
    .end local p2  # "disable":Z
    throw v4

    .line 4645
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "token":Landroid/os/IBinder;
    .restart local p2  # "disable":Z
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setDisplayToSingleTaskInstance(I)V
    .registers 5
    .param p1, "displayId"  # I

    .line 4974
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "setDisplayToSingleTaskInstance"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4976
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4978
    .local v0, "origId":J
    :try_start_d
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 4979
    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplayOrCreate(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v2

    .line 4980
    .local v2, "display":Lcom/android/server/wm/ActivityDisplay;
    if-eqz v2, :cond_18

    .line 4981
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->setDisplayToSingleTaskInstance()V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_1d

    .line 4984
    .end local v2  # "display":Lcom/android/server/wm/ActivityDisplay;
    :cond_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4985
    nop

    .line 4986
    return-void

    .line 4984
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setFocusedStack(I)V
    .registers 9
    .param p1, "stackId"  # I

    .line 2114
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "setFocusedStack()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2115
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_FOCUS:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFocusedStack: stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    :cond_23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2118
    .local v0, "callingId":J
    :try_start_27
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_75

    :try_start_2a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2119
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootActivityContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2120
    .local v3, "stack":Lcom/android/server/wm/ActivityStack;
    if-nez v3, :cond_53

    .line 2121
    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setFocusedStack: No stack with id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_2a .. :try_end_4c} :catchall_6f

    .line 2130
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2122
    return-void

    .line 2124
    :cond_53
    :try_start_53
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 2125
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_66

    const-string v5, "setFocusedStack"

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 2126
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 2128
    .end local v3  # "stack":Lcom/android/server/wm/ActivityStack;
    .end local v4  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_66
    monitor-exit v2
    :try_end_67
    .catchall {:try_start_53 .. :try_end_67} :catchall_6f

    :try_start_67
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_75

    .line 2130
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2131
    nop

    .line 2132
    return-void

    .line 2128
    :catchall_6f
    move-exception v3

    :try_start_70
    monitor-exit v2
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    :try_start_71
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "callingId":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "stackId":I
    throw v3
    :try_end_75
    .catchall {:try_start_71 .. :try_end_75} :catchall_75

    .line 2130
    .restart local v0  # "callingId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "stackId":I
    :catchall_75
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setFocusedTask(I)V
    .registers 8
    .param p1, "taskId"  # I

    .line 2136
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "setFocusedTask()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2137
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_FOCUS:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFocusedTask: taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    :cond_23
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2140
    .local v0, "callingId":J
    :try_start_27
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_60

    :try_start_2a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2141
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    .line 2143
    .local v3, "task":Lcom/android/server/wm/TaskRecord;
    if-nez v3, :cond_3e

    .line 2144
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_5a

    .line 2152
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2144
    return-void

    .line 2146
    :cond_3e
    :try_start_3e
    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 2147
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_51

    const-string v5, "setFocusedTask"

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 2148
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 2150
    .end local v3  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v4  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_3e .. :try_end_52} :catchall_5a

    :try_start_52
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_60

    .line 2152
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2153
    nop

    .line 2154
    return-void

    .line 2150
    :catchall_5a
    move-exception v3

    :try_start_5b
    monitor-exit v2
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    :try_start_5c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "callingId":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskId":I
    throw v3
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_60

    .line 2152
    .restart local v0  # "callingId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskId":I
    :catchall_60
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setFrontActivityScreenCompatMode(I)V
    .registers 6
    .param p1, "mode"  # I

    .line 1974
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SET_SCREEN_COMPATIBILITY"

    const-string v2, "setFrontActivityScreenCompatMode"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1978
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1979
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_25

    .line 1980
    const-string v2, "ActivityTaskManager"

    const-string v3, "setFrontActivityScreenCompatMode failed: no top activity"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1983
    :cond_25
    :try_start_25
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1984
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v3, v2, p1}, Lcom/android/server/wm/CompatModePackages;->setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    .line 1985
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1986
    return-void

    .line 1985
    .end local v2  # "ai":Landroid/content/pm/ApplicationInfo;
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setHeavyWeightProcess(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "root"  # Lcom/android/server/wm/ActivityRecord;

    .line 5764
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 5765
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$x3j1aVkumtfulORwKd6dHysJyE0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$x3j1aVkumtfulORwKd6dHysJyE0;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget v3, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 5767
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 5765
    invoke-static {v0, p0, v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5768
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5769
    return-void
.end method

.method public setImmersive(Landroid/os/IBinder;Z)V
    .registers 8
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "immersive"  # Z

    .line 1885
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1886
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1887
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_36

    .line 1890
    iput-boolean p2, v1, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    .line 1893
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isResumedActivityOnDisplay()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1894
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IMMERSIVE:Z

    if-eqz v2, :cond_2e

    const-string v2, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Frontmost changed immersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    :cond_2e
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->applyUpdateLockStateLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 1897
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1898
    return-void

    .line 1888
    .restart local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_36
    :try_start_36
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "token":Landroid/os/IBinder;
    .end local p2  # "immersive":Z
    throw v2

    .line 1897
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "token":Landroid/os/IBinder;
    .restart local p2  # "immersive":Z
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setInheritShowWhenLocked(Landroid/os/IBinder;Z)V
    .registers 8
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "inheritShowWhenLocked"  # Z

    .line 4694
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4695
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4696
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_11

    .line 4697
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4699
    :cond_11
    :try_start_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_26

    .line 4701
    .local v2, "origId":J
    :try_start_15
    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityRecord;->setInheritShowWhenLocked(Z)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_21

    .line 4703
    :try_start_18
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4704
    nop

    .line 4705
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2  # "origId":J
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4706
    return-void

    .line 4703
    .restart local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v2  # "origId":J
    :catchall_21
    move-exception v4

    :try_start_22
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "token":Landroid/os/IBinder;
    .end local p2  # "inheritShowWhenLocked":Z
    throw v4

    .line 4705
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "token":Landroid/os/IBinder;
    .restart local p2  # "inheritShowWhenLocked":Z
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setLockScreenShown(ZZ)V
    .registers 9
    .param p1, "keyguardShowing"  # Z
    .param p2, "aodShowing"  # Z

    .line 3379
    const-string v0, "android.permission.DEVICE_POWER"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4c

    .line 3385
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3386
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3387
    .local v1, "ident":J
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardShown:Z

    if-eq v3, p1, :cond_29

    .line 3388
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardShown:Z

    .line 3389
    sget-object v3, Lcom/android/server/wm/-$$Lambda$zwLNi4Hz7werGBGptK8eYRpBWpw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$zwLNi4Hz7werGBGptK8eYRpBWpw;

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 3391
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 3389
    invoke-static {v3, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 3392
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_46

    .line 3395
    .end local v3  # "msg":Landroid/os/Message;
    :cond_29
    :try_start_29
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/KeyguardController;->setKeyguardShown(ZZ)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_41

    .line 3397
    :try_start_2e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3398
    nop

    .line 3399
    .end local v1  # "ident":J
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_46

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3401
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$iduseKQrjIWQYD0hJ8Q5DMmuSfE;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$iduseKQrjIWQYD0hJ8Q5DMmuSfE;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 3406
    return-void

    .line 3397
    .restart local v1  # "ident":J
    :catchall_41
    move-exception v3

    :try_start_42
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "keyguardShowing":Z
    .end local p2  # "aodShowing":Z
    throw v3

    .line 3399
    .end local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "keyguardShowing":Z
    .restart local p2  # "aodShowing":Z
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_46

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 3381
    :cond_4c
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires permission android.permission.DEVICE_POWER"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPackageAskScreenCompat(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "ask"  # Z

    .line 4922
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SET_SCREEN_COMPATIBILITY"

    const-string v2, "setPackageAskScreenCompat"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4924
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4925
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/CompatModePackages;->setPackageAskCompatModeLocked(Ljava/lang/String;Z)V

    .line 4926
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4927
    return-void

    .line 4926
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setPackageScreenCompatMode(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "mode"  # I

    .line 4905
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SET_SCREEN_COMPATIBILITY"

    const-string v2, "setPackageScreenCompatMode"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4907
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4908
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/CompatModePackages;->setPackageScreenCompatModeLocked(Ljava/lang/String;I)V

    .line 4909
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4910
    return-void

    .line 4909
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setPersistentVrThread(I)V
    .registers 6
    .param p1, "tid"  # I

    .line 4806
    const-string v0, "android.permission.RESTRICTED_VR_ACCESS"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2b

    .line 4815
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceSystemHasVrFeature()V

    .line 4816
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4817
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 4818
    .local v1, "pid":I
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    .line 4819
    .local v2, "proc":Lcom/android/server/wm/WindowProcessController;
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v3, p1, v1, v2}, Lcom/android/server/wm/VrController;->setPersistentVrThreadLocked(IILcom/android/server/wm/WindowProcessController;)V

    .line 4820
    .end local v1  # "pid":I
    .end local v2  # "proc":Lcom/android/server/wm/WindowProcessController;
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4821
    return-void

    .line 4820
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 4808
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: setPersistentVrThread() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4809
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4810
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.RESTRICTED_VR_ACCESS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4812
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4813
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setPictureInPictureParams(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)V
    .registers 9
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "params"  # Landroid/app/PictureInPictureParams;

    .line 4256
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4258
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_49

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4259
    const-string v3, "setPictureInPictureParams"

    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->ensureValidPictureInPictureActivityParamsLocked(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 4263
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v4, p2}, Landroid/app/PictureInPictureParams;->copyOnlySet(Landroid/app/PictureInPictureParams;)V

    .line 4264
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 4268
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 4269
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->isAnimatingBoundsToFullscreen()Z

    move-result v5

    if-nez v5, :cond_37

    .line 4270
    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 4271
    invoke-virtual {v5}, Landroid/app/PictureInPictureParams;->getAspectRatio()F

    move-result v5

    .line 4270
    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityStack;->setPictureInPictureAspectRatio(F)V

    .line 4272
    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v5}, Landroid/app/PictureInPictureParams;->getActions()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityStack;->setPictureInPictureActions(Ljava/util/List;)V

    .line 4275
    .end local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_37
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->logPictureInPictureArgs(Landroid/app/PictureInPictureParams;)V

    .line 4276
    .end local v3  # "r":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_43

    :try_start_3b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_49

    .line 4278
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4279
    nop

    .line 4280
    return-void

    .line 4276
    :catchall_43
    move-exception v3

    :try_start_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    :try_start_45
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "origId":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "token":Landroid/os/IBinder;
    .end local p2  # "params":Landroid/app/PictureInPictureParams;
    throw v3
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_49

    .line 4278
    .restart local v0  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "token":Landroid/os/IBinder;
    .restart local p2  # "params":Landroid/app/PictureInPictureParams;
    :catchall_49
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setRequestedOrientation(Landroid/os/IBinder;I)V
    .registers 8
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "requestedOrientation"  # I

    .line 1858
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1859
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1860
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_11

    .line 1861
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1863
    :cond_11
    :try_start_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_26

    .line 1865
    .local v2, "origId":J
    :try_start_15
    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityRecord;->setRequestedOrientation(I)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_21

    .line 1867
    :try_start_18
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1868
    nop

    .line 1869
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2  # "origId":J
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1870
    return-void

    .line 1867
    .restart local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v2  # "origId":J
    :catchall_21
    move-exception v4

    :try_start_22
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "token":Landroid/os/IBinder;
    .end local p2  # "requestedOrientation":I
    throw v4

    .line 1869
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "token":Landroid/os/IBinder;
    .restart local p2  # "requestedOrientation":I
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .registers 8
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reason"  # Ljava/lang/String;

    .line 5571
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 5572
    .local v0, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->isActivityTypeStandard()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3d

    .line 5573
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eq v1, v4, :cond_39

    .line 5575
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v1, :cond_2d

    .line 5576
    invoke-virtual {v1}, Lcom/android/server/am/AppTimeTracker;->stop()V

    .line 5577
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    invoke-virtual {v1, v2, v4}, Lcom/android/server/wm/ActivityTaskManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 5578
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 5579
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/RootActivityContainer;->clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V

    .line 5580
    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 5582
    :cond_2d
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v1, :cond_3f

    .line 5583
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 5584
    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->startTimeTrackingFocusedActivityLocked()V

    goto :goto_3f

    .line 5587
    :cond_39
    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->startTimeTrackingFocusedActivityLocked()V

    goto :goto_3f

    .line 5590
    :cond_3d
    iput-object v3, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 5595
    :cond_3f
    :goto_3f
    iget-object v1, v0, Lcom/android/server/wm/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v1, :cond_4f

    .line 5596
    iget-object v1, v0, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v1, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->startRunningVoiceLocked(Landroid/service/voice/IVoiceInteractionSession;I)V

    goto :goto_6c

    .line 5598
    :cond_4f
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->finishRunningVoiceLocked()V

    .line 5600
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_6c

    .line 5603
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    .line 5604
    .local v1, "lastResumedActivityTask":Lcom/android/server/wm/TaskRecord;
    if-eqz v1, :cond_63

    iget-object v3, v1, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v3, :cond_63

    .line 5606
    iget-object v3, v1, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .local v3, "session":Landroid/service/voice/IVoiceInteractionSession;
    goto :goto_67

    .line 5608
    .end local v3  # "session":Landroid/service/voice/IVoiceInteractionSession;
    :cond_63
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 5611
    .restart local v3  # "session":Landroid/service/voice/IVoiceInteractionSession;
    :goto_67
    if-eqz v3, :cond_6c

    .line 5616
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 5621
    .end local v1  # "lastResumedActivityTask":Lcom/android/server/wm/TaskRecord;
    .end local v3  # "session":Landroid/service/voice/IVoiceInteractionSession;
    :cond_6c
    :goto_6c
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_7f

    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget v3, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eq v1, v3, :cond_7f

    .line 5622
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v3, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v1, v3}, Landroid/app/ActivityManagerInternal;->sendForegroundProfileChanged(I)V

    .line 5624
    :cond_7f
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateResumedAppTrace(Lcom/android/server/wm/ActivityRecord;)V

    .line 5625
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 5627
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/ActivityDisplay;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 5629
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->applyUpdateLockStateLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 5630
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->applyUpdateVrModeLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 5633
    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 5634
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 5632
    invoke-static {v1, v2, p2}, Lcom/android/server/am/EventLogTags;->writeAmSetResumedActivity(ILjava/lang/String;Ljava/lang/String;)V

    .line 5636
    return-void
.end method

.method public setShowWhenLocked(Landroid/os/IBinder;Z)V
    .registers 8
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "showWhenLocked"  # Z

    .line 4678
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4679
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4680
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_11

    .line 4681
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4683
    :cond_11
    :try_start_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_26

    .line 4685
    .local v2, "origId":J
    :try_start_15
    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityRecord;->setShowWhenLocked(Z)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_21

    .line 4687
    :try_start_18
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4688
    nop

    .line 4689
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2  # "origId":J
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4690
    return-void

    .line 4687
    .restart local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v2  # "origId":J
    :catchall_21
    move-exception v4

    :try_start_22
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "token":Landroid/os/IBinder;
    .end local p2  # "showWhenLocked":Z
    throw v4

    .line 4689
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "token":Landroid/os/IBinder;
    .restart local p2  # "showWhenLocked":Z
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setSplitScreenResizing(Z)V
    .registers 6
    .param p1, "resizing"  # Z

    .line 4375
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "setSplitScreenResizing()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4376
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4378
    .local v0, "ident":J
    :try_start_b
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_25

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4379
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->setSplitScreenResizing(Z)V

    .line 4380
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_1f

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_25

    .line 4382
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4383
    nop

    .line 4384
    return-void

    .line 4380
    :catchall_1f
    move-exception v3

    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    :try_start_21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "resizing":Z
    throw v3
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_25

    .line 4382
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "resizing":Z
    :catchall_25
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V
    .registers 8
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "td"  # Landroid/app/ActivityManager$TaskDescription;

    .line 3017
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3018
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3019
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_1f

    .line 3020
    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityRecord;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 3021
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    .line 3022
    .local v2, "task":Lcom/android/server/wm/TaskRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->updateTaskDescription()V

    .line 3023
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskDescriptionChanged(Landroid/app/TaskInfo;)V

    .line 3025
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2  # "task":Lcom/android/server/wm/TaskRecord;
    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3026
    return-void

    .line 3025
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setTaskResizeable(II)V
    .registers 8
    .param p1, "taskId"  # I
    .param p2, "resizeableMode"  # I

    .line 3288
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3289
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    .line 3291
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    if-nez v1, :cond_2f

    .line 3292
    const-string v2, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTaskResizeable: taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3293
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3295
    :cond_2f
    :try_start_2f
    invoke-virtual {v1, p2}, Lcom/android/server/wm/TaskRecord;->setResizeMode(I)V

    .line 3296
    .end local v1  # "task":Lcom/android/server/wm/TaskRecord;
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3297
    return-void

    .line 3296
    :catchall_37
    move-exception v1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setTaskWindowingMode(IIZ)V
    .registers 12
    .param p1, "taskId"  # I
    .param p2, "windowingMode"  # I
    .param p3, "toTop"  # Z

    .line 2311
    const/4 v0, 0x3

    if-ne p2, v0, :cond_e

    .line 2312
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move v2, p1

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityTaskManagerService;->setTaskWindowingModeSplitScreenPrimary(IIZZLandroid/graphics/Rect;Z)Z

    .line 2314
    return-void

    .line 2316
    :cond_e
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "setTaskWindowingMode()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2317
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2318
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_b1

    .line 2320
    .local v1, "ident":J
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    .line 2322
    .local v3, "task":Lcom/android/server/wm/TaskRecord;
    if-nez v3, :cond_46

    .line 2323
    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setTaskWindowingMode: No task for id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_1f .. :try_end_3e} :catchall_ac

    .line 2342
    :try_start_3e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_b1

    .line 2324
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2327
    :cond_46
    :try_start_46
    sget-boolean v4, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v4, :cond_70

    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setTaskWindowingMode: moving task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to windowingMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " toTop="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    :cond_70
    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 2336
    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 2337
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz p3, :cond_81

    .line 2338
    const-string v5, "setTaskWindowingMode"

    invoke-virtual {v4, v5, v3}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/TaskRecord;)V

    .line 2340
    :cond_81
    invoke-virtual {v4, p2}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V
    :try_end_84
    .catchall {:try_start_46 .. :try_end_84} :catchall_ac

    .line 2342
    .end local v3  # "task":Lcom/android/server/wm/TaskRecord;
    .end local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    :try_start_84
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2343
    nop

    .line 2344
    .end local v1  # "ident":J
    monitor-exit v0
    :try_end_89
    .catchall {:try_start_84 .. :try_end_89} :catchall_b1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2345
    return-void

    .line 2331
    .restart local v1  # "ident":J
    .restart local v3  # "task":Lcom/android/server/wm/TaskRecord;
    :cond_8d
    :try_start_8d
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setTaskWindowingMode: Attempt to move non-standard task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to windowing mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskId":I
    .end local p2  # "windowingMode":I
    .end local p3  # "toTop":Z
    throw v4
    :try_end_ac
    .catchall {:try_start_8d .. :try_end_ac} :catchall_ac

    .line 2342
    .end local v3  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskId":I
    .restart local p2  # "windowingMode":I
    .restart local p3  # "toTop":Z
    :catchall_ac
    move-exception v3

    :try_start_ad
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskId":I
    .end local p2  # "windowingMode":I
    .end local p3  # "toTop":Z
    throw v3

    .line 2344
    .end local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskId":I
    .restart local p2  # "windowingMode":I
    .restart local p3  # "toTop":Z
    :catchall_b1
    move-exception v1

    monitor-exit v0
    :try_end_b3
    .catchall {:try_start_ad .. :try_end_b3} :catchall_b1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setTaskWindowingModeSplitScreenPrimary(IIZZLandroid/graphics/Rect;Z)Z
    .registers 26
    .param p1, "taskId"  # I
    .param p2, "createMode"  # I
    .param p3, "toTop"  # Z
    .param p4, "animate"  # Z
    .param p5, "initialBounds"  # Landroid/graphics/Rect;
    .param p6, "showRecents"  # Z

    .line 2753
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v5, "setTaskWindowingModeSplitScreenPrimary()"

    invoke-direct {v1, v0, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2755
    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5

    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2756
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_cc

    .line 2758
    .local v6, "ident":J
    :try_start_19
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v8, 0x0

    invoke-virtual {v0, v2, v8}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 2760
    .local v0, "task":Lcom/android/server/wm/TaskRecord;
    if-nez v0, :cond_41

    .line 2761
    const-string v9, "ActivityTaskManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setTaskWindowingModeSplitScreenPrimary: No task for id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_19 .. :try_end_38} :catchall_c5

    .line 2762
    nop

    .line 2783
    :try_start_39
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v5
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_cc

    .line 2762
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v8

    .line 2764
    :cond_41
    :try_start_41
    sget-boolean v9, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v9, :cond_6b

    const-string v9, "ActivityTaskManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setTaskWindowingModeSplitScreenPrimary: moving task="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " to createMode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " toTop="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    :cond_6b
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v9

    if-eqz v9, :cond_a5

    .line 2772
    iget-object v9, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;
    :try_end_73
    .catchall {:try_start_41 .. :try_end_73} :catchall_c5

    move-object/from16 v10, p5

    :try_start_75
    invoke-virtual {v9, v3, v10}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateState(ILandroid/graphics/Rect;)V

    .line 2773
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getWindowingMode()I

    move-result v9

    .line 2774
    .local v9, "windowingMode":I
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v11

    .line 2775
    .local v11, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v4, :cond_87

    .line 2776
    const-string v12, "setTaskWindowingModeSplitScreenPrimary"

    invoke-virtual {v11, v12, v0}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/TaskRecord;)V

    .line 2778
    :cond_87
    const/4 v13, 0x3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v12, v11

    move/from16 v14, p4

    move/from16 v15, p6

    invoke-virtual/range {v12 .. v18}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZZZZZ)V

    .line 2781
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getWindowingMode()I

    move-result v12
    :try_end_9a
    .catchall {:try_start_75 .. :try_end_9a} :catchall_c3

    if-eq v9, v12, :cond_9d

    const/4 v8, 0x1

    .line 2783
    :cond_9d
    :try_start_9d
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v5
    :try_end_a1
    .catchall {:try_start_9d .. :try_end_a1} :catchall_d4

    .line 2781
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v8

    .line 2768
    .end local v9  # "windowingMode":I
    .end local v11  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_a5
    move-object/from16 v10, p5

    :try_start_a7
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setTaskWindowingMode: Attempt to move non-standard task "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " to split-screen windowing mode"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v6  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskId":I
    .end local p2  # "createMode":I
    .end local p3  # "toTop":Z
    .end local p4  # "animate":Z
    .end local p5  # "initialBounds":Landroid/graphics/Rect;
    .end local p6  # "showRecents":Z
    throw v8
    :try_end_c3
    .catchall {:try_start_a7 .. :try_end_c3} :catchall_c3

    .line 2783
    .end local v0  # "task":Lcom/android/server/wm/TaskRecord;
    .restart local v6  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskId":I
    .restart local p2  # "createMode":I
    .restart local p3  # "toTop":Z
    .restart local p4  # "animate":Z
    .restart local p5  # "initialBounds":Landroid/graphics/Rect;
    .restart local p6  # "showRecents":Z
    :catchall_c3
    move-exception v0

    goto :goto_c8

    :catchall_c5
    move-exception v0

    move-object/from16 v10, p5

    :goto_c8
    :try_start_c8
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskId":I
    .end local p2  # "createMode":I
    .end local p3  # "toTop":Z
    .end local p4  # "animate":Z
    .end local p5  # "initialBounds":Landroid/graphics/Rect;
    .end local p6  # "showRecents":Z
    throw v0

    .line 2785
    .end local v6  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskId":I
    .restart local p2  # "createMode":I
    .restart local p3  # "toTop":Z
    .restart local p4  # "animate":Z
    .restart local p5  # "initialBounds":Landroid/graphics/Rect;
    .restart local p6  # "showRecents":Z
    :catchall_cc
    move-exception v0

    move-object/from16 v10, p5

    :goto_cf
    monitor-exit v5
    :try_end_d0
    .catchall {:try_start_c8 .. :try_end_d0} :catchall_d4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_d4
    move-exception v0

    goto :goto_cf
.end method

.method public setTurnScreenOn(Landroid/os/IBinder;Z)V
    .registers 8
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "turnScreenOn"  # Z

    .line 4710
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4711
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4712
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_11

    .line 4713
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4715
    :cond_11
    :try_start_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_26

    .line 4717
    .local v2, "origId":J
    :try_start_15
    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityRecord;->setTurnScreenOn(Z)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_21

    .line 4719
    :try_start_18
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4720
    nop

    .line 4721
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2  # "origId":J
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4722
    return-void

    .line 4719
    .restart local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v2  # "origId":J
    :catchall_21
    move-exception v4

    :try_start_22
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "token":Landroid/os/IBinder;
    .end local p2  # "turnScreenOn":Z
    throw v4

    .line 4721
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "token":Landroid/os/IBinder;
    .restart local p2  # "turnScreenOn":Z
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V
    .registers 4
    .param p1, "usageStatsManager"  # Landroid/app/usage/UsageStatsManagerInternal;

    .line 902
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 903
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 904
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 905
    return-void

    .line 904
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V
    .registers 6
    .param p1, "session"  # Landroid/service/voice/IVoiceInteractionSession;
    .param p2, "keepAwake"  # Z

    .line 3894
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3895
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_23

    .line 3896
    if-eqz p2, :cond_1e

    .line 3897
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_23

    .line 3899
    :cond_1e
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3902
    :cond_23
    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3903
    return-void

    .line 3902
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I
    .registers 11
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "enabled"  # Z
    .param p3, "packageName"  # Landroid/content/ComponentName;

    .line 4399
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceSystemHasVrFeature()V

    .line 4401
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    .line 4404
    .local v0, "vrService":Lcom/android/server/vr/VrManagerInternal;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4405
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 4406
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_59

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4408
    if-eqz v2, :cond_53

    .line 4413
    iget v1, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, p3, v1}, Lcom/android/server/vr/VrManagerInternal;->hasVrPackage(Landroid/content/ComponentName;I)I

    move-result v1

    move v3, v1

    .local v3, "err":I
    if-eqz v1, :cond_25

    .line 4415
    return v3

    .line 4419
    :cond_25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 4421
    .local v4, "callingId":J
    :try_start_29
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_4e

    :try_start_2c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4422
    if-eqz p2, :cond_33

    move-object v6, p3

    goto :goto_34

    :cond_33
    const/4 v6, 0x0

    :goto_34
    iput-object v6, v2, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    .line 4425
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isResumedActivityOnDisplay()Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 4426
    invoke-direct {p0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->applyUpdateVrModeLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 4428
    :cond_3f
    const/4 v6, 0x0

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_2c .. :try_end_41} :catchall_48

    .line 4431
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4428
    return v6

    .line 4429
    :catchall_48
    move-exception v6

    :try_start_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    :try_start_4a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "vrService":Lcom/android/server/vr/VrManagerInternal;
    .end local v2  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v3  # "err":I
    .end local v4  # "callingId":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "token":Landroid/os/IBinder;
    .end local p2  # "enabled":Z
    .end local p3  # "packageName":Landroid/content/ComponentName;
    throw v6
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_4e

    .line 4431
    .restart local v0  # "vrService":Lcom/android/server/vr/VrManagerInternal;
    .restart local v2  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v3  # "err":I
    .restart local v4  # "callingId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "token":Landroid/os/IBinder;
    .restart local p2  # "enabled":Z
    .restart local p3  # "packageName":Landroid/content/ComponentName;
    :catchall_4e
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 4409
    .end local v3  # "err":I
    .end local v4  # "callingId":J
    :cond_53
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 4406
    .end local v2  # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_59
    move-exception v2

    :try_start_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public setVrThread(I)V
    .registers 6
    .param p1, "tid"  # I

    .line 4796
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceSystemHasVrFeature()V

    .line 4797
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4798
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 4799
    .local v1, "pid":I
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    .line 4800
    .local v2, "wpc":Lcom/android/server/wm/WindowProcessController;
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v3, p1, v1, v2}, Lcom/android/server/wm/VrController;->setVrThreadLocked(IILcom/android/server/wm/WindowProcessController;)V

    .line 4801
    .end local v1  # "pid":I
    .end local v2  # "wpc":Lcom/android/server/wm/WindowProcessController;
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4802
    return-void

    .line 4801
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4
    .param p1, "wm"  # Lcom/android/server/wm/WindowManagerService;

    .line 893
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 894
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 895
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/LockTaskController;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 896
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 897
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootActivityContainer;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 898
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 899
    return-void

    .line 898
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method shouldDisableNonVrUiLocked()Z
    .registers 2

    .line 4867
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v0}, Lcom/android/server/wm/VrController;->shouldDisableNonVrUiLocked()Z

    move-result v0

    return v0
.end method

.method public shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z
    .registers 6
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "destAffinity"  # Ljava/lang/String;

    .line 2202
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2203
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2204
    .local v1, "srec":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_19

    .line 2205
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/android/server/wm/ActivityStack;->shouldUpRecreateTaskLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v2

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 2207
    .end local v1  # "srec":Lcom/android/server/wm/ActivityRecord;
    :cond_19
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2208
    const/4 v0, 0x0

    return v0

    .line 2207
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    .registers 12
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "args"  # Landroid/os/Bundle;

    .line 3813
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3815
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_7d

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3816
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 3817
    .local v3, "caller":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 3818
    .local v4, "top":Lcom/android/server/wm/ActivityRecord;
    const/4 v5, 0x0

    if-eq v4, v3, :cond_3f

    .line 3819
    const-string v6, "ActivityTaskManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "showAssistFromActivity failed: caller "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " is not current top "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3821
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_77

    .line 3832
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3821
    return v5

    .line 3823
    :cond_3f
    :try_start_3f
    iget-boolean v6, v4, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-nez v6, :cond_66

    .line 3824
    const-string v6, "ActivityTaskManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "showAssistFromActivity failed: caller "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " is not visible"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3826
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_3f .. :try_end_5f} :catchall_77

    .line 3832
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3826
    return v5

    .line 3828
    .end local v3  # "caller":Lcom/android/server/wm/ActivityRecord;
    .end local v4  # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_66
    :try_start_66
    monitor-exit v2
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_77

    :try_start_67
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3829
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {v2, p2, v3, v4, p1}, Lcom/android/internal/app/AssistUtils;->showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result v2
    :try_end_73
    .catchall {:try_start_67 .. :try_end_73} :catchall_7d

    .line 3832
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3829
    return v2

    .line 3828
    :catchall_77
    move-exception v3

    :try_start_78
    monitor-exit v2
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    :try_start_79
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "token":Landroid/os/IBinder;
    .end local p2  # "args":Landroid/os/Bundle;
    throw v3
    :try_end_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_7d

    .line 3832
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "token":Landroid/os/IBinder;
    .restart local p2  # "args":Landroid/os/Bundle;
    :catchall_7d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public showLockTaskEscapeMessage(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "token"  # Landroid/os/IBinder;

    .line 3929
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3930
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3931
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_11

    .line 3932
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3934
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    .line 3935
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3936
    return-void

    .line 3935
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public final startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .registers 27
    .param p1, "caller"  # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "intents"  # [Landroid/content/Intent;
    .param p4, "resolvedTypes"  # [Ljava/lang/String;
    .param p5, "resultTo"  # Landroid/os/IBinder;
    .param p6, "bOptions"  # Landroid/os/Bundle;
    .param p7, "userId"  # I

    .line 1061
    move-object/from16 v0, p0

    const-string v1, "startActivities"

    .line 1062
    .local v1, "reason":Ljava/lang/String;
    const-string v2, "startActivities"

    invoke-direct {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1063
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move/from16 v5, p7

    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result v2

    .line 1065
    .end local p7  # "userId":I
    .local v2, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v5

    .line 1066
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v14

    .line 1065
    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    const-string v16, "startActivities"

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v6, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move v15, v2

    invoke-virtual/range {v5 .. v18}, Lcom/android/server/wm/ActivityStartController;->startActivities(Landroid/app/IApplicationThread;IIILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;ILjava/lang/String;Lcom/android/server/am/PendingIntentRecord;Z)I

    move-result v3

    return v3
.end method

.method public final startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I
    .registers 23
    .param p1, "caller"  # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "intent"  # Landroid/content/Intent;
    .param p4, "resolvedType"  # Ljava/lang/String;
    .param p5, "resultTo"  # Landroid/os/IBinder;
    .param p6, "resultWho"  # Ljava/lang/String;
    .param p7, "requestCode"  # I
    .param p8, "startFlags"  # I
    .param p9, "profilerInfo"  # Landroid/app/ProfilerInfo;
    .param p10, "bOptions"  # Landroid/os/Bundle;

    .line 1052
    nop

    .line 1054
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    .line 1052
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    return v0
.end method

.method public final startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;
    .registers 28
    .param p1, "caller"  # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "intent"  # Landroid/content/Intent;
    .param p4, "resolvedType"  # Ljava/lang/String;
    .param p5, "resultTo"  # Landroid/os/IBinder;
    .param p6, "resultWho"  # Ljava/lang/String;
    .param p7, "requestCode"  # I
    .param p8, "startFlags"  # I
    .param p9, "profilerInfo"  # Landroid/app/ProfilerInfo;
    .param p10, "bOptions"  # Landroid/os/Bundle;
    .param p11, "userId"  # I

    .line 1262
    move-object/from16 v1, p0

    new-instance v0, Landroid/app/WaitResult;

    invoke-direct {v0}, Landroid/app/WaitResult;-><init>()V

    move-object v2, v0

    .line 1263
    .local v2, "res":Landroid/app/WaitResult;
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1264
    const-string v0, "startActivityAndWait"

    invoke-direct {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1265
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const-string v5, "startActivityAndWait"
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_bb

    move/from16 v6, p11

    :try_start_1f
    invoke-virtual {v1, v0, v4, v6, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result v0
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_a5

    move v4, v0

    .line 1268
    .end local p11  # "userId":I
    .local v4, "userId":I
    :try_start_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    const-string v5, "startActivityAndWait"
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_8f

    move-object/from16 v7, p3

    :try_start_2c
    invoke-virtual {v0, v7, v5}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_89

    .line 1269
    move-object/from16 v5, p1

    :try_start_32
    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_87

    .line 1270
    move-object/from16 v8, p2

    :try_start_38
    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_85

    .line 1271
    move-object/from16 v9, p4

    :try_start_3e
    invoke-virtual {v0, v9}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_83

    .line 1272
    move-object/from16 v10, p5

    :try_start_44
    invoke-virtual {v0, v10}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_81

    .line 1273
    move-object/from16 v11, p6

    :try_start_4a
    invoke-virtual {v0, v11}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_7f

    .line 1274
    move/from16 v12, p7

    :try_start_50
    invoke-virtual {v0, v12}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_7d

    .line 1275
    move/from16 v13, p8

    :try_start_56
    invoke-virtual {v0, v13}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_7b

    .line 1276
    move-object/from16 v14, p10

    :try_start_5c
    invoke-virtual {v0, v14}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1277
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityStarter;->setMayWait(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_64
    .catchall {:try_start_5c .. :try_end_64} :catchall_76

    .line 1278
    move-object/from16 v15, p9

    :try_start_66
    invoke-virtual {v0, v15}, Lcom/android/server/wm/ActivityStarter;->setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1279
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter;->setWaitResult(Landroid/app/WaitResult;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1280
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    .line 1281
    monitor-exit v3
    :try_end_72
    .catchall {:try_start_66 .. :try_end_72} :catchall_d8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1282
    return-object v2

    .line 1281
    :catchall_76
    move-exception v0

    move-object/from16 v15, p9

    goto/16 :goto_d3

    :catchall_7b
    move-exception v0

    goto :goto_a0

    :catchall_7d
    move-exception v0

    goto :goto_9e

    :catchall_7f
    move-exception v0

    goto :goto_9c

    :catchall_81
    move-exception v0

    goto :goto_9a

    :catchall_83
    move-exception v0

    goto :goto_98

    :catchall_85
    move-exception v0

    goto :goto_96

    :catchall_87
    move-exception v0

    goto :goto_8c

    :catchall_89
    move-exception v0

    move-object/from16 v5, p1

    :goto_8c
    move-object/from16 v8, p2

    goto :goto_96

    :catchall_8f
    move-exception v0

    move-object/from16 v5, p1

    move-object/from16 v8, p2

    move-object/from16 v7, p3

    :goto_96
    move-object/from16 v9, p4

    :goto_98
    move-object/from16 v10, p5

    :goto_9a
    move-object/from16 v11, p6

    :goto_9c
    move/from16 v12, p7

    :goto_9e
    move/from16 v13, p8

    :goto_a0
    move-object/from16 v15, p9

    move-object/from16 v14, p10

    goto :goto_d3

    .end local v4  # "userId":I
    .restart local p11  # "userId":I
    :catchall_a5
    move-exception v0

    move-object/from16 v5, p1

    move-object/from16 v8, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move-object/from16 v15, p9

    move-object/from16 v14, p10

    goto :goto_d2

    :catchall_bb
    move-exception v0

    move-object/from16 v5, p1

    move-object/from16 v8, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move-object/from16 v15, p9

    move-object/from16 v14, p10

    move/from16 v6, p11

    :goto_d2
    move v4, v6

    .end local p11  # "userId":I
    .restart local v4  # "userId":I
    :goto_d3
    :try_start_d3
    monitor-exit v3
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_d8
    move-exception v0

    goto :goto_d3
.end method

.method public final startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/os/IBinder;ZI)I
    .registers 31
    .param p1, "caller"  # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "intent"  # Landroid/content/Intent;
    .param p4, "resolvedType"  # Ljava/lang/String;
    .param p5, "resultTo"  # Landroid/os/IBinder;
    .param p6, "resultWho"  # Ljava/lang/String;
    .param p7, "requestCode"  # I
    .param p8, "startFlags"  # I
    .param p9, "profilerInfo"  # Landroid/app/ProfilerInfo;
    .param p10, "bOptions"  # Landroid/os/Bundle;
    .param p11, "permissionToken"  # Landroid/os/IBinder;
    .param p12, "ignoreTargetSecurity"  # Z
    .param p13, "userId"  # I

    .line 1350
    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p11

    move/from16 v4, p12

    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1351
    if-eqz v2, :cond_1a2

    .line 1355
    if-eqz v3, :cond_5b

    .line 1358
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v6, "android.permission.START_ACTIVITY_AS_CALLER"

    const-string v7, "startActivityAsCaller"

    invoke-virtual {v0, v6, v7}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1363
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mStartActivitySources:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 1364
    .local v0, "sourceToken":Landroid/os/IBinder;
    if-nez v0, :cond_5d

    .line 1366
    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mExpiredStartAsCallerTokens:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 1367
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Called with expired permission token: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "caller":Landroid/app/IApplicationThread;
    .end local p2  # "callingPackage":Ljava/lang/String;
    .end local p3  # "intent":Landroid/content/Intent;
    .end local p4  # "resolvedType":Ljava/lang/String;
    .end local p5  # "resultTo":Landroid/os/IBinder;
    .end local p6  # "resultWho":Ljava/lang/String;
    .end local p7  # "requestCode":I
    .end local p8  # "startFlags":I
    .end local p9  # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p10  # "bOptions":Landroid/os/Bundle;
    .end local p11  # "permissionToken":Landroid/os/IBinder;
    .end local p12  # "ignoreTargetSecurity":Z
    .end local p13  # "userId":I
    throw v6

    .line 1370
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "caller":Landroid/app/IApplicationThread;
    .restart local p2  # "callingPackage":Ljava/lang/String;
    .restart local p3  # "intent":Landroid/content/Intent;
    .restart local p4  # "resolvedType":Ljava/lang/String;
    .restart local p5  # "resultTo":Landroid/os/IBinder;
    .restart local p6  # "resultWho":Ljava/lang/String;
    .restart local p7  # "requestCode":I
    .restart local p8  # "startFlags":I
    .restart local p9  # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p10  # "bOptions":Landroid/os/Bundle;
    .restart local p11  # "permissionToken":Landroid/os/IBinder;
    .restart local p12  # "ignoreTargetSecurity":Z
    .restart local p13  # "userId":I
    :cond_44
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Called with invalid permission token: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "caller":Landroid/app/IApplicationThread;
    .end local p2  # "callingPackage":Ljava/lang/String;
    .end local p3  # "intent":Landroid/content/Intent;
    .end local p4  # "resolvedType":Ljava/lang/String;
    .end local p5  # "resultTo":Landroid/os/IBinder;
    .end local p6  # "resultWho":Ljava/lang/String;
    .end local p7  # "requestCode":I
    .end local p8  # "startFlags":I
    .end local p9  # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p10  # "bOptions":Landroid/os/Bundle;
    .end local p11  # "permissionToken":Landroid/os/IBinder;
    .end local p12  # "ignoreTargetSecurity":Z
    .end local p13  # "userId":I
    throw v6

    .line 1376
    .end local v0  # "sourceToken":Landroid/os/IBinder;
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "caller":Landroid/app/IApplicationThread;
    .restart local p2  # "callingPackage":Ljava/lang/String;
    .restart local p3  # "intent":Landroid/content/Intent;
    .restart local p4  # "resolvedType":Ljava/lang/String;
    .restart local p5  # "resultTo":Landroid/os/IBinder;
    .restart local p6  # "resultWho":Ljava/lang/String;
    .restart local p7  # "requestCode":I
    .restart local p8  # "startFlags":I
    .restart local p9  # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p10  # "bOptions":Landroid/os/Bundle;
    .restart local p11  # "permissionToken":Landroid/os/IBinder;
    .restart local p12  # "ignoreTargetSecurity":Z
    .restart local p13  # "userId":I
    :cond_5b
    move-object/from16 v0, p5

    .line 1379
    .restart local v0  # "sourceToken":Landroid/os/IBinder;
    :cond_5d
    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v6, v0}, Lcom/android/server/wm/RootActivityContainer;->isInAnyStack(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 1380
    .local v6, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v6, :cond_17f

    .line 1383
    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v7, :cond_16b

    .line 1389
    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v8, "android"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_157

    .line 1394
    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v7, v7, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    const/16 v8, 0x3e8

    if-eq v7, v8, :cond_af

    .line 1397
    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v7, v7, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget v8, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    if-ne v7, v8, :cond_8a

    goto :goto_af

    .line 1398
    :cond_8a
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Calling activity in uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v9, v9, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " must be system uid or original calling uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "caller":Landroid/app/IApplicationThread;
    .end local p2  # "callingPackage":Ljava/lang/String;
    .end local p3  # "intent":Landroid/content/Intent;
    .end local p4  # "resolvedType":Ljava/lang/String;
    .end local p5  # "resultTo":Landroid/os/IBinder;
    .end local p6  # "resultWho":Ljava/lang/String;
    .end local p7  # "requestCode":I
    .end local p8  # "startFlags":I
    .end local p9  # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p10  # "bOptions":Landroid/os/Bundle;
    .end local p11  # "permissionToken":Landroid/os/IBinder;
    .end local p12  # "ignoreTargetSecurity":Z
    .end local p13  # "userId":I
    throw v7

    .line 1404
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "caller":Landroid/app/IApplicationThread;
    .restart local p2  # "callingPackage":Ljava/lang/String;
    .restart local p3  # "intent":Landroid/content/Intent;
    .restart local p4  # "resolvedType":Ljava/lang/String;
    .restart local p5  # "resultTo":Landroid/os/IBinder;
    .restart local p6  # "resultWho":Ljava/lang/String;
    .restart local p7  # "requestCode":I
    .restart local p8  # "startFlags":I
    .restart local p9  # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p10  # "bOptions":Landroid/os/Bundle;
    .restart local p11  # "permissionToken":Landroid/os/IBinder;
    .restart local p12  # "ignoreTargetSecurity":Z
    .restart local p13  # "userId":I
    :cond_af
    :goto_af
    if-eqz v4, :cond_ce

    .line 1405
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_c6

    .line 1409
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v7

    if-nez v7, :cond_be

    goto :goto_ce

    .line 1410
    :cond_be
    new-instance v7, Ljava/lang/SecurityException;

    const-string v8, "Selector not allowed with ignoreTargetSecurity"

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "caller":Landroid/app/IApplicationThread;
    .end local p2  # "callingPackage":Ljava/lang/String;
    .end local p3  # "intent":Landroid/content/Intent;
    .end local p4  # "resolvedType":Ljava/lang/String;
    .end local p5  # "resultTo":Landroid/os/IBinder;
    .end local p6  # "resultWho":Ljava/lang/String;
    .end local p7  # "requestCode":I
    .end local p8  # "startFlags":I
    .end local p9  # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p10  # "bOptions":Landroid/os/Bundle;
    .end local p11  # "permissionToken":Landroid/os/IBinder;
    .end local p12  # "ignoreTargetSecurity":Z
    .end local p13  # "userId":I
    throw v7

    .line 1406
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "caller":Landroid/app/IApplicationThread;
    .restart local p2  # "callingPackage":Ljava/lang/String;
    .restart local p3  # "intent":Landroid/content/Intent;
    .restart local p4  # "resolvedType":Ljava/lang/String;
    .restart local p5  # "resultTo":Landroid/os/IBinder;
    .restart local p6  # "resultWho":Ljava/lang/String;
    .restart local p7  # "requestCode":I
    .restart local p8  # "startFlags":I
    .restart local p9  # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p10  # "bOptions":Landroid/os/Bundle;
    .restart local p11  # "permissionToken":Landroid/os/IBinder;
    .restart local p12  # "ignoreTargetSecurity":Z
    .restart local p13  # "userId":I
    :cond_c6
    new-instance v7, Ljava/lang/SecurityException;

    const-string v8, "Component must be specified with ignoreTargetSecurity"

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "caller":Landroid/app/IApplicationThread;
    .end local p2  # "callingPackage":Ljava/lang/String;
    .end local p3  # "intent":Landroid/content/Intent;
    .end local p4  # "resolvedType":Ljava/lang/String;
    .end local p5  # "resultTo":Landroid/os/IBinder;
    .end local p6  # "resultWho":Ljava/lang/String;
    .end local p7  # "requestCode":I
    .end local p8  # "startFlags":I
    .end local p9  # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p10  # "bOptions":Landroid/os/Bundle;
    .end local p11  # "permissionToken":Landroid/os/IBinder;
    .end local p12  # "ignoreTargetSecurity":Z
    .end local p13  # "userId":I
    throw v7

    .line 1414
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "caller":Landroid/app/IApplicationThread;
    .restart local p2  # "callingPackage":Ljava/lang/String;
    .restart local p3  # "intent":Landroid/content/Intent;
    .restart local p4  # "resolvedType":Ljava/lang/String;
    .restart local p5  # "resultTo":Landroid/os/IBinder;
    .restart local p6  # "resultWho":Ljava/lang/String;
    .restart local p7  # "requestCode":I
    .restart local p8  # "startFlags":I
    .restart local p9  # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p10  # "bOptions":Landroid/os/Bundle;
    .restart local p11  # "permissionToken":Landroid/os/IBinder;
    .restart local p12  # "ignoreTargetSecurity":Z
    .restart local p13  # "userId":I
    :cond_ce
    :goto_ce
    iget v7, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 1415
    .local v7, "targetUid":I
    iget-object v8, v6, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 1416
    .local v8, "targetPackage":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isResolverOrChildActivity()Z

    move-result v9

    .line 1417
    .end local v0  # "sourceToken":Landroid/os/IBinder;
    .local v9, "isResolver":Z
    monitor-exit v5
    :try_end_d7
    .catchall {:try_start_b .. :try_end_d7} :catchall_1b6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1419
    const/16 v0, -0x2710

    move/from16 v10, p13

    if-ne v10, v0, :cond_e9

    .line 1420
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    move v10, v0

    .line 1425
    .end local p13  # "userId":I
    .local v10, "userId":I
    :cond_e9
    :try_start_e9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    const-string v5, "startActivityAsCaller"
    :try_end_ef
    .catch Ljava/lang/SecurityException; {:try_start_e9 .. :try_end_ef} :catch_149

    move-object/from16 v11, p3

    :try_start_f1
    invoke-virtual {v0, v11, v5}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1426
    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1427
    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_fd
    .catch Ljava/lang/SecurityException; {:try_start_f1 .. :try_end_fd} :catch_147

    .line 1428
    move-object/from16 v12, p4

    :try_start_ff
    invoke-virtual {v0, v12}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1429
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_107
    .catch Ljava/lang/SecurityException; {:try_start_ff .. :try_end_107} :catch_145

    .line 1430
    move-object/from16 v13, p6

    :try_start_109
    invoke-virtual {v0, v13}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_10d
    .catch Ljava/lang/SecurityException; {:try_start_109 .. :try_end_10d} :catch_143

    .line 1431
    move/from16 v14, p7

    :try_start_10f
    invoke-virtual {v0, v14}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_113
    .catch Ljava/lang/SecurityException; {:try_start_10f .. :try_end_113} :catch_141

    .line 1432
    move/from16 v15, p8

    :try_start_115
    invoke-virtual {v0, v15}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_119
    .catch Ljava/lang/SecurityException; {:try_start_115 .. :try_end_119} :catch_13f

    .line 1433
    move-object/from16 v5, p10

    :try_start_11b
    invoke-virtual {v0, v5}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1434
    invoke-virtual {v0, v10}, Lcom/android/server/wm/ActivityStarter;->setMayWait(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1435
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityStarter;->setIgnoreTargetSecurity(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1436
    if-eqz v9, :cond_12e

    const/16 v16, 0x0

    move/from16 v1, v16

    goto :goto_12f

    :cond_12e
    move v1, v7

    :goto_12f
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setFilterCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    const/4 v1, 0x1

    .line 1439
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1440
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v0
    :try_end_13c
    .catch Ljava/lang/SecurityException; {:try_start_11b .. :try_end_13c} :catch_13d

    .line 1425
    return v0

    .line 1441
    :catch_13d
    move-exception v0

    goto :goto_156

    :catch_13f
    move-exception v0

    goto :goto_154

    :catch_141
    move-exception v0

    goto :goto_152

    :catch_143
    move-exception v0

    goto :goto_150

    :catch_145
    move-exception v0

    goto :goto_14e

    :catch_147
    move-exception v0

    goto :goto_14c

    :catch_149
    move-exception v0

    move-object/from16 v11, p3

    :goto_14c
    move-object/from16 v12, p4

    :goto_14e
    move-object/from16 v13, p6

    :goto_150
    move/from16 v14, p7

    :goto_152
    move/from16 v15, p8

    :goto_154
    move-object/from16 v5, p10

    .line 1453
    .local v0, "e":Ljava/lang/SecurityException;
    :goto_156
    throw v0

    .line 1390
    .end local v7  # "targetUid":I
    .end local v8  # "targetPackage":Ljava/lang/String;
    .end local v9  # "isResolver":Z
    .end local v10  # "userId":I
    .local v0, "sourceToken":Landroid/os/IBinder;
    .restart local p13  # "userId":I
    :cond_157
    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v10, p13

    :try_start_163
    new-instance v1, Ljava/lang/SecurityException;

    const-string v7, "Must be called from an activity that is declared in the android package"

    invoke-direct {v1, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "caller":Landroid/app/IApplicationThread;
    .end local p2  # "callingPackage":Ljava/lang/String;
    .end local p3  # "intent":Landroid/content/Intent;
    .end local p4  # "resolvedType":Ljava/lang/String;
    .end local p5  # "resultTo":Landroid/os/IBinder;
    .end local p6  # "resultWho":Ljava/lang/String;
    .end local p7  # "requestCode":I
    .end local p8  # "startFlags":I
    .end local p9  # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p10  # "bOptions":Landroid/os/Bundle;
    .end local p11  # "permissionToken":Landroid/os/IBinder;
    .end local p12  # "ignoreTargetSecurity":Z
    .end local p13  # "userId":I
    throw v1

    .line 1384
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "caller":Landroid/app/IApplicationThread;
    .restart local p2  # "callingPackage":Ljava/lang/String;
    .restart local p3  # "intent":Landroid/content/Intent;
    .restart local p4  # "resolvedType":Ljava/lang/String;
    .restart local p5  # "resultTo":Landroid/os/IBinder;
    .restart local p6  # "resultWho":Ljava/lang/String;
    .restart local p7  # "requestCode":I
    .restart local p8  # "startFlags":I
    .restart local p9  # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p10  # "bOptions":Landroid/os/Bundle;
    .restart local p11  # "permissionToken":Landroid/os/IBinder;
    .restart local p12  # "ignoreTargetSecurity":Z
    .restart local p13  # "userId":I
    :cond_16b
    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v10, p13

    new-instance v1, Ljava/lang/SecurityException;

    const-string v7, "Called without a process attached to activity"

    invoke-direct {v1, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "caller":Landroid/app/IApplicationThread;
    .end local p2  # "callingPackage":Ljava/lang/String;
    .end local p3  # "intent":Landroid/content/Intent;
    .end local p4  # "resolvedType":Ljava/lang/String;
    .end local p5  # "resultTo":Landroid/os/IBinder;
    .end local p6  # "resultWho":Ljava/lang/String;
    .end local p7  # "requestCode":I
    .end local p8  # "startFlags":I
    .end local p9  # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p10  # "bOptions":Landroid/os/Bundle;
    .end local p11  # "permissionToken":Landroid/os/IBinder;
    .end local p12  # "ignoreTargetSecurity":Z
    .end local p13  # "userId":I
    throw v1

    .line 1381
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "caller":Landroid/app/IApplicationThread;
    .restart local p2  # "callingPackage":Ljava/lang/String;
    .restart local p3  # "intent":Landroid/content/Intent;
    .restart local p4  # "resolvedType":Ljava/lang/String;
    .restart local p5  # "resultTo":Landroid/os/IBinder;
    .restart local p6  # "resultWho":Ljava/lang/String;
    .restart local p7  # "requestCode":I
    .restart local p8  # "startFlags":I
    .restart local p9  # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p10  # "bOptions":Landroid/os/Bundle;
    .restart local p11  # "permissionToken":Landroid/os/IBinder;
    .restart local p12  # "ignoreTargetSecurity":Z
    .restart local p13  # "userId":I
    :cond_17f
    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v10, p13

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Called with bad activity token: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "caller":Landroid/app/IApplicationThread;
    .end local p2  # "callingPackage":Ljava/lang/String;
    .end local p3  # "intent":Landroid/content/Intent;
    .end local p4  # "resolvedType":Ljava/lang/String;
    .end local p5  # "resultTo":Landroid/os/IBinder;
    .end local p6  # "resultWho":Ljava/lang/String;
    .end local p7  # "requestCode":I
    .end local p8  # "startFlags":I
    .end local p9  # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p10  # "bOptions":Landroid/os/Bundle;
    .end local p11  # "permissionToken":Landroid/os/IBinder;
    .end local p12  # "ignoreTargetSecurity":Z
    .end local p13  # "userId":I
    throw v1

    .line 1352
    .end local v0  # "sourceToken":Landroid/os/IBinder;
    .end local v6  # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "caller":Landroid/app/IApplicationThread;
    .restart local p2  # "callingPackage":Ljava/lang/String;
    .restart local p3  # "intent":Landroid/content/Intent;
    .restart local p4  # "resolvedType":Ljava/lang/String;
    .restart local p5  # "resultTo":Landroid/os/IBinder;
    .restart local p6  # "resultWho":Ljava/lang/String;
    .restart local p7  # "requestCode":I
    .restart local p8  # "startFlags":I
    .restart local p9  # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p10  # "bOptions":Landroid/os/Bundle;
    .restart local p11  # "permissionToken":Landroid/os/IBinder;
    .restart local p12  # "ignoreTargetSecurity":Z
    .restart local p13  # "userId":I
    :cond_1a2
    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v10, p13

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Must be called from an activity"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "caller":Landroid/app/IApplicationThread;
    .end local p2  # "callingPackage":Ljava/lang/String;
    .end local p3  # "intent":Landroid/content/Intent;
    .end local p4  # "resolvedType":Ljava/lang/String;
    .end local p5  # "resultTo":Landroid/os/IBinder;
    .end local p6  # "resultWho":Ljava/lang/String;
    .end local p7  # "requestCode":I
    .end local p8  # "startFlags":I
    .end local p9  # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p10  # "bOptions":Landroid/os/Bundle;
    .end local p11  # "permissionToken":Landroid/os/IBinder;
    .end local p12  # "ignoreTargetSecurity":Z
    .end local p13  # "userId":I
    throw v0

    .line 1417
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "caller":Landroid/app/IApplicationThread;
    .restart local p2  # "callingPackage":Ljava/lang/String;
    .restart local p3  # "intent":Landroid/content/Intent;
    .restart local p4  # "resolvedType":Ljava/lang/String;
    .restart local p5  # "resultTo":Landroid/os/IBinder;
    .restart local p6  # "resultWho":Ljava/lang/String;
    .restart local p7  # "requestCode":I
    .restart local p8  # "startFlags":I
    .restart local p9  # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p10  # "bOptions":Landroid/os/Bundle;
    .restart local p11  # "permissionToken":Landroid/os/IBinder;
    .restart local p12  # "ignoreTargetSecurity":Z
    .restart local p13  # "userId":I
    :catchall_1b6
    move-exception v0

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v10, p13

    :goto_1c3
    monitor-exit v5
    :try_end_1c4
    .catchall {:try_start_163 .. :try_end_1c4} :catchall_1c8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_1c8
    move-exception v0

    goto :goto_1c3
.end method

.method public startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    .registers 25
    .param p1, "caller"  # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "intent"  # Landroid/content/Intent;
    .param p4, "resolvedType"  # Ljava/lang/String;
    .param p5, "resultTo"  # Landroid/os/IBinder;
    .param p6, "resultWho"  # Ljava/lang/String;
    .param p7, "requestCode"  # I
    .param p8, "startFlags"  # I
    .param p9, "profilerInfo"  # Landroid/app/ProfilerInfo;
    .param p10, "bOptions"  # Landroid/os/Bundle;
    .param p11, "userId"  # I

    .line 1075
    const/4 v12, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;IZ)I

    move-result v0

    return v0
.end method

.method startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;IZ)I
    .registers 26
    .param p1, "caller"  # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "intent"  # Landroid/content/Intent;
    .param p4, "resolvedType"  # Ljava/lang/String;
    .param p5, "resultTo"  # Landroid/os/IBinder;
    .param p6, "resultWho"  # Ljava/lang/String;
    .param p7, "requestCode"  # I
    .param p8, "startFlags"  # I
    .param p9, "profilerInfo"  # Landroid/app/ProfilerInfo;
    .param p10, "bOptions"  # Landroid/os/Bundle;
    .param p11, "userId"  # I
    .param p12, "validateIncomingUser"  # Z

    .line 1084
    move-object v0, p0

    const-string v1, "startActivityAsUser"

    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1087
    const/4 v2, -0x2

    move/from16 v3, p11

    if-ne v3, v2, :cond_25

    const-string v2, "ro.flyme.root.state"

    const-string v4, "0"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 1088
    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v2

    if-nez v2, :cond_25

    .line 1089
    const/4 v2, 0x0

    .end local p11  # "userId":I
    .local v2, "userId":I
    goto :goto_26

    .line 1092
    .end local v2  # "userId":I
    .restart local p11  # "userId":I
    :cond_25
    move v2, v3

    .end local p11  # "userId":I
    .restart local v2  # "userId":I
    :goto_26
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v3

    .line 1093
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1092
    const-string v8, "startActivityAsUser"

    move v4, v2

    move/from16 v5, p12

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v2

    .line 1096
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v3

    move-object/from16 v4, p3

    invoke-virtual {v3, v4, v1}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1097
    move-object v3, p1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1098
    move-object v5, p2

    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1099
    move-object/from16 v6, p4

    invoke-virtual {v1, v6}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1100
    move-object/from16 v7, p5

    invoke-virtual {v1, v7}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1101
    move-object/from16 v8, p6

    invoke-virtual {v1, v8}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1102
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1103
    move/from16 v10, p8

    invoke-virtual {v1, v10}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1104
    move-object/from16 v11, p9

    invoke-virtual {v1, v11}, Lcom/android/server/wm/ActivityStarter;->setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1105
    move-object/from16 v12, p10

    invoke-virtual {v1, v12}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1106
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setMayWait(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1107
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v1

    .line 1096
    return v1
.end method

.method public final startActivityFromRecents(ILandroid/os/Bundle;)I
    .registers 10
    .param p1, "taskId"  # I
    .param p2, "bOptions"  # Landroid/os/Bundle;

    .line 1539
    const-string v0, "android.permission.START_TASKS_FROM_RECENTS"

    const-string v1, "startActivityFromRecents()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1543
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1544
    .local v1, "callingUid":I
    invoke-static {p2}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v2

    .line 1545
    .local v2, "safeOptions":Lcom/android/server/wm/SafeActivityOptions;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1547
    .local v3, "origId":J
    :try_start_17
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_31

    :try_start_1a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1548
    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v6, v0, v1, p1, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;)I

    move-result v6

    monitor-exit v5
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_2b

    .line 1552
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1548
    return v6

    .line 1550
    :catchall_2b
    move-exception v6

    :try_start_2c
    monitor-exit v5
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    :try_start_2d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "callingPid":I
    .end local v1  # "callingUid":I
    .end local v2  # "safeOptions":Lcom/android/server/wm/SafeActivityOptions;
    .end local v3  # "origId":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskId":I
    .end local p2  # "bOptions":Landroid/os/Bundle;
    throw v6
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_31

    .line 1552
    .restart local v0  # "callingPid":I
    .restart local v1  # "callingUid":I
    .restart local v2  # "safeOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v3  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskId":I
    .restart local p2  # "bOptions":Landroid/os/Bundle;
    :catchall_31
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I
    .registers 29
    .param p1, "caller"  # Landroid/app/IApplicationThread;
    .param p2, "target"  # Landroid/content/IIntentSender;
    .param p3, "whitelistToken"  # Landroid/os/IBinder;
    .param p4, "fillInIntent"  # Landroid/content/Intent;
    .param p5, "resolvedType"  # Ljava/lang/String;
    .param p6, "resultTo"  # Landroid/os/IBinder;
    .param p7, "resultWho"  # Ljava/lang/String;
    .param p8, "requestCode"  # I
    .param p9, "flagsMask"  # I
    .param p10, "flagsValues"  # I
    .param p11, "bOptions"  # Landroid/os/Bundle;

    .line 1115
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "startActivityIntentSender"

    invoke-direct {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1117
    if-eqz p4, :cond_1a

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_1a

    .line 1118
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "File descriptors passed in Intent"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1121
    :cond_1a
    :goto_1a
    instance-of v0, v2, Lcom/android/server/am/PendingIntentRecord;

    if-eqz v0, :cond_68

    .line 1125
    move-object/from16 v16, v2

    check-cast v16, Lcom/android/server/am/PendingIntentRecord;

    .line 1127
    .local v16, "pir":Lcom/android/server/am/PendingIntentRecord;
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1130
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 1131
    .local v0, "stack":Lcom/android/server/wm/ActivityStack;
    iget-object v4, v0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_42

    iget-object v4, v0, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1132
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    if-ne v4, v5, :cond_42

    .line 1133
    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesAllowedTime:J

    .line 1135
    .end local v0  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_42
    monitor-exit v3
    :try_end_43
    .catchall {:try_start_25 .. :try_end_43} :catchall_62

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1136
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, v16

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p3

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    invoke-virtual/range {v3 .. v15}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v0

    return v0

    .line 1135
    :catchall_62
    move-exception v0

    :try_start_63
    monitor-exit v3
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1122
    .end local v16  # "pir":Lcom/android/server/am/PendingIntentRecord;
    :cond_68
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Bad PendingIntent object"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I
    .registers 16
    .param p1, "caller"  # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "intent"  # Landroid/content/Intent;
    .param p4, "resolvedType"  # Ljava/lang/String;
    .param p5, "resultTo"  # Landroid/os/IBinder;
    .param p6, "resultWho"  # Ljava/lang/String;
    .param p7, "requestCode"  # I
    .param p8, "startFlags"  # I
    .param p9, "config"  # Landroid/content/res/Configuration;
    .param p10, "bOptions"  # Landroid/os/Bundle;
    .param p11, "userId"  # I

    .line 1289
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1290
    const-string v1, "startActivityWithConfig"

    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1291
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "startActivityWithConfig"

    invoke-virtual {p0, v1, v2, p11, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result v1

    move p11, v1

    .line 1294
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    const-string v2, "startActivityWithConfig"

    invoke-virtual {v1, p3, v2}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1295
    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1296
    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1297
    invoke-virtual {v1, p4}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1298
    invoke-virtual {v1, p5}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1299
    invoke-virtual {v1, p6}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1300
    invoke-virtual {v1, p7}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1301
    invoke-virtual {v1, p8}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1302
    invoke-virtual {v1, p9}, Lcom/android/server/wm/ActivityStarter;->setGlobalConfiguration(Landroid/content/res/Configuration;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1303
    invoke-virtual {v1, p10}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1304
    invoke-virtual {v1, p11}, Lcom/android/server/wm/ActivityStarter;->setMayWait(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1305
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_55

    .line 1294
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 1306
    :catchall_55
    move-exception v1

    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public startAssistantActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)I
    .registers 11
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "callingPid"  # I
    .param p3, "callingUid"  # I
    .param p4, "intent"  # Landroid/content/Intent;
    .param p5, "resolvedType"  # Ljava/lang/String;
    .param p6, "bOptions"  # Landroid/os/Bundle;
    .param p7, "userId"  # I

    .line 1490
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.BIND_VOICE_INTERACTION"

    const-string v2, "startAssistantActivity()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    const-string v0, "startAssistantActivity"

    invoke-virtual {p0, p2, p3, p7, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p7

    .line 1493
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    invoke-virtual {v1, p4, v0}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1494
    invoke-virtual {v0, p3}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1495
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1496
    invoke-virtual {v0, p5}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1497
    invoke-virtual {v0, p6}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1498
    invoke-virtual {v0, p7}, Lcom/android/server/wm/ActivityStarter;->setMayWait(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1499
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1500
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v0

    .line 1493
    return v0
.end method

.method public startInPlaceAnimationOnFrontMostApplication(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "opts"  # Landroid/os/Bundle;

    .line 3434
    invoke-static {p1}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v0

    .line 3435
    .local v0, "safeOptions":Lcom/android/server/wm/SafeActivityOptions;
    if-eqz v0, :cond_d

    .line 3436
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v1

    goto :goto_e

    .line 3437
    :cond_d
    const/4 v1, 0x0

    :goto_e
    nop

    .line 3438
    .local v1, "activityOptions":Landroid/app/ActivityOptions;
    if-eqz v1, :cond_42

    .line 3439
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_42

    .line 3440
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getCustomInPlaceResId()I

    move-result v2

    if-eqz v2, :cond_42

    .line 3445
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 3446
    .local v2, "focusedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v2, :cond_41

    .line 3447
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 3448
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 3449
    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 3450
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->getCustomInPlaceResId()I

    move-result v6

    .line 3449
    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/AppTransition;->overrideInPlaceAppTransition(Ljava/lang/String;I)V

    .line 3451
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 3453
    .end local v3  # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_41
    return-void

    .line 3441
    .end local v2  # "focusedStack":Lcom/android/server/wm/ActivityStack;
    :cond_42
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Expected in-place ActivityOption with valid animation"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "callingActivity"  # Landroid/os/IBinder;
    .param p2, "options"  # Landroid/os/Bundle;

    .line 4437
    const-string v0, "ActivityTaskManager"

    const-string v1, "Activity tried to startLocalVoiceInteraction"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4438
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4439
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4440
    .local v1, "activity":Lcom/android/server/wm/ActivityRecord;
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-ne v2, v1, :cond_5b

    .line 4443
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v2, :cond_4f

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v2, :cond_4f

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v2, :cond_2c

    goto :goto_4f

    .line 4448
    :cond_2c
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->pendingVoiceInteractionStart:Z

    if-eqz v2, :cond_3c

    .line 4449
    const-string v2, "ActivityTaskManager"

    const-string v3, "Pending start of voice interaction already."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4450
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_a .. :try_end_38} :catchall_63

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4452
    :cond_3c
    const/4 v2, 0x1

    :try_start_3d
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->pendingVoiceInteractionStart:Z

    .line 4453
    .end local v1  # "activity":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_63

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4454
    const-class v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 4455
    invoke-virtual {v0, p1, p2}, Landroid/service/voice/VoiceInteractionManagerInternal;->startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 4456
    return-void

    .line 4445
    .restart local v1  # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_4f
    :goto_4f
    :try_start_4f
    const-string v2, "ActivityTaskManager"

    const-string v3, "Already in a voice interaction, cannot start new voice interaction"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4446
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_63

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4441
    :cond_5b
    :try_start_5b
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Only focused activity can call startVoiceInteraction"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "callingActivity":Landroid/os/IBinder;
    .end local p2  # "options":Landroid/os/Bundle;
    throw v2

    .line 4453
    .end local v1  # "activity":Lcom/android/server/wm/ActivityRecord;
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "callingActivity":Landroid/os/IBinder;
    .restart local p2  # "options":Landroid/os/Bundle;
    :catchall_63
    move-exception v1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_63

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public startLockTaskModeByToken(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"  # Landroid/os/IBinder;

    .line 2890
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2891
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2892
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_11

    .line 2893
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2895
    :cond_11
    :try_start_11
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->startLockTaskModeLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 2896
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2897
    return-void

    .line 2896
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z
    .registers 20
    .param p1, "callingActivity"  # Landroid/os/IBinder;
    .param p2, "intent"  # Landroid/content/Intent;
    .param p3, "bOptions"  # Landroid/os/Bundle;

    .line 1144
    move-object/from16 v1, p2

    if-eqz v1, :cond_13

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_13

    .line 1145
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "File descriptors passed in Intent"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1147
    :cond_13
    :goto_13
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v2

    .line 1149
    .local v2, "options":Lcom/android/server/wm/SafeActivityOptions;
    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_1c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1150
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    move-object v5, v0

    .line 1151
    .local v5, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v6, 0x0

    if-nez v5, :cond_2f

    .line 1152
    invoke-static {v2}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1153
    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_1bb

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v6

    .line 1155
    :cond_2f
    :try_start_2f
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 1157
    invoke-static {v2}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1158
    monitor-exit v4
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_1bb

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v6

    .line 1160
    :cond_3d
    :try_start_3d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_1bb

    move-object v1, v0

    .line 1162
    .end local p2  # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    :try_start_43
    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iget-object v7, v5, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1164
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1166
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v0
    :try_end_5a
    .catchall {:try_start_43 .. :try_end_5a} :catchall_1c1

    and-int/lit8 v0, v0, 0x8

    const/4 v8, 0x1

    if-eqz v0, :cond_61

    move v0, v8

    goto :goto_62

    :cond_61
    move v0, v6

    :goto_62
    move v9, v0

    .line 1168
    .local v9, "debug":Z
    const/4 v10, 0x0

    .line 1171
    .local v10, "aInfo":Landroid/content/pm/ActivityInfo;
    :try_start_64
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v11, v5, Lcom/android/server/wm/ActivityRecord;->resolvedType:Ljava/lang/String;

    const v12, 0x10400

    .line 1174
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v13

    .line 1171
    invoke-interface {v0, v1, v11, v12, v13}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1174
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 1177
    .local v0, "resolves":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_80

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    goto :goto_81

    :cond_80
    move v11, v6

    .line 1178
    .local v11, "N":I
    :goto_81
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_82
    if-ge v12, v11, :cond_110

    .line 1179
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 1180
    .local v13, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v14, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v15, v5, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10a

    iget-object v14, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v15, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1181
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10a

    .line 1184
    add-int/2addr v12, v8

    .line 1185
    if-ge v12, v11, :cond_b0

    .line 1186
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v10, v14

    .line 1188
    :cond_b0
    if-eqz v9, :cond_110

    .line 1189
    const-string v14, "ActivityTaskManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Next matching activity: found current "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    const-string v7, "ActivityTaskManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Next matching activity: next is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v10, :cond_e7

    .line 1192
    const-string v15, "null"

    goto :goto_ff

    :cond_e7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :goto_ff
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1191
    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_109
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_109} :catch_111
    .catchall {:try_start_64 .. :try_end_109} :catchall_1c1

    goto :goto_110

    .line 1178
    .end local v13  # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_10a
    add-int/lit8 v12, v12, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_82

    .line 1198
    .end local v0  # "resolves":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11  # "N":I
    .end local v12  # "i":I
    :cond_110
    :goto_110
    goto :goto_112

    .line 1197
    :catch_111
    move-exception v0

    .line 1200
    :goto_112
    if-nez v10, :cond_125

    .line 1202
    :try_start_114
    invoke-static {v2}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1203
    if-eqz v9, :cond_120

    const-string v0, "ActivityTaskManager"

    const-string v7, "Next matching activity: nothing found"

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    :cond_120
    monitor-exit v4
    :try_end_121
    .catchall {:try_start_114 .. :try_end_121} :catchall_1c1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v6

    .line 1207
    :cond_125
    :try_start_125
    new-instance v0, Landroid/content/ComponentName;

    iget-object v7, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1209
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v7, -0x1e000001

    and-int/2addr v0, v7

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1219
    iget-boolean v0, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 1220
    .local v0, "wasFinishing":Z
    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 1223
    iget-object v7, v5, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 1224
    .local v7, "resultTo":Lcom/android/server/wm/ActivityRecord;
    iget-object v8, v5, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 1225
    .local v8, "resultWho":Ljava/lang/String;
    iget v11, v5, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 1226
    .local v11, "requestCode":I
    const/4 v12, 0x0

    iput-object v12, v5, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 1227
    if-eqz v7, :cond_151

    .line 1228
    invoke-virtual {v7, v5, v8, v11}, Lcom/android/server/wm/ActivityRecord;->removeResultsLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V

    .line 1231
    :cond_151
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 1233
    .local v13, "origId":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v15

    const-string v12, "startNextMatchingActivity"

    .line 1234
    invoke-virtual {v15, v1, v12}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v12

    iget-object v15, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 1235
    invoke-virtual {v15}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v12

    iget-object v15, v5, Lcom/android/server/wm/ActivityRecord;->resolvedType:Ljava/lang/String;

    .line 1236
    invoke-virtual {v12, v15}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v12

    .line 1237
    invoke-virtual {v12, v10}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v12

    .line 1238
    if-eqz v7, :cond_178

    iget-object v15, v7, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    goto :goto_179

    :cond_178
    const/4 v15, 0x0

    :goto_179
    invoke-virtual {v12, v15}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v12

    .line 1239
    invoke-virtual {v12, v8}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v12

    .line 1240
    invoke-virtual {v12, v11}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v12

    .line 1241
    const/4 v15, -0x1

    invoke-virtual {v12, v15}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v12

    iget v6, v5, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 1242
    invoke-virtual {v12, v6}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v6

    iget-object v12, v5, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 1243
    invoke-virtual {v6, v12}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v6

    .line 1244
    invoke-virtual {v6, v15}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v6

    iget v12, v5, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 1245
    invoke-virtual {v6, v12}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v6

    .line 1246
    invoke-virtual {v6, v2}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v6

    .line 1247
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v6

    .line 1248
    .local v6, "res":I
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1250
    iput-boolean v0, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 1251
    if-eqz v6, :cond_1b5

    .line 1252
    monitor-exit v4
    :try_end_1b0
    .catchall {:try_start_125 .. :try_end_1b0} :catchall_1c1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v4, 0x0

    return v4

    .line 1254
    :cond_1b5
    :try_start_1b5
    monitor-exit v4
    :try_end_1b6
    .catchall {:try_start_1b5 .. :try_end_1b6} :catchall_1c1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v4, 0x1

    return v4

    .line 1255
    .end local v0  # "wasFinishing":Z
    .end local v1  # "intent":Landroid/content/Intent;
    .end local v5  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v6  # "res":I
    .end local v7  # "resultTo":Lcom/android/server/wm/ActivityRecord;
    .end local v8  # "resultWho":Ljava/lang/String;
    .end local v9  # "debug":Z
    .end local v10  # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v11  # "requestCode":I
    .end local v13  # "origId":J
    .restart local p2  # "intent":Landroid/content/Intent;
    :catchall_1bb
    move-exception v0

    .end local p2  # "intent":Landroid/content/Intent;
    .restart local v1  # "intent":Landroid/content/Intent;
    :goto_1bc
    :try_start_1bc
    monitor-exit v4
    :try_end_1bd
    .catchall {:try_start_1bc .. :try_end_1bd} :catchall_1c1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_1c1
    move-exception v0

    goto :goto_1bc
.end method

.method public startRecentsActivity(Landroid/content/Intent;Landroid/app/IAssistDataReceiver;Landroid/view/IRecentsAnimationRunner;)V
    .registers 21
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "unused"  # Landroid/app/IAssistDataReceiver;
        .annotation runtime Ljava/lang/Deprecated;
        .end annotation
    .end param
    .param p3, "recentsAnimationRunner"  # Landroid/view/IRecentsAnimationRunner;

    .line 1512
    move-object/from16 v10, p0

    move-object/from16 v11, p3

    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "startRecentsActivity()"

    invoke-direct {v10, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 1514
    .local v12, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 1515
    .local v13, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1517
    .local v14, "origId":J
    :try_start_17
    iget-object v6, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v6
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_5d

    :try_start_1a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1518
    iget-object v0, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->getRecentsComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 1519
    .local v7, "recentsComponent":Landroid/content/ComponentName;
    iget-object v0, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->getRecentsComponentUid()I

    move-result v8

    .line 1520
    .local v8, "recentsUid":I
    invoke-virtual {v10, v12, v13}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v9

    .line 1523
    .local v9, "caller":Lcom/android/server/wm/WindowProcessController;
    new-instance v0, Lcom/android/server/wm/RecentsAnimation;

    iget-object v3, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 1524
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v4

    iget-object v5, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;
    :try_end_37
    .catchall {:try_start_1a .. :try_end_37} :catchall_53

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v16, v6

    move-object/from16 v6, p1

    :try_start_3e
    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/RecentsAnimation;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStartController;Lcom/android/server/wm/WindowManagerService;Landroid/content/Intent;Landroid/content/ComponentName;ILcom/android/server/wm/WindowProcessController;)V

    .line 1526
    .local v0, "anim":Lcom/android/server/wm/RecentsAnimation;
    if-nez v11, :cond_47

    .line 1527
    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimation;->preloadRecentsActivity()V

    goto :goto_4a

    .line 1529
    :cond_47
    invoke-virtual {v0, v11}, Lcom/android/server/wm/RecentsAnimation;->startRecentsActivity(Landroid/view/IRecentsAnimationRunner;)V

    .line 1531
    .end local v0  # "anim":Lcom/android/server/wm/RecentsAnimation;
    .end local v7  # "recentsComponent":Landroid/content/ComponentName;
    .end local v8  # "recentsUid":I
    .end local v9  # "caller":Lcom/android/server/wm/WindowProcessController;
    :goto_4a
    monitor-exit v16
    :try_end_4b
    .catchall {:try_start_3e .. :try_end_4b} :catchall_5b

    :try_start_4b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_5d

    .line 1533
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1534
    nop

    .line 1535
    return-void

    .line 1531
    :catchall_53
    move-exception v0

    move-object/from16 v16, v6

    :goto_56
    :try_start_56
    monitor-exit v16
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_5b

    :try_start_57
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v12  # "callingPid":I
    .end local v13  # "callingUid":I
    .end local v14  # "origId":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "intent":Landroid/content/Intent;
    .end local p2  # "unused":Landroid/app/IAssistDataReceiver;
    .end local p3  # "recentsAnimationRunner":Landroid/view/IRecentsAnimationRunner;
    throw v0
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_5d

    .restart local v12  # "callingPid":I
    .restart local v13  # "callingUid":I
    .restart local v14  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "intent":Landroid/content/Intent;
    .restart local p2  # "unused":Landroid/app/IAssistDataReceiver;
    .restart local p3  # "recentsAnimationRunner":Landroid/view/IRecentsAnimationRunner;
    :catchall_5b
    move-exception v0

    goto :goto_56

    .line 1533
    :catchall_5d
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public startSystemLockTaskMode(I)V
    .registers 8
    .param p1, "taskId"  # I

    .line 2901
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "startSystemLockTaskMode"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2903
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2905
    .local v0, "ident":J
    :try_start_d
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_40

    :try_start_10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2906
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    .line 2908
    .local v3, "task":Lcom/android/server/wm/TaskRecord;
    if-nez v3, :cond_24

    .line 2909
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_3a

    .line 2917
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2909
    return-void

    .line 2913
    :cond_24
    :try_start_24
    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    const-string v5, "startSystemLockTaskMode"

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2914
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->startLockTaskModeLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 2915
    .end local v3  # "task":Lcom/android/server/wm/TaskRecord;
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_3a

    :try_start_32
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_40

    .line 2917
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2918
    nop

    .line 2919
    return-void

    .line 2915
    :catchall_3a
    move-exception v3

    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    :try_start_3c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskId":I
    throw v3
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_40

    .line 2917
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskId":I
    :catchall_40
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public startVoiceActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    .registers 15
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "callingPid"  # I
    .param p3, "callingUid"  # I
    .param p4, "intent"  # Landroid/content/Intent;
    .param p5, "resolvedType"  # Ljava/lang/String;
    .param p6, "session"  # Landroid/service/voice/IVoiceInteractionSession;
    .param p7, "interactor"  # Lcom/android/internal/app/IVoiceInteractor;
    .param p8, "startFlags"  # I
    .param p9, "profilerInfo"  # Landroid/app/ProfilerInfo;
    .param p10, "bOptions"  # Landroid/os/Bundle;
    .param p11, "userId"  # I

    .line 1467
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.BIND_VOICE_INTERACTION"

    const-string v2, "startVoiceActivity()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    if-eqz p6, :cond_49

    if-eqz p7, :cond_49

    .line 1471
    const-string v0, "startVoiceActivity"

    invoke-virtual {p0, p2, p3, p11, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p11

    .line 1473
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    invoke-virtual {v1, p4, v0}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1474
    invoke-virtual {v0, p3}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1475
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1476
    invoke-virtual {v0, p5}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1477
    invoke-virtual {v0, p6}, Lcom/android/server/wm/ActivityStarter;->setVoiceSession(Landroid/service/voice/IVoiceInteractionSession;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1478
    invoke-virtual {v0, p7}, Lcom/android/server/wm/ActivityStarter;->setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1479
    invoke-virtual {v0, p8}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1480
    invoke-virtual {v0, p9}, Lcom/android/server/wm/ActivityStarter;->setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1481
    invoke-virtual {v0, p10}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1482
    invoke-virtual {v0, p11}, Lcom/android/server/wm/ActivityStarter;->setMayWait(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    const/4 v1, 0x1

    .line 1483
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1484
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v0

    .line 1473
    return v0

    .line 1469
    :cond_49
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null session or interactor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopAppSwitches()V
    .registers 6

    .line 4825
    const-string v0, "android.permission.STOP_APP_SWITCHES"

    const-string v1, "stopAppSwitches"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4826
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4828
    invoke-static {}, Lmeizu/os/DeviceStateManager;->isCtsRunningStatic()Z

    move-result v1

    if-eqz v1, :cond_16

    const-wide/16 v1, 0x1388

    goto :goto_18

    :cond_16
    const-wide/16 v1, 0x3e8

    .line 4829
    .local v1, "delayTime":J
    :goto_18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesAllowedTime:J

    .line 4830
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastStopAppSwitchesTime:J

    .line 4831
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDidAppSwitch:Z

    .line 4832
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/server/wm/ActivityStartController;->schedulePendingActivityLaunches(J)V

    .line 4834
    .end local v1  # "delayTime":J
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4835
    return-void

    .line 4834
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public stopLocalVoiceInteraction(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "callingActivity"  # Landroid/os/IBinder;

    .line 4460
    const-class v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 4461
    invoke-virtual {v0, p1}, Landroid/service/voice/VoiceInteractionManagerInternal;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V

    .line 4462
    return-void
.end method

.method public stopLockTaskModeByToken(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"  # Landroid/os/IBinder;

    .line 2923
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2924
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2925
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v1, :cond_11

    .line 2926
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2928
    :cond_11
    :try_start_11
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->stopLockTaskModeInternal(Lcom/android/server/wm/TaskRecord;Z)V

    .line 2929
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2930
    return-void

    .line 2929
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public stopSystemLockTaskMode()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2938
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "stopSystemLockTaskMode"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2939
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->stopLockTaskModeInternal(Lcom/android/server/wm/TaskRecord;Z)V

    .line 2940
    return-void
.end method

.method public supportsLocalVoiceInteraction()Z
    .registers 2

    .line 4466
    const-class v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 4467
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionManagerInternal;->supportsLocalVoiceInteraction()Z

    move-result v0

    .line 4466
    return v0
.end method

.method public suppressResizeConfigChanges(Z)V
    .registers 5
    .param p1, "suppress"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4089
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "suppressResizeConfigChanges()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4090
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4091
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSuppressResizeConfigChanges:Z

    .line 4092
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4093
    return-void

    .line 4092
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public toggleFreeformWindowingMode(Landroid/os/IBinder;)V
    .registers 9
    .param p1, "token"  # Landroid/os/IBinder;

    .line 3495
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3496
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_76

    .line 3498
    .local v1, "ident":J
    :try_start_a
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 3499
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_5a

    .line 3505
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 3506
    .local v4, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v4, :cond_52

    .line 3511
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->inFreeformWindowingMode()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_2c

    .line 3512
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v5

    if-ne v5, v6, :cond_24

    goto :goto_2c

    .line 3513
    :cond_24
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "toggleFreeformWindowingMode: You can only toggle between fullscreen and freeform."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "token":Landroid/os/IBinder;
    throw v5

    .line 3517
    .restart local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "token":Landroid/os/IBinder;
    :cond_2c
    :goto_2c
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->inFreeformWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 3518
    invoke-virtual {v4, v6}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    goto :goto_49

    .line 3519
    :cond_36
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityDisplay;->inFreeformWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_45

    .line 3523
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    goto :goto_49

    .line 3525
    :cond_45
    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V
    :try_end_49
    .catchall {:try_start_a .. :try_end_49} :catchall_71

    .line 3528
    .end local v3  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    :goto_49
    :try_start_49
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3529
    nop

    .line 3530
    .end local v1  # "ident":J
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_76

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3531
    return-void

    .line 3507
    .restart local v1  # "ident":J
    .restart local v3  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_52
    :try_start_52
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "toggleFreeformWindowingMode: the activity doesn\'t have a stack"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "token":Landroid/os/IBinder;
    throw v5

    .line 3500
    .end local v4  # "stack":Lcom/android/server/wm/ActivityStack;
    .restart local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "token":Landroid/os/IBinder;
    :cond_5a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toggleFreeformWindowingMode: No activity record matching token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "token":Landroid/os/IBinder;
    throw v4
    :try_end_71
    .catchall {:try_start_52 .. :try_end_71} :catchall_71

    .line 3528
    .end local v3  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "token":Landroid/os/IBinder;
    :catchall_71
    move-exception v3

    :try_start_72
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "token":Landroid/os/IBinder;
    throw v3

    .line 3530
    .end local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "token":Landroid/os/IBinder;
    :catchall_76
    move-exception v1

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_72 .. :try_end_78} :catchall_76

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public unhandledBack()V
    .registers 5

    .line 2373
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.FORCE_BACK"

    const-string v2, "unhandledBack()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2375
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2376
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_28

    .line 2378
    .local v1, "origId":J
    :try_start_13
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->unhandledBackLocked()V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_23

    .line 2380
    :try_start_1a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2381
    nop

    .line 2382
    .end local v1  # "origId":J
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2383
    return-void

    .line 2380
    .restart local v1  # "origId":J
    :catchall_23
    move-exception v3

    :try_start_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    throw v3

    .line 2382
    .end local v1  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    .registers 4
    .param p1, "listener"  # Landroid/app/ITaskStackListener;

    .line 3544
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "unregisterTaskStackListener()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3546
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 3547
    return-void
.end method

.method updateActivityUsageStats(Lcom/android/server/wm/ActivityRecord;I)V
    .registers 13
    .param p1, "activity"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "event"  # I

    .line 5721
    const/4 v0, 0x0

    .line 5722
    .local v0, "taskRoot":Landroid/content/ComponentName;
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    .line 5723
    .local v1, "task":Lcom/android/server/wm/TaskRecord;
    if-eqz v1, :cond_f

    .line 5724
    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 5725
    .local v2, "rootActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_f

    .line 5726
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 5730
    .end local v2  # "rootActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_f
    sget-object v3, Lcom/android/server/wm/-$$Lambda$UB90fpYUkajpKCLGR93ZDlgDhyw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$UB90fpYUkajpKCLGR93ZDlgDhyw;

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget v2, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 5732
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 5730
    move-object v9, v0

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 5733
    .local v2, "m":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5734
    return-void
.end method

.method updateBatteryStats(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 9
    .param p1, "component"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "resumed"  # Z

    .line 5714
    sget-object v0, Lcom/android/server/wm/-$$Lambda$hT1kyMEAhvB1-Uxr0DFAlnuU3cQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$hT1kyMEAhvB1-Uxr0DFAlnuU3cQ;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v3, v3, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 5715
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 5716
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 5714
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5717
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5718
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)Z
    .registers 14
    .param p1, "values"  # Landroid/content/res/Configuration;

    .line 4537
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CHANGE_CONFIGURATION"

    const-string v2, "updateConfiguration()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4539
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4540
    const/4 v1, 0x0

    if-nez p1, :cond_1d

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v2, :cond_1d

    .line 4542
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v2

    move-object p1, v2

    .line 4545
    :cond_1d
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v2, :cond_32

    .line 4546
    sget-object v2, Lcom/android/server/wm/-$$Lambda$ADNhW0r9Skcs9ezrOGURijI-lyQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ADNhW0r9Skcs9ezrOGURijI-lyQ;

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 4548
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 4546
    invoke-static {v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 4549
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 4552
    .end local v2  # "msg":Landroid/os/Message;
    :cond_32
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_36
    .catchall {:try_start_c .. :try_end_36} :catchall_5d

    move-wide v10, v2

    .line 4554
    .local v10, "origId":J
    if-eqz p1, :cond_3c

    .line 4555
    :try_start_39
    invoke-static {p1}, Landroid/provider/Settings$System;->clearConfiguration(Landroid/content/res/Configuration;)V

    .line 4557
    :cond_3c
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, -0x2710

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z

    .line 4560
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    iget v2, v2, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->changes:I
    :try_end_4d
    .catchall {:try_start_39 .. :try_end_4d} :catchall_58

    if-eqz v2, :cond_50

    const/4 v1, 0x1

    .line 4562
    :cond_50
    :try_start_50
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_5d

    .line 4560
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 4562
    :catchall_58
    move-exception v1

    :try_start_59
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "values":Landroid/content/res/Configuration;
    throw v1

    .line 4564
    .end local v10  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "values":Landroid/content/res/Configuration;
    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_59 .. :try_end_5f} :catchall_5d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z
    .registers 5
    .param p1, "values"  # Landroid/content/res/Configuration;
    .param p2, "starting"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "initLocale"  # Z

    .line 5208
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZ)Z

    move-result v0

    return v0
.end method

.method updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZ)Z
    .registers 12
    .param p1, "values"  # Landroid/content/res/Configuration;
    .param p2, "starting"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "initLocale"  # Z
    .param p4, "deferResume"  # Z

    .line 5214
    const/4 v4, 0x0

    const/16 v5, -0x2710

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZ)Z

    move-result v0

    return v0
.end method

.method updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z
    .registers 16
    .param p1, "values"  # Landroid/content/res/Configuration;
    .param p2, "starting"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "initLocale"  # Z
    .param p4, "persistent"  # Z
    .param p5, "userId"  # I
    .param p6, "deferResume"  # Z
    .param p7, "result"  # Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    .line 5249
    const/4 v0, 0x0

    .line 5250
    .local v0, "changes":I
    const/4 v1, 0x1

    .line 5252
    .local v1, "kept":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v2, :cond_9

    .line 5253
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 5256
    :cond_9
    if-eqz p1, :cond_19

    .line 5258
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationExt(Landroid/content/res/Configuration;)V

    .line 5260
    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskManagerService;->updateGlobalConfigurationLocked(Landroid/content/res/Configuration;ZZIZ)I

    move-result v2

    move v0, v2

    .line 5264
    :cond_19
    invoke-direct {p0, p2, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->ensureConfigAndVisibilityAfterUpdate(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v2
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_31

    move v1, v2

    .line 5266
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v2, :cond_25

    .line 5267
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 5271
    :cond_25
    if-eqz p7, :cond_30

    .line 5272
    iput v0, p7, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->changes:I

    .line 5273
    if-nez v1, :cond_2d

    const/4 v2, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    iput-boolean v2, p7, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->activityRelaunched:Z

    .line 5275
    :cond_30
    return v1

    .line 5266
    :catchall_31
    move-exception v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v3, :cond_39

    .line 5267
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    :cond_39
    throw v2
.end method

.method updateCpuStats()V
    .registers 4

    .line 5710
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$LYW1ECaEajjYgarzgKdTZ4O1fi0;

    invoke-direct {v2, v1}, Lcom/android/server/wm/-$$Lambda$LYW1ECaEajjYgarzgKdTZ4O1fi0;-><init>(Landroid/app/ActivityManagerInternal;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 5711
    return-void
.end method

.method public updateDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)Z
    .registers 14
    .param p1, "values"  # Landroid/content/res/Configuration;
    .param p2, "displayId"  # I

    .line 4497
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CHANGE_CONFIGURATION"

    const-string v2, "updateDisplayOverrideConfiguration()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4499
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4501
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootActivityContainer;->isDisplayAdded(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_37

    .line 4503
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-eqz v1, :cond_32

    .line 4504
    const-string v1, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to update display configuration for non-existing displayId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4507
    :cond_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_c .. :try_end_33} :catchall_81

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 4510
    :cond_37
    if-nez p1, :cond_44

    :try_start_39
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v1, :cond_44

    .line 4512
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v1

    move-object p1, v1

    .line 4515
    :cond_44
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v1, :cond_59

    .line 4516
    sget-object v1, Lcom/android/server/wm/-$$Lambda$ADNhW0r9Skcs9ezrOGURijI-lyQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ADNhW0r9Skcs9ezrOGURijI-lyQ;

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 4517
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 4516
    invoke-static {v1, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4518
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 4521
    .end local v1  # "msg":Landroid/os/Message;
    :cond_59
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_5d
    .catchall {:try_start_39 .. :try_end_5d} :catchall_81

    move-wide v9, v3

    .line 4523
    .local v9, "origId":J
    if-eqz p1, :cond_63

    .line 4524
    :try_start_60
    invoke-static {p1}, Landroid/provider/Settings$System;->clearConfiguration(Landroid/content/res/Configuration;)V

    .line 4526
    :cond_63
    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    move-object v3, p0

    move-object v4, p1

    move v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityTaskManagerService;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZILcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z

    .line 4528
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    iget v1, v1, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->changes:I
    :try_end_71
    .catchall {:try_start_60 .. :try_end_71} :catchall_7c

    if-eqz v1, :cond_74

    const/4 v2, 0x1

    .line 4530
    :cond_74
    :try_start_74
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_74 .. :try_end_78} :catchall_81

    .line 4528
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 4530
    :catchall_7c
    move-exception v1

    :try_start_7d
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "values":Landroid/content/res/Configuration;
    .end local p2  # "displayId":I
    throw v1

    .line 4532
    .end local v9  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "values":Landroid/content/res/Configuration;
    .restart local p2  # "displayId":I
    :catchall_81
    move-exception v1

    monitor-exit v0
    :try_end_83
    .catchall {:try_start_7d .. :try_end_83} :catchall_81

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZI)Z
    .registers 11
    .param p1, "values"  # Landroid/content/res/Configuration;
    .param p2, "starting"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "deferResume"  # Z
    .param p4, "displayId"  # I

    .line 5394
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskManagerService;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZILcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z

    move-result v0

    return v0
.end method

.method updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZILcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z
    .registers 15
    .param p1, "values"  # Landroid/content/res/Configuration;
    .param p2, "starting"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "deferResume"  # Z
    .param p4, "displayId"  # I
    .param p5, "result"  # Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    .line 5405
    const/4 v0, 0x0

    .line 5406
    .local v0, "changes":I
    const/4 v1, 0x1

    .line 5408
    .local v1, "kept":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v2, :cond_9

    .line 5409
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 5412
    :cond_9
    if-eqz p1, :cond_1f

    .line 5413
    if-nez p4, :cond_1a

    .line 5417
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, -0x2710

    move-object v3, p0

    move-object v4, p1

    move v8, p3

    :try_start_14
    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/ActivityTaskManagerService;->updateGlobalConfigurationLocked(Landroid/content/res/Configuration;ZZIZ)I

    move-result v2

    move v0, v2

    goto :goto_1f

    .line 5420
    :cond_1a
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/wm/ActivityTaskManagerService;->performDisplayOverrideConfigUpdate(Landroid/content/res/Configuration;ZI)I

    move-result v2

    move v0, v2

    .line 5424
    :cond_1f
    :goto_1f
    invoke-direct {p0, p2, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->ensureConfigAndVisibilityAfterUpdate(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v2
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_37

    move v1, v2

    .line 5426
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v2, :cond_2b

    .line 5427
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 5431
    :cond_2b
    if-eqz p5, :cond_36

    .line 5432
    iput v0, p5, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->changes:I

    .line 5433
    if-nez v1, :cond_33

    const/4 v2, 0x1

    goto :goto_34

    :cond_33
    const/4 v2, 0x0

    :goto_34
    iput-boolean v2, p5, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->activityRelaunched:Z

    .line 5435
    :cond_36
    return v1

    .line 5426
    :catchall_37
    move-exception v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v3, :cond_3f

    .line 5427
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    :cond_3f
    throw v2
.end method

.method public updateLockTaskFeatures(II)V
    .registers 8
    .param p1, "userId"  # I
    .param p2, "flags"  # I

    .line 4664
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4665
    .local v0, "callingUid":I
    if-eqz v0, :cond_13

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_13

    .line 4666
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v2, "android.permission.UPDATE_LOCK_TASK_PACKAGES"

    const-string v3, "updateLockTaskFeatures()"

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4669
    :cond_13
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4670
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_LOCKTASK:Z

    if-eqz v2, :cond_3f

    const-string v2, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Allowing features "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4671
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4670
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4672
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/LockTaskController;->updateLockTaskFeatures(II)V

    .line 4673
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_16 .. :try_end_47} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4674
    return-void

    .line 4673
    :catchall_4b
    move-exception v2

    :try_start_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public updateLockTaskPackages(I[Ljava/lang/String;)V
    .registers 7
    .param p1, "userId"  # I
    .param p2, "packages"  # [Ljava/lang/String;

    .line 2991
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2992
    .local v0, "callingUid":I
    if-eqz v0, :cond_13

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_13

    .line 2993
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v2, "android.permission.UPDATE_LOCK_TASK_PACKAGES"

    const-string v3, "updateLockTaskPackages()"

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2996
    :cond_13
    monitor-enter p0

    .line 2997
    :try_start_14
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_LOCKTASK:Z

    if-eqz v1, :cond_3a

    const-string v1, "ActivityTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Whitelisting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2998
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2997
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2999
    :cond_3a
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/LockTaskController;->updateLockTaskPackages(I[Ljava/lang/String;)V

    .line 3000
    monitor-exit p0

    .line 3001
    return-void

    .line 3000
    :catchall_43
    move-exception v1

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_14 .. :try_end_45} :catchall_43

    throw v1
.end method

.method updateOomAdj()V
    .registers 4

    .line 5706
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$yIIsPVyXvnU3Rv8mcliit-gIpSs;

    invoke-direct {v2, v1}, Lcom/android/server/wm/-$$Lambda$yIIsPVyXvnU3Rv8mcliit-gIpSs;-><init>(Landroid/app/ActivityManagerInternal;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 5707
    return-void
.end method

.method public updatePersistentConfiguration(Landroid/content/res/Configuration;I)V
    .registers 13
    .param p1, "values"  # Landroid/content/res/Configuration;
    .param p2, "userId"  # I

    .line 5219
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5221
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_23

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5222
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move v8, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZ)Z

    .line 5224
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_1d

    :try_start_15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_23

    .line 5226
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5227
    nop

    .line 5228
    return-void

    .line 5224
    :catchall_1d
    move-exception v3

    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "origId":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "values":Landroid/content/res/Configuration;
    .end local p2  # "userId":I
    throw v3
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_23

    .line 5226
    .restart local v0  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "values":Landroid/content/res/Configuration;
    .restart local p2  # "userId":I
    :catchall_23
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method updateSleepIfNeededLocked()V
    .registers 9

    .line 5648
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->hasAwakeDisplay()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 5649
    .local v0, "shouldSleep":Z
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 5650
    .local v2, "wasSleeping":Z
    const/4 v3, 0x0

    .line 5652
    .local v3, "updateOomAdj":Z
    const-string v4, "ActivityTaskManager"

    const/16 v5, 0xe

    if-nez v0, :cond_40

    .line 5656
    const/4 v6, 0x0

    if-eqz v2, :cond_29

    .line 5657
    iput-boolean v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 5658
    const/4 v7, 0x2

    invoke-static {v5, v7}, Landroid/util/StatsLog;->write(II)I

    .line 5660
    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->startTimeTrackingFocusedActivityLocked()V

    .line 5661
    iput v7, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    .line 5662
    const-string v5, "Top Process State changed to PROCESS_STATE_TOP"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5663
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStackSupervisor;->comeOutOfSleepIfNeededLocked()V

    .line 5665
    :cond_29
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/RootActivityContainer;->applySleepTokens(Z)V

    .line 5666
    if-eqz v2, :cond_7d

    .line 5667
    const/4 v3, 0x1

    .line 5670
    invoke-static {v6}, Lcom/android/server/am/AmsInjector;->onKeyguardState(Z)V

    .line 5673
    const-class v1, Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-virtual {v1, v6}, Lcom/android/server/wm/FlymeWindowManagerInternal;->onKeyguardState(Z)V

    goto :goto_7d

    .line 5676
    :cond_40
    iget-boolean v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    if-nez v6, :cond_7d

    if-eqz v0, :cond_7d

    .line 5677
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 5678
    invoke-static {v5, v1}, Landroid/util/StatsLog;->write(II)I

    .line 5680
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v5, :cond_52

    .line 5681
    invoke-virtual {v5}, Lcom/android/server/am/AppTimeTracker;->stop()V

    .line 5683
    :cond_52
    const/16 v5, 0xd

    iput v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    .line 5684
    const-string v5, "Top Process State changed to PROCESS_STATE_TOP_SLEEPING"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5687
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    new-instance v5, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$aVlzLewXsNMZEKzKUyM7K4uCjVo;

    invoke-direct {v5, p0}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$aVlzLewXsNMZEKzKUyM7K4uCjVo;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 5689
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStackSupervisor;->goingToSleepLocked()V

    .line 5690
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->updateResumedAppTrace(Lcom/android/server/wm/ActivityRecord;)V

    .line 5691
    const/4 v3, 0x1

    .line 5694
    invoke-static {v1}, Lcom/android/server/am/AmsInjector;->onKeyguardState(Z)V

    .line 5697
    const-class v4, Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/FlymeWindowManagerInternal;->onKeyguardState(Z)V

    .line 5700
    :cond_7d
    :goto_7d
    if-eqz v3, :cond_8e

    .line 5701
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/wm/-$$Lambda$yIIsPVyXvnU3Rv8mcliit-gIpSs;

    invoke-direct {v5, v4}, Lcom/android/server/wm/-$$Lambda$yIIsPVyXvnU3Rv8mcliit-gIpSs;-><init>(Landroid/app/ActivityManagerInternal;)V

    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 5703
    :cond_8e
    return-void
.end method

.method public willActivityBeVisible(Landroid/os/IBinder;)Z
    .registers 5
    .param p1, "token"  # Landroid/os/IBinder;

    .line 2619
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2620
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->getStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2621
    .local v1, "stack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_15

    .line 2622
    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityStack;->willActivityBeVisibleLocked(Landroid/os/IBinder;)Z

    move-result v2

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 2624
    :cond_15
    const/4 v2, 0x0

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 2625
    .end local v1  # "stack":Lcom/android/server/wm/ActivityStack;
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
