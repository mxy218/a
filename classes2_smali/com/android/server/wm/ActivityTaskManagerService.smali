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

.field private static final TAG_STACK:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_VISIBILITY:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field final GL_ES_VERSION:I

.field private final mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

.field mActiveVoiceInteractionServiceComponent:Landroid/content/ComponentName;

.field private mActivityStartController:Lcom/android/server/wm/ActivityStartController;

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

.field private mLineageActivityManager:Lorg/lineageos/internal/applications/LineageActivityManager;

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

.field private mShowDialogs:Z

.field mShuttingDown:Z

.field private mSleeping:Z

.field mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

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
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 2

    .line 4968
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_6

    goto :goto_e

    :catchall_6
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 694
    invoke-direct {p0}, Landroid/app/IActivityTaskManager$Stub;-><init>()V

    .line 368
    new-instance v0, Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-direct {v0}, Lcom/android/server/wm/WindowManagerGlobalLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 376
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    .line 383
    new-instance v0, Lcom/android/server/wm/MirrorActiveUids;

    invoke-direct {v0}, Lcom/android/server/wm/MirrorActiveUids;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    .line 384
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingTempWhitelist:Landroid/util/SparseArray;

    .line 386
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    .line 388
    new-instance v0, Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-direct {v0}, Lcom/android/server/wm/WindowProcessControllerMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 405
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardShown:Z

    .line 412
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mViSessionId:I

    .line 447
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStartActivitySources:Ljava/util/HashMap;

    .line 450
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExpiredStartAsCallerTokens:Ljava/util/ArrayList;

    .line 452
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    .line 459
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompanionAppUidsMap:Ljava/util/Map;

    .line 471
    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    invoke-direct {v2}, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    .line 489
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportedSystemLocales:[Ljava/lang/String;

    .line 496
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    .line 499
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 522
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 523
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mControllerIsAMonkey:Z

    .line 529
    const-string v2, "android.intent.action.MAIN"

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopAction:Ljava/lang/String;

    .line 533
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileApp:Ljava/lang/String;

    .line 534
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileProc:Lcom/android/server/wm/WindowProcessController;

    .line 535
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 547
    new-instance v0, Landroid/os/UpdateLock;

    const-string v2, "immersive"

    invoke-direct {v0, v2}, Landroid/os/UpdateLock;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    .line 553
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAllowAppSwitchUids:Landroid/util/SparseArray;

    .line 581
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    .line 584
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVr2dDisplayId:I

    .line 599
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 605
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    .line 609
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShowDialogs:Z

    .line 612
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    .line 653
    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDeviceOwnerUid:I

    .line 695
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 696
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    .line 697
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSystemThread:Landroid/app/ActivityThread;

    .line 698
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSystemThread:Landroid/app/ActivityThread;

    invoke-virtual {p1}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    .line 699
    new-instance p1, Lcom/android/server/wm/ClientLifecycleManager;

    invoke-direct {p1}, Lcom/android/server/wm/ClientLifecycleManager;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    .line 700
    new-instance p1, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    invoke-direct {p1, p0}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 701
    const-string p1, "ro.opengles.version"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->GL_ES_VERSION:I

    .line 702
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/ActivityTaskManagerService;I)V
    .registers 2

    .line 305
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateFontScaleIfNeeded(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/res/Configuration;)V
    .registers 2

    .line 305
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateShouldShowDialogsLocked(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/AppWarnings;
    .registers 1

    .line 305
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V
    .registers 2

    .line 305
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/util/proto/ProtoOutputStream;IZ)V
    .registers 4

    .line 305
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->writeSleepStateToProto(Landroid/util/proto/ProtoOutputStream;IZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/MirrorActiveUids;
    .registers 1

    .line 305
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/server/wm/ActivityTaskManagerService;)Landroid/util/SparseArray;
    .registers 1

    .line 305
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingTempWhitelist:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/RecentTasks;
    .registers 1

    .line 305
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZ)Z
    .registers 7

    .line 305
    invoke-direct/range {p0 .. p6}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/android/server/wm/ActivityTaskManagerService;IZZ)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 4

    .line 305
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskSnapshot(IZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/server/wm/ActivityTaskManagerService;)Ljava/util/Map;
    .registers 1

    .line 305
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompanionAppUidsMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 1

    .line 305
    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->start()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;)V
    .registers 2

    .line 305
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->pendingAssistExtrasTimedOut(Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 4

    .line 305
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->onLocalVoiceInteractionStartedLocked(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/TaskChangeNotificationController;
    .registers 1

    .line 305
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 305
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wm/ActivityTaskManagerService;Z)V
    .registers 2

    .line 305
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateEventDispatchingLocked(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wm/ActivityTaskManagerService;)Z
    .registers 1

    .line 305
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShowDialogs:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/server/wm/ActivityTaskManagerService;)Z
    .registers 1

    .line 305
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    return p0
.end method

.method private applyUpdateVrModeLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6

    .line 4821
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_3e

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_3e

    .line 4822
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

    .line 4824
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 4825
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getStackId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 4824
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/RootActivityContainer;->moveStackToDisplay(IIZ)V

    .line 4827
    :cond_3e
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$7Ia1bmRpPHHSNlbH8cuLw8dKG04;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$7Ia1bmRpPHHSNlbH8cuLw8dKG04;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 4841
    return-void
.end method

.method private buildAssistBundleLocked(Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;Landroid/os/Bundle;)V
    .registers 5

    .line 3683
    if-eqz p2, :cond_9

    .line 3684
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    const-string v1, "android.intent.extra.ASSIST_CONTEXT"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3686
    :cond_9
    iget-object p2, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->hint:Ljava/lang/String;

    if-eqz p2, :cond_15

    .line 3687
    iget-object p2, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->hint:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3689
    :cond_15
    return-void
.end method

.method private cancelHeavyWeightProcessNotification(I)V
    .registers 6

    .line 5731
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 5732
    if-nez v0, :cond_7

    .line 5733
    return-void

    .line 5736
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

    .line 5740
    :catch_10
    move-exception p1

    goto :goto_1b

    .line 5738
    :catch_12
    move-exception p1

    .line 5739
    const-string v0, "ActivityTaskManager"

    const-string v1, "Error canceling notification for service"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5741
    :goto_1a
    nop

    .line 5743
    :goto_1b
    return-void
.end method

.method private checkAllowAppSwitchUid(I)Z
    .registers 6

    .line 2492
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAllowAppSwitchUids:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 2493
    if-eqz v0, :cond_26

    .line 2494
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_14
    if-ltz v1, :cond_26

    .line 2495
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_23

    .line 2496
    return v2

    .line 2494
    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 2500
    :cond_26
    const/4 p1, 0x0

    return p1
.end method

.method private static checkCallingPermission(Ljava/lang/String;)I
    .registers 3

    .line 3550
    nop

    .line 3551
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 3550
    invoke-static {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public static checkComponentPermission(Ljava/lang/String;IIIZ)I
    .registers 5

    .line 3575
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result p0

    return p0
.end method

.method static checkPermission(Ljava/lang/String;II)I
    .registers 5

    .line 3567
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 3568
    return v0

    .line 3570
    :cond_4
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result p0

    return p0
.end method

.method private constructResumedTraceName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 5843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "focused app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private dumpActivity(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;[Ljava/lang/String;Z)V
    .registers 10

    .line 5081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5082
    nop

    .line 5083
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5084
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "ACTIVITY "

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p4, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5085
    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5086
    const-string p1, " pid="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5087
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_51

    .line 5088
    iget-object p1, p4, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 5089
    iget-object p1, p4, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object p1

    goto :goto_57

    .line 5091
    :cond_51
    const-string p1, "(not running)"

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object p1, v2

    .line 5093
    :goto_57
    if-eqz p6, :cond_5c

    .line 5094
    invoke-virtual {p4, p3, v0}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5096
    :cond_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_15 .. :try_end_5d} :catchall_b0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5097
    if-eqz p1, :cond_af

    .line 5100
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 5101
    :try_start_65
    new-instance p6, Lcom/android/internal/os/TransferPipe;

    invoke-direct {p6}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_6a} :catch_97
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_6a} :catch_81

    .line 5102
    :try_start_6a
    invoke-virtual {p6}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iget-object p4, p4, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {p1, v1, p4, v0, p5}, Landroid/app/IApplicationThread;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5103
    invoke-virtual {p6, p2}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_76
    .catchall {:try_start_6a .. :try_end_76} :catchall_7a

    .line 5104
    :try_start_76
    invoke-static {v2, p6}, Lcom/android/server/wm/ActivityTaskManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_97
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_79} :catch_81

    goto :goto_af

    .line 5101
    :catchall_7a
    move-exception p1

    :try_start_7b
    throw p1
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7c

    .line 5104
    :catchall_7c
    move-exception p2

    :try_start_7d
    invoke-static {p1, p6}, Lcom/android/server/wm/ActivityTaskManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw p2
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_81} :catch_97
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_81} :catch_81

    .line 5106
    :catch_81
    move-exception p1

    .line 5107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Got a RemoteException while dumping the activity"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_af

    .line 5104
    :catch_97
    move-exception p1

    .line 5105
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "Failure while dumping the activity: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5110
    :cond_af
    :goto_af
    return-void

    .line 5096
    :catchall_b0
    move-exception p1

    :try_start_b1
    monitor-exit v1
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method private enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 3556
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 3557
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3559
    :cond_13
    return-void
.end method

.method private enforceNotIsolatedCaller(Ljava/lang/String;)V
    .registers 5

    .line 5134
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 5137
    return-void

    .line 5135
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Isolated process not allowed to call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enqueueAssistContext(ILandroid/content/Intent;Ljava/lang/String;Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZILandroid/os/Bundle;JI)Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;
    .registers 28

    .line 3618
    move-object v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p10

    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v4, "android.permission.GET_TOP_ACTIVITY_INFO"

    const-string v5, "enqueueAssistContext()"

    invoke-virtual {v3, v4, v5}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3621
    iget-object v10, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v10

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3622
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 3623
    const/4 v11, 0x0

    if-nez v3, :cond_2b

    .line 3624
    const-string v0, "ActivityTaskManager"

    const-string v1, "getAssistContextExtras failed: no top activity"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3625
    monitor-exit v10
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_144

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v11

    .line 3627
    :cond_2b
    :try_start_2b
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v4

    if-nez v4, :cond_4c

    .line 3628
    const-string v0, "ActivityTaskManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAssistContextExtras failed: no process for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3629
    monitor-exit v10
    :try_end_48
    .catchall {:try_start_2b .. :try_end_48} :catchall_144

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v11

    .line 3631
    :cond_4c
    if-eqz p7, :cond_7b

    .line 3632
    if-eqz v1, :cond_79

    .line 3633
    :try_start_50
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3634
    if-eq v3, v1, :cond_79

    .line 3635
    const-string v0, "ActivityTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enqueueAssistContext failed: caller "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not current top "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3637
    monitor-exit v10
    :try_end_75
    .catchall {:try_start_50 .. :try_end_75} :catchall_144

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v11

    .line 3654
    :cond_79
    move-object v12, v3

    goto :goto_c3

    .line 3641
    :cond_7b
    :try_start_7b
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 3642
    if-nez v3, :cond_a1

    .line 3643
    const-string v0, "ActivityTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enqueueAssistContext failed: activity for token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " couldn\'t be found"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3645
    monitor-exit v10
    :try_end_9d
    .catchall {:try_start_7b .. :try_end_9d} :catchall_144

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v11

    .line 3647
    :cond_a1
    :try_start_a1
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1

    if-nez v1, :cond_c2

    .line 3648
    const-string v0, "ActivityTaskManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueAssistContext failed: no process for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3649
    monitor-exit v10
    :try_end_be
    .catchall {:try_start_a1 .. :try_end_be} :catchall_144

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v11

    .line 3647
    :cond_c2
    move-object v12, v3

    .line 3654
    :goto_c3
    :try_start_c3
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 3655
    if-eqz v2, :cond_cd

    .line 3656
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3658
    :cond_cd
    const-string v1, "android.intent.extra.ASSIST_PACKAGE"

    iget-object v2, v12, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3659
    const-string v1, "android.intent.extra.ASSIST_UID"

    iget-object v2, v12, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v2, v2, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3661
    new-instance v13, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    move-object v1, v13

    move-object v2, p0

    move-object v3, v12

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;I)V

    .line 3663
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v1

    iput-boolean v1, v13, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->isHome:Z

    .line 3666
    if-eqz p8, :cond_fd

    .line 3667
    iget v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mViSessionId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mViSessionId:I
    :try_end_fd
    .catchall {:try_start_c3 .. :try_end_fd} :catchall_144

    .line 3670
    :cond_fd
    :try_start_fd
    iget-object v1, v12, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, v12, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mViSessionId:I

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v13

    move/from16 p5, p1

    move/from16 p6, v3

    move/from16 p7, p13

    invoke-interface/range {p2 .. p7}, Landroid/app/IApplicationThread;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;III)V

    .line 3672
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3673
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    move-wide/from16 v1, p11

    invoke-virtual {v0, v13, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_122
    .catch Landroid/os/RemoteException; {:try_start_fd .. :try_end_122} :catch_128
    .catchall {:try_start_fd .. :try_end_122} :catchall_144

    .line 3677
    nop

    .line 3678
    :try_start_123
    monitor-exit v10
    :try_end_124
    .catchall {:try_start_123 .. :try_end_124} :catchall_144

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v13

    .line 3674
    :catch_128
    move-exception v0

    .line 3675
    :try_start_129
    const-string v0, "ActivityTaskManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAssistContextExtras failed: crash calling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3676
    monitor-exit v10
    :try_end_140
    .catchall {:try_start_129 .. :try_end_140} :catchall_144

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v11

    .line 3679
    :catchall_144
    move-exception v0

    :try_start_145
    monitor-exit v10
    :try_end_146
    .catchall {:try_start_145 .. :try_end_146} :catchall_144

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private ensureConfigAndVisibilityAfterUpdate(Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 6

    .line 5848
    nop

    .line 5849
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 5851
    if-eqz v0, :cond_1e

    .line 5852
    if-eqz p2, :cond_11

    if-nez p1, :cond_11

    .line 5856
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 5859
    :cond_11
    if-eqz p1, :cond_1e

    .line 5860
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    move-result v1

    .line 5864
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2, p1, p2, v0}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    goto :goto_1f

    .line 5869
    :cond_1e
    const/4 v1, 0x1

    :goto_1f
    return v1
.end method

.method private ensureValidPictureInPictureActivityParamsLocked(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Lcom/android/server/wm/ActivityRecord;
    .registers 8

    .line 4260
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v0, :cond_a8

    .line 4265
    invoke-static {p2}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 4266
    if-eqz v0, :cond_8e

    .line 4271
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    move-result v1

    if-eqz v1, :cond_77

    .line 4276
    invoke-virtual {p3}, Landroid/app/PictureInPictureParams;->hasSetAspectRatio()Z

    move-result v1

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 4278
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    invoke-virtual {p3}, Landroid/app/PictureInPictureParams;->getAspectRatio()F

    move-result v3

    .line 4277
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->isValidPictureInPictureAspectRatio(IF)Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_6f

    .line 4279
    :cond_29
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x10500ae

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p2

    .line 4281
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x10500ad

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p3

    .line 4283
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Aspect ratio is too extreme (must be between %f and %f)."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 4285
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v1, v2

    const/4 p2, 0x1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    aput-object p3, v1, p2

    .line 4283
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4289
    :cond_6f
    :goto_6f
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getMaxNumPictureInPictureActions(Landroid/os/IBinder;)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/app/PictureInPictureParams;->truncateActions(I)V

    .line 4291
    return-object v0

    .line 4272
    :cond_77
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Current activity does not support picture-in-picture."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 4267
    :cond_8e
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Can\'t find activity for token="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 4261
    :cond_a8
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": Device doesn\'t support picture-in-picture mode."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private expireStartAsCallerTokenMsg(Landroid/os/IBinder;)V
    .registers 3

    .line 5430
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStartActivitySources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5431
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExpiredStartAsCallerTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5432
    return-void
.end method

.method private forgetStartAsCallerTokenMsg(Landroid/os/IBinder;)V
    .registers 3

    .line 5435
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExpiredStartAsCallerTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5436
    return-void
.end method

.method private getCallingRecordLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 2315
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 2316
    if-nez p1, :cond_8

    .line 2317
    const/4 p1, 0x0

    return-object p1

    .line 2319
    :cond_8
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    return-object p1
.end method

.method static getInputDispatchingTimeoutLocked(Lcom/android/server/wm/ActivityRecord;)J
    .registers 3

    .line 5457
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_10

    .line 5460
    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getInputDispatchingTimeoutLocked(Lcom/android/server/wm/WindowProcessController;)J

    move-result-wide v0

    return-wide v0

    .line 5458
    :cond_10
    :goto_10
    const-wide/16 v0, 0x1388

    return-wide v0
.end method

.method private static getInputDispatchingTimeoutLocked(Lcom/android/server/wm/WindowProcessController;)J
    .registers 3

    .line 5464
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
    .registers 7

    .line 4569
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4570
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    .line 4572
    if-nez v1, :cond_30

    .line 4573
    const-string p2, "ActivityTaskManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTaskSnapshot: taskId="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4574
    const/4 p1, 0x0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p1

    .line 4576
    :cond_30
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4578
    invoke-virtual {v1, p2, p3}, Lcom/android/server/wm/TaskRecord;->getSnapshot(ZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object p1

    return-object p1

    .line 4576
    :catchall_39
    move-exception p1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method private isInPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 4133
    if-eqz p1, :cond_28

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 4134
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStack;->isInStackLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_28

    .line 4140
    :cond_19
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object p1

    .line 4141
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->isAnimatingBoundsToFullscreen()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 4135
    :cond_28
    :goto_28
    const/4 p1, 0x0

    return p1
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

    .line 4241
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->hasSetActions()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4242
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 4243
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 4242
    const-string v2, "tron_varz_picture_in_picture_actions_count"

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4245
    :cond_15
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->hasSetAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 4246
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x338

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 4247
    const/16 v1, 0x339

    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getAspectRatio()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 4248
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 4250
    :cond_32
    return-void
.end method

.method private onLocalVoiceInteractionStartedLocked(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 7

    .line 3802
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3803
    if-nez v0, :cond_7

    return-void

    .line 3804
    :cond_7
    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityRecord;->setVoiceSessionLocked(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 3808
    :try_start_a
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Landroid/app/IApplicationThread;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 3810
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_28

    .line 3812
    :try_start_17
    iget-object p1, v0, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, p2, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->startRunningVoiceLocked(Landroid/service/voice/IVoiceInteractionSession;I)V
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_23

    .line 3814
    :try_start_1e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3815
    nop

    .line 3821
    goto :goto_2c

    .line 3814
    :catchall_23
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_28} :catch_28

    .line 3818
    :catch_28
    move-exception p1

    .line 3819
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->clearVoiceSessionLocked()V

    .line 3822
    :goto_2c
    return-void
.end method

.method private pendingAssistExtrasTimedOut(Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;)V
    .registers 5

    .line 3693
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3694
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3695
    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiver:Landroid/app/IAssistDataReceiver;

    .line 3696
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3697
    if-eqz v1, :cond_26

    .line 3699
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3701
    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiverExtras:Landroid/os/Bundle;

    const-string v2, "receiverExtras"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3703
    :try_start_1f
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiver:Landroid/app/IAssistDataReceiver;

    invoke-interface {p1, v0}, Landroid/app/IAssistDataReceiver;->onHandleAssistData(Landroid/os/Bundle;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25

    .line 3705
    goto :goto_26

    .line 3704
    :catch_25
    move-exception p1

    .line 3707
    :cond_26
    :goto_26
    return-void

    .line 3696
    :catchall_27
    move-exception p1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method private performDisplayOverrideConfigUpdate(Landroid/content/res/Configuration;ZI)I
    .registers 6

    .line 5387
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0, p3}, Lcom/android/server/wm/RootActivityContainer;->getDisplayOverrideConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 5388
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {p2, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result p1

    .line 5389
    if-eqz p1, :cond_6e

    .line 5390
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Override config changes="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for displayId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5392
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {p2, v0, p3}, Lcom/android/server/wm/RootActivityContainer;->setDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)V

    .line 5394
    and-int/lit16 p2, p1, 0x1000

    if-eqz p2, :cond_4c

    const/4 p2, 0x1

    goto :goto_4d

    :cond_4c
    const/4 p2, 0x0

    .line 5395
    :goto_4d
    if-eqz p2, :cond_6e

    if-nez p3, :cond_6e

    .line 5396
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    invoke-virtual {p2}, Lcom/android/server/wm/AppWarnings;->onDensityChanged()V

    .line 5400
    sget-object p2, Lcom/android/server/wm/-$$Lambda$ibmQVLjaQW2x74Wk8TcE0Og2MJM;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ibmQVLjaQW2x74Wk8TcE0Og2MJM;

    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const/16 v0, 0x18

    .line 5402
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 5400
    invoke-static {p2, p3, v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 5403
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p3, p2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5406
    :cond_6e
    return p1
.end method

.method private postHeavyWeightProcessNotification(Lcom/android/server/wm/WindowProcessController;Landroid/content/Intent;I)V
    .registers 13

    .line 5747
    const-string v0, "ActivityTaskManager"

    if-nez p1, :cond_5

    .line 5748
    return-void

    .line 5751
    :cond_5
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v1

    .line 5752
    if-nez v1, :cond_c

    .line 5753
    return-void

    .line 5757
    :cond_c
    :try_start_c
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1

    .line 5758
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const v4, 0x10402dc

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    .line 5759
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v3

    .line 5758
    invoke-virtual {v2, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 5760
    new-instance v3, Landroid/app/Notification$Builder;

    sget-object v4, Lcom/android/internal/notification/SystemNotificationChannels;->HEAVY_WEIGHT_APP:Ljava/lang/String;

    invoke-direct {v3, p1, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p1, 0x10807e2

    .line 5763
    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    const-wide/16 v3, 0x0

    .line 5764
    invoke-virtual {p1, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 5765
    invoke-virtual {p1, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 5766
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const v4, 0x106001c

    .line 5767
    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 5769
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const v3, 0x10402dd

    .line 5771
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 5770
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x10000000

    const/4 v6, 0x0

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 5772
    move-object v4, p2

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 5775
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6
    :try_end_83
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_83} :catch_99

    .line 5777
    :try_start_83
    const-string v2, "android"

    const-string v3, "android"

    const/4 v4, 0x0

    const/16 v5, 0xb

    move v7, p3

    invoke-interface/range {v1 .. v7}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_8e
    .catch Ljava/lang/RuntimeException; {:try_start_83 .. :try_end_8e} :catch_91
    .catch Landroid/os/RemoteException; {:try_start_83 .. :try_end_8e} :catch_8f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_83 .. :try_end_8e} :catch_99

    .line 5782
    :goto_8e
    goto :goto_98

    .line 5781
    :catch_8f
    move-exception p1

    goto :goto_98

    .line 5779
    :catch_91
    move-exception p1

    .line 5780
    :try_start_92
    const-string p2, "Error showing notification for heavy-weight app"

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_97
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_92 .. :try_end_97} :catch_99

    goto :goto_8e

    .line 5785
    :goto_98
    goto :goto_9f

    .line 5783
    :catch_99
    move-exception p1

    .line 5784
    const-string p2, "Unable to create context for heavy notification"

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5787
    :goto_9f
    return-void
.end method

.method public static relaunchReasonToString(I)Ljava/lang/String;
    .registers 2

    .line 4878
    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_8

    .line 4884
    const/4 p0, 0x0

    return-object p0

    .line 4882
    :cond_8
    const-string p0, "free_resize"

    return-object p0

    .line 4880
    :cond_b
    const-string p0, "window_resize"

    return-object p0
.end method

.method private sendLocaleToMountDaemonMsg(Ljava/util/Locale;)V
    .registers 6

    .line 5420
    const-string v0, "ActivityTaskManager"

    :try_start_2
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 5421
    invoke-static {v1}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v1

    .line 5422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Storing locale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for decryption UI"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5423
    const-string v2, "SystemLocale"

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Landroid/os/storage/IStorageManager;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_32} :catch_33

    .line 5426
    goto :goto_39

    .line 5424
    :catch_33
    move-exception p1

    .line 5425
    const-string v1, "Error storing locale for decryption UI"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5427
    :goto_39
    return-void
.end method

.method private sendPutConfigurationForUserMsg(ILandroid/content/res/Configuration;)V
    .registers 4

    .line 5414
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5415
    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z

    .line 5416
    return-void
.end method

.method private start()V
    .registers 3

    .line 981
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 982
    return-void
.end method

.method private startLockTaskModeLocked(Lcom/android/server/wm/TaskRecord;Z)V
    .registers 10

    .line 2892
    if-eqz p1, :cond_42

    iget v0, p1, Lcom/android/server/wm/TaskRecord;->mLockTaskAuth:I

    if-nez v0, :cond_7

    goto :goto_42

    .line 2896
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2897
    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    if-ne p1, v0, :cond_3a

    .line 2907
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2908
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2911
    :try_start_1d
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x2

    aput v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootActivityContainer;->removeStacksInWindowingModes([I)V

    .line 2913
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v3

    invoke-virtual {v3, p1, p2, v0}, Lcom/android/server/wm/LockTaskController;->startLockTaskMode(Lcom/android/server/wm/TaskRecord;ZI)V
    :try_end_30
    .catchall {:try_start_1d .. :try_end_30} :catchall_35

    .line 2915
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2916
    nop

    .line 2917
    return-void

    .line 2915
    :catchall_35
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2898
    :cond_3a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid task, not in foreground"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2893
    :cond_42
    :goto_42
    return-void
.end method

.method private startRunningVoiceLocked(Landroid/service/voice/IVoiceInteractionSession;I)V
    .registers 5

    .line 3825
    const-string v0, "ActivityTaskManager"

    const-string v1, "<<<  startRunningVoiceLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3826
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p2}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 3827
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz p2, :cond_1f

    invoke-interface {p2}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eq p2, v0, :cond_32

    .line 3828
    :cond_1f
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz p2, :cond_25

    const/4 p2, 0x1

    goto :goto_26

    :cond_25
    const/4 p2, 0x0

    .line 3829
    :goto_26
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    .line 3830
    if-nez p2, :cond_32

    .line 3831
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3832
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 3835
    :cond_32
    return-void
.end method

.method private startTimeTrackingFocusedActivityLocked()V
    .registers 3

    .line 5824
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 5825
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v1, :cond_15

    if-eqz v0, :cond_15

    .line 5826
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/am/AppTimeTracker;->start(Ljava/lang/String;)V

    .line 5828
    :cond_15
    return-void
.end method

.method private startVoiceInteractionServiceAsUser(Landroid/content/Intent;ILjava/lang/String;)V
    .registers 14

    .line 3141
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 3142
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 3143
    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_45

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v2, :cond_14

    goto :goto_45

    .line 3147
    :cond_14
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3150
    const-class v0, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/DeviceIdleController$LocalService;

    .line 3151
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x1388

    const/4 v8, 0x0

    move v7, p2

    move-object v9, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/DeviceIdleController$LocalService;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 3156
    :try_start_34
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_3d
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_3d} :catch_3e

    .line 3159
    goto :goto_44

    .line 3157
    :catch_3e
    move-exception p1

    .line 3158
    const-string p2, "VoiceInteractionService failed to start."

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3160
    :goto_44
    return-void

    .line 3144
    :cond_45
    :goto_45
    const-string p1, "VoiceInteractionService intent does not resolve. Not starting."

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3145
    return-void
.end method

.method private stopLockTaskModeInternal(Lcom/android/server/wm/TaskRecord;Z)V
    .registers 8

    .line 2920
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2921
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2923
    :try_start_8
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_34

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2924
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v4

    invoke-virtual {v4, p1, p2, v0}, Lcom/android/server/wm/LockTaskController;->stopLockTaskMode(Lcom/android/server/wm/TaskRecord;ZI)V

    .line 2925
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_2e

    :try_start_16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2928
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-string p2, "telecom"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    .line 2929
    if-eqz p1, :cond_29

    .line 2930
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V
    :try_end_29
    .catchall {:try_start_16 .. :try_end_29} :catchall_34

    .line 2933
    :cond_29
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2934
    nop

    .line 2935
    return-void

    .line 2925
    :catchall_2e
    move-exception p1

    :try_start_2f
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_34

    .line 2933
    :catchall_34
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZ)Z
    .registers 15

    .line 5182
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z

    move-result p1

    return p1
.end method

.method private updateEventDispatchingLocked(Z)V
    .registers 3

    .line 5410
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-nez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->setEventDispatching(Z)V

    .line 5411
    return-void
.end method

.method private updateFontScaleIfNeeded(I)V
    .registers 5

    .line 5491
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_scale"

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 5494
    monitor-enter p0

    .line 5495
    :try_start_f
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_1b

    .line 5496
    monitor-exit p0

    return-void

    .line 5499
    :cond_1b
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    .line 5500
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v1

    .line 5501
    iput v0, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 5502
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updatePersistentConfiguration(Landroid/content/res/Configuration;I)V

    .line 5503
    monitor-exit p0

    .line 5504
    return-void

    .line 5503
    :catchall_29
    move-exception p1

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_f .. :try_end_2b} :catchall_29

    throw p1
.end method

.method private updateGlobalConfigurationLocked(Landroid/content/res/Configuration;ZZIZ)I
    .registers 30

    .line 5228
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 5229
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v3

    .line 5230
    const/4 v4, 0x0

    if-nez v3, :cond_1c

    .line 5235
    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->performDisplayOverrideConfigUpdate(Landroid/content/res/Configuration;ZI)I

    .line 5236
    return v4

    .line 5242
    :cond_1c
    const/16 v5, 0xa9f

    invoke-static {v5, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 5243
    const/16 v6, 0x42

    iget v7, v1, Landroid/content/res/Configuration;->colorMode:I

    iget v8, v1, Landroid/content/res/Configuration;->densityDpi:I

    iget v9, v1, Landroid/content/res/Configuration;->fontScale:F

    iget v10, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v11, v1, Landroid/content/res/Configuration;->keyboard:I

    iget v12, v1, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v13, v1, Landroid/content/res/Configuration;->mcc:I

    iget v14, v1, Landroid/content/res/Configuration;->mnc:I

    iget v15, v1, Landroid/content/res/Configuration;->navigation:I

    iget v5, v1, Landroid/content/res/Configuration;->navigationHidden:I

    move/from16 v16, v5

    iget v5, v1, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v5

    iget v5, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    move/from16 v18, v5

    iget v5, v1, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v19, v5

    iget v5, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    move/from16 v20, v5

    iget v5, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v21, v5

    iget v5, v1, Landroid/content/res/Configuration;->touchscreen:I

    move/from16 v22, v5

    iget v5, v1, Landroid/content/res/Configuration;->uiMode:I

    move/from16 v23, v5

    invoke-static/range {v6 .. v23}, Landroid/util/StatsLog;->write(IIIFIIIIIIIIIIIIII)I

    .line 5263
    const/4 v5, 0x1

    if-nez p2, :cond_b2

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b2

    iget-boolean v6, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v6, :cond_b2

    .line 5264
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    .line 5265
    nop

    .line 5266
    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v6

    if-le v6, v5, :cond_91

    .line 5267
    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportedSystemLocales:[Ljava/lang/String;

    if-nez v6, :cond_86

    .line 5268
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportedSystemLocales:[Ljava/lang/String;

    .line 5270
    :cond_86
    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportedSystemLocales:[Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/os/LocaleList;->getFirstMatchIndex([Ljava/lang/String;)I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_92

    .line 5266
    :cond_91
    move v6, v4

    .line 5272
    :goto_92
    nop

    .line 5273
    invoke-virtual {v1, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    .line 5272
    const-string v8, "persist.sys.locale"

    invoke-static {v8, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5274
    invoke-static {v1, v6}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;I)V

    .line 5276
    sget-object v7, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$U6g1UdnOPnEF9wX1OTm9nKVXY5k;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$U6g1UdnOPnEF9wX1OTm9nKVXY5k;

    .line 5278
    invoke-virtual {v1, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    .line 5276
    invoke-static {v7, v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 5279
    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v6, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5282
    :cond_b2
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->increaseConfigurationSeqLocked()I

    move-result v6

    iput v6, v1, Landroid/content/res/Configuration;->seq:I

    .line 5285
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v6}, Lcom/android/server/wm/RootActivityContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Config changes="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "ActivityTaskManager"

    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5289
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v7}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/app/usage/UsageStatsManagerInternal;->reportConfigurationChange(Landroid/content/res/Configuration;I)V

    .line 5292
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-direct {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateShouldShowDialogsLocked(Landroid/content/res/Configuration;)V

    .line 5294
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v1

    .line 5295
    if-eqz v1, :cond_102

    .line 5296
    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v6}, Lcom/android/server/AttributeCache;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 5303
    :cond_102
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSystemThread:Landroid/app/ActivityThread;

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v6}, Landroid/app/ActivityThread;->applyConfigurationToResources(Landroid/content/res/Configuration;)V

    .line 5307
    new-instance v1, Landroid/content/res/Configuration;

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-direct {v1, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 5308
    if-eqz p3, :cond_127

    invoke-static {v3}, Landroid/provider/Settings$System;->hasInterestingConfigurationChanges(I)Z

    move-result v6

    if-eqz v6, :cond_127

    .line 5309
    sget-object v6, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$yP9TbBmrgQ4lrgcxb-8oL1pBAs4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$yP9TbBmrgQ4lrgcxb-8oL1pBAs4;

    .line 5311
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 5309
    invoke-static {v6, v0, v7, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 5312
    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v7, v6}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5315
    :cond_127
    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessControllerMap;->getPidMap()Landroid/util/SparseArray;

    move-result-object v6

    .line 5316
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    sub-int/2addr v7, v5

    :goto_132
    if-ltz v7, :cond_144

    .line 5317
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 5318
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowProcessController;

    .line 5323
    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowProcessController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5316
    add-int/lit8 v7, v7, -0x1

    goto :goto_132

    .line 5326
    :cond_144
    sget-object v1, Lcom/android/server/wm/-$$Lambda$swA_sUfSJdP8eC8AA9Iby3-SuOY;->INSTANCE:Lcom/android/server/wm/-$$Lambda$swA_sUfSJdP8eC8AA9Iby3-SuOY;

    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 5328
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 5326
    invoke-static {v1, v5, v6, v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 5329
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5333
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1, v2, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->performDisplayOverrideConfigUpdate(Landroid/content/res/Configuration;ZI)I

    .line 5336
    return v3
.end method

.method private updateResumedAppTrace(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6

    .line 5831
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTracedResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    const-wide/16 v2, 0x40

    if-eqz v0, :cond_10

    .line 5832
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 5833
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->constructResumedTraceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5832
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 5835
    :cond_10
    if-eqz p1, :cond_1b

    .line 5836
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 5837
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->constructResumedTraceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5836
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 5839
    :cond_1b
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTracedResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 5840
    return-void
.end method

.method private updateShouldShowDialogsLocked(Landroid/content/res/Configuration;)V
    .registers 7

    .line 5477
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

    .line 5480
    :goto_12
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0xf

    .line 5481
    const/4 v3, 0x3

    if-eq p1, v3, :cond_28

    const/4 v3, 0x6

    if-ne p1, v3, :cond_20

    sget-boolean v3, Landroid/os/Build;->IS_USER:Z

    if-nez v3, :cond_28

    :cond_20
    const/4 v3, 0x4

    if-eq p1, v3, :cond_28

    const/4 v3, 0x7

    if-eq p1, v3, :cond_28

    move p1, v2

    goto :goto_29

    :cond_28
    move p1, v1

    .line 5485
    :goto_29
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hide_error_dialogs"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_39

    move v3, v2

    goto :goto_3a

    :cond_39
    move v3, v1

    .line 5487
    :goto_3a
    if-eqz v0, :cond_41

    if-eqz p1, :cond_41

    if-nez v3, :cond_41

    move v1, v2

    :cond_41
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShowDialogs:Z

    .line 5488
    return-void
.end method

.method private writeSleepStateToProto(Landroid/util/proto/ProtoOutputStream;IZ)V
    .registers 9

    .line 5114
    const-wide v0, 0x10b0000001bL

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 5115
    nop

    .line 5116
    invoke-static {p2}, Landroid/os/PowerManagerInternal;->wakefulnessToProtoEnum(I)I

    move-result p2

    .line 5115
    const-wide v2, 0x10e00000001L

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 5117
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object p2, p2, Lcom/android/server/wm/RootActivityContainer;->mSleepTokens:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    .line 5118
    const-wide v3, 0x20900000002L

    .line 5119
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5118
    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 5120
    goto :goto_1e

    .line 5121
    :cond_37
    const-wide v2, 0x10800000003L

    iget-boolean p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5122
    const-wide v2, 0x10800000004L

    iget-boolean p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5124
    const-wide v2, 0x10800000005L

    invoke-virtual {p1, v2, v3, p3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 5126
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 5127
    return-void
.end method


# virtual methods
.method acquireSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;
    .registers 5

    .line 5586
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5587
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 5588
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/RootActivityContainer;->createSleepToken(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepToken;

    move-result-object p1

    .line 5589
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 5590
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p1

    .line 5591
    :catchall_14
    move-exception p1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public final activityDestroyed(Landroid/os/IBinder;)V
    .registers 5

    .line 1775
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1776
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->getStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 1777
    if-eqz v1, :cond_11

    .line 1778
    const-string v2, "activityDestroyed"

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/ActivityStack;->activityDestroyedLocked(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 1780
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1781
    return-void

    .line 1780
    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public final activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V
    .registers 10

    .line 1676
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1678
    const/4 v2, 0x0

    .line 1679
    :try_start_5
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_3a

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1680
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->getStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    .line 1681
    if-nez v4, :cond_19

    .line 1682
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_34

    .line 1694
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1682
    return-void

    .line 1684
    :cond_19
    :try_start_19
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5, v5, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->activityIdleInternalLocked(Landroid/os/IBinder;ZZLandroid/content/res/Configuration;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 1686
    if-eqz p1, :cond_24

    .line 1687
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 1689
    :cond_24
    if-eqz p3, :cond_2b

    if-eqz v2, :cond_2b

    .line 1690
    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->clearProfilerIfNeeded()V

    .line 1692
    :cond_2b
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_19 .. :try_end_2c} :catchall_34

    :try_start_2c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_3a

    .line 1694
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1695
    nop

    .line 1696
    return-void

    .line 1692
    :catchall_34
    move-exception p1

    :try_start_35
    monitor-exit v3
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    :try_start_36
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_3a

    .line 1694
    :catchall_3a
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public final activityPaused(Landroid/os/IBinder;)V
    .registers 7

    .line 1719
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1720
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1721
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->getStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 1722
    if-eqz v3, :cond_14

    .line 1723
    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/ActivityStack;->activityPausedLocked(Landroid/os/IBinder;Z)V

    .line 1725
    :cond_14
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1726
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1727
    return-void

    .line 1725
    :catchall_1c
    move-exception p1

    :try_start_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public final activityRelaunched(Landroid/os/IBinder;)V
    .registers 6

    .line 1785
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1786
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1787
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->activityRelaunchedLocked(Landroid/os/IBinder;)V

    .line 1788
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1789
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1790
    return-void

    .line 1788
    :catchall_17
    move-exception p1

    :try_start_18
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public final activityResumed(Landroid/os/IBinder;)V
    .registers 6

    .line 1700
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1701
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1702
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->activityResumedLocked(Landroid/os/IBinder;)V

    .line 1703
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowManagerService;->notifyAppResumedFinished(Landroid/os/IBinder;)V

    .line 1704
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1705
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1706
    return-void

    .line 1704
    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public final activitySlept(Landroid/os/IBinder;)V
    .registers 6

    .line 1795
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1797
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1798
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 1799
    if-eqz p1, :cond_15

    .line 1800
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->activitySleptLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 1802
    :cond_15
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1804
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1805
    return-void

    .line 1802
    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public final activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    .registers 11

    .line 1735
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_11

    .line 1736
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "File descriptors passed in Bundle"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1739
    :cond_11
    :goto_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1741
    const/4 v2, 0x0

    .line 1742
    const/4 v3, 0x0

    .line 1744
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_1a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1745
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 1746
    if-eqz p1, :cond_3c

    .line 1747
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v5

    if-eqz v5, :cond_39

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 1748
    invoke-virtual {p1, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 1751
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v2, v2, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 1752
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v3, v3, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 1754
    :cond_39
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/wm/ActivityRecord;->activityStoppedLocked(Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    .line 1756
    :cond_3c
    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_1a .. :try_end_3d} :catchall_57

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1758
    if-eqz v2, :cond_4e

    .line 1764
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->removeRestartTimeouts(Lcom/android/server/wm/ActivityRecord;)V

    .line 1765
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string p2, "restartActivityProcess"

    invoke-virtual {p1, v2, v3, p2}, Landroid/app/ActivityManagerInternal;->killProcess(Ljava/lang/String;ILjava/lang/String;)V

    .line 1767
    :cond_4e
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p1}, Landroid/app/ActivityManagerInternal;->trimApplications()V

    .line 1769
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1770
    return-void

    .line 1756
    :catchall_57
    move-exception p1

    :try_start_58
    monitor-exit v4
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public final activityTopResumedStateLost()V
    .registers 6

    .line 1710
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1711
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1712
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->handleTopResumedStateReleased(Z)V

    .line 1713
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1714
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1715
    return-void

    .line 1713
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3165
    move-object v0, p0

    move-object v4, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3166
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3169
    :try_start_a
    iget-object v10, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v10
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_13c

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3170
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 3171
    if-eqz v2, :cond_11e

    .line 3175
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 3176
    if-eqz v3, :cond_102

    .line 3180
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailWidth:I

    if-ne v5, v6, :cond_c7

    .line 3181
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailHeight:I

    if-ne v5, v6, :cond_c7

    .line 3186
    invoke-virtual {p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_36

    .line 3187
    invoke-virtual {p2, v6}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 3189
    :cond_36
    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v5

    if-eqz v5, :cond_3f

    .line 3190
    invoke-virtual {p2, v6}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 3192
    :cond_3f
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    if-eqz v5, :cond_54

    .line 3193
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/16 v6, 0x2000

    and-int/2addr v5, v6

    if-nez v5, :cond_54

    .line 3196
    invoke-virtual {p2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3199
    :cond_54
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    const/16 v6, 0x400

    .line 3200
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 3199
    invoke-interface {v5, v3, v6, v7}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 3201
    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v1, :cond_a4

    .line 3207
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v11

    .line 3208
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 3209
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 3208
    move-object v1, v11

    move-object v4, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    .line 3211
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentTasks;->addToBottom(Lcom/android/server/wm/TaskRecord;)Z

    move-result v0

    if-nez v0, :cond_94

    .line 3213
    const-string v0, "addAppTask"

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v0, v2}, Lcom/android/server/wm/ActivityStack;->removeTask(Lcom/android/server/wm/TaskRecord;Ljava/lang/String;I)V

    .line 3214
    const/4 v0, -0x1

    monitor-exit v10
    :try_end_8d
    .catchall {:try_start_d .. :try_end_8d} :catchall_136

    .line 3223
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3214
    return v0

    .line 3216
    :cond_94
    :try_start_94
    iget-object v0, v1, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    move-object v2, p3

    invoke-virtual {v0, p3}, Landroid/app/ActivityManager$TaskDescription;->copyFrom(Landroid/app/ActivityManager$TaskDescription;)V

    .line 3220
    iget v0, v1, Lcom/android/server/wm/TaskRecord;->taskId:I

    monitor-exit v10
    :try_end_9d
    .catchall {:try_start_94 .. :try_end_9d} :catchall_136

    .line 3223
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3220
    return v0

    .line 3202
    :cond_a4
    :try_start_a4
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t add task for another application: target uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", calling uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3182
    :cond_c7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad thumbnail size: got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3183
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

    iget v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailHeight:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3177
    :cond_102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " must specify explicit component"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3172
    :cond_11e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity does not exist; token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3221
    :catchall_136
    move-exception v0

    monitor-exit v10
    :try_end_138
    .catchall {:try_start_a4 .. :try_end_138} :catchall_136

    :try_start_138
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_13c
    .catchall {:try_start_138 .. :try_end_13c} :catchall_13c

    .line 3223
    :catchall_13c
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V
    .registers 6

    .line 4735
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4736
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1d

    .line 4738
    :try_start_a
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/AppWarnings;->alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_18

    .line 4740
    :try_start_f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4741
    nop

    .line 4742
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4743
    return-void

    .line 4740
    :catchall_18
    move-exception p1

    :try_start_19
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 4742
    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method applyUpdateLockStateLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 1856
    if-eqz p1, :cond_8

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 1857
    :goto_9
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$p4I6RZJqLXjaEjdISFyNzjAe4HE;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$p4I6RZJqLXjaEjdISFyNzjAe4HE;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ZLcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 1868
    return-void
.end method

.method public cancelRecentsAnimation(Z)V
    .registers 10

    .line 2821
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "cancelRecentsAnimation()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2822
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v0, v0

    .line 2823
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2825
    :try_start_10
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_40

    :try_start_13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2827
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz p1, :cond_1c

    .line 2828
    const/4 p1, 0x2

    goto :goto_1d

    .line 2829
    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cancelRecentsAnimation/uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2827
    invoke-virtual {v5, p1, v0}, Lcom/android/server/wm/WindowManagerService;->cancelRecentsAnimationSynchronously(ILjava/lang/String;)V

    .line 2830
    monitor-exit v4
    :try_end_32
    .catchall {:try_start_13 .. :try_end_32} :catchall_3a

    :try_start_32
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_40

    .line 2832
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2833
    nop

    .line 2834
    return-void

    .line 2830
    :catchall_3a
    move-exception p1

    :try_start_3b
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    :try_start_3c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_40

    .line 2832
    :catchall_40
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public cancelTaskWindowTransition(I)V
    .registers 8

    .line 4537
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "cancelTaskWindowTransition()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4539
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4541
    :try_start_b
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_4f

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4542
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    .line 4544
    if-nez v3, :cond_3d

    .line 4545
    const-string v3, "ActivityTaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelTaskWindowTransition: taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4546
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_e .. :try_end_36} :catchall_49

    .line 4551
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4546
    return-void

    .line 4548
    :cond_3d
    :try_start_3d
    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->cancelWindowTransition()V

    .line 4549
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_49

    :try_start_41
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_4f

    .line 4551
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4552
    nop

    .line 4553
    return-void

    .line 4549
    :catchall_49
    move-exception p1

    :try_start_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    :try_start_4b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_4f

    .line 4551
    :catchall_4f
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method checkAppSwitchAllowedLocked(IIIILjava/lang/String;)Z
    .registers 10

    .line 2459
    iget-wide v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesAllowedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-gez v0, :cond_c

    .line 2460
    return v1

    .line 2463
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2464
    return v1

    .line 2467
    :cond_17
    const-string v0, "android.permission.STOP_APP_SWITCHES"

    const/4 v2, -0x1

    invoke-static {v0, p1, p2, v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result p1

    .line 2468
    if-nez p1, :cond_21

    .line 2469
    return v1

    .line 2471
    :cond_21
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkAllowAppSwitchUid(I)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 2472
    return v1

    .line 2477
    :cond_28
    if-eq p4, v2, :cond_3a

    if-eq p4, p2, :cond_3a

    .line 2478
    invoke-static {v0, p3, p4, v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result p1

    .line 2479
    if-nez p1, :cond_33

    .line 2480
    return v1

    .line 2482
    :cond_33
    invoke-direct {p0, p4}, Lcom/android/server/wm/ActivityTaskManagerService;->checkAllowAppSwitchUid(I)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 2483
    return v1

    .line 2487
    :cond_3a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " request from "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " stopped"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityTaskManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    const/4 p1, 0x0

    return p1
.end method

.method checkGetTasksPermission(Ljava/lang/String;II)I
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3563
    invoke-static {p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V
    .registers 3

    .line 5719
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_1c

    if-eq v0, p1, :cond_7

    goto :goto_1c

    .line 5723
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 5724
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$w70cT1_hTWQQAYctmXaA0BeZuBc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$w70cT1_hTWQQAYctmXaA0BeZuBc;

    iget p1, p1, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    .line 5726
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 5724
    invoke-static {v0, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 5727
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5728
    return-void

    .line 5720
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

    .line 4907
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "clearLaunchParamsForPackages"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4909
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4910
    const/4 v1, 0x0

    :goto_10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 4911
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/LaunchParamsPersister;->removeRecordForPackage(Ljava/lang/String;)V

    .line 4910
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 4913
    :cond_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4914
    return-void

    .line 4913
    :catchall_2b
    move-exception p1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;
    .registers 3

    .line 5877
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object p1

    return-object p1
.end method

.method public convertFromTranslucent(Landroid/os/IBinder;)Z
    .registers 10

    .line 1965
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1967
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_39

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1968
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1969
    const/4 v4, 0x0

    if-nez v3, :cond_19

    .line 1970
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_33

    .line 1980
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1970
    return v4

    .line 1972
    :cond_19
    const/4 v5, 0x1

    :try_start_1a
    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityRecord;->changeWindowTranslucency(Z)Z

    move-result v3

    .line 1973
    if-eqz v3, :cond_26

    .line 1974
    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v4, v4}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1976
    :cond_26
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, p1, v5}, Lcom/android/server/wm/WindowManagerService;->setAppFullscreen(Landroid/os/IBinder;Z)V

    .line 1977
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_1a .. :try_end_2c} :catchall_33

    .line 1980
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1977
    return v3

    .line 1978
    :catchall_33
    move-exception p1

    :try_start_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    :try_start_35
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_39

    .line 1980
    :catchall_39
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public convertToTranslucent(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    .registers 11

    .line 1986
    invoke-static {p2}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object p2

    .line 1987
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1989
    :try_start_8
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_63

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1990
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1991
    const/4 v4, 0x0

    if-nez v3, :cond_1d

    .line 1992
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_5d

    .line 2009
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1992
    return v4

    .line 1994
    :cond_1d
    :try_start_1d
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v5

    .line 1995
    iget-object v6, v5, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v6

    .line 1996
    const/4 v7, 0x0

    if-lez v6, :cond_3e

    .line 1997
    iget-object v5, v5, Lcom/android/server/wm/TaskRecord;->mActivities:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 1998
    if-eqz p2, :cond_3b

    invoke-virtual {p2, v3}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityRecord;)Landroid/app/ActivityOptions;

    move-result-object p2

    goto :goto_3c

    :cond_3b
    move-object p2, v7

    :goto_3c
    iput-object p2, v5, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    .line 2000
    :cond_3e
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityRecord;->changeWindowTranslucency(Z)Z

    move-result p2

    .line 2001
    if-eqz p2, :cond_4b

    .line 2002
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/wm/ActivityStack;->convertActivityToTranslucent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2004
    :cond_4b
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, v7, v4, v4}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 2005
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/WindowManagerService;->setAppFullscreen(Landroid/os/IBinder;Z)V

    .line 2006
    monitor-exit v2
    :try_end_56
    .catchall {:try_start_1d .. :try_end_56} :catchall_5d

    .line 2009
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2006
    return p2

    .line 2007
    :catchall_5d
    move-exception p1

    :try_start_5e
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    :try_start_5f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_63

    .line 2009
    :catchall_63
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method protected createRecentTasks()Lcom/android/server/wm/RecentTasks;
    .registers 3

    .line 910
    new-instance v0, Lcom/android/server/wm/RecentTasks;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/RecentTasks;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;)V

    return-object v0
.end method

.method protected createStackSupervisor()Lcom/android/server/wm/ActivityStackSupervisor;
    .registers 3

    .line 859
    new-instance v0, Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V

    .line 860
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->initialize()V

    .line 861
    return-object v0
.end method

.method public dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .registers 8

    .line 4521
    if-eqz p3, :cond_b

    .line 4522
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SHOW_KEYGUARD_MESSAGE"

    const-string v2, "dismissKeyguard()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4525
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4527
    :try_start_f
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_29

    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4528
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/wm/KeyguardController;->dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 4529
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_23

    :try_start_1b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_29

    .line 4531
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4532
    nop

    .line 4533
    return-void

    .line 4529
    :catchall_23
    move-exception p1

    :try_start_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    :try_start_25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_29

    .line 4531
    :catchall_29
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public dismissPip(ZI)V
    .registers 9

    .line 4014
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "dismissPip()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4015
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4017
    :try_start_b
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_6c

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4018
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 4019
    invoke-virtual {v3}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getPinnedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 4020
    if-nez v3, :cond_2c

    .line 4021
    const-string p1, "ActivityTaskManager"

    const-string p2, "dismissPip: pinned stack not found."

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4022
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_66

    .line 4036
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4022
    return-void

    .line 4024
    :cond_2c
    :try_start_2c
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4a

    .line 4028
    if-eqz p1, :cond_3b

    .line 4029
    const/4 p1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, p2, p1}, Lcom/android/server/wm/ActivityStack;->animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    goto :goto_41

    .line 4032
    :cond_3b
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 p2, 0x1

    invoke-virtual {p1, v3, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;Z)V

    .line 4034
    :goto_41
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_2c .. :try_end_42} :catchall_66

    :try_start_42
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_6c

    .line 4036
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4037
    nop

    .line 4038
    return-void

    .line 4025
    :cond_4a
    :try_start_4a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t support animated resize."

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4034
    :catchall_66
    move-exception p1

    monitor-exit v2
    :try_end_68
    .catchall {:try_start_4a .. :try_end_68} :catchall_66

    :try_start_68
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_6c
    .catchall {:try_start_68 .. :try_end_6c} :catchall_6c

    .line 4036
    :catchall_6c
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public dismissSplitScreenMode(Z)V
    .registers 7

    .line 3972
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "dismissSplitScreenMode()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3974
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3976
    :try_start_b
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_5f

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3977
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 3978
    invoke-virtual {v3}, Lcom/android/server/wm/RootActivityContainer;->getDefaultDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 3979
    if-nez v3, :cond_2c

    .line 3980
    const-string p1, "ActivityTaskManager"

    const-string v3, "dismissSplitScreenMode: primary split-screen stack not found."

    invoke-static {p1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3981
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_59

    .line 4002
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3981
    return-void

    .line 3984
    :cond_2c
    if-eqz p1, :cond_34

    .line 3987
    :try_start_2e
    const-string p1, "dismissSplitScreenMode"

    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    goto :goto_4c

    .line 3988
    :cond_34
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p1, v3}, Lcom/android/server/wm/RootActivityContainer;->isTopDisplayFocusedStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 3992
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object p1

    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Lcom/android/server/wm/ActivityDisplay;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    .line 3994
    if-eqz p1, :cond_4c

    .line 3995
    const-string v4, "dismissSplitScreenMode_other"

    invoke-virtual {p1, v4}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 3999
    :cond_4c
    :goto_4c
    const/4 p1, 0x0

    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    .line 4000
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_2e .. :try_end_51} :catchall_59

    :try_start_51
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_5f

    .line 4002
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4003
    nop

    .line 4004
    return-void

    .line 4000
    :catchall_59
    move-exception p1

    :try_start_5a
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    :try_start_5b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_5f

    .line 4002
    :catchall_5f
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)V
    .registers 17

    .line 4977
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

    .line 4979
    return-void
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 4983
    invoke-virtual {p2, p8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4985
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RootActivityContainer;->dumpActivities(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;)Z

    move-result p1

    .line 4987
    nop

    .line 4989
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 4990
    invoke-virtual {p3}, Lcom/android/server/wm/RootActivityContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p3

    .line 4989
    const-string p4, "  ResumedActivity: "

    invoke-static {p2, p3, p7, p1, p4}, Lcom/android/server/wm/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result p3

    .line 4992
    const/4 p4, 0x1

    if-eqz p3, :cond_22

    .line 4993
    nop

    .line 4994
    const/4 p1, 0x0

    move p3, p4

    goto :goto_23

    .line 4992
    :cond_22
    move p3, p1

    .line 4997
    :goto_23
    if-nez p7, :cond_33

    .line 4998
    if-eqz p1, :cond_2a

    .line 4999
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 5001
    :cond_2a
    nop

    .line 5002
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const-string p3, "  "

    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/ActivityStackSupervisor;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    move p3, p4

    .line 5005
    :cond_33
    if-nez p3, :cond_3a

    .line 5006
    const-string p1, "  (nothing)"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5008
    :cond_3a
    return-void
.end method

.method protected dumpActivity(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZZZ)Z
    .registers 23

    .line 5038
    move-object v0, p0

    move-object/from16 v8, p2

    move-object/from16 v1, p4

    move/from16 v2, p5

    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5039
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    move-object/from16 v5, p3

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/wm/RootActivityContainer;->getDumpActivities(Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v9

    .line 5041
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_9d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5043
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-gtz v3, :cond_25

    .line 5044
    return v4

    .line 5047
    :cond_25
    array-length v3, v1

    sub-int/2addr v3, v2

    new-array v10, v3, [Ljava/lang/String;

    .line 5048
    array-length v3, v1

    sub-int/2addr v3, v2

    invoke-static {v1, v2, v10, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5050
    const/4 v1, 0x0

    .line 5051
    nop

    .line 5052
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v11, 0x1

    sub-int/2addr v2, v11

    move v12, v2

    :goto_37
    if-ltz v12, :cond_9c

    .line 5053
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 5054
    if-eqz v4, :cond_44

    .line 5055
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5057
    :cond_44
    nop

    .line 5058
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_48
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5059
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    .line 5060
    if-eq v1, v2, :cond_79

    .line 5061
    nop

    .line 5062
    const-string v1, "TASK "

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v2, Lcom/android/server/wm/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5063
    const-string v1, " id="

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v2, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 5064
    const-string v1, " userId="

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v2, Lcom/android/server/wm/TaskRecord;->userId:I

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 5065
    if-eqz p6, :cond_77

    .line 5066
    const-string v1, "  "

    invoke-virtual {v2, v8, v1}, Lcom/android/server/wm/TaskRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5069
    :cond_77
    move-object v13, v2

    goto :goto_7a

    .line 5060
    :cond_79
    move-object v13, v1

    .line 5069
    :goto_7a
    monitor-exit v3
    :try_end_7b
    .catchall {:try_start_48 .. :try_end_7b} :catchall_96

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5070
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    const-string v2, "  "

    move-object v1, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object v6, v10

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/ActivityTaskManagerService;->dumpActivity(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;[Ljava/lang/String;Z)V

    .line 5052
    add-int/lit8 v12, v12, -0x1

    move v4, v11

    move-object v1, v13

    goto :goto_37

    .line 5069
    :catchall_96
    move-exception v0

    :try_start_97
    monitor-exit v3
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5072
    :cond_9c
    return v11

    .line 5041
    :catchall_9d
    move-exception v0

    :try_start_9e
    monitor-exit v3
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method dumpActivityContainersLocked(Ljava/io/PrintWriter;)V
    .registers 4

    .line 5011
    const-string v0, "ACTIVITY MANAGER STARTER (dumpsys activity containers)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5012
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const-string v1, " "

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/RootActivityContainer;->dumpChildrenNames(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5013
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5014
    return-void
.end method

.method dumpActivityStarterLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 5017
    const-string v0, "ACTIVITY MANAGER STARTER (dumpsys activity starter)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5018
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/ActivityStartController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 5019
    return-void
.end method

.method dumpLastANRLocked(Ljava/io/PrintWriter;)V
    .registers 3

    .line 4937
    const-string v0, "ACTIVITY MANAGER LAST ANR (dumpsys activity lastanr)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4938
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastANRState:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 4939
    const-string v0, "  <no ANR has occurred since boot>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12

    .line 4941
    :cond_f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4943
    :goto_12
    return-void
.end method

.method dumpLastANRTracesLocked(Ljava/io/PrintWriter;)V
    .registers 12

    .line 4946
    const-string v0, "ACTIVITY MANAGER LAST ANR TRACES (dumpsys activity lastanr-traces)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4948
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/anr"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 4949
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 4950
    const-string v0, "  <no ANR has occurred since boot>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4951
    return-void

    .line 4954
    :cond_1c
    nop

    .line 4955
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    :goto_21
    if-ge v2, v1, :cond_37

    aget-object v5, v0, v2

    .line 4956
    if-eqz v4, :cond_33

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_34

    .line 4957
    :cond_33
    move-object v4, v5

    .line 4955
    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 4960
    :cond_37
    const-string v0, "File: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4961
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4962
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4963
    :try_start_46
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_50} :catch_65

    .line 4965
    :goto_50
    :try_start_50
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5a

    .line 4966
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_50 .. :try_end_59} :catchall_5e

    goto :goto_50

    .line 4968
    :cond_5a
    :try_start_5a
    invoke-static {v3, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_65

    .line 4972
    goto :goto_71

    .line 4963
    :catchall_5e
    move-exception v1

    :try_start_5f
    throw v1
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_60

    .line 4968
    :catchall_60
    move-exception v2

    :try_start_61
    invoke-static {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_65} :catch_65

    :catch_65
    move-exception v0

    .line 4969
    const-string v1, "Unable to read: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4970
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4971
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4973
    :goto_71
    return-void
.end method

.method enableScreenAfterBoot(Z)V
    .registers 5

    .line 5447
    nop

    .line 5448
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 5447
    const/16 v2, 0xbea

    invoke-static {v2, v0, v1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 5449
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->enableScreenAfterBoot()V

    .line 5451
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5452
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateEventDispatchingLocked(Z)V

    .line 5453
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5454
    return-void

    .line 5453
    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public enforceSystemHasVrFeature()V
    .registers 3

    .line 4342
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.vr.high_performance"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4346
    return-void

    .line 4344
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "VR mode not supported on this device!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z
    .registers 10

    .line 4146
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4148
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_56

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4149
    const-string v3, "enterPictureInPictureMode"

    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->ensureValidPictureInPictureActivityParamsLocked(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 4153
    invoke-direct {p0, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->isInPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1f

    .line 4154
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_50

    .line 4201
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4154
    return v5

    .line 4159
    :cond_1f
    :try_start_1f
    const-string v4, "enterPictureInPictureMode"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_30

    .line 4161
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_50

    .line 4201
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4161
    return v6

    .line 4164
    :cond_30
    :try_start_30
    new-instance v4, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$js0zprxhKzo_Mx9ozR8logP_1-c;

    invoke-direct {v4, p0, v3, p2}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$js0zprxhKzo_Mx9ozR8logP_1-c;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;)V

    .line 4184
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isKeyguardLocked()Z

    move-result p2

    if-eqz p2, :cond_45

    .line 4188
    new-instance p2, Lcom/android/server/wm/ActivityTaskManagerService$1;

    invoke-direct {p2, p0, v4}, Lcom/android/server/wm/ActivityTaskManagerService$1;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/Runnable;)V

    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto :goto_48

    .line 4196
    :cond_45
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 4198
    :goto_48
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_30 .. :try_end_49} :catchall_50

    .line 4201
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4198
    return v5

    .line 4199
    :catchall_50
    move-exception p1

    :try_start_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    :try_start_52
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_56

    .line 4201
    :catchall_56
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public final finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z
    .registers 17

    .line 1569
    move-object v1, p0

    move/from16 v2, p4

    if-eqz p3, :cond_14

    invoke-virtual {p3}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_14

    .line 1570
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File descriptors passed in Intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1573
    :cond_14
    :goto_14
    iget-object v7, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v7

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1574
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1575
    const/4 v4, 0x1

    if-nez v3, :cond_26

    .line 1576
    monitor-exit v7
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_d3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 1579
    :cond_26
    :try_start_26
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v5

    .line 1580
    invoke-virtual {v5}, Lcom/android/server/wm/TaskRecord;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 1581
    if-nez v6, :cond_37

    .line 1582
    const-string v0, "ActivityTaskManager"

    const-string v8, "Finishing task with all activities already finished"

    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    :cond_37
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/LockTaskController;->activityBlockedFromFinish(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_47

    .line 1587
    monitor-exit v7
    :try_end_43
    .catchall {:try_start_26 .. :try_end_43} :catchall_d3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v8

    .line 1592
    :cond_47
    :try_start_47
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_7a

    .line 1594
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    move-object v9, p1

    invoke-virtual {v0, p1, v8}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0
    :try_end_54
    .catchall {:try_start_47 .. :try_end_54} :catchall_d3

    .line 1595
    if-eqz v0, :cond_7b

    .line 1597
    nop

    .line 1599
    :try_start_57
    iget-object v10, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v10, v0}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v0
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_5f} :catch_60
    .catchall {:try_start_57 .. :try_end_5f} :catchall_d3

    .line 1603
    goto :goto_6c

    .line 1600
    :catch_60
    move-exception v0

    .line 1601
    const/4 v0, 0x0

    :try_start_62
    iput-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 1602
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v10

    invoke-virtual {v10, v0}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    move v0, v4

    .line 1605
    :goto_6c
    if-nez v0, :cond_7b

    .line 1606
    const-string v0, "ActivityTaskManager"

    const-string v1, "Not finishing activity because controller resumed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    monitor-exit v7
    :try_end_76
    .catchall {:try_start_62 .. :try_end_76} :catchall_d3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v8

    .line 1592
    :cond_7a
    move-object v9, p1

    .line 1614
    :cond_7b
    :try_start_7b
    iget-object v0, v3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_88

    .line 1615
    iget-object v0, v3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lcom/android/server/wm/WindowProcessController;->setLastActivityFinishTimeIfNeeded(J)V

    .line 1618
    :cond_88
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10
    :try_end_8c
    .catchall {:try_start_7b .. :try_end_8c} :catchall_d3

    .line 1621
    if-ne v2, v4, :cond_8f

    goto :goto_90

    :cond_8f
    move v4, v8

    .line 1623
    :goto_90
    const/4 v0, 0x2

    if-eq v2, v0, :cond_b0

    if-eqz v4, :cond_98

    if-ne v3, v6, :cond_98

    goto :goto_b0

    .line 1638
    :cond_98
    :try_start_98
    invoke-virtual {v5}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    const-string v5, "app-request"

    const/4 v6, 0x1

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    .line 1640
    if-nez v0, :cond_c5

    .line 1641
    const-string v1, "ActivityTaskManager"

    const-string v2, "Failed to finish by app-request"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c5

    .line 1630
    :cond_b0
    :goto_b0
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget v1, v5, Lcom/android/server/wm/TaskRecord;->taskId:I

    const-string v2, "finish-activity"

    invoke-virtual {v0, v1, v8, v4, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    move-result v0

    .line 1632
    if-nez v0, :cond_c3

    .line 1633
    const-string v1, "ActivityTaskManager"

    const-string v2, "Removing task failed to finish activity"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    :cond_c3
    iput v8, v3, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I
    :try_end_c5
    .catchall {:try_start_98 .. :try_end_c5} :catchall_ce

    .line 1644
    :cond_c5
    :goto_c5
    nop

    .line 1646
    :try_start_c6
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v7
    :try_end_ca
    .catchall {:try_start_c6 .. :try_end_ca} :catchall_d3

    .line 1644
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 1646
    :catchall_ce
    move-exception v0

    :try_start_cf
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1648
    :catchall_d3
    move-exception v0

    monitor-exit v7
    :try_end_d5
    .catchall {:try_start_cf .. :try_end_d5} :catchall_d3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public finishActivityAffinity(Landroid/os/IBinder;)Z
    .registers 8

    .line 1653
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1654
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_46

    .line 1656
    :try_start_a
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_41

    .line 1657
    const/4 v3, 0x0

    if-nez p1, :cond_1a

    .line 1658
    nop

    .line 1669
    :try_start_12
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_46

    .line 1658
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 1663
    :cond_1a
    :try_start_1a
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    .line 1664
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/server/wm/LockTaskController;->activityBlockedFromFinish(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v5
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_41

    if-eqz v5, :cond_31

    .line 1665
    nop

    .line 1669
    :try_start_29
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_46

    .line 1665
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 1667
    :cond_31
    :try_start_31
    invoke-virtual {v4}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityStack;->finishActivityAffinityLocked(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_41

    .line 1669
    :try_start_39
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_46

    .line 1667
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 1669
    :catchall_41
    move-exception p1

    :try_start_42
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1671
    :catchall_46
    move-exception p1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_46

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method finishRunningVoiceLocked()V
    .registers 2

    .line 3838
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_f

    .line 3839
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    .line 3840
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3841
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 3843
    :cond_f
    return-void
.end method

.method public final finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 8

    .line 2560
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2561
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2562
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 2563
    if-eqz p1, :cond_17

    .line 2564
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/wm/ActivityStack;->finishSubActivityLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V

    .line 2566
    :cond_17
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2567
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2568
    return-void

    .line 2567
    :catchall_1f
    move-exception p1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .registers 6

    .line 3009
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3010
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1d

    .line 3014
    :try_start_a
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootActivityContainer;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_18

    .line 3016
    :try_start_f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3017
    nop

    .line 3018
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3020
    return-void

    .line 3016
    :catchall_18
    move-exception p1

    :try_start_19
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 3018
    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .registers 3

    .line 3860
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3861
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 3862
    if-nez p1, :cond_12

    .line 3863
    const/4 p1, 0x0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p1

    .line 3865
    :cond_12
    :try_start_12
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p1

    .line 3866
    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getActivityDisplayId(Landroid/os/IBinder;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2037
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2038
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->getStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    .line 2039
    if-eqz p1, :cond_18

    iget v1, p1, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_18

    .line 2040
    iget p1, p1, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 2042
    :cond_18
    const/4 p1, 0x0

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 2043
    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getActivityOptions(Landroid/os/IBinder;)Landroid/os/Bundle;
    .registers 7

    .line 2978
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2980
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_33

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2981
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 2982
    const/4 v3, 0x0

    if-eqz p1, :cond_25

    .line 2983
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/android/server/wm/ActivityRecord;->takeOptionsLocked(Z)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 2985
    if-nez p1, :cond_19

    goto :goto_1d

    :cond_19
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    :goto_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_2d

    .line 2990
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2985
    return-object v3

    .line 2987
    :cond_25
    :try_start_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_2d

    .line 2990
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2987
    return-object v3

    .line 2988
    :catchall_2d
    move-exception p1

    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    :try_start_2f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_33

    .line 2990
    :catchall_33
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method getActivityStartController()Lcom/android/server/wm/ActivityStartController;
    .registers 2

    .line 922
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

    .line 2795
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "getAllStackInfos()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2796
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2798
    :try_start_b
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_25

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2799
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootActivityContainer;->getAllStackInfos()Ljava/util/ArrayList;

    move-result-object v3

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1f

    .line 2802
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2799
    return-object v3

    .line 2800
    :catchall_1f
    move-exception v3

    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    :try_start_21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_25

    .line 2802
    :catchall_25
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;
    .registers 4

    .line 5945
    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 5946
    :cond_4
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 5947
    invoke-virtual {v0, p2}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 5948
    return-object v0
.end method

.method getAppOpsService()Lcom/android/server/appop/AppOpsService;
    .registers 2

    .line 888
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    if-nez v0, :cond_12

    .line 889
    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 890
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    check-cast v0, Lcom/android/server/appop/AppOpsService;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    .line 892
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    return-object v0
.end method

.method public getAppTaskThumbnailSize()Landroid/graphics/Point;
    .registers 5

    .line 3229
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3230
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailWidth:I

    iget v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailHeight:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 3231
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

    .line 2996
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2997
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2999
    :try_start_8
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_22

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3000
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v4, v0, p1}, Lcom/android/server/wm/RecentTasks;->getAppTasksList(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    monitor-exit v3
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_1c

    .line 3003
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3000
    return-object p1

    .line 3001
    :catchall_1c
    move-exception p1

    :try_start_1d
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    :try_start_1e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_22

    .line 3003
    :catchall_22
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method getAppWarningsLocked()Lcom/android/server/wm/AppWarnings;
    .registers 2

    .line 5904
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    return-object v0
.end method

.method public getAssistContextExtras(I)Landroid/os/Bundle;
    .registers 16

    .line 3523
    nop

    .line 3525
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 3523
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

    move-result-object p1

    .line 3526
    if-nez p1, :cond_1a

    .line 3527
    const/4 p1, 0x0

    return-object p1

    .line 3529
    :cond_1a
    monitor-enter p1

    .line 3530
    :goto_1b
    :try_start_1b
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->haveResult:Z
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_48

    if-nez v0, :cond_25

    .line 3532
    :try_start_1f
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_22} :catch_23
    .catchall {:try_start_1f .. :try_end_22} :catchall_48

    .line 3534
    :goto_22
    goto :goto_1b

    .line 3533
    :catch_23
    move-exception v0

    goto :goto_22

    .line 3536
    :cond_25
    :try_start_25
    monitor-exit p1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_48

    .line 3537
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_29
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3538
    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->result:Landroid/os/Bundle;

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->buildAssistBundleLocked(Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;Landroid/os/Bundle;)V

    .line 3539
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3540
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3541
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_29 .. :try_end_3c} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3542
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    return-object p1

    .line 3541
    :catchall_42
    move-exception p1

    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 3536
    :catchall_48
    move-exception v0

    :try_start_49
    monitor-exit p1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v0
.end method

.method public getAtmInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 816
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-object v0
.end method

.method public getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .registers 3

    .line 2308
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2309
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getCallingRecordLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 2310
    if-eqz p1, :cond_13

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p1

    .line 2311
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .registers 3

    .line 2300
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2301
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getCallingRecordLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 2302
    if-eqz p1, :cond_11

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p1

    .line 2303
    :catchall_17
    move-exception p1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 4

    .line 5141
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5142
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfigurationForCallingPid()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 5143
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 5144
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5145
    return-object v1

    .line 5144
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

    .line 5130
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    return v0
.end method

.method public getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;
    .registers 7

    .line 961
    new-instance v0, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v0}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 962
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 963
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfigurationForCallingPid()Landroid/content/res/Configuration;

    move-result-object v2

    .line 964
    iget v3, v2, Landroid/content/res/Configuration;->touchscreen:I

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    .line 965
    iget v3, v2, Landroid/content/res/Configuration;->keyboard:I

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    .line 966
    iget v3, v2, Landroid/content/res/Configuration;->navigation:I

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    .line 967
    iget v3, v2, Landroid/content/res/Configuration;->navigation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_25

    iget v3, v2, Landroid/content/res/Configuration;->navigation:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2a

    .line 969
    :cond_25
    iget v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v3, v4

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 971
    :cond_2a
    iget v3, v2, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v3, :cond_38

    iget v2, v2, Landroid/content/res/Configuration;->keyboard:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_38

    .line 973
    iget v2, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v2, v3

    iput v2, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 975
    :cond_38
    iget v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->GL_ES_VERSION:I

    iput v2, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 976
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 977
    return-object v0

    .line 976
    :catchall_41
    move-exception v0

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public getFilteredTasks(III)Ljava/util/List;
    .registers 15
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
            "(III)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 2536
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2537
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2538
    invoke-virtual {p0, v0, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->isCrossUserAllowed(II)Z

    move-result v7

    .line 2539
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    .line 2540
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2539
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/UserManagerService;->getProfileIds(IZ)[I

    move-result-object v1

    .line 2541
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 2542
    const/4 v2, 0x0

    :goto_1f
    array-length v3, v1

    if-ge v2, v3, :cond_2e

    .line 2543
    aget v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2542
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 2545
    :cond_2e
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2547
    iget-object v10, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v10

    :try_start_36
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2550
    const-string v1, "getTasks"

    invoke-virtual {p0, v1, v0, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->isGetTasksAllowed(Ljava/lang/String;II)Z

    move-result v6

    .line 2551
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    move v1, p1

    move-object v2, v9

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/RootActivityContainer;->getRunningTasks(ILjava/util/List;IIIZZLandroid/util/ArraySet;)V

    .line 2553
    monitor-exit v10
    :try_end_49
    .catchall {:try_start_36 .. :try_end_49} :catchall_4d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2555
    return-object v9

    .line 2553
    :catchall_4d
    move-exception p1

    :try_start_4e
    monitor-exit v10
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getFocusedStackInfo()Landroid/app/ActivityManager$StackInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2048
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "getStackInfo()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2051
    :try_start_b
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_36

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2052
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2053
    if-eqz v3, :cond_27

    .line 2054
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget v3, v3, Lcom/android/server/wm/ActivityStack;->mStackId:I

    invoke-virtual {v4, v3}, Lcom/android/server/wm/RootActivityContainer;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v3

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_e .. :try_end_20} :catchall_30

    .line 2059
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2054
    return-object v3

    .line 2056
    :cond_27
    const/4 v3, 0x0

    :try_start_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_30

    .line 2059
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2056
    return-object v3

    .line 2057
    :catchall_30
    move-exception v3

    :try_start_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    :try_start_32
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_36

    .line 2059
    :catchall_36
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getFrontActivityScreenCompatMode()I
    .registers 4

    .line 1913
    const-string v0, "getFrontActivityScreenCompatMode"

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1914
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1915
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1916
    if-nez v1, :cond_1b

    .line 1917
    const/4 v1, -0x3

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 1919
    :cond_1b
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    move-result v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1b .. :try_end_26} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 1920
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

    .line 5153
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method getGlobalConfigurationForCallingPid()Landroid/content/res/Configuration;
    .registers 2

    .line 938
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 939
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfigurationForPid(I)Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method getGlobalConfigurationForPid(I)Landroid/content/res/Configuration;
    .registers 4

    .line 946
    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq p1, v0, :cond_29

    if-gez p1, :cond_7

    goto :goto_29

    .line 949
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 950
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    .line 951
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    goto :goto_1e

    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p1

    .line 952
    :catchall_23
    move-exception p1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 947
    :cond_29
    :goto_29
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    return-object p1
.end method

.method public getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;
    .registers 2

    .line 810
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-object v0
.end method

.method getHomeIntent()Landroid/content/Intent;
    .registers 4

    .line 5908
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

    .line 5909
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5910
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5911
    iget v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_25

    .line 5912
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5914
    :cond_25
    return-object v0
.end method

.method getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;
    .registers 27

    .line 5793
    move/from16 v12, p1

    .line 5794
    const/4 v13, 0x3

    const/4 v0, 0x0

    if-ne v12, v13, :cond_4a

    .line 5795
    invoke-static/range {p5 .. p5}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 5796
    const-string v2, "Failed createPendingResult: activity "

    const-string v3, "ActivityTaskManager"

    if-nez v1, :cond_2a

    .line 5797
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not in any stack"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5798
    return-object v0

    .line 5800
    :cond_2a
    move-object/from16 v5, p5

    iget-boolean v4, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_48

    .line 5801
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is finishing"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5802
    return-object v0

    .line 5800
    :cond_48
    move-object v14, v1

    goto :goto_4d

    .line 5794
    :cond_4a
    move-object/from16 v5, p5

    move-object v14, v0

    .line 5806
    :goto_4d
    move-object v0, p0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

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

    .line 5809
    const/high16 v1, 0x20000000

    and-int v1, p10, v1

    if-eqz v1, :cond_72

    const/4 v1, 0x1

    goto :goto_73

    :cond_72
    const/4 v1, 0x0

    .line 5810
    :goto_73
    if-eqz v1, :cond_76

    .line 5811
    return-object v0

    .line 5813
    :cond_76
    if-ne v12, v13, :cond_8a

    .line 5814
    iget-object v1, v14, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-nez v1, :cond_83

    .line 5815
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v14, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 5817
    :cond_83
    iget-object v1, v14, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5819
    :cond_8a
    return-object v0
.end method

.method public getLastResumedActivityUserId()I
    .registers 4

    .line 4603
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v2, "getLastResumedActivityUserId()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4605
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4606
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_1c

    .line 4607
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 4609
    :cond_1c
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 4610
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

    .line 4797
    iget-wide v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastStopAppSwitchesTime:J

    return-wide v0
.end method

.method public getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .registers 3

    .line 1954
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1955
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 1956
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1957
    if-nez p1, :cond_12

    .line 1958
    const/4 p1, 0x0

    return-object p1

    .line 1960
    :cond_12
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    return-object p1

    .line 1956
    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getLaunchedFromUid(Landroid/os/IBinder;)I
    .registers 3

    .line 1942
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1943
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 1944
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1945
    if-nez p1, :cond_12

    .line 1946
    const/4 p1, -0x1

    return p1

    .line 1948
    :cond_12
    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    return p1

    .line 1944
    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;
    .registers 2

    .line 918
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    return-object v0
.end method

.method getLockTaskController()Lcom/android/server/wm/LockTaskController;
    .registers 2

    .line 930
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    return-object v0
.end method

.method public getLockTaskModeState()I
    .registers 3

    .line 2958
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2959
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/LockTaskController;->getLockTaskModeState()I

    move-result v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 2960
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
    .registers 2

    .line 4237
    const/4 p1, 0x3

    return p1
.end method

.method public getPackageAskScreenCompat(Ljava/lang/String;)Z
    .registers 4

    .line 4862
    const-string v0, "getPackageAskScreenCompat"

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 4863
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4864
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageAskCompatModeLocked(Ljava/lang/String;)Z

    move-result p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 4865
    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;
    .registers 3

    .line 3871
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3872
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 3873
    if-nez p1, :cond_12

    .line 3874
    const/4 p1, 0x0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p1

    .line 3876
    :cond_12
    :try_start_12
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p1

    .line 3877
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method getPackageManager()Landroid/content/pm/IPackageManager;
    .registers 2

    .line 5886
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;
    .registers 2

    .line 5890
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_e

    .line 5891
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 5893
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method public getPackageScreenCompatMode(Ljava/lang/String;)I
    .registers 4

    .line 4845
    const-string v0, "getPackageScreenCompatMode"

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 4846
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4847
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageScreenCompatModeLocked(Ljava/lang/String;)I

    move-result p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 4848
    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method getPendingTempWhitelistTagForUidLocked(I)Ljava/lang/String;
    .registers 3

    .line 6023
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingTempWhitelist:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method getPermissionPolicyInternal()Lcom/android/server/policy/PermissionPolicyInternal;
    .registers 2

    .line 5897
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    if-nez v0, :cond_e

    .line 5898
    const-class v0, Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PermissionPolicyInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    .line 5900
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    return-object v0
.end method

.method getProcessController(II)Lcom/android/server/wm/WindowProcessController;
    .registers 5

    .line 5993
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    .line 5994
    const/4 v0, 0x0

    if-nez p1, :cond_a

    return-object v0

    .line 5995
    :cond_a
    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-eqz v1, :cond_15

    iget v1, p1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    if-ne v1, p2, :cond_15

    .line 5996
    return-object p1

    .line 5998
    :cond_15
    return-object v0
.end method

.method getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;
    .registers 9

    .line 5973
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 5974
    return-object v0

    .line 5977
    :cond_4
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 5978
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    .line 5979
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_14
    if-ltz v2, :cond_41

    .line 5980
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 5981
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_22
    if-ltz v4, :cond_3e

    .line 5982
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowProcessController;

    .line 5983
    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v6

    if-eqz v6, :cond_3b

    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v6, p1, :cond_3b

    .line 5984
    return-object v5

    .line 5981
    :cond_3b
    add-int/lit8 v4, v4, -0x1

    goto :goto_22

    .line 5979
    :cond_3e
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    .line 5989
    :cond_41
    return-object v0
.end method

.method getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;
    .registers 8

    .line 5952
    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_36

    .line 5955
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    .line 5956
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 5957
    if-nez v0, :cond_14

    const/4 p1, 0x0

    return-object p1

    .line 5958
    :cond_14
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 5959
    const/4 v2, 0x0

    :goto_19
    if-ge v2, v1, :cond_36

    .line 5960
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 5961
    invoke-static {v3}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-nez v4, :cond_33

    invoke-static {v3, p2}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 5963
    goto :goto_33

    .line 5965
    :cond_2c
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowProcessController;

    return-object p1

    .line 5959
    :cond_33
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 5969
    :cond_36
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowProcessController;

    return-object p1
.end method

.method public getRecentTasks(III)Landroid/content/pm/ParceledListSlice;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 2778
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2779
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string v1, "getRecentTasks"

    invoke-virtual {p0, v0, v6, p3, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result v5

    .line 2780
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p3

    const-string v0, "getRecentTasks"

    invoke-virtual {p0, v0, p3, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->isGetTasksAllowed(Ljava/lang/String;II)Z

    move-result v3

    .line 2782
    nop

    .line 2783
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p3

    .line 2784
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 2782
    const-string v1, "android.permission.GET_DETAILED_TASKS"

    invoke-virtual {p0, v1, p3, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->checkGetTasksPermission(Ljava/lang/String;II)I

    move-result p3

    if-nez p3, :cond_2b

    const/4 p3, 0x1

    goto :goto_2c

    :cond_2b
    const/4 p3, 0x0

    :goto_2c
    move v4, p3

    .line 2787
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p3

    :try_start_30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2788
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/RecentTasks;->getRecentTasks(IIZZII)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    monitor-exit p3
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_40

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p1

    .line 2790
    :catchall_40
    move-exception p1

    :try_start_41
    monitor-exit p3
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method getRecentTasks()Lcom/android/server/wm/RecentTasks;
    .registers 2

    .line 914
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    return-object v0
.end method

.method public getRequestedOrientation(Landroid/os/IBinder;)I
    .registers 3

    .line 1825
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1826
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 1827
    if-nez p1, :cond_12

    .line 1828
    const/4 p1, -0x1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 1830
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOrientation()I

    move-result p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 1831
    :catchall_1b
    move-exception p1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method getSecondaryHomeIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 5

    .line 5926
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

    .line 5927
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11100f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 5929
    if-eqz p1, :cond_27

    if-eqz v1, :cond_23

    goto :goto_27

    .line 5935
    :cond_23
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3c

    .line 5931
    :cond_27
    :goto_27
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x104019f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 5933
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5934
    nop

    .line 5937
    :goto_3c
    const/16 p1, 0x100

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5938
    iget p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4b

    .line 5939
    const-string p1, "android.intent.category.SECONDARY_HOME"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5941
    :cond_4b
    return-object v0
.end method

.method public getStackInfo(II)Landroid/app/ActivityManager$StackInfo;
    .registers 7

    .line 2808
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "getStackInfo()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2809
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2811
    :try_start_b
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_25

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2812
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/RootActivityContainer;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object p1

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1f

    .line 2815
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2812
    return-object p1

    .line 2813
    :catchall_1f
    move-exception p1

    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    :try_start_21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_25

    .line 2815
    :catchall_25
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getTaskBounds(I)Landroid/graphics/Rect;
    .registers 9

    .line 2215
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "getTaskBounds()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2216
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2217
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2219
    :try_start_12
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_74

    :try_start_15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2220
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    .line 2222
    if-nez v4, :cond_44

    .line 2223
    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTaskBounds: taskId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_15 .. :try_end_3d} :catchall_6e

    .line 2241
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2224
    return-object v2

    .line 2226
    :cond_44
    :try_start_44
    invoke-virtual {v4}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 2229
    invoke-virtual {v4, v2}, Lcom/android/server/wm/TaskRecord;->getWindowContainerBounds(Landroid/graphics/Rect;)V

    goto :goto_65

    .line 2233
    :cond_4e
    invoke-virtual {v4}, Lcom/android/server/wm/TaskRecord;->matchParentBounds()Z

    move-result p1

    if-nez p1, :cond_5c

    .line 2234
    invoke-virtual {v4}, Lcom/android/server/wm/TaskRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_65

    .line 2235
    :cond_5c
    iget-object p1, v4, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz p1, :cond_65

    .line 2236
    iget-object p1, v4, Lcom/android/server/wm/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2239
    :cond_65
    :goto_65
    monitor-exit v3
    :try_end_66
    .catchall {:try_start_44 .. :try_end_66} :catchall_6e

    :try_start_66
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_74

    .line 2241
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2242
    nop

    .line 2243
    return-object v2

    .line 2239
    :catchall_6e
    move-exception p1

    :try_start_6f
    monitor-exit v3
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    :try_start_70
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_74
    .catchall {:try_start_70 .. :try_end_74} :catchall_74

    .line 2241
    :catchall_74
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;
    .registers 2

    .line 926
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    return-object v0
.end method

.method public getTaskDescription(I)Landroid/app/ActivityManager$TaskDescription;
    .registers 5

    .line 2248
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2249
    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "getTaskDescription()"

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2251
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object p1

    .line 2253
    if-eqz p1, :cond_1d

    .line 2254
    iget-object p1, p1, Lcom/android/server/wm/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p1

    .line 2256
    :cond_1d
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2257
    const/4 p1, 0x0

    return-object p1

    .line 2256
    :catchall_23
    move-exception p1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 6

    .line 3366
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v2, "getTaskDescriptionIcon"

    invoke-virtual {p0, v0, v1, p2, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p2

    .line 3369
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3370
    new-instance v1, Ljava/io/File;

    invoke-static {p2}, Lcom/android/server/wm/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v2

    .line 3371
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3372
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 3373
    const-string v0, "_activity_icon_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 3377
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/RecentTasks;->getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 3374
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad file path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " passed for userId "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTaskForActivity(Landroid/os/IBinder;Z)I
    .registers 4

    .line 2522
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2523
    invoke-static {p1, p2}, Lcom/android/server/wm/ActivityRecord;->getTaskForActivityLocked(Landroid/os/IBinder;Z)I

    move-result p1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 2524
    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getTaskSnapshot(IZ)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 6

    .line 4557
    const-string v0, "android.permission.READ_FRAME_BUFFER"

    const-string v1, "getTaskSnapshot()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4558
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4560
    const/4 v2, 0x1

    :try_start_c
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskSnapshot(IZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_14

    .line 4562
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4560
    return-object p1

    .line 4562
    :catchall_14
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getTasks(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 2529
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getFilteredTasks(III)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;
    .registers 2

    .line 4889
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    return-object v0
.end method

.method getUidState(I)I
    .registers 3

    .line 6002
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MirrorActiveUids;->getUidState(I)I

    move-result p1

    return p1
.end method

.method public getUriPermissionOwnerForActivity(Landroid/os/IBinder;)Landroid/os/IBinder;
    .registers 6

    .line 4296
    const-string v0, "getUriPermissionOwnerForActivity"

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 4297
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4298
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4299
    if-eqz v1, :cond_1e

    .line 4303
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/uri/UriPermissionOwner;->getExternalToken()Landroid/os/Binder;

    move-result-object p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p1

    .line 4300
    :cond_1e
    :try_start_1e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity does not exist; token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4304
    :catchall_35
    move-exception p1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_1e .. :try_end_37} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method getUserManager()Lcom/android/server/pm/UserManagerService;
    .registers 2

    .line 880
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    if-nez v0, :cond_12

    .line 881
    const-string v0, "user"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 882
    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 884
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-object v0
.end method

.method handleIncomingUser(IIILjava/lang/String;)I
    .registers 13

    .line 1421
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method hasSystemAlertWindowPermission(IILjava/lang/String;)Z
    .registers 7

    .line 900
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsService()Lcom/android/server/appop/AppOpsService;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p1, p3}, Lcom/android/server/appop/AppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result p3

    .line 902
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p3, v2, :cond_1a

    .line 903
    const-string p3, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-static {p3, p2, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_18

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    return v0

    .line 906
    :cond_1a
    if-nez p3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    return v0
.end method

.method hasUserRestriction(Ljava/lang/String;I)Z
    .registers 4

    .line 896
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method increaseConfigurationSeqLocked()I
    .registers 3

    .line 854
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    .line 855
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    return v0
.end method

.method public initialize(Lcom/android/server/firewall/IntentFirewall;Lcom/android/server/am/PendingIntentController;Landroid/os/Looper;)V
    .registers 10

    .line 821
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {v0, p0, p3}, Lcom/android/server/wm/ActivityTaskManagerService$H;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 822
    new-instance p3, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    invoke-direct {p3, p0}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    .line 823
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    .line 824
    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object p1

    .line 825
    new-instance p3, Lcom/android/server/wm/AppWarnings;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    move-object v0, p3

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppWarnings;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/io/File;)V

    iput-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    .line 826
    new-instance p3, Lcom/android/server/wm/CompatModePackages;

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {p3, p0, p1, v0}, Lcom/android/server/wm/CompatModePackages;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/io/File;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    .line 827
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    .line 829
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 830
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 831
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    const/4 p2, 0x1

    iput p2, p1, Landroid/content/res/Configuration;->seq:I

    iput p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    .line 832
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->createStackSupervisor()Lcom/android/server/wm/ActivityStackSupervisor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 833
    new-instance p1, Lcom/android/server/wm/RootActivityContainer;

    invoke-direct {p1, p0}, Lcom/android/server/wm/RootActivityContainer;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 834
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/RootActivityContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 836
    new-instance p1, Lcom/android/server/wm/TaskChangeNotificationController;

    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {p1, p2, p3, v0}, Lcom/android/server/wm/TaskChangeNotificationController;-><init>(Ljava/lang/Object;Lcom/android/server/wm/ActivityStackSupervisor;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 838
    new-instance p1, Lcom/android/server/wm/LockTaskController;

    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {p1, p2, p3, v0}, Lcom/android/server/wm/LockTaskController;-><init>(Landroid/content/Context;Lcom/android/server/wm/ActivityStackSupervisor;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 839
    new-instance p1, Lcom/android/server/wm/ActivityStartController;

    invoke-direct {p1, p0}, Lcom/android/server/wm/ActivityStartController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 840
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->createRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 841
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->setRecentTasks(Lcom/android/server/wm/RecentTasks;)V

    .line 842
    new-instance p1, Lcom/android/server/wm/VrController;

    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-direct {p1, p2}, Lcom/android/server/wm/VrController;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    .line 843
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 844
    return-void
.end method

.method public installSystemProviders()V
    .registers 3

    .line 726
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFontScaleSettingObserver:Lcom/android/server/wm/ActivityTaskManagerService$FontScaleSettingObserver;

    .line 730
    new-instance v0, Lorg/lineageos/internal/applications/LineageActivityManager;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/lineageos/internal/applications/LineageActivityManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLineageActivityManager:Lorg/lineageos/internal/applications/LineageActivityManager;

    .line 731
    return-void
.end method

.method public final isActivityStartAllowedOnDisplay(ILandroid/content/Intent;Ljava/lang/String;I)Z
    .registers 16

    .line 1534
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1535
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1536
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1540
    :try_start_c
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v5, -0x2710

    .line 1542
    invoke-static {v0, v0, v5}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v10

    .line 1540
    move-object v5, p2

    move-object v6, p3

    move v9, p4

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    .line 1544
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p3, p2, p4}, Landroid/app/ActivityManagerInternal;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    .line 1546
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p3
    :try_end_26
    .catchall {:try_start_c .. :try_end_26} :catchall_3d

    :try_start_26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1547
    iget-object p4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p4, p1, v1, v0, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->canPlaceEntityOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result p1

    monitor-exit p3
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_37

    .line 1551
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1547
    return p1

    .line 1549
    :catchall_37
    move-exception p1

    :try_start_38
    monitor-exit p3
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    :try_start_39
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_3d
    .catchall {:try_start_39 .. :try_end_3d} :catchall_3d

    .line 1551
    :catchall_3d
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method isActivityStartsLoggingEnabled()Z
    .registers 2

    .line 5439
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isActivityStartsLoggingEnabled()Z

    move-result v0

    return v0
.end method

.method public isAssistDataAllowedOnCurrentActivity()Z
    .registers 5

    .line 3749
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3750
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 3751
    const/4 v2, 0x0

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeAssistant()Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_30

    .line 3755
    :cond_14
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3756
    if-nez v1, :cond_1f

    .line 3757
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 3759
    :cond_1f
    :try_start_1f
    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 3760
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3761
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyCache;->getScreenCaptureDisabled(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 3752
    :cond_30
    :goto_30
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 3760
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method isAssociatedCompanionApp(II)Z
    .registers 4

    .line 6086
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompanionAppUidsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 6087
    if-nez p1, :cond_10

    .line 6088
    const/4 p1, 0x0

    return p1

    .line 6090
    :cond_10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method isBackgroundActivityStartsEnabled()Z
    .registers 2

    .line 5443
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isBackgroundActivityStartsEnabled()Z

    move-result v0

    return v0
.end method

.method isBooted()Z
    .registers 2

    .line 5696
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isBooted()Z

    move-result v0

    return v0
.end method

.method isBooting()Z
    .registers 2

    .line 5688
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isBooting()Z

    move-result v0

    return v0
.end method

.method public isControllerAMonkey()Z
    .registers 3

    .line 2515
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2516
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

    .line 2517
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method isCrossUserAllowed(II)Z
    .registers 4

    .line 3610
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_13

    .line 3611
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    .line 3610
    :goto_14
    return p1
.end method

.method isDeviceOwner(I)Z
    .registers 3

    .line 6011
    if-ltz p1, :cond_8

    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDeviceOwnerUid:I

    if-ne v0, p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method isGetTasksAllowed(Ljava/lang/String;II)Z
    .registers 6

    .line 3580
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_c

    .line 3582
    return v0

    .line 3585
    :cond_c
    const-string p1, "android.permission.REAL_GET_TASKS"

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->checkGetTasksPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_16

    move p1, v0

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    .line 3587
    :goto_17
    if-nez p1, :cond_2e

    .line 3588
    const-string v1, "android.permission.GET_TASKS"

    invoke-virtual {p0, v1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->checkGetTasksPermission(Ljava/lang/String;II)I

    move-result p2

    if-nez p2, :cond_2e

    .line 3595
    :try_start_21
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p2

    invoke-interface {p2, p3}, Landroid/content/pm/IPackageManager;->isUidPrivileged(I)Z

    move-result p2
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_29} :catch_2d

    if-eqz p2, :cond_2c

    .line 3596
    move p1, v0

    .line 3601
    :cond_2c
    goto :goto_2e

    .line 3600
    :catch_2d
    move-exception p2

    .line 3606
    :cond_2e
    :goto_2e
    return p1
.end method

.method public isImmersive(Landroid/os/IBinder;)Z
    .registers 3

    .line 1872
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1873
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 1874
    if-eqz p1, :cond_13

    .line 1877
    iget-boolean p1, p1, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 1875
    :cond_13
    :try_start_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 1878
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public isInLockTaskMode()Z
    .registers 2

    .line 2953
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
    .registers 5

    .line 4105
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4107
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_2b

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4108
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 4109
    if-nez p1, :cond_19

    .line 4110
    const/4 p1, 0x0

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_25

    .line 4116
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4110
    return p1

    .line 4113
    :cond_19
    :try_start_19
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->inMultiWindowMode()Z

    move-result p1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_25

    .line 4116
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4113
    return p1

    .line 4114
    :catchall_25
    move-exception p1

    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    :try_start_27
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_2b

    .line 4116
    :catchall_2b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public isInPictureInPictureMode(Landroid/os/IBinder;)Z
    .registers 5

    .line 4122
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4124
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_20

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4125
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->isInPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    monitor-exit v2
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_1a

    .line 4128
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4125
    return p1

    .line 4126
    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    :try_start_1c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_20

    .line 4128
    :catchall_20
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method isKeyguardLocked()Z
    .registers 2

    .line 4898
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method public isRootVoiceInteraction(Landroid/os/IBinder;)Z
    .registers 3

    .line 3791
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3792
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 3793
    if-nez p1, :cond_12

    .line 3794
    const/4 p1, 0x0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 3796
    :cond_12
    :try_start_12
    iget-boolean p1, p1, Lcom/android/server/wm/ActivityRecord;->rootVoiceInteraction:Z

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 3797
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method isSameApp(ILjava/lang/String;)Z
    .registers 6

    .line 2442
    if-eqz p1, :cond_1f

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_1f

    .line 2443
    if-nez p2, :cond_a

    .line 2444
    const/4 p1, 0x0

    return p1

    .line 2446
    :cond_a
    :try_start_a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/high16 v1, 0x10000000

    .line 2448
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2446
    invoke-interface {v0, p2, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result p2

    .line 2449
    invoke-static {p1, p2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p1
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1c} :catch_1d

    return p1

    .line 2451
    :catch_1d
    move-exception p1

    goto :goto_20

    .line 2453
    :cond_1f
    nop

    .line 2454
    :goto_20
    const/4 p1, 0x1

    return p1
.end method

.method isSleepingLocked()Z
    .registers 2

    .line 5513
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    return v0
.end method

.method isSleepingOrShuttingDownLocked()Z
    .registers 2

    .line 5509
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
    .registers 3

    .line 1883
    const-string v0, "isTopActivityImmersive"

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1884
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1885
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1886
    if-eqz v1, :cond_18

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 1887
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
    .registers 4

    .line 3024
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3025
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 3026
    if-eqz p1, :cond_18

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-ne v1, p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 3027
    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method isUidForeground(I)Z
    .registers 3

    .line 6007
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->isAnyNonToastWindowVisibleForUid(I)Z

    move-result p1

    return p1
.end method

.method public keyguardGoingAway(I)V
    .registers 6

    .line 3893
    const-string v0, "keyguardGoingAway"

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 3894
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3896
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_23

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3897
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/KeyguardController;->keyguardGoingAway(I)V

    .line 3898
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_1d

    :try_start_15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_23

    .line 3900
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3901
    nop

    .line 3902
    return-void

    .line 3898
    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_23

    .line 3900
    :catchall_23
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public synthetic lambda$applyUpdateLockStateLocked$0$ActivityTaskManagerService(ZLcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 1858
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {p2}, Landroid/os/UpdateLock;->isHeld()Z

    move-result p2

    if-eq p2, p1, :cond_15

    .line 1861
    if-eqz p1, :cond_10

    .line 1862
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {p1}, Landroid/os/UpdateLock;->acquire()V

    goto :goto_15

    .line 1864
    :cond_10
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {p1}, Landroid/os/UpdateLock;->release()V

    .line 1867
    :cond_15
    :goto_15
    return-void
.end method

.method public synthetic lambda$applyUpdateVrModeLocked$5$ActivityTaskManagerService(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6

    .line 4828
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/VrController;->onVrModeChanged(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 4829
    return-void

    .line 4831
    :cond_9
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4832
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v0}, Lcom/android/server/wm/VrController;->shouldDisableNonVrUiLocked()Z

    move-result v0

    .line 4833
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->disableNonVrUi(Z)V

    .line 4834
    if-eqz v0, :cond_28

    .line 4837
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootActivityContainer;->removeStacksInWindowingModes([I)V

    .line 4839
    :cond_28
    monitor-exit p1
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4840
    return-void

    .line 4839
    :catchall_2d
    move-exception v0

    :try_start_2e
    monitor-exit p1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public synthetic lambda$enterPictureInPictureMode$4$ActivityTaskManagerService(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;)V
    .registers 9

    .line 4165
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4167
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v1, p2}, Landroid/app/PictureInPictureParams;->copyOnlySet(Landroid/app/PictureInPictureParams;)V

    .line 4168
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v1}, Landroid/app/PictureInPictureParams;->getAspectRatio()F

    move-result v1

    .line 4169
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v2}, Landroid/app/PictureInPictureParams;->getActions()Ljava/util/List;

    move-result-object v2

    .line 4171
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 4172
    invoke-virtual {v4}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 4173
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const-string v5, "enterPictureInPictureMode"

    invoke-virtual {v4, p1, v3, v1, v5}, Lcom/android/server/wm/RootActivityContainer;->moveActivityToPinnedStack(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;FLjava/lang/String;)V

    .line 4175
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 4176
    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivityStack;->setPictureInPictureAspectRatio(F)V

    .line 4177
    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityStack;->setPictureInPictureActions(Ljava/util/List;)V

    .line 4178
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    invoke-static {v1, v2, v3, p1}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logPictureInPictureEnter(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 4180
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->logPictureInPictureArgs(Landroid/app/PictureInPictureParams;)V

    .line 4181
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4182
    return-void

    .line 4181
    :catchall_48
    move-exception p1

    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public synthetic lambda$notifyEnterAnimationComplete$1$ActivityTaskManagerService(Landroid/os/IBinder;)V
    .registers 4

    .line 3038
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3039
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 3040
    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_24

    if-eqz v1, :cond_1f

    .line 3042
    :try_start_12
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v1, p1}, Landroid/app/IApplicationThread;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1d} :catch_1e
    .catchall {:try_start_12 .. :try_end_1d} :catchall_24

    .line 3044
    goto :goto_1f

    .line 3043
    :catch_1e
    move-exception p1

    .line 3046
    :cond_1f
    :goto_1f
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3048
    return-void

    .line 3046
    :catchall_24
    move-exception p1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public synthetic lambda$onScreenAwakeChanged$3$ActivityTaskManagerService(Z)V
    .registers 4

    .line 3358
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 3359
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

    invoke-interface {v1, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;->onAwakeStateChanged(Z)V

    .line 3358
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3361
    :cond_18
    return-void
.end method

.method public synthetic lambda$postFinishBooting$6$ActivityTaskManagerService(ZZ)V
    .registers 3

    .line 5701
    if-eqz p1, :cond_7

    .line 5702
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p1}, Landroid/app/ActivityManagerInternal;->finishBooting()V

    .line 5704
    :cond_7
    if-eqz p2, :cond_12

    .line 5705
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->enableScreenAfterBoot(Z)V

    .line 5707
    :cond_12
    return-void
.end method

.method public synthetic lambda$scheduleAppGcsLocked$7$ActivityTaskManagerService()V
    .registers 2

    .line 5873
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->scheduleAppGcs()V

    return-void
.end method

.method public synthetic lambda$setLockScreenShown$2$ActivityTaskManagerService(Z)V
    .registers 4

    .line 3350
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 3351
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

    invoke-interface {v1, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;->onKeyguardStateChanged(Z)V

    .line 3350
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3353
    :cond_18
    return-void
.end method

.method public launchAssistIntent(Landroid/content/Intent;ILjava/lang/String;ILandroid/os/Bundle;)Z
    .registers 20

    .line 3516
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

    .line 6028
    return-void
.end method

.method public moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
    .registers 8

    .line 2197
    const-string v0, "moveActivityTaskToBack"

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 2198
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2199
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_3f

    .line 2201
    const/4 v3, 0x0

    if-nez p2, :cond_14

    const/4 p2, 0x1

    goto :goto_15

    :cond_14
    move p2, v3

    :goto_15
    :try_start_15
    invoke-static {p1, p2}, Lcom/android/server/wm/ActivityRecord;->getTaskForActivityLocked(Landroid/os/IBinder;Z)I

    move-result p2

    .line 2202
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v4, p2}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    .line 2203
    if-eqz v4, :cond_31

    .line 2204
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->getStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityStack;->moveTaskToBackLocked(I)Z

    move-result p1
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_3a

    .line 2207
    :try_start_29
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_3f

    .line 2204
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 2207
    :cond_31
    :try_start_31
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2208
    nop

    .line 2209
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2210
    return v3

    .line 2207
    :catchall_3a
    move-exception p1

    :try_start_3b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2209
    :catchall_3f
    move-exception p1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_3f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public moveStackToDisplay(II)V
    .registers 8

    .line 3427
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const-string v2, "moveStackToDisplay()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3429
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3430
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_27

    .line 3434
    :try_start_13
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, p2, v4}, Lcom/android/server/wm/RootActivityContainer;->moveStackToDisplay(IIZ)V
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_22

    .line 3436
    :try_start_19
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3437
    nop

    .line 3438
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3439
    return-void

    .line 3436
    :catchall_22
    move-exception p1

    :try_start_23
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 3438
    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public moveTaskToFront(Landroid/app/IApplicationThread;Ljava/lang/String;IILandroid/os/Bundle;)V
    .registers 14

    .line 2368
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.REORDER_TASKS"

    const-string v2, "moveTaskToFront()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2371
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2372
    nop

    .line 2373
    invoke-static {p5}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v6

    const/4 v7, 0x0

    .line 2372
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityTaskManagerService;->moveTaskToFrontLocked(Landroid/app/IApplicationThread;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;Z)V

    .line 2374
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2375
    return-void

    .line 2374
    :catchall_22
    move-exception p1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method moveTaskToFrontLocked(Landroid/app/IApplicationThread;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;Z)V
    .registers 27

    .line 2381
    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v11, p3

    move-object/from16 v12, p5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 2382
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 2383
    invoke-virtual {v0, v9, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->isSameApp(ILjava/lang/String;)Z

    move-result v1

    const-string v13, "ActivityTaskManager"

    if-eqz v1, :cond_cd

    .line 2389
    const/4 v4, -0x1

    const/4 v5, -0x1

    const-string v6, "Task to front"

    move-object/from16 v1, p0

    move v2, v8

    move v3, v9

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityTaskManagerService;->checkAppSwitchAllowedLocked(IIIILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 2390
    invoke-static/range {p5 .. p5}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 2391
    return-void

    .line 2393
    :cond_2a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2394
    nop

    .line 2395
    const/4 v10, 0x0

    if-eqz p1, :cond_39

    .line 2396
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_3b

    .line 2395
    :cond_39
    move-object/from16 v16, v10

    .line 2398
    :goto_3b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    const-string v2, "moveTaskToFront"

    invoke-virtual {v1, v10, v2}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 2400
    const/4 v5, -0x1

    const/4 v6, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move v2, v9

    move v3, v8

    move-object/from16 v4, p2

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move/from16 v9, v18

    move-object/from16 v10, v19

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/wm/ActivityStarter;->shouldAbortBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLandroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 2402
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBackgroundActivityStartsEnabled()Z

    move-result v1

    if-nez v1, :cond_66

    .line 2403
    return-void

    .line 2407
    :cond_66
    :try_start_66
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1, v11}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    .line 2408
    if-nez v1, :cond_89

    .line 2409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find task for id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    invoke-static/range {p5 .. p5}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V
    :try_end_85
    .catchall {:try_start_66 .. :try_end_85} :catchall_c8

    .line 2433
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2411
    return-void

    .line 2413
    :cond_89
    :try_start_89
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/TaskRecord;)Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 2414
    const-string v0, "moveTaskToFront: Attempt to violate Lock Task Mode"

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    invoke-static/range {p5 .. p5}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V
    :try_end_9b
    .catchall {:try_start_89 .. :try_end_9b} :catchall_c8

    .line 2433
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2416
    return-void

    .line 2418
    :cond_9f
    if-eqz v12, :cond_a9

    .line 2419
    :try_start_a1
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v12, v2}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v10

    move-object v5, v10

    goto :goto_aa

    .line 2420
    :cond_a9
    const/4 v5, 0x0

    .line 2421
    :goto_aa
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const-string v6, "moveTaskToFront"

    const/4 v7, 0x0

    move-object v3, v1

    move/from16 v4, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityStackSupervisor;->findTaskToMoveToFront(Lcom/android/server/wm/TaskRecord;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V

    .line 2424
    invoke-virtual {v1}, Lcom/android/server/wm/TaskRecord;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2425
    if-eqz v0, :cond_c3

    .line 2429
    const/4 v1, 0x0

    const/4 v2, 0x1

    move/from16 v3, p6

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZZ)V
    :try_end_c3
    .catchall {:try_start_a1 .. :try_end_c3} :catchall_c8

    .line 2433
    :cond_c3
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2434
    nop

    .line 2435
    return-void

    .line 2433
    :catchall_c8
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2384
    :cond_cd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: moveTaskToFrontLocked() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2385
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " as package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2386
    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public moveTaskToStack(IIZ)V
    .registers 15

    .line 2583
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "moveTaskToStack()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2584
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2585
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_9f

    .line 2587
    :try_start_11
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    .line 2588
    if-nez v4, :cond_37

    .line 2589
    const-string p2, "ActivityTaskManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveTaskToStack: No task for id="

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_9a

    .line 2612
    :try_start_2f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_9f

    .line 2590
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2596
    :cond_37
    :try_start_37
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p2}, Lcom/android/server/wm/RootActivityContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 2597
    if-eqz v5, :cond_83

    .line 2601
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v3

    if-eqz v3, :cond_64

    .line 2605
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->inSplitScreenPrimaryWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_52

    .line 2606
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 p2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v3}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateState(ILandroid/graphics/Rect;)V

    .line 2609
    :cond_52
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v10, "moveTaskToStack"

    move v6, p3

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z
    :try_end_5b
    .catchall {:try_start_37 .. :try_end_5b} :catchall_9a

    .line 2612
    :try_start_5b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2613
    nop

    .line 2614
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5b .. :try_end_60} :catchall_9f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2615
    return-void

    .line 2602
    :cond_64
    :try_start_64
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveTaskToStack: Attempt to move task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to stack "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 2598
    :cond_83
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "moveTaskToStack: No stack for stackId="

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_9a
    .catchall {:try_start_64 .. :try_end_9a} :catchall_9a

    .line 2612
    :catchall_9a
    move-exception p1

    :try_start_9b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2614
    :catchall_9f
    move-exception p1

    monitor-exit v0
    :try_end_a1
    .catchall {:try_start_9b .. :try_end_a1} :catchall_9f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public moveTasksToFullscreenStack(IZ)V
    .registers 7

    .line 4056
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "moveTasksToFullscreenStack()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4058
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4059
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_3b

    .line 4061
    :try_start_11
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootActivityContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    .line 4062
    if-eqz p1, :cond_2d

    .line 4063
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 4067
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;Z)V

    goto :goto_2d

    .line 4064
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You can\'t move tasks from non-standard stacks."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2d
    .catchall {:try_start_11 .. :try_end_2d} :catchall_36

    .line 4070
    :cond_2d
    :goto_2d
    :try_start_2d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4071
    nop

    .line 4072
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4073
    return-void

    .line 4070
    :catchall_36
    move-exception p1

    :try_start_37
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 4072
    :catchall_3b
    move-exception p1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public moveTopActivityToPinnedStack(ILandroid/graphics/Rect;)Z
    .registers 6

    .line 4086
    const-string p2, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v0, "moveTopActivityToPinnedStack()"

    invoke-direct {p0, p2, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4088
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p2

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4089
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v0, :cond_28

    .line 4094
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_30

    .line 4096
    :try_start_15
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootActivityContainer;->moveTopStackActivityToPinnedStack(I)Z

    move-result p1
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_23

    .line 4098
    :try_start_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p2
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_30

    .line 4096
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 4098
    :catchall_23
    move-exception p1

    :try_start_24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 4090
    :cond_28
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "moveTopActivityToPinnedStack:Device doesn\'t support picture-in-picture mode"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4100
    :catchall_30
    move-exception p1

    monitor-exit p2
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z
    .registers 7

    .line 2166
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2167
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 2168
    if-eqz p1, :cond_19

    .line 2169
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/ActivityStack;->navigateUpToLocked(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;ILandroid/content/Intent;)Z

    move-result p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 2172
    :cond_19
    const/4 p1, 0x0

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 2173
    :catchall_1f
    move-exception p1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public notifyActivityDrawn(Landroid/os/IBinder;)V
    .registers 4

    .line 2016
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2017
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootActivityContainer;->isInAnyStack(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 2018
    if-eqz p1, :cond_15

    .line 2019
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 2021
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2022
    return-void

    .line 2021
    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public notifyEnterAnimationComplete(Landroid/os/IBinder;)V
    .registers 4

    .line 3037
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$BXul1K8BX6JEv_ff3NT76qpeZGQ;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$BXul1K8BX6JEv_ff3NT76qpeZGQ;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 3049
    return-void
.end method

.method public notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V
    .registers 3

    .line 3032
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->scheduleLaunchTaskBehindComplete(Landroid/os/IBinder;)V

    .line 3033
    return-void
.end method

.method public notifyPinnedStackAnimationEnded()V
    .registers 2

    .line 4430
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyPinnedStackAnimationEnded()V

    .line 4431
    return-void
.end method

.method public notifyPinnedStackAnimationStarted()V
    .registers 2

    .line 4424
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyPinnedStackAnimationStarted()V

    .line 4425
    return-void
.end method

.method notifySingleTaskDisplayEmpty(I)V
    .registers 3

    .line 6094
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifySingleTaskDisplayEmpty(I)V

    .line 6095
    return-void
.end method

.method notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V
    .registers 4

    .line 4894
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 4895
    return-void
.end method

.method public offsetPinnedStackBounds(ILandroid/graphics/Rect;III)V
    .registers 12

    .line 2656
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "offsetPinnedStackBounds()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2658
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2660
    :try_start_b
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_a6

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2661
    if-nez p3, :cond_1d

    if-nez p4, :cond_1d

    .line 2662
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_a0

    .line 2684
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2662
    return-void

    .line 2664
    :cond_1d
    :try_start_1d
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootActivityContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2665
    if-nez v3, :cond_48

    .line 2666
    const-string p2, "ActivityTaskManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "offsetPinnedStackBounds: stackId "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2667
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_1d .. :try_end_41} :catchall_a0

    .line 2684
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2667
    return-void

    .line 2669
    :cond_48
    :try_start_48
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_84

    .line 2673
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 2674
    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityStack;->getAnimationOrCurrentBounds(Landroid/graphics/Rect;)V

    .line 2675
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_75

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_64

    goto :goto_75

    .line 2679
    :cond_64
    invoke-virtual {p1, p3, p4}, Landroid/graphics/Rect;->offset(II)V

    .line 2680
    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {v3, p2, p1, p5, p3}, Lcom/android/server/wm/ActivityStack;->animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    .line 2682
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_48 .. :try_end_6d} :catchall_a0

    :try_start_6d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_a6

    .line 2684
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2685
    nop

    .line 2686
    return-void

    .line 2676
    :cond_75
    :goto_75
    :try_start_75
    const-string p1, "ActivityTaskManager"

    const-string p2, "The current stack bounds does not matched! It may be obsolete."

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2677
    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_75 .. :try_end_7d} :catchall_a0

    .line 2684
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2677
    return-void

    .line 2670
    :cond_84
    :try_start_84
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Stack: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t support animated resize."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2682
    :catchall_a0
    move-exception p1

    monitor-exit v2
    :try_end_a2
    .catchall {:try_start_84 .. :try_end_a2} :catchall_a0

    :try_start_a2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_a6
    .catchall {:try_start_a2 .. :try_end_a6} :catchall_a6

    .line 2684
    :catchall_a6
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public onActivityManagerInternalAdded()V
    .registers 3

    .line 847
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 848
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 849
    const-class v1, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriGrantsManagerInternal;

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 850
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 851
    return-void

    .line 850
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
    .registers 5

    .line 2338
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2339
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 2340
    if-nez p1, :cond_11

    .line 2341
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2343
    :cond_11
    :try_start_11
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2344
    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isSingleTaskInstance()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 2349
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object p1

    .line 2350
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 2351
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyBackPressedOnTaskRoot(Landroid/app/TaskInfo;)V
    :try_end_2a
    .catchall {:try_start_11 .. :try_end_2a} :catchall_3c

    .line 2352
    goto :goto_37

    .line 2354
    :cond_2b
    :try_start_2b
    invoke-interface {p2}, Landroid/app/IRequestFinishCallback;->requestFinish()V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2e} :catch_2f
    .catchall {:try_start_2b .. :try_end_2e} :catchall_3c

    .line 2357
    goto :goto_37

    .line 2355
    :catch_2f
    move-exception p1

    .line 2356
    :try_start_30
    const-string p2, "ActivityTaskManager"

    const-string v1, "Failed to invoke request finish callback"

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2359
    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_30 .. :try_end_38} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2360
    return-void

    .line 2359
    :catchall_3c
    move-exception p1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public onInitPowerManagement()V
    .registers 5

    .line 716
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 717
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->initPowerManagement()V

    .line 718
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 719
    const-class v2, Landroid/os/PowerManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManagerInternal;

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 720
    const/4 v2, 0x1

    const-string v3, "*voice*"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 721
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 722
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 723
    return-void

    .line 722
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

    .line 3357
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$Uli7s8UWTEj0IpBUtoST5bmgvKk;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$Uli7s8UWTEj0IpBUtoST5bmgvKk;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 3362
    return-void
.end method

.method onStartActivitySetDidAppSwitch()V
    .registers 3

    .line 4801
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDidAppSwitch:Z

    if-eqz v0, :cond_9

    .line 4807
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesAllowedTime:J

    goto :goto_c

    .line 4809
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDidAppSwitch:Z

    .line 4811
    :goto_c
    return-void
.end method

.method public onSystemReady()V
    .registers 4

    .line 705
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 706
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.software.cant_save_state"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHasHeavyWeightFeature:Z

    .line 708
    new-instance v1, Lcom/android/internal/app/AssistUtils;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 709
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v1}, Lcom/android/server/wm/VrController;->onSystemReady()V

    .line 710
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v1}, Lcom/android/server/wm/RecentTasks;->onSystemReadyLocked()V

    .line 711
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->onSystemReady()V

    .line 712
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 713
    return-void

    .line 712
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V
    .registers 10

    .line 1893
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1894
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 1895
    if-nez p1, :cond_11

    .line 1896
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1899
    :cond_11
    :try_start_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1901
    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/wm/ActivityStack$ActivityState;

    invoke-virtual {p1, v3, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1903
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/4 v3, 0x0

    invoke-virtual {p1, p2, p3, p4, v3}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V

    .line 1907
    :cond_2b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1908
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1909
    return-void

    .line 1908
    :catchall_33
    move-exception p1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public positionTaskInStack(III)V
    .registers 15

    .line 3911
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "positionTaskInStack()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3912
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3913
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_94

    .line 3917
    :try_start_13
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    .line 3918
    if-eqz v4, :cond_78

    .line 3923
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p2}, Lcom/android/server/wm/RootActivityContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 3925
    if-eqz v5, :cond_61

    .line 3929
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result p2

    if-eqz p2, :cond_45

    .line 3936
    invoke-virtual {v4}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    if-ne p1, v5, :cond_33

    .line 3938
    invoke-virtual {v5, v4, p3}, Lcom/android/server/wm/ActivityStack;->positionChildAt(Lcom/android/server/wm/TaskRecord;I)V

    goto :goto_3c

    .line 3941
    :cond_33
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "positionTaskInStack"

    move v6, p3

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;IIZZLjava/lang/String;)Z
    :try_end_3c
    .catchall {:try_start_13 .. :try_end_3c} :catchall_8f

    .line 3945
    :goto_3c
    :try_start_3c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3946
    nop

    .line 3947
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_94

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3948
    return-void

    .line 3930
    :cond_45
    :try_start_45
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "positionTaskInStack: Attempt to change the position of task "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in/to non-standard stack"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3926
    :cond_61
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "positionTaskInStack: no stack for id="

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3919
    :cond_78
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "positionTaskInStack: no task for id="

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_8f
    .catchall {:try_start_45 .. :try_end_8f} :catchall_8f

    .line 3945
    :catchall_8f
    move-exception p1

    :try_start_90
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 3947
    :catchall_94
    move-exception p1

    monitor-exit v0
    :try_end_96
    .catchall {:try_start_90 .. :try_end_96} :catchall_94

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method postFinishBooting(ZZ)V
    .registers 5

    .line 5700
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$oP6xxIfnD4kb4JN7aSJU073ULR4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$oP6xxIfnD4kb4JN7aSJU073ULR4;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 5708
    return-void
.end method

.method public registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V
    .registers 7

    .line 4697
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    const-string v2, "registerRemoteAnimationForNextActivityStart"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4699
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/RemoteAnimationAdapter;->setCallingPidUid(II)V

    .line 4700
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4701
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_33

    .line 4703
    :try_start_1e
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/ActivityStartController;->registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_2e

    .line 4706
    :try_start_25
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4707
    nop

    .line 4708
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4709
    return-void

    .line 4706
    :catchall_2e
    move-exception p1

    :try_start_2f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 4708
    :catchall_33
    move-exception p1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public registerRemoteAnimations(Landroid/os/IBinder;Landroid/view/RemoteAnimationDefinition;)V
    .registers 6

    .line 4677
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    const-string v2, "registerRemoteAnimations"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4679
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/RemoteAnimationDefinition;->setCallingPidUid(II)V

    .line 4680
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4681
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 4682
    if-nez p1, :cond_25

    .line 4683
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4685
    :cond_25
    :try_start_25
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_3a

    .line 4687
    :try_start_29
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_35

    .line 4689
    :try_start_2c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4690
    nop

    .line 4691
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4692
    return-void

    .line 4689
    :catchall_35
    move-exception p1

    :try_start_36
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 4691
    :catchall_3a
    move-exception p1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public registerRemoteAnimationsForDisplay(ILandroid/view/RemoteAnimationDefinition;)V
    .registers 7

    .line 4714
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    const-string v2, "registerRemoteAnimations"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4716
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/RemoteAnimationDefinition;->setCallingPidUid(II)V

    .line 4717
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4718
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplay(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object v1

    .line 4719
    if-nez v1, :cond_3d

    .line 4720
    const-string p2, "ActivityTaskManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find display with id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4721
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_17 .. :try_end_39} :catchall_54

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4723
    :cond_3d
    :try_start_3d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_54

    .line 4725
    :try_start_41
    iget-object p1, v1, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayContent;->registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_4f

    .line 4727
    :try_start_46
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4728
    nop

    .line 4729
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_54

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4730
    return-void

    .line 4727
    :catchall_4f
    move-exception p1

    :try_start_50
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 4729
    :catchall_54
    move-exception p1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_54

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    .registers 4

    .line 3484
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "registerTaskStackListener()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3486
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 3487
    return-void
.end method

.method public releaseActivityInstance(Landroid/os/IBinder;)Z
    .registers 7

    .line 3298
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3299
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_30

    .line 3301
    :try_start_a
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_2b

    .line 3302
    if-nez p1, :cond_19

    .line 3303
    const/4 p1, 0x0

    .line 3307
    :try_start_11
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_30

    .line 3303
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 3305
    :cond_19
    :try_start_19
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    const-string v4, "app-req"

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/ActivityStack;->safelyDestroyActivityLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result p1
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_2b

    .line 3307
    :try_start_23
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_30

    .line 3305
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 3307
    :catchall_2b
    move-exception p1

    :try_start_2c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 3309
    :catchall_30
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public releaseSomeActivities(Landroid/app/IApplicationThread;)V
    .registers 7

    .line 3314
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3315
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_23

    .line 3317
    :try_start_a
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    .line 3318
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const-string v4, "low-mem"

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootActivityContainer;->releaseSomeActivitiesLocked(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_1e

    .line 3320
    :try_start_15
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3321
    nop

    .line 3322
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3323
    return-void

    .line 3320
    :catchall_1e
    move-exception p1

    :try_start_1f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 3322
    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public removeAllVisibleRecentTasks()V
    .registers 6

    .line 2140
    const-string v0, "android.permission.REMOVE_TASKS"

    const-string v1, "removeAllVisibleRecentTasks()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2141
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2142
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_2c

    .line 2144
    :try_start_11
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v4}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RecentTasks;->removeAllVisibleTasks(I)V
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_27

    .line 2146
    :try_start_1e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2147
    nop

    .line 2148
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2149
    return-void

    .line 2146
    :catchall_27
    move-exception v3

    :try_start_28
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2148
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeStack(I)V
    .registers 8

    .line 3405
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "removeStack()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3406
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3407
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_58

    .line 3409
    :try_start_11
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootActivityContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 3410
    if-nez v3, :cond_37

    .line 3411
    const-string v3, "ActivityTaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeStack: No stack with id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_53

    .line 3420
    :try_start_2f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_58

    .line 3412
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3414
    :cond_37
    :try_start_37
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isActivityTypeStandardOrUndefined()Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 3418
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p1, v3}, Lcom/android/server/wm/ActivityStackSupervisor;->removeStack(Lcom/android/server/wm/ActivityStack;)V
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_53

    .line 3420
    :try_start_42
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3421
    nop

    .line 3422
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_58

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3423
    return-void

    .line 3415
    :cond_4b
    :try_start_4b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Removing non-standard stack is not allowed."

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_53
    .catchall {:try_start_4b .. :try_end_53} :catchall_53

    .line 3420
    :catchall_53
    move-exception p1

    :try_start_54
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 3422
    :catchall_58
    move-exception p1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_54 .. :try_end_5a} :catchall_58

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public removeStacksInWindowingModes([I)V
    .registers 6

    .line 2747
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "removeStacksInWindowingModes()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2750
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2751
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_24

    .line 2753
    :try_start_11
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootActivityContainer;->removeStacksInWindowingModes([I)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1f

    .line 2755
    :try_start_16
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2756
    nop

    .line 2757
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2758
    return-void

    .line 2755
    :catchall_1f
    move-exception p1

    :try_start_20
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2757
    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public removeStacksWithActivityTypes([I)V
    .registers 6

    .line 2762
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "removeStacksWithActivityTypes()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2765
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2766
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_24

    .line 2768
    :try_start_11
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootActivityContainer;->removeStacksWithActivityTypes([I)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1f

    .line 2770
    :try_start_16
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2771
    nop

    .line 2772
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2773
    return-void

    .line 2770
    :catchall_1f
    move-exception p1

    :try_start_20
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2772
    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public removeTask(I)Z
    .registers 8

    .line 2126
    const-string v0, "android.permission.REMOVE_TASKS"

    const-string v1, "removeTask()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2127
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2128
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_27

    .line 2130
    :try_start_11
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const-string v4, "remove-task"

    const/4 v5, 0x1

    invoke-virtual {v3, p1, v5, v5, v4}, Lcom/android/server/wm/ActivityStackSupervisor;->removeTaskByIdLocked(IZZLjava/lang/String;)Z

    move-result p1
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_22

    .line 2133
    :try_start_1a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_27

    .line 2130
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 2133
    :catchall_22
    move-exception p1

    :try_start_23
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2135
    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public reportActivityFullyDrawn(Landroid/os/IBinder;Z)V
    .registers 4

    .line 2026
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2027
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 2028
    if-nez p1, :cond_11

    .line 2029
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2031
    :cond_11
    :try_start_11
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->reportFullyDrawnLocked(Z)V

    .line 2032
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2033
    return-void

    .line 2032
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V
    .registers 7

    .line 3055
    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    .line 3056
    monitor-enter p1

    .line 3057
    :try_start_3
    iput-object p2, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->result:Landroid/os/Bundle;

    .line 3058
    iput-object p3, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->structure:Landroid/app/assist/AssistStructure;

    .line 3059
    iput-object p4, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->content:Landroid/app/assist/AssistContent;

    .line 3060
    if-eqz p5, :cond_12

    .line 3061
    iget-object p4, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    const-string v0, "android.intent.extra.REFERRER"

    invoke-virtual {p4, v0, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3063
    :cond_12
    if-eqz p3, :cond_2b

    .line 3065
    iget-object p4, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object p4

    iget p4, p4, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {p3, p4}, Landroid/app/assist/AssistStructure;->setTaskId(I)V

    .line 3066
    iget-object p4, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    iget-object p4, p4, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p3, p4}, Landroid/app/assist/AssistStructure;->setActivityComponent(Landroid/content/ComponentName;)V

    .line 3067
    iget-boolean p4, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->isHome:Z

    invoke-virtual {p3, p4}, Landroid/app/assist/AssistStructure;->setHomeActivity(Z)V

    .line 3069
    :cond_2b
    const/4 p3, 0x1

    iput-boolean p3, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->haveResult:Z

    .line 3070
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 3071
    iget-object p3, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    if-nez p3, :cond_3b

    iget-object p3, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiver:Landroid/app/IAssistDataReceiver;

    if-nez p3, :cond_3b

    .line 3073
    monitor-exit p1

    return-void

    .line 3075
    :cond_3b
    monitor-exit p1
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_ff

    .line 3077
    nop

    .line 3078
    const/4 p3, 0x0

    .line 3079
    iget-object p4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p4

    :try_start_41
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3080
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->buildAssistBundleLocked(Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;Landroid/os/Bundle;)V

    .line 3081
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p2

    .line 3082
    iget-object p5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    invoke-virtual {p5, p1}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3083
    if-nez p2, :cond_59

    .line 3085
    monitor-exit p4
    :try_end_55
    .catchall {:try_start_41 .. :try_end_55} :catchall_f9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3088
    :cond_59
    :try_start_59
    iget-object p2, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiver:Landroid/app/IAssistDataReceiver;

    if-eqz p2, :cond_94

    .line 3090
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 3091
    const-string p5, "taskId"

    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    .line 3092
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/TaskRecord;->taskId:I

    .line 3091
    invoke-virtual {p3, p5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3093
    const-string p5, "activityId"

    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->assistToken:Landroid/os/Binder;

    invoke-virtual {p3, p5, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3095
    const-string p5, "data"

    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    invoke-virtual {p3, p5, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3096
    const-string p5, "structure"

    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->structure:Landroid/app/assist/AssistStructure;

    invoke-virtual {p3, p5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3097
    const-string p5, "content"

    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->content:Landroid/app/assist/AssistContent;

    invoke-virtual {p3, p5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3098
    const-string p5, "receiverExtras"

    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiverExtras:Landroid/os/Bundle;

    invoke-virtual {p3, p5, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3100
    :cond_94
    monitor-exit p4
    :try_end_95
    .catchall {:try_start_59 .. :try_end_95} :catchall_f9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3101
    if-eqz p2, :cond_a0

    .line 3103
    :try_start_9a
    invoke-interface {p2, p3}, Landroid/app/IAssistDataReceiver;->onHandleAssistData(Landroid/os/Bundle;)V
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_9a .. :try_end_9d} :catch_9e

    .line 3105
    goto :goto_9f

    .line 3104
    :catch_9e
    move-exception p1

    .line 3106
    :goto_9f
    return-void

    .line 3109
    :cond_a0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    .line 3111
    :try_start_a4
    iget-object p4, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    invoke-virtual {p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p4

    const-string p5, "android.service.voice.VoiceInteractionService"

    invoke-static {p4, p5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_c3

    .line 3113
    iget-object p4, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    iget-object p5, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    invoke-virtual {p4, p5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3115
    iget-object p4, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    iget p1, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->userHandle:I

    const-string p5, "AssistContext"

    invoke-direct {p0, p4, p1, p5}, Lcom/android/server/wm/ActivityTaskManagerService;->startVoiceInteractionServiceAsUser(Landroid/content/Intent;ILjava/lang/String;)V

    goto :goto_ef

    .line 3117
    :cond_c3
    iget-object p4, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    iget-object p5, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    invoke-virtual {p4, p5}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3118
    iget-object p4, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    const/high16 p5, 0x34000000

    invoke-virtual {p4, p5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3121
    iget-object p4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string p5, "assist"

    invoke-virtual {p4, p5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_d8
    .catchall {:try_start_a4 .. :try_end_d8} :catchall_f4

    .line 3124
    :try_start_d8
    iget-object p4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object p5, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    new-instance v0, Landroid/os/UserHandle;

    iget p1, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->userHandle:I

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p4, p5, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_e6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d8 .. :try_end_e6} :catch_e7
    .catchall {:try_start_d8 .. :try_end_e6} :catchall_f4

    .line 3127
    goto :goto_ef

    .line 3125
    :catch_e7
    move-exception p1

    .line 3126
    :try_start_e8
    const-string p4, "ActivityTaskManager"

    const-string p5, "No activity to handle assist action."

    invoke-static {p4, p5, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ef
    .catchall {:try_start_e8 .. :try_end_ef} :catchall_f4

    .line 3130
    :goto_ef
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3131
    nop

    .line 3132
    return-void

    .line 3130
    :catchall_f4
    move-exception p1

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 3100
    :catchall_f9
    move-exception p1

    :try_start_fa
    monitor-exit p4
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_f9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 3075
    :catchall_ff
    move-exception p2

    :try_start_100
    monitor-exit p1
    :try_end_101
    .catchall {:try_start_100 .. :try_end_101} :catchall_ff

    throw p2
.end method

.method public reportSizeConfigurations(Landroid/os/IBinder;[I[I[I)V
    .registers 7

    .line 3955
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3956
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3957
    if-eqz v1, :cond_14

    .line 3961
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/wm/ActivityRecord;->setSizeConfigurations([I[I[I)V

    .line 3963
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3964
    return-void

    .line 3958
    :cond_14
    :try_start_14
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "reportSizeConfigurations: ActivityRecord not found for: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3963
    :catchall_2b
    move-exception p1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_14 .. :try_end_2d} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public requestAssistContextExtras(ILandroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z
    .registers 21

    .line 3500
    nop

    .line 3501
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 3500
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

    .line 3508
    nop

    .line 3509
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 3508
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
    .registers 6

    .line 1275
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1276
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_43

    .line 1280
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 1281
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1282
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStartActivitySources:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_3d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1285
    sget-object p1, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$3DTHgCAeEd5OOF7ACeXoCk8mmrQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$3DTHgCAeEd5OOF7ACeXoCk8mmrQ;

    invoke-static {p1, p0, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1287
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    const-wide/32 v2, 0x92f90

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1289
    sget-object p1, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$7ieG0s-7Zp4H2bLiWdOgB6MqhcI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$7ieG0s-7Zp4H2bLiWdOgB6MqhcI;

    invoke-static {p1, p0, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1291
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    const-wide/32 v2, 0x1b7f10

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1293
    return-object v0

    .line 1283
    :catchall_3d
    move-exception p1

    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 1277
    :cond_43
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only the system process can request a permission token, received request from uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 16

    .line 4311
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "resizeDockedStack()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4312
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4314
    :try_start_b
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_2b

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4315
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v9, 0x1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    .line 4318
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_25

    :try_start_1d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_2b

    .line 4320
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4321
    nop

    .line 4322
    return-void

    .line 4318
    :catchall_25
    move-exception p1

    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    :try_start_27
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_2b

    .line 4320
    :catchall_2b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public resizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7

    .line 4435
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "resizePinnedStack()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4436
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4438
    :try_start_b
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_25

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4439
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->resizePinnedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4440
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_1f

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_25

    .line 4442
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4443
    nop

    .line 4444
    return-void

    .line 4440
    :catchall_1f
    move-exception p1

    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    :try_start_21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_25

    .line 4442
    :catchall_25
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public resizeStack(ILandroid/graphics/Rect;ZZZI)V
    .registers 21

    .line 2620
    move-object v0, p0

    move v1, p1

    const-string v2, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v3, "resizeStack()"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2622
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2624
    :try_start_d
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_b7

    :try_start_10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2625
    if-eqz p5, :cond_6d

    .line 2626
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootActivityContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 2627
    if-nez v0, :cond_40

    .line 2628
    const-string v0, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resizeStack: stackId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not found."

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    monitor-exit v4
    :try_end_39
    .catchall {:try_start_10 .. :try_end_39} :catchall_b1

    .line 2649
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2629
    return-void

    .line 2631
    :cond_40
    :try_start_40
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_51

    .line 2635
    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object/from16 v8, p2

    move/from16 v6, p6

    invoke-virtual {v0, v1, v8, v6, v5}, Lcom/android/server/wm/ActivityStack;->animateResizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)V

    .line 2637
    goto :goto_a8

    .line 2632
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stack: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t support animated resize."

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2638
    :cond_6d
    move-object/from16 v8, p2

    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v5, p1}, Lcom/android/server/wm/RootActivityContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v7

    .line 2639
    if-nez v7, :cond_9a

    .line 2640
    const-string v0, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resizeStack: stackId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " not found."

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2641
    monitor-exit v4
    :try_end_93
    .catchall {:try_start_40 .. :try_end_93} :catchall_b1

    .line 2649
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2641
    return-void

    .line 2643
    :cond_9a
    :try_start_9a
    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p2

    move/from16 v11, p4

    move/from16 v12, p3

    invoke-virtual/range {v6 .. v13}, Lcom/android/server/wm/RootActivityContainer;->resizeStack(Lcom/android/server/wm/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    .line 2647
    :goto_a8
    monitor-exit v4
    :try_end_a9
    .catchall {:try_start_9a .. :try_end_a9} :catchall_b1

    :try_start_a9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_ac
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_b7

    .line 2649
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2650
    nop

    .line 2651
    return-void

    .line 2647
    :catchall_b1
    move-exception v0

    :try_start_b2
    monitor-exit v4
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    :try_start_b3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_b7
    .catchall {:try_start_b3 .. :try_end_b7} :catchall_b7

    .line 2649
    :catchall_b7
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public resizeTask(ILandroid/graphics/Rect;I)V
    .registers 16

    .line 3249
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "resizeTask()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3250
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3252
    :try_start_d
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_b9

    :try_start_10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3253
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    .line 3255
    if-nez v3, :cond_3f

    .line 3256
    const-string p2, "ActivityTaskManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resizeTask: taskId="

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3257
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_10 .. :try_end_38} :catchall_b3

    .line 3292
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3257
    return-void

    .line 3266
    :cond_3f
    :try_start_3f
    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    .line 3267
    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 3270
    const/4 v5, 0x5

    const/4 v6, 0x1

    if-nez p2, :cond_64

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v7

    if-ne v7, v5, :cond_64

    .line 3271
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v5

    .line 3272
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result p1

    .line 3271
    invoke-virtual {v5, v6, p1, v6}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    goto :goto_78

    .line 3273
    :cond_64
    if-eqz p2, :cond_78

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v7

    if-eq v7, v5, :cond_78

    .line 3274
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v7

    .line 3275
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getActivityType()I

    move-result p1

    .line 3274
    invoke-virtual {v7, v5, p1, v6}, Lcom/android/server/wm/ActivityDisplay;->getOrCreateStack(IIZ)Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    .line 3279
    :cond_78
    :goto_78
    and-int/lit8 v5, p3, 0x1

    if-eqz v5, :cond_7d

    goto :goto_7e

    :cond_7d
    move v6, v4

    .line 3280
    :goto_7e
    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    if-eq p1, v5, :cond_90

    .line 3282
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const-string v11, "resizeTask"

    move-object v5, v3

    move-object v6, p1

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/wm/TaskRecord;->reparent(Lcom/android/server/wm/ActivityStack;ZIZZLjava/lang/String;)Z

    .line 3284
    move v6, v4

    .line 3289
    :cond_90
    invoke-virtual {v3, p2, p3, v6, v4}, Lcom/android/server/wm/TaskRecord;->resize(Landroid/graphics/Rect;IZZ)Z

    .line 3290
    monitor-exit v2
    :try_end_94
    .catchall {:try_start_3f .. :try_end_94} :catchall_b3

    :try_start_94
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_b9

    .line 3292
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3293
    nop

    .line 3294
    return-void

    .line 3268
    :cond_9c
    :try_start_9c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "resizeTask not allowed on task="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3290
    :catchall_b3
    move-exception p1

    monitor-exit v2
    :try_end_b5
    .catchall {:try_start_9c .. :try_end_b5} :catchall_b3

    :try_start_b5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_b9
    .catchall {:try_start_b5 .. :try_end_b9} :catchall_b9

    .line 3292
    :catchall_b9
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public restartActivityProcessIfVisible(Landroid/os/IBinder;)V
    .registers 5

    .line 2109
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "restartActivityProcess()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2110
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2112
    :try_start_d
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_33

    :try_start_10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2113
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 2114
    if-nez p1, :cond_21

    .line 2115
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_2d

    .line 2120
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2115
    return-void

    .line 2117
    :cond_21
    :try_start_21
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->restartProcessIfVisible()V

    .line 2118
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_2d

    :try_start_25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_33

    .line 2120
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2121
    nop

    .line 2122
    return-void

    .line 2118
    :catchall_2d
    move-exception p1

    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    :try_start_2f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_33

    .line 2120
    :catchall_33
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public resumeAppSwitches()V
    .registers 4

    .line 4787
    const-string v0, "android.permission.STOP_APP_SWITCHES"

    const-string v1, "resumeAppSwitches"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4788
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4792
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesAllowedTime:J

    .line 4793
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4794
    return-void

    .line 4793
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
    .registers 13

    .line 734
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 735
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.freeform_window_management"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1b

    .line 736
    const-string v0, "enable_freeform_support"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    move v0, v2

    goto :goto_1c

    :cond_1b
    :goto_1b
    move v0, v1

    .line 739
    :goto_1c
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/ActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v3

    .line 740
    if-eqz v3, :cond_34

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 741
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.software.picture_in_picture"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    move v4, v1

    goto :goto_35

    :cond_34
    move v4, v2

    .line 742
    :goto_35
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 743
    invoke-static {v5}, Landroid/app/ActivityTaskManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;)Z

    move-result v5

    .line 744
    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 745
    const-string v7, "android.software.activities_on_secondary_displays"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    .line 746
    const-string v7, "debug.force_rtl"

    invoke-static {p1, v7, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_51

    move v7, v1

    goto :goto_52

    :cond_51
    move v7, v2

    .line 747
    :goto_52
    const-string v8, "force_resizable_activities"

    invoke-static {p1, v8, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_5c

    move v8, v1

    goto :goto_5d

    :cond_5c
    move v8, v2

    .line 749
    :goto_5d
    iget-object v9, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "android.hardware.type.pc"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    .line 752
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v10}, Landroid/sysprop/DisplayProperties;->debug_force_rtl(Ljava/lang/Boolean;)V

    .line 754
    new-instance v10, Landroid/content/res/Configuration;

    invoke-direct {v10}, Landroid/content/res/Configuration;-><init>()V

    .line 755
    invoke-static {p1, v10}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    .line 756
    if-eqz v7, :cond_7f

    .line 758
    iget-object p1, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v10, p1}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 761
    :cond_7f
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_82
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 762
    iput-boolean v8, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    .line 763
    if-nez v0, :cond_92

    if-nez v5, :cond_92

    if-nez v4, :cond_92

    if-eqz v6, :cond_90

    goto :goto_92

    :cond_90
    move v7, v2

    goto :goto_93

    :cond_92
    :goto_92
    move v7, v1

    .line 767
    :goto_93
    if-nez v3, :cond_97

    if-eqz v8, :cond_a4

    :cond_97
    if-eqz v7, :cond_a4

    .line 768
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    .line 769
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 770
    iput-boolean v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    .line 771
    iput-boolean v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    .line 772
    iput-boolean v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    goto :goto_ae

    .line 774
    :cond_a4
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    .line 775
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 776
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    .line 777
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    .line 778
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    .line 780
    :goto_ae
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->setForceResizableTasks(Z)V

    .line 781
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->setSupportsPictureInPicture(Z)V

    .line 782
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->setSupportsFreeformWindowManagement(Z)V

    .line 783
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/wm/WindowManagerService;->setIsPc(Z)V

    .line 784
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->onSettingsRetrieved()V

    .line 787
    const/4 v0, 0x0

    invoke-virtual {p0, v10, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z

    .line 788
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 792
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 793
    const v3, 0x1050002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailWidth:I

    .line 795
    const v3, 0x1050001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailHeight:I

    .line 798
    iget v3, v0, Landroid/content/res/Configuration;->uiMode:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_104

    .line 799
    const v1, 0x10e0119

    .line 800
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFullscreenThumbnailScale:F

    goto :goto_10d

    .line 803
    :cond_104
    const v0, 0x113000e

    invoke-virtual {v2, v0, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFullscreenThumbnailScale:F

    .line 806
    :goto_10d
    monitor-exit p1
    :try_end_10e
    .catchall {:try_start_82 .. :try_end_10e} :catchall_112

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 807
    return-void

    .line 806
    :catchall_112
    move-exception v0

    :try_start_113
    monitor-exit p1
    :try_end_114
    .catchall {:try_start_113 .. :try_end_114} :catchall_112

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method scheduleAppGcsLocked()V
    .registers 3

    .line 5873
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$-xFyZDUKMraVkermSJGXQdN3oJ4;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$-xFyZDUKMraVkermSJGXQdN3oJ4;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 5874
    return-void
.end method

.method public setActivityController(Landroid/app/IActivityController;Z)V
    .registers 6

    .line 2505
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string v2, "setActivityController()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2507
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2508
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 2509
    iput-boolean p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mControllerIsAMonkey:Z

    .line 2510
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 2511
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2512
    return-void

    .line 2511
    :catchall_1f
    move-exception p1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method setBooted(Z)V
    .registers 3

    .line 5692
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->setBooted(Z)V

    .line 5693
    return-void
.end method

.method setBooting(Z)V
    .registers 3

    .line 5684
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->setBooting(Z)V

    .line 5685
    return-void
.end method

.method setDeviceOwnerUid(I)V
    .registers 2

    .line 6015
    iput p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDeviceOwnerUid:I

    .line 6016
    return-void
.end method

.method public setDisablePreviewScreenshots(Landroid/os/IBinder;Z)V
    .registers 7

    .line 4583
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4584
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4585
    if-nez v1, :cond_27

    .line 4586
    const-string p2, "ActivityTaskManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisablePreviewScreenshots: Unable to find activity for token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4588
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4590
    :cond_27
    :try_start_27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_3c

    .line 4592
    :try_start_2b
    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityRecord;->setDisablePreviewScreenshots(Z)V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_37

    .line 4594
    :try_start_2e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4595
    nop

    .line 4596
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4597
    return-void

    .line 4594
    :catchall_37
    move-exception p1

    :try_start_38
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 4596
    :catchall_3c
    move-exception p1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_3c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setDisplayToSingleTaskInstance(I)V
    .registers 5

    .line 4922
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "setDisplayToSingleTaskInstance"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4924
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4926
    :try_start_d
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 4927
    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootActivityContainer;->getActivityDisplayOrCreate(I)Lcom/android/server/wm/ActivityDisplay;

    move-result-object p1

    .line 4928
    if-eqz p1, :cond_18

    .line 4929
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityDisplay;->setDisplayToSingleTaskInstance()V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_1d

    .line 4932
    :cond_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4933
    nop

    .line 4934
    return-void

    .line 4932
    :catchall_1d
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setFocusedStack(I)V
    .registers 8

    .line 2065
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "setFocusedStack()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2067
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2069
    :try_start_d
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_5b

    :try_start_10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2070
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootActivityContainer;->getStack(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 2071
    if-nez v3, :cond_39

    .line 2072
    const-string v3, "ActivityTaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setFocusedStack: No stack with id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_10 .. :try_end_32} :catchall_55

    .line 2081
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2073
    return-void

    .line 2075
    :cond_39
    :try_start_39
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 2076
    if-eqz p1, :cond_4c

    const-string v3, "setFocusedStack"

    invoke-virtual {p1, v3}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 2077
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 2079
    :cond_4c
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_39 .. :try_end_4d} :catchall_55

    :try_start_4d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_5b

    .line 2081
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2082
    nop

    .line 2083
    return-void

    .line 2079
    :catchall_55
    move-exception p1

    :try_start_56
    monitor-exit v2
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    :try_start_57
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_5b

    .line 2081
    :catchall_5b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setFocusedTask(I)V
    .registers 7

    .line 2087
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "setFocusedTask()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2089
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2091
    :try_start_d
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_46

    :try_start_10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2092
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object p1

    .line 2094
    if-nez p1, :cond_24

    .line 2095
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_40

    .line 2103
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2095
    return-void

    .line 2097
    :cond_24
    :try_start_24
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 2098
    if-eqz p1, :cond_37

    const-string v3, "setFocusedTask"

    invoke-virtual {p1, v3}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 2099
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 2101
    :cond_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_24 .. :try_end_38} :catchall_40

    :try_start_38
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_46

    .line 2103
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2104
    nop

    .line 2105
    return-void

    .line 2101
    :catchall_40
    move-exception p1

    :try_start_41
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    :try_start_42
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_46

    .line 2103
    :catchall_46
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setFrontActivityScreenCompatMode(I)V
    .registers 5

    .line 1925
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SET_SCREEN_COMPATIBILITY"

    const-string v2, "setFrontActivityScreenCompatMode"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1929
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1930
    if-nez v1, :cond_25

    .line 1931
    const-string p1, "ActivityTaskManager"

    const-string v1, "setFrontActivityScreenCompatMode failed: no top activity"

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1934
    :cond_25
    :try_start_25
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1935
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/wm/CompatModePackages;->setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    .line 1936
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1937
    return-void

    .line 1936
    :catchall_33
    move-exception p1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method setHeavyWeightProcess(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 5711
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 5712
    sget-object v0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$x3j1aVkumtfulORwKd6dHysJyE0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$x3j1aVkumtfulORwKd6dHysJyE0;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 5714
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 5712
    invoke-static {v0, p0, v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 5715
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5716
    return-void
.end method

.method public setImmersive(Landroid/os/IBinder;Z)V
    .registers 4

    .line 1836
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1837
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 1838
    if-eqz p1, :cond_1c

    .line 1841
    iput-boolean p2, p1, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    .line 1844
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isResumedActivityOnDisplay()Z

    move-result p2

    if-eqz p2, :cond_17

    .line 1846
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->applyUpdateLockStateLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 1848
    :cond_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1849
    return-void

    .line 1839
    :cond_1c
    :try_start_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 1848
    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setInheritShowWhenLocked(Landroid/os/IBinder;Z)V
    .registers 6

    .line 4645
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4646
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 4647
    if-nez p1, :cond_11

    .line 4648
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4650
    :cond_11
    :try_start_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_26

    .line 4652
    :try_start_15
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->setInheritShowWhenLocked(Z)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_21

    .line 4654
    :try_start_18
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4655
    nop

    .line 4656
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4657
    return-void

    .line 4654
    :catchall_21
    move-exception p1

    :try_start_22
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 4656
    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setLockScreenShown(ZZ)V
    .registers 9

    .line 3327
    const-string v0, "android.permission.DEVICE_POWER"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4c

    .line 3333
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3334
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3335
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardShown:Z

    if-eq v3, p1, :cond_29

    .line 3336
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardShown:Z

    .line 3337
    sget-object v3, Lcom/android/server/wm/-$$Lambda$zwLNi4Hz7werGBGptK8eYRpBWpw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$zwLNi4Hz7werGBGptK8eYRpBWpw;

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 3339
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 3337
    invoke-static {v3, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 3340
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_46

    .line 3343
    :cond_29
    :try_start_29
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/KeyguardController;->setKeyguardShown(ZZ)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_41

    .line 3345
    :try_start_2e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3346
    nop

    .line 3347
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_46

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3349
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$iduseKQrjIWQYD0hJ8Q5DMmuSfE;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$iduseKQrjIWQYD0hJ8Q5DMmuSfE;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Z)V

    invoke-virtual {p2, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 3354
    return-void

    .line 3345
    :catchall_41
    move-exception p1

    :try_start_42
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 3347
    :catchall_46
    move-exception p1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_46

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 3329
    :cond_4c
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Requires permission android.permission.DEVICE_POWER"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPackageAskScreenCompat(Ljava/lang/String;Z)V
    .registers 6

    .line 4870
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SET_SCREEN_COMPATIBILITY"

    const-string v2, "setPackageAskScreenCompat"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4872
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4873
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/CompatModePackages;->setPackageAskCompatModeLocked(Ljava/lang/String;Z)V

    .line 4874
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4875
    return-void

    .line 4874
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setPackageScreenCompatMode(Ljava/lang/String;I)V
    .registers 6

    .line 4853
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SET_SCREEN_COMPATIBILITY"

    const-string v2, "setPackageScreenCompatMode"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4855
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4856
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/CompatModePackages;->setPackageScreenCompatModeLocked(Ljava/lang/String;I)V

    .line 4857
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4858
    return-void

    .line 4857
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setPersistentVrThread(I)V
    .registers 6

    .line 4757
    const-string v0, "android.permission.RESTRICTED_VR_ACCESS"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2b

    .line 4766
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceSystemHasVrFeature()V

    .line 4767
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4768
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 4769
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    .line 4770
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v3, p1, v1, v2}, Lcom/android/server/wm/VrController;->setPersistentVrThreadLocked(IILcom/android/server/wm/WindowProcessController;)V

    .line 4771
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4772
    return-void

    .line 4771
    :catchall_25
    move-exception p1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 4759
    :cond_2b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission Denial: setPersistentVrThread() from pid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4760
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", uid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4761
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " requires "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "android.permission.RESTRICTED_VR_ACCESS"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4763
    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4764
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPictureInPictureParams(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)V
    .registers 8

    .line 4207
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4209
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_49

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4210
    const-string v3, "setPictureInPictureParams"

    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->ensureValidPictureInPictureActivityParamsLocked(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 4214
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v3, p2}, Landroid/app/PictureInPictureParams;->copyOnlySet(Landroid/app/PictureInPictureParams;)V

    .line 4215
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 4219
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    .line 4220
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->isAnimatingBoundsToFullscreen()Z

    move-result v4

    if-nez v4, :cond_37

    .line 4221
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 4222
    invoke-virtual {v4}, Landroid/app/PictureInPictureParams;->getAspectRatio()F

    move-result v4

    .line 4221
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStack;->setPictureInPictureAspectRatio(F)V

    .line 4223
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getActions()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityStack;->setPictureInPictureActions(Ljava/util/List;)V

    .line 4226
    :cond_37
    invoke-direct {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->logPictureInPictureArgs(Landroid/app/PictureInPictureParams;)V

    .line 4227
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_43

    :try_start_3b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_49

    .line 4229
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4230
    nop

    .line 4231
    return-void

    .line 4227
    :catchall_43
    move-exception p1

    :try_start_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    :try_start_45
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_49

    .line 4229
    :catchall_49
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setRequestedOrientation(Landroid/os/IBinder;I)V
    .registers 6

    .line 1809
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1810
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 1811
    if-nez p1, :cond_11

    .line 1812
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1814
    :cond_11
    :try_start_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_26

    .line 1816
    :try_start_15
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->setRequestedOrientation(I)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_21

    .line 1818
    :try_start_18
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1819
    nop

    .line 1820
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1821
    return-void

    .line 1818
    :catchall_21
    move-exception p1

    :try_start_22
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1820
    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .registers 8

    .line 5518
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 5519
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->isActivityTypeStandard()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3d

    .line 5520
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eq v1, v4, :cond_39

    .line 5522
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v1, :cond_2d

    .line 5523
    invoke-virtual {v1}, Lcom/android/server/am/AppTimeTracker;->stop()V

    .line 5524
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    invoke-virtual {v1, v2, v4}, Lcom/android/server/wm/ActivityTaskManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 5525
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 5526
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/RootActivityContainer;->clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V

    .line 5527
    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 5529
    :cond_2d
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v1, :cond_3f

    .line 5530
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 5531
    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->startTimeTrackingFocusedActivityLocked()V

    goto :goto_3f

    .line 5534
    :cond_39
    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->startTimeTrackingFocusedActivityLocked()V

    goto :goto_3f

    .line 5537
    :cond_3d
    iput-object v3, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 5542
    :cond_3f
    :goto_3f
    iget-object v1, v0, Lcom/android/server/wm/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v1, :cond_4f

    .line 5543
    iget-object v0, v0, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->startRunningVoiceLocked(Landroid/service/voice/IVoiceInteractionSession;I)V

    goto :goto_6c

    .line 5545
    :cond_4f
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->finishRunningVoiceLocked()V

    .line 5547
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_6c

    .line 5550
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 5551
    if-eqz v0, :cond_63

    iget-object v1, v0, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v1, :cond_63

    .line 5553
    iget-object v0, v0, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    goto :goto_67

    .line 5555
    :cond_63
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 5558
    :goto_67
    if-eqz v0, :cond_6c

    .line 5563
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 5568
    :cond_6c
    :goto_6c
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_7f

    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eq v0, v1, :cond_7f

    .line 5569
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->sendForegroundProfileChanged(I)V

    .line 5571
    :cond_7f
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateResumedAppTrace(Lcom/android/server/wm/ActivityRecord;)V

    .line 5572
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 5574
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/android/server/wm/ActivityDisplay;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 5576
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->applyUpdateLockStateLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 5577
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->applyUpdateVrModeLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 5580
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 5581
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 5579
    invoke-static {v0, p1, p2}, Lcom/android/server/am/EventLogTags;->writeAmSetResumedActivity(ILjava/lang/String;Ljava/lang/String;)V

    .line 5583
    return-void
.end method

.method public setShowWhenLocked(Landroid/os/IBinder;Z)V
    .registers 6

    .line 4629
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4630
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 4631
    if-nez p1, :cond_11

    .line 4632
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4634
    :cond_11
    :try_start_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_26

    .line 4636
    :try_start_15
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->setShowWhenLocked(Z)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_21

    .line 4638
    :try_start_18
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4639
    nop

    .line 4640
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4641
    return-void

    .line 4638
    :catchall_21
    move-exception p1

    :try_start_22
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 4640
    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setSplitScreenResizing(Z)V
    .registers 6

    .line 4326
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "setSplitScreenResizing()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4327
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4329
    :try_start_b
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_25

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4330
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->setSplitScreenResizing(Z)V

    .line 4331
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_1f

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_25

    .line 4333
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4334
    nop

    .line 4335
    return-void

    .line 4331
    :catchall_1f
    move-exception p1

    :try_start_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    :try_start_21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_25

    .line 4333
    :catchall_25
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V
    .registers 4

    .line 2965
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2966
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 2967
    if-eqz p1, :cond_1f

    .line 2968
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 2969
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object p1

    .line 2970
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->updateTaskDescription()V

    .line 2971
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskDescriptionChanged(Landroid/app/TaskInfo;)V

    .line 2973
    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2974
    return-void

    .line 2973
    :catchall_24
    move-exception p1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setTaskResizeable(II)V
    .registers 6

    .line 3236
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3237
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    .line 3239
    if-nez v1, :cond_2f

    .line 3240
    const-string p2, "ActivityTaskManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTaskResizeable: taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3241
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3243
    :cond_2f
    :try_start_2f
    invoke-virtual {v1, p2}, Lcom/android/server/wm/TaskRecord;->setResizeMode(I)V

    .line 3244
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3245
    return-void

    .line 3244
    :catchall_37
    move-exception p1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setTaskWindowingMode(IIZ)V
    .registers 12

    .line 2262
    const/4 v0, 0x3

    if-ne p2, v0, :cond_e

    .line 2263
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move v2, p1

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/ActivityTaskManagerService;->setTaskWindowingModeSplitScreenPrimary(IIZZLandroid/graphics/Rect;Z)Z

    .line 2265
    return-void

    .line 2267
    :cond_e
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "setTaskWindowingMode()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2268
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2269
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_87

    .line 2271
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v3

    .line 2273
    if-nez v3, :cond_46

    .line 2274
    const-string p2, "ActivityTaskManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTaskWindowingMode: No task for id="

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_1f .. :try_end_3e} :catchall_82

    .line 2293
    :try_start_3e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_87

    .line 2275
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2281
    :cond_46
    :try_start_46
    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v4

    if-eqz v4, :cond_63

    .line 2287
    invoke-virtual {v3}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    .line 2288
    if-eqz p3, :cond_57

    .line 2289
    const-string p3, "setTaskWindowingMode"

    invoke-virtual {p1, p3, v3}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/TaskRecord;)V

    .line 2291
    :cond_57
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V
    :try_end_5a
    .catchall {:try_start_46 .. :try_end_5a} :catchall_82

    .line 2293
    :try_start_5a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2294
    nop

    .line 2295
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5a .. :try_end_5f} :catchall_87

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2296
    return-void

    .line 2282
    :cond_63
    :try_start_63
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setTaskWindowingMode: Attempt to move non-standard task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to windowing mode="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
    :try_end_82
    .catchall {:try_start_63 .. :try_end_82} :catchall_82

    .line 2293
    :catchall_82
    move-exception p1

    :try_start_83
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2295
    :catchall_87
    move-exception p1

    monitor-exit v0
    :try_end_89
    .catchall {:try_start_83 .. :try_end_89} :catchall_87

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setTaskWindowingModeSplitScreenPrimary(IIZZLandroid/graphics/Rect;Z)Z
    .registers 21

    .line 2706
    move-object v0, p0

    move v1, p1

    const-string v2, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v3, "setTaskWindowingModeSplitScreenPrimary()"

    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2708
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2709
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_94

    .line 2711
    :try_start_13
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v5

    .line 2713
    if-nez v5, :cond_3b

    .line 2714
    const-string v0, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setTaskWindowingModeSplitScreenPrimary: No task for id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_13 .. :try_end_32} :catchall_8f

    .line 2715
    nop

    .line 2736
    :try_start_33
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_94

    .line 2715
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v6

    .line 2720
    :cond_3b
    :try_start_3b
    invoke-virtual {v5}, Lcom/android/server/wm/TaskRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v7

    if-eqz v7, :cond_73

    .line 2725
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move/from16 v1, p2

    move-object/from16 v7, p5

    invoke-virtual {v0, v1, v7}, Lcom/android/server/wm/WindowManagerService;->setDockedStackCreateState(ILandroid/graphics/Rect;)V

    .line 2726
    invoke-virtual {v5}, Lcom/android/server/wm/TaskRecord;->getWindowingMode()I

    move-result v0

    .line 2727
    invoke-virtual {v5}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v7

    .line 2728
    if-eqz p3, :cond_59

    .line 2729
    const-string v1, "setTaskWindowingModeSplitScreenPrimary"

    invoke-virtual {v7, v1, v5}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/TaskRecord;)V

    .line 2731
    :cond_59
    const/4 v8, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v9, p4

    move/from16 v10, p6

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZZZZZ)V

    .line 2734
    invoke-virtual {v5}, Lcom/android/server/wm/TaskRecord;->getWindowingMode()I

    move-result v1
    :try_end_68
    .catchall {:try_start_3b .. :try_end_68} :catchall_8f

    if-eq v0, v1, :cond_6b

    const/4 v6, 0x1

    .line 2736
    :cond_6b
    :try_start_6b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v2
    :try_end_6f
    .catchall {:try_start_6b .. :try_end_6f} :catchall_94

    .line 2734
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v6

    .line 2721
    :cond_73
    :try_start_73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setTaskWindowingMode: Attempt to move non-standard task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to split-screen windowing mode"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8f
    .catchall {:try_start_73 .. :try_end_8f} :catchall_8f

    .line 2736
    :catchall_8f
    move-exception v0

    :try_start_90
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2738
    :catchall_94
    move-exception v0

    monitor-exit v2
    :try_end_96
    .catchall {:try_start_90 .. :try_end_96} :catchall_94

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public setTurnScreenOn(Landroid/os/IBinder;Z)V
    .registers 6

    .line 4661
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4662
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 4663
    if-nez p1, :cond_11

    .line 4664
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4666
    :cond_11
    :try_start_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_26

    .line 4668
    :try_start_15
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->setTurnScreenOn(Z)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_21

    .line 4670
    :try_start_18
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4671
    nop

    .line 4672
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4673
    return-void

    .line 4670
    :catchall_21
    move-exception p1

    :try_start_22
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 4672
    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V
    .registers 3

    .line 874
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 875
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 876
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 877
    return-void

    .line 876
    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V
    .registers 5

    .line 3847
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3848
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-ne v1, p1, :cond_23

    .line 3849
    if-eqz p2, :cond_1e

    .line 3850
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_23

    .line 3852
    :cond_1e
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3855
    :cond_23
    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3856
    return-void

    .line 3855
    :catchall_28
    move-exception p1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I
    .registers 7

    .line 4350
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceSystemHasVrFeature()V

    .line 4352
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    .line 4355
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4356
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 4357
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_57

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4359
    if-eqz p1, :cond_51

    .line 4364
    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, p3, v1}, Lcom/android/server/vr/VrManagerInternal;->hasVrPackage(Landroid/content/ComponentName;I)I

    move-result v0

    if-eqz v0, :cond_24

    .line 4366
    return v0

    .line 4370
    :cond_24
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4372
    :try_start_28
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_4c

    :try_start_2b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4373
    if-eqz p2, :cond_31

    goto :goto_32

    :cond_31
    const/4 p3, 0x0

    :goto_32
    iput-object p3, p1, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    .line 4376
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isResumedActivityOnDisplay()Z

    move-result p2

    if-eqz p2, :cond_3d

    .line 4377
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->applyUpdateVrModeLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 4379
    :cond_3d
    const/4 p1, 0x0

    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_2b .. :try_end_3f} :catchall_46

    .line 4382
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4379
    return p1

    .line 4380
    :catchall_46
    move-exception p1

    :try_start_47
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    :try_start_48
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_4c

    .line 4382
    :catchall_4c
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 4360
    :cond_51
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 4357
    :catchall_57
    move-exception p1

    :try_start_58
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setVrThread(I)V
    .registers 6

    .line 4747
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceSystemHasVrFeature()V

    .line 4748
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4749
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 4750
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    .line 4751
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v3, p1, v1, v2}, Lcom/android/server/wm/VrController;->setVrThreadLocked(IILcom/android/server/wm/WindowProcessController;)V

    .line 4752
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4753
    return-void

    .line 4752
    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4

    .line 865
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 866
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 867
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/LockTaskController;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 868
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 869
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootActivityContainer;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 870
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 871
    return-void

    .line 870
    :catchall_1c
    move-exception p1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method shouldDisableNonVrUiLocked()Z
    .registers 2

    .line 4815
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v0}, Lcom/android/server/wm/VrController;->shouldDisableNonVrUiLocked()Z

    move-result v0

    return v0
.end method

.method public shouldForceLongScreen(Ljava/lang/String;)Z
    .registers 3

    .line 7516
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLineageActivityManager:Lorg/lineageos/internal/applications/LineageActivityManager;

    invoke-virtual {v0, p1}, Lorg/lineageos/internal/applications/LineageActivityManager;->shouldForceLongScreen(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z
    .registers 5

    .line 2153
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2154
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 2155
    if-eqz p1, :cond_19

    .line 2156
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/ActivityStack;->shouldUpRecreateTaskLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 2158
    :cond_19
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2159
    const/4 p1, 0x0

    return p1

    .line 2158
    :catchall_1f
    move-exception p1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z
    .registers 10

    .line 3766
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3768
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_7d

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3769
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 3770
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 3771
    const/4 v5, 0x0

    if-eq v4, v3, :cond_3f

    .line 3772
    const-string p1, "ActivityTaskManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showAssistFromActivity failed: caller "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is not current top "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3774
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_77

    .line 3785
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3774
    return v5

    .line 3776
    :cond_3f
    :try_start_3f
    iget-boolean v4, v4, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-nez v4, :cond_66

    .line 3777
    const-string p1, "ActivityTaskManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showAssistFromActivity failed: caller "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is not visible"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3779
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_3f .. :try_end_5f} :catchall_77

    .line 3785
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3779
    return v5

    .line 3781
    :cond_66
    :try_start_66
    monitor-exit v2
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_77

    :try_start_67
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3782
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {v2, p2, v3, v4, p1}, Lcom/android/internal/app/AssistUtils;->showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    move-result p1
    :try_end_73
    .catchall {:try_start_67 .. :try_end_73} :catchall_7d

    .line 3785
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3782
    return p1

    .line 3781
    :catchall_77
    move-exception p1

    :try_start_78
    monitor-exit v2
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    :try_start_79
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_7d

    .line 3785
    :catchall_7d
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public showLockTaskEscapeMessage(Landroid/os/IBinder;)V
    .registers 3

    .line 3882
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3883
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 3884
    if-nez p1, :cond_11

    .line 3885
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3887
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/LockTaskController;->showLockTaskToast()V

    .line 3888
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3889
    return-void

    .line 3888
    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public final startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .registers 26

    .line 1031
    move-object/from16 v0, p0

    const-string v1, "startActivities"

    invoke-direct {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1032
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move/from16 v4, p7

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result v14

    .line 1034
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v4

    .line 1035
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v13

    .line 1034
    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const-string v15, "startActivities"

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v5, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v4 .. v17}, Lcom/android/server/wm/ActivityStartController;->startActivities(Landroid/app/IApplicationThread;IIILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;ILjava/lang/String;Lcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0

    return v0
.end method

.method public final startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I
    .registers 23

    .line 1021
    nop

    .line 1023
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    .line 1021
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
    .registers 19

    .line 1225
    move-object v0, p0

    new-instance v1, Landroid/app/WaitResult;

    invoke-direct {v1}, Landroid/app/WaitResult;-><init>()V

    .line 1226
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1227
    const-string v3, "startActivityAndWait"

    invoke-direct {p0, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1228
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const-string v5, "startActivityAndWait"

    move/from16 v6, p11

    invoke-virtual {p0, v3, v4, v6, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result v3

    .line 1231
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    const-string v4, "startActivityAndWait"

    move-object v5, p3

    invoke-virtual {v0, p3, v4}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1232
    move-object v4, p1

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1233
    move-object v4, p2

    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1234
    move-object v4, p4

    invoke-virtual {v0, p4}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1235
    move-object v4, p5

    invoke-virtual {v0, p5}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1236
    move-object v4, p6

    invoke-virtual {v0, p6}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1237
    move v4, p7

    invoke-virtual {v0, p7}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1238
    move v4, p8

    invoke-virtual {v0, p8}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1239
    move-object/from16 v4, p10

    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1240
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityStarter;->setMayWait(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1241
    move-object/from16 v3, p9

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityStarter;->setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1242
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setWaitResult(Landroid/app/WaitResult;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1243
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    .line 1244
    monitor-exit v2
    :try_end_67
    .catchall {:try_start_9 .. :try_end_67} :catchall_6b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1245
    return-object v1

    .line 1244
    :catchall_6b
    move-exception v0

    :try_start_6c
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public final startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/os/IBinder;ZI)I
    .registers 15

    .line 1313
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1314
    if-eqz p5, :cond_149

    .line 1318
    if-eqz p11, :cond_53

    .line 1321
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string p9, "android.permission.START_ACTIVITY_AS_CALLER"

    const-string v0, "startActivityAsCaller"

    invoke-virtual {p2, p9, v0}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStartActivitySources:Ljava/util/HashMap;

    invoke-virtual {p2, p11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/IBinder;

    .line 1327
    if-nez p2, :cond_54

    .line 1329
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mExpiredStartAsCallerTokens:Ljava/util/ArrayList;

    invoke-virtual {p2, p11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3c

    .line 1330
    new-instance p2, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Called with expired permission token: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1333
    :cond_3c
    new-instance p2, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Called with invalid permission token: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1339
    :cond_53
    move-object p2, p5

    .line 1342
    :cond_54
    iget-object p9, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p9, p2}, Lcom/android/server/wm/RootActivityContainer;->isInAnyStack(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p9

    .line 1343
    if-eqz p9, :cond_132

    .line 1346
    iget-object p2, p9, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz p2, :cond_12a

    .line 1352
    iget-object p2, p9, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string p11, "android"

    invoke-virtual {p2, p11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_122

    .line 1357
    iget-object p2, p9, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget p2, p2, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    const/16 p11, 0x3e8

    if-eq p2, p11, :cond_a6

    .line 1360
    iget-object p2, p9, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget p2, p2, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget p11, p9, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    if-ne p2, p11, :cond_81

    goto :goto_a6

    .line 1361
    :cond_81
    new-instance p2, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Calling activity in uid "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p9, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget p4, p4, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " must be system uid or original calling uid "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p9, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1367
    :cond_a6
    :goto_a6
    if-eqz p12, :cond_c5

    .line 1368
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_bd

    .line 1372
    invoke-virtual {p3}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_b5

    goto :goto_c5

    .line 1373
    :cond_b5
    new-instance p2, Ljava/lang/SecurityException;

    const-string p3, "Selector not allowed with ignoreTargetSecurity"

    invoke-direct {p2, p3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1369
    :cond_bd
    new-instance p2, Ljava/lang/SecurityException;

    const-string p3, "Component must be specified with ignoreTargetSecurity"

    invoke-direct {p2, p3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1377
    :cond_c5
    :goto_c5
    iget p2, p9, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 1378
    iget-object p11, p9, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 1379
    invoke-virtual {p9}, Lcom/android/server/wm/ActivityRecord;->isResolverOrChildActivity()Z

    move-result v0

    .line 1380
    monitor-exit p1
    :try_end_ce
    .catchall {:try_start_3 .. :try_end_ce} :catchall_151

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1382
    const/16 p1, -0x2710

    if-ne p13, p1, :cond_dd

    .line 1383
    iget-object p1, p9, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget p1, p1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p13

    .line 1388
    :cond_dd
    :try_start_dd
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object p1

    const-string p9, "startActivityAsCaller"

    invoke-virtual {p1, p3, p9}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 1389
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 1390
    invoke-virtual {p1, p11}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 1391
    invoke-virtual {p1, p4}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 1392
    invoke-virtual {p1, p5}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 1393
    invoke-virtual {p1, p6}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 1394
    invoke-virtual {p1, p7}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 1395
    invoke-virtual {p1, p8}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 1396
    invoke-virtual {p1, p10}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 1397
    invoke-virtual {p1, p13}, Lcom/android/server/wm/ActivityStarter;->setMayWait(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 1398
    invoke-virtual {p1, p12}, Lcom/android/server/wm/ActivityStarter;->setIgnoreTargetSecurity(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 1399
    if-eqz v0, :cond_112

    const/4 p2, 0x0

    :cond_112
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityStarter;->setFilterCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    const/4 p2, 0x1

    .line 1402
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 1403
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result p1
    :try_end_11f
    .catch Ljava/lang/SecurityException; {:try_start_dd .. :try_end_11f} :catch_120

    .line 1388
    return p1

    .line 1404
    :catch_120
    move-exception p1

    .line 1416
    throw p1

    .line 1353
    :cond_122
    :try_start_122
    new-instance p2, Ljava/lang/SecurityException;

    const-string p3, "Must be called from an activity that is declared in the android package"

    invoke-direct {p2, p3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1347
    :cond_12a
    new-instance p2, Ljava/lang/SecurityException;

    const-string p3, "Called without a process attached to activity"

    invoke-direct {p2, p3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1344
    :cond_132
    new-instance p3, Ljava/lang/SecurityException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Called with bad activity token: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 1315
    :cond_149
    new-instance p2, Ljava/lang/SecurityException;

    const-string p3, "Must be called from an activity"

    invoke-direct {p2, p3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1380
    :catchall_151
    move-exception p2

    monitor-exit p1
    :try_end_153
    .catchall {:try_start_122 .. :try_end_153} :catchall_151

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p2
.end method

.method public startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    .registers 25

    .line 1044
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
    .registers 21

    .line 1053
    const-string v0, "startActivityAsUser"

    move-object v1, p0

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1055
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v2

    .line 1056
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1055
    const-string v7, "startActivityAsUser"

    move/from16 v3, p11

    move/from16 v4, p12

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v2

    .line 1059
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    move-object v3, p3

    invoke-virtual {v1, p3, v0}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1060
    move-object v1, p1

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1061
    move-object v1, p2

    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1062
    move-object v1, p4

    invoke-virtual {v0, p4}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1063
    move-object v1, p5

    invoke-virtual {v0, p5}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1064
    move-object v1, p6

    invoke-virtual {v0, p6}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1065
    move v1, p7

    invoke-virtual {v0, p7}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1066
    move/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1067
    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1068
    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1069
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter;->setMayWait(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1070
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v0

    .line 1059
    return v0
.end method

.method public final startActivityFromRecents(ILandroid/os/Bundle;)I
    .registers 9

    .line 1502
    const-string v0, "android.permission.START_TASKS_FROM_RECENTS"

    const-string v1, "startActivityFromRecents()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1506
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1507
    invoke-static {p2}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object p2

    .line 1508
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1510
    :try_start_17
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_31

    :try_start_1a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1511
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v5, v0, v1, p1, p2}, Lcom/android/server/wm/ActivityStackSupervisor;->startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;)I

    move-result p1

    monitor-exit v4
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_2b

    .line 1515
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1511
    return p1

    .line 1513
    :catchall_2b
    move-exception p1

    :try_start_2c
    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    :try_start_2d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_31

    .line 1515
    :catchall_31
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I
    .registers 28

    .line 1078
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "startActivityIntentSender"

    invoke-direct {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1080
    if-eqz p4, :cond_1a

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_1a

    .line 1081
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File descriptors passed in Intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1084
    :cond_1a
    :goto_1a
    instance-of v2, v1, Lcom/android/server/am/PendingIntentRecord;

    if-eqz v2, :cond_65

    .line 1088
    move-object v3, v1

    check-cast v3, Lcom/android/server/am/PendingIntentRecord;

    .line 1090
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1093
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 1094
    iget-object v4, v2, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_41

    iget-object v2, v2, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1095
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    if-ne v2, v4, :cond_41

    .line 1096
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesAllowedTime:J

    .line 1098
    :cond_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_24 .. :try_end_42} :catchall_5f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1099
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

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

    .line 1098
    :catchall_5f
    move-exception v0

    :try_start_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_5f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1085
    :cond_65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad PendingIntent object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I
    .registers 16

    .line 1252
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1253
    const-string v1, "startActivityWithConfig"

    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1254
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string v3, "startActivityWithConfig"

    invoke-virtual {p0, v1, v2, p11, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p11

    .line 1257
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    const-string v2, "startActivityWithConfig"

    invoke-virtual {v1, p3, v2}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p3

    .line 1258
    invoke-virtual {p3, p1}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 1259
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 1260
    invoke-virtual {p1, p4}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 1261
    invoke-virtual {p1, p5}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 1262
    invoke-virtual {p1, p6}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 1263
    invoke-virtual {p1, p7}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 1264
    invoke-virtual {p1, p8}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 1265
    invoke-virtual {p1, p9}, Lcom/android/server/wm/ActivityStarter;->setGlobalConfiguration(Landroid/content/res/Configuration;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 1266
    invoke-virtual {p1, p10}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 1267
    invoke-virtual {p1, p11}, Lcom/android/server/wm/ActivityStarter;->setMayWait(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 1268
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result p1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_54

    .line 1257
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 1269
    :catchall_54
    move-exception p1

    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public startAssistantActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)I
    .registers 11

    .line 1453
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.BIND_VOICE_INTERACTION"

    const-string v2, "startAssistantActivity()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    const-string v0, "startAssistantActivity"

    invoke-virtual {p0, p2, p3, p7, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p2

    .line 1456
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object p7

    invoke-virtual {p7, p4, v0}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p4

    .line 1457
    invoke-virtual {p4, p3}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p3

    .line 1458
    invoke-virtual {p3, p1}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 1459
    invoke-virtual {p1, p5}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 1460
    invoke-virtual {p1, p6}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 1461
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityStarter;->setMayWait(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 1462
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 1463
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result p1

    .line 1456
    return p1
.end method

.method public startInPlaceAnimationOnFrontMostApplication(Landroid/os/Bundle;)V
    .registers 5

    .line 3382
    invoke-static {p1}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object p1

    .line 3383
    if-eqz p1, :cond_d

    .line 3384
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityStackSupervisor;)Landroid/app/ActivityOptions;

    move-result-object p1

    goto :goto_e

    .line 3385
    :cond_d
    const/4 p1, 0x0

    .line 3386
    :goto_e
    if-eqz p1, :cond_41

    .line 3387
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_41

    .line 3388
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getCustomInPlaceResId()I

    move-result v0

    if-eqz v0, :cond_41

    .line 3393
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 3394
    if-eqz v0, :cond_40

    .line 3395
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 3396
    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(IZ)V

    .line 3397
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 3398
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getCustomInPlaceResId()I

    move-result p1

    .line 3397
    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/AppTransition;->overrideInPlaceAppTransition(Ljava/lang/String;I)V

    .line 3399
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 3401
    :cond_40
    return-void

    .line 3389
    :cond_41
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Expected in-place ActivityOption with valid animation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 6

    .line 4388
    const-string v0, "ActivityTaskManager"

    const-string v1, "Activity tried to startLocalVoiceInteraction"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4389
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4390
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4391
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-ne v2, v1, :cond_5b

    .line 4394
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v2, :cond_4f

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v2, :cond_4f

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v2, :cond_2c

    goto :goto_4f

    .line 4399
    :cond_2c
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->pendingVoiceInteractionStart:Z

    if-eqz v2, :cond_3c

    .line 4400
    const-string p1, "ActivityTaskManager"

    const-string p2, "Pending start of voice interaction already."

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4401
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_a .. :try_end_38} :catchall_63

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4403
    :cond_3c
    const/4 v2, 0x1

    :try_start_3d
    iput-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->pendingVoiceInteractionStart:Z

    .line 4404
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_63

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4405
    const-class v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 4406
    invoke-virtual {v0, p1, p2}, Landroid/service/voice/VoiceInteractionManagerInternal;->startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 4407
    return-void

    .line 4396
    :cond_4f
    :goto_4f
    :try_start_4f
    const-string p1, "ActivityTaskManager"

    const-string p2, "Already in a voice interaction, cannot start new voice interaction"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4397
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_63

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4392
    :cond_5b
    :try_start_5b
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Only focused activity can call startVoiceInteraction"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4404
    :catchall_63
    move-exception p1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_63

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public startLockTaskModeByToken(Landroid/os/IBinder;)V
    .registers 4

    .line 2838
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2839
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 2840
    if-nez p1, :cond_11

    .line 2841
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2843
    :cond_11
    :try_start_11
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->startLockTaskModeLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 2844
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2845
    return-void

    .line 2844
    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z
    .registers 20

    .line 1107
    move-object/from16 v0, p2

    if-eqz v0, :cond_13

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_13

    .line 1108
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File descriptors passed in Intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1110
    :cond_13
    :goto_13
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v1

    .line 1112
    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_1c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1113
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 1114
    const/4 v5, 0x0

    if-nez v4, :cond_2e

    .line 1115
    invoke-static {v1}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1116
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_1c .. :try_end_2a} :catchall_1b6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    .line 1118
    :cond_2e
    :try_start_2e
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v6

    if-nez v6, :cond_3c

    .line 1120
    invoke-static {v1}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1121
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_1b6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    .line 1123
    :cond_3c
    :try_start_3c
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1125
    iget-object v0, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iget-object v7, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1127
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1129
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v0
    :try_end_58
    .catchall {:try_start_3c .. :try_end_58} :catchall_1b6

    and-int/lit8 v0, v0, 0x8

    const/4 v8, 0x1

    if-eqz v0, :cond_5f

    move v9, v8

    goto :goto_60

    :cond_5f
    move v9, v5

    .line 1131
    :goto_60
    nop

    .line 1134
    :try_start_61
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v10, v4, Lcom/android/server/wm/ActivityRecord;->resolvedType:Ljava/lang/String;

    const v11, 0x10400

    .line 1137
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    .line 1134
    invoke-interface {v0, v6, v10, v11, v12}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1137
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 1140
    if-eqz v0, :cond_7d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_7e

    :cond_7d
    move v10, v5

    .line 1141
    :goto_7e
    move v11, v5

    :goto_7f
    if-ge v11, v10, :cond_10f

    .line 1142
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 1143
    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v14, v4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10b

    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v13, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1144
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10b

    .line 1147
    add-int/2addr v11, v8

    .line 1148
    if-ge v11, v10, :cond_ae

    .line 1149
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_ac
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_ac} :catch_111
    .catchall {:try_start_61 .. :try_end_ac} :catchall_1b6

    move-object v10, v0

    goto :goto_af

    .line 1148
    :cond_ae
    move-object v10, v7

    .line 1151
    :goto_af
    if-eqz v9, :cond_110

    .line 1152
    :try_start_b1
    const-string v0, "ActivityTaskManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Next matching activity: found current "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    const-string v0, "ActivityTaskManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Next matching activity: next is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v10, :cond_e6

    .line 1155
    const-string v12, "null"

    goto :goto_fe

    :cond_e6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_fe
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1154
    invoke-static {v0, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_108
    .catch Landroid/os/RemoteException; {:try_start_b1 .. :try_end_108} :catch_109
    .catchall {:try_start_b1 .. :try_end_108} :catchall_1b6

    goto :goto_110

    .line 1160
    :catch_109
    move-exception v0

    goto :goto_113

    .line 1141
    :cond_10b
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_7f

    :cond_10f
    move-object v10, v7

    .line 1161
    :cond_110
    :goto_110
    goto :goto_113

    .line 1160
    :catch_111
    move-exception v0

    move-object v10, v7

    .line 1163
    :goto_113
    if-nez v10, :cond_126

    .line 1165
    :try_start_115
    invoke-static {v1}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1166
    if-eqz v9, :cond_121

    const-string v0, "ActivityTaskManager"

    const-string v1, "Next matching activity: nothing found"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    :cond_121
    monitor-exit v3
    :try_end_122
    .catchall {:try_start_115 .. :try_end_122} :catchall_1b6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    .line 1170
    :cond_126
    :try_start_126
    new-instance v0, Landroid/content/ComponentName;

    iget-object v9, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v11, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v9, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1172
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v9, -0x1e000001

    and-int/2addr v0, v9

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1182
    iget-boolean v0, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 1183
    iput-boolean v8, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 1186
    iget-object v9, v4, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 1187
    iget-object v11, v4, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 1188
    iget v12, v4, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 1189
    iput-object v7, v4, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 1190
    if-eqz v9, :cond_150

    .line 1191
    invoke-virtual {v9, v4, v11, v12}, Lcom/android/server/wm/ActivityRecord;->removeResultsLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V

    .line 1194
    :cond_150
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 1196
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v2

    const-string v15, "startNextMatchingActivity"

    .line 1197
    invoke-virtual {v2, v6, v15}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    iget-object v6, v4, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 1198
    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    iget-object v6, v4, Lcom/android/server/wm/ActivityRecord;->resolvedType:Ljava/lang/String;

    .line 1199
    invoke-virtual {v2, v6}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 1200
    invoke-virtual {v2, v10}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 1201
    if-eqz v9, :cond_176

    iget-object v7, v9, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :cond_176
    invoke-virtual {v2, v7}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 1202
    invoke-virtual {v2, v11}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 1203
    invoke-virtual {v2, v12}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 1204
    const/4 v6, -0x1

    invoke-virtual {v2, v6}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    iget v7, v4, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 1205
    invoke-virtual {v2, v7}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    iget-object v7, v4, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 1206
    invoke-virtual {v2, v7}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 1207
    invoke-virtual {v2, v6}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    iget v6, v4, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 1208
    invoke-virtual {v2, v6}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v2

    .line 1209
    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1210
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v1

    .line 1211
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1213
    iput-boolean v0, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 1214
    if-eqz v1, :cond_1b1

    .line 1215
    monitor-exit v3
    :try_end_1ad
    .catchall {:try_start_126 .. :try_end_1ad} :catchall_1b6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v5

    .line 1217
    :cond_1b1
    :try_start_1b1
    monitor-exit v3
    :try_end_1b2
    .catchall {:try_start_1b1 .. :try_end_1b2} :catchall_1b6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v8

    .line 1218
    :catchall_1b6
    move-exception v0

    :try_start_1b7
    monitor-exit v3
    :try_end_1b8
    .catchall {:try_start_1b7 .. :try_end_1b8} :catchall_1b6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method startProcessAsync(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V
    .registers 15

    .line 5668
    const-wide/16 v0, 0x40

    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 5669
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchingStartProcess:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5674
    :cond_1e
    sget-object v2, Lcom/android/server/wm/-$$Lambda$qMFJUmfG50ZSjk7Tac67xBia0d4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$qMFJUmfG50ZSjk7Tac67xBia0d4;

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 5675
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 5676
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    .line 5674
    move-object v8, p4

    invoke-static/range {v2 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HeptConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 5677
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_40
    .catchall {:try_start_2 .. :try_end_40} :catchall_45

    .line 5679
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5680
    nop

    .line 5681
    return-void

    .line 5679
    :catchall_45
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method public startRecentsActivity(Landroid/content/Intent;Landroid/app/IAssistDataReceiver;Landroid/view/IRecentsAnimationRunner;)V
    .registers 19
    .param p2  # Landroid/app/IAssistDataReceiver;
        .annotation runtime Ljava/lang/Deprecated;
        .end annotation
    .end param

    .line 1475
    move-object v0, p0

    move-object/from16 v10, p3

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "startRecentsActivity()"

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1477
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1478
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 1480
    :try_start_16
    iget-object v13, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v13
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_55

    :try_start_19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1481
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v3}, Lcom/android/server/wm/RecentTasks;->getRecentsComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 1482
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v3}, Lcom/android/server/wm/RecentTasks;->getRecentsComponentUid()I

    move-result v8

    .line 1483
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v9

    .line 1486
    new-instance v14, Lcom/android/server/wm/RecentsAnimation;

    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 1487
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object v1, v14

    move-object v2, p0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/RecentsAnimation;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStartController;Lcom/android/server/wm/WindowManagerService;Landroid/content/Intent;Landroid/content/ComponentName;ILcom/android/server/wm/WindowProcessController;)V

    .line 1489
    if-nez v10, :cond_43

    .line 1490
    invoke-virtual {v14}, Lcom/android/server/wm/RecentsAnimation;->preloadRecentsActivity()V

    goto :goto_46

    .line 1492
    :cond_43
    invoke-virtual {v14, v10}, Lcom/android/server/wm/RecentsAnimation;->startRecentsActivity(Landroid/view/IRecentsAnimationRunner;)V

    .line 1494
    :goto_46
    monitor-exit v13
    :try_end_47
    .catchall {:try_start_19 .. :try_end_47} :catchall_4f

    :try_start_47
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_55

    .line 1496
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1497
    nop

    .line 1498
    return-void

    .line 1494
    :catchall_4f
    move-exception v0

    :try_start_50
    monitor-exit v13
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    :try_start_51
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_55

    .line 1496
    :catchall_55
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public startSystemLockTaskMode(I)V
    .registers 7

    .line 2849
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "startSystemLockTaskMode"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2851
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2853
    :try_start_d
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_40

    :try_start_10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2854
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object p1

    .line 2856
    if-nez p1, :cond_24

    .line 2857
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_3a

    .line 2865
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2857
    return-void

    .line 2861
    :cond_24
    :try_start_24
    invoke-virtual {p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    const-string v4, "startSystemLockTaskMode"

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStack;->moveToFront(Ljava/lang/String;)V

    .line 2862
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->startLockTaskModeLocked(Lcom/android/server/wm/TaskRecord;Z)V

    .line 2863
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_3a

    :try_start_32
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_40

    .line 2865
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2866
    nop

    .line 2867
    return-void

    .line 2863
    :catchall_3a
    move-exception p1

    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    :try_start_3c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_40

    .line 2865
    :catchall_40
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public startVoiceActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    .registers 15

    .line 1430
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.BIND_VOICE_INTERACTION"

    const-string v2, "startVoiceActivity()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    if-eqz p6, :cond_49

    if-eqz p7, :cond_49

    .line 1434
    const-string v0, "startVoiceActivity"

    invoke-virtual {p0, p2, p3, p11, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p2

    .line 1436
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object p11

    invoke-virtual {p11, p4, v0}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p4

    .line 1437
    invoke-virtual {p4, p3}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p3

    .line 1438
    invoke-virtual {p3, p1}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 1439
    invoke-virtual {p1, p5}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 1440
    invoke-virtual {p1, p6}, Lcom/android/server/wm/ActivityStarter;->setVoiceSession(Landroid/service/voice/IVoiceInteractionSession;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 1441
    invoke-virtual {p1, p7}, Lcom/android/server/wm/ActivityStarter;->setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 1442
    invoke-virtual {p1, p8}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 1443
    invoke-virtual {p1, p9}, Lcom/android/server/wm/ActivityStarter;->setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 1444
    invoke-virtual {p1, p10}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 1445
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityStarter;->setMayWait(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    const/4 p2, 0x1

    .line 1446
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object p1

    .line 1447
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result p1

    .line 1436
    return p1

    .line 1432
    :cond_49
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null session or interactor"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stopAppSwitches()V
    .registers 6

    .line 4776
    const-string v0, "android.permission.STOP_APP_SWITCHES"

    const-string v1, "stopAppSwitches"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4777
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4778
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1388

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesAllowedTime:J

    .line 4779
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastStopAppSwitchesTime:J

    .line 4780
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDidAppSwitch:Z

    .line 4781
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/ActivityStartController;->schedulePendingActivityLaunches(J)V

    .line 4782
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_a .. :try_end_27} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4783
    return-void

    .line 4782
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public stopLocalVoiceInteraction(Landroid/os/IBinder;)V
    .registers 3

    .line 4411
    const-class v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 4412
    invoke-virtual {v0, p1}, Landroid/service/voice/VoiceInteractionManagerInternal;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V

    .line 4413
    return-void
.end method

.method public stopLockTaskModeByToken(Landroid/os/IBinder;)V
    .registers 4

    .line 2871
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2872
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 2873
    if-nez p1, :cond_11

    .line 2874
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2876
    :cond_11
    :try_start_11
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->stopLockTaskModeInternal(Lcom/android/server/wm/TaskRecord;Z)V

    .line 2877
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2878
    return-void

    .line 2877
    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public stopSystemLockTaskMode()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2886
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "stopSystemLockTaskMode"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2887
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->stopLockTaskModeInternal(Lcom/android/server/wm/TaskRecord;Z)V

    .line 2888
    return-void
.end method

.method public supportsLocalVoiceInteraction()Z
    .registers 2

    .line 4417
    const-class v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 4418
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionManagerInternal;->supportsLocalVoiceInteraction()Z

    move-result v0

    .line 4417
    return v0
.end method

.method public suppressResizeConfigChanges(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4042
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "suppressResizeConfigChanges()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4043
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4044
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSuppressResizeConfigChanges:Z

    .line 4045
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4046
    return-void

    .line 4045
    :catchall_16
    move-exception p1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public toggleFreeformWindowingMode(Landroid/os/IBinder;)V
    .registers 8

    .line 3443
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3444
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_76

    .line 3446
    :try_start_a
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 3447
    if-eqz v3, :cond_5a

    .line 3453
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p1

    .line 3454
    if-eqz p1, :cond_52

    .line 3459
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->inFreeformWindowingMode()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2c

    .line 3460
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v3

    if-ne v3, v4, :cond_24

    goto :goto_2c

    .line 3461
    :cond_24
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v3, "toggleFreeformWindowingMode: You can only toggle between fullscreen and freeform."

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3465
    :cond_2c
    :goto_2c
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->inFreeformWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 3466
    invoke-virtual {p1, v4}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    goto :goto_49

    .line 3467
    :cond_36
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getParent()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->inFreeformWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 3471
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V

    goto :goto_49

    .line 3473
    :cond_45
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(I)V
    :try_end_49
    .catchall {:try_start_a .. :try_end_49} :catchall_71

    .line 3476
    :goto_49
    :try_start_49
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3477
    nop

    .line 3478
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_76

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3479
    return-void

    .line 3455
    :cond_52
    :try_start_52
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v3, "toggleFreeformWindowingMode: the activity doesn\'t have a stack"

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3448
    :cond_5a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toggleFreeformWindowingMode: No activity record matching token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_71
    .catchall {:try_start_52 .. :try_end_71} :catchall_71

    .line 3476
    :catchall_71
    move-exception p1

    :try_start_72
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 3478
    :catchall_76
    move-exception p1

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_72 .. :try_end_78} :catchall_76

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public unhandledBack()V
    .registers 5

    .line 2324
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.FORCE_BACK"

    const-string v2, "unhandledBack()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2326
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2327
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_28

    .line 2329
    :try_start_13
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->unhandledBackLocked()V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_23

    .line 2331
    :try_start_1a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2332
    nop

    .line 2333
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2334
    return-void

    .line 2331
    :catchall_23
    move-exception v3

    :try_start_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2333
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

    .line 3492
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v1, "unregisterTaskStackListener()"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsRecentsOrHasPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3494
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 3495
    return-void
.end method

.method updateActivityUsageStats(Lcom/android/server/wm/ActivityRecord;I)V
    .registers 11

    .line 5650
    nop

    .line 5651
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    .line 5652
    if-eqz v0, :cond_11

    .line 5653
    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 5654
    if-eqz v0, :cond_11

    .line 5655
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    move-object v7, v0

    goto :goto_13

    .line 5659
    :cond_11
    const/4 v0, 0x0

    move-object v7, v0

    :goto_13
    sget-object v1, Lcom/android/server/wm/-$$Lambda$UB90fpYUkajpKCLGR93ZDlgDhyw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$UB90fpYUkajpKCLGR93ZDlgDhyw;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 5661
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 5659
    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 5662
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5663
    return-void
.end method

.method updateBatteryStats(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 9

    .line 5643
    sget-object v0, Lcom/android/server/wm/-$$Lambda$hT1kyMEAhvB1-Uxr0DFAlnuU3cQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$hT1kyMEAhvB1-Uxr0DFAlnuU3cQ;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v3, v3, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 5644
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 5645
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 5643
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 5646
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5647
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)Z
    .registers 14

    .line 4488
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CHANGE_CONFIGURATION"

    const-string v2, "updateConfiguration()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4490
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4491
    const/4 v1, 0x0

    if-nez p1, :cond_1e

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v2, :cond_1e

    .line 4493
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object p1

    move-object v3, p1

    goto :goto_1f

    .line 4496
    :cond_1e
    move-object v3, p1

    :goto_1f
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz p1, :cond_34

    .line 4497
    sget-object p1, Lcom/android/server/wm/-$$Lambda$ADNhW0r9Skcs9ezrOGURijI-lyQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ADNhW0r9Skcs9ezrOGURijI-lyQ;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 4499
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 4497
    invoke-static {p1, v2, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4500
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 4503
    :cond_34
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10
    :try_end_38
    .catchall {:try_start_c .. :try_end_38} :catchall_5d

    .line 4505
    if-eqz v3, :cond_3d

    .line 4506
    :try_start_3a
    invoke-static {v3}, Landroid/provider/Settings$System;->clearConfiguration(Landroid/content/res/Configuration;)V

    .line 4508
    :cond_3d
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, -0x2710

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z

    .line 4511
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    iget p1, p1, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->changes:I
    :try_end_4d
    .catchall {:try_start_3a .. :try_end_4d} :catchall_58

    if-eqz p1, :cond_50

    const/4 v1, 0x1

    .line 4513
    :cond_50
    :try_start_50
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_5d

    .line 4511
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 4513
    :catchall_58
    move-exception p1

    :try_start_59
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 4515
    :catchall_5d
    move-exception p1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_59 .. :try_end_5f} :catchall_5d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z
    .registers 5

    .line 5158
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZ)Z

    move-result p1

    return p1
.end method

.method updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZ)Z
    .registers 12

    .line 5164
    const/4 v4, 0x0

    const/16 v5, -0x2710

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZ)Z

    move-result p1

    return p1
.end method

.method updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z
    .registers 14

    .line 5199
    nop

    .line 5200
    nop

    .line 5202
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_9

    .line 5203
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 5206
    :cond_9
    if-eqz p1, :cond_16

    .line 5207
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    :try_start_11
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskManagerService;->updateGlobalConfigurationLocked(Landroid/content/res/Configuration;ZZIZ)I

    move-result p1

    goto :goto_17

    .line 5206
    :cond_16
    const/4 p1, 0x0

    .line 5211
    :goto_17
    invoke-direct {p0, p2, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->ensureConfigAndVisibilityAfterUpdate(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result p2
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_2b

    .line 5213
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz p3, :cond_22

    .line 5214
    invoke-virtual {p3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 5218
    :cond_22
    if-eqz p7, :cond_2a

    .line 5219
    iput p1, p7, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->changes:I

    .line 5220
    xor-int/lit8 p1, p2, 0x1

    iput-boolean p1, p7, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->activityRelaunched:Z

    .line 5222
    :cond_2a
    return p2

    .line 5213
    :catchall_2b
    move-exception p1

    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz p2, :cond_33

    .line 5214
    invoke-virtual {p2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    :cond_33
    throw p1
.end method

.method updateCpuStats()V
    .registers 4

    .line 5639
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$LYW1ECaEajjYgarzgKdTZ4O1fi0;

    invoke-direct {v2, v1}, Lcom/android/server/wm/-$$Lambda$LYW1ECaEajjYgarzgKdTZ4O1fi0;-><init>(Landroid/app/ActivityManagerInternal;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 5640
    return-void
.end method

.method public updateDisplayOverrideConfiguration(Landroid/content/res/Configuration;I)Z
    .registers 14

    .line 4448
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CHANGE_CONFIGURATION"

    const-string v2, "updateDisplayOverrideConfiguration()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4450
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4452
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/RootActivityContainer;->isDisplayAdded(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1d

    .line 4458
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_67

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 4461
    :cond_1d
    if-nez p1, :cond_2b

    :try_start_1f
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v1, :cond_2b

    .line 4463
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object p1

    move-object v4, p1

    goto :goto_2c

    .line 4466
    :cond_2b
    move-object v4, p1

    :goto_2c
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz p1, :cond_41

    .line 4467
    sget-object p1, Lcom/android/server/wm/-$$Lambda$ADNhW0r9Skcs9ezrOGURijI-lyQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ADNhW0r9Skcs9ezrOGURijI-lyQ;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 4468
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4467
    invoke-static {p1, v1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4469
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 4472
    :cond_41
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9
    :try_end_45
    .catchall {:try_start_1f .. :try_end_45} :catchall_67

    .line 4474
    if-eqz v4, :cond_4a

    .line 4475
    :try_start_47
    invoke-static {v4}, Landroid/provider/Settings$System;->clearConfiguration(Landroid/content/res/Configuration;)V

    .line 4477
    :cond_4a
    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    move-object v3, p0

    move v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityTaskManagerService;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZILcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z

    .line 4479
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    iget p1, p1, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->changes:I
    :try_end_57
    .catchall {:try_start_47 .. :try_end_57} :catchall_62

    if-eqz p1, :cond_5a

    const/4 v2, 0x1

    .line 4481
    :cond_5a
    :try_start_5a
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_67

    .line 4479
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 4481
    :catchall_62
    move-exception p1

    :try_start_63
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 4483
    :catchall_67
    move-exception p1

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_63 .. :try_end_69} :catchall_67

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZI)Z
    .registers 11

    .line 5341
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskManagerService;->updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZILcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z

    move-result p1

    return p1
.end method

.method updateDisplayOverrideConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZILcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z
    .registers 13

    .line 5352
    nop

    .line 5353
    nop

    .line 5355
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_9

    .line 5356
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 5359
    :cond_9
    if-eqz p1, :cond_1e

    .line 5360
    if-nez p4, :cond_19

    .line 5364
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, -0x2710

    move-object v1, p0

    move-object v2, p1

    move v6, p3

    :try_start_14
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/ActivityTaskManagerService;->updateGlobalConfigurationLocked(Landroid/content/res/Configuration;ZZIZ)I

    move-result p1

    goto :goto_1f

    .line 5367
    :cond_19
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/wm/ActivityTaskManagerService;->performDisplayOverrideConfigUpdate(Landroid/content/res/Configuration;ZI)I

    move-result p1

    goto :goto_1f

    .line 5359
    :cond_1e
    const/4 p1, 0x0

    .line 5371
    :goto_1f
    invoke-direct {p0, p2, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->ensureConfigAndVisibilityAfterUpdate(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result p2
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_33

    .line 5373
    iget-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz p3, :cond_2a

    .line 5374
    invoke-virtual {p3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 5378
    :cond_2a
    if-eqz p5, :cond_32

    .line 5379
    iput p1, p5, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->changes:I

    .line 5380
    xor-int/lit8 p1, p2, 0x1

    iput-boolean p1, p5, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->activityRelaunched:Z

    .line 5382
    :cond_32
    return p2

    .line 5373
    :catchall_33
    move-exception p1

    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz p2, :cond_3b

    .line 5374
    invoke-virtual {p2}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    :cond_3b
    throw p1
.end method

.method public updateLockTaskFeatures(II)V
    .registers 6

    .line 4615
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4616
    if-eqz v0, :cond_13

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_13

    .line 4617
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.UPDATE_LOCK_TASK_PACKAGES"

    const-string v2, "updateLockTaskFeatures()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4620
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4623
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/LockTaskController;->updateLockTaskFeatures(II)V

    .line 4624
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4625
    return-void

    .line 4624
    :catchall_25
    move-exception p1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public updateLockTaskPackages(I[Ljava/lang/String;)V
    .registers 6

    .line 2939
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2940
    if-eqz v0, :cond_13

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_13

    .line 2941
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.UPDATE_LOCK_TASK_PACKAGES"

    const-string v2, "updateLockTaskPackages()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2944
    :cond_13
    monitor-enter p0

    .line 2947
    :try_start_14
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/LockTaskController;->updateLockTaskPackages(I[Ljava/lang/String;)V

    .line 2948
    monitor-exit p0

    .line 2949
    return-void

    .line 2948
    :catchall_1d
    move-exception p1

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method updateOomAdj()V
    .registers 4

    .line 5635
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$yIIsPVyXvnU3Rv8mcliit-gIpSs;

    invoke-direct {v2, v1}, Lcom/android/server/wm/-$$Lambda$yIIsPVyXvnU3Rv8mcliit-gIpSs;-><init>(Landroid/app/ActivityManagerInternal;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 5636
    return-void
.end method

.method public updatePersistentConfiguration(Landroid/content/res/Configuration;I)V
    .registers 13

    .line 5169
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5171
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_23

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5172
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move v8, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZ)Z

    .line 5174
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_1d

    :try_start_15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_23

    .line 5176
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5177
    nop

    .line 5178
    return-void

    .line 5174
    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_23

    .line 5176
    :catchall_23
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method updateSleepIfNeededLocked()V
    .registers 7

    .line 5595
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->hasAwakeDisplay()Z

    move-result v0

    .line 5596
    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 5597
    nop

    .line 5599
    const-string v3, "ActivityTaskManager"

    const/16 v4, 0xe

    const/4 v5, 0x0

    if-nez v0, :cond_31

    .line 5603
    if-eqz v2, :cond_29

    .line 5604
    iput-boolean v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 5605
    const/4 v0, 0x2

    invoke-static {v4, v0}, Landroid/util/StatsLog;->write(II)I

    .line 5607
    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->startTimeTrackingFocusedActivityLocked()V

    .line 5608
    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    .line 5609
    const-string v0, "Top Process State changed to PROCESS_STATE_TOP"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5610
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->comeOutOfSleepIfNeededLocked()V

    .line 5612
    :cond_29
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootActivityContainer;->applySleepTokens(Z)V

    .line 5613
    if-eqz v2, :cond_54

    .line 5614
    goto :goto_55

    .line 5616
    :cond_31
    if-nez v2, :cond_54

    if-eqz v0, :cond_54

    .line 5617
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 5618
    invoke-static {v4, v1}, Landroid/util/StatsLog;->write(II)I

    .line 5620
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v0, :cond_41

    .line 5621
    invoke-virtual {v0}, Lcom/android/server/am/AppTimeTracker;->stop()V

    .line 5623
    :cond_41
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    .line 5624
    const-string v0, "Top Process State changed to PROCESS_STATE_TOP_SLEEPING"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5625
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStackSupervisor;->goingToSleepLocked()V

    .line 5626
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateResumedAppTrace(Lcom/android/server/wm/ActivityRecord;)V

    .line 5627
    goto :goto_55

    .line 5629
    :cond_54
    move v1, v5

    :goto_55
    if-eqz v1, :cond_66

    .line 5630
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$yIIsPVyXvnU3Rv8mcliit-gIpSs;

    invoke-direct {v2, v1}, Lcom/android/server/wm/-$$Lambda$yIIsPVyXvnU3Rv8mcliit-gIpSs;-><init>(Landroid/app/ActivityManagerInternal;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 5632
    :cond_66
    return-void
.end method

.method public willActivityBeVisible(Landroid/os/IBinder;)Z
    .registers 4

    .line 2572
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2573
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->getStackLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 2574
    if-eqz v1, :cond_15

    .line 2575
    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityStack;->willActivityBeVisibleLocked(Landroid/os/IBinder;)Z

    move-result p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 2577
    :cond_15
    const/4 p1, 0x0

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 2578
    :catchall_1b
    move-exception p1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method
